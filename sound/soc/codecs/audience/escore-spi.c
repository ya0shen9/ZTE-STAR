/*
 * escore-spi.c  --  SPI interface for Audience earSmart chips
 *
 * Copyright 2011 Audience, Inc.
 *
 * Author: Greg Clemson <gclemson@audience.com>
 *
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
 */
#include <linux/spi/spi.h>
#include "escore.h"
#include "escore-spi.h"
static struct spi_device *escore_spi;

static int escore_spi_read(struct escore_priv *escore, void *buf, int len)
{
	int rc;

	rc = spi_read(escore_spi, buf, len);
	if (rc < 0) {
		dev_err(&escore_spi->dev, "%s(): error %d reading SR\n",
			__func__, rc);
		return rc;
	}
	return rc;
}

static int escore_spi_write(struct escore_priv *escore,
			    const void *buf, int len)
{
	int rc;

	rc = spi_write(escore_spi, buf, len);
	if (rc != 0)
		dev_err(&escore_spi->dev, "%s(): error %d writing SR\n",
				__func__, rc);
	return rc;
}

static int escore_spi_cmd(struct escore_priv *escore,
			  u32 cmd, int sr, u32 *resp)
{
	int err;
	u32 rv;
	int read_retries = 15;

	dev_dbg(escore->dev, "%s(): cmd=0x%08x  sr=%i\n", __func__, cmd, sr);

	cmd = cpu_to_be32(cmd);
	err = escore_spi_write(escore, &cmd, sizeof(cmd));
	if (err || sr)
		return err;

	usleep_range(20000, 20500);

	do {
		err = escore_spi_read(escore, &rv, sizeof(rv));
		dev_dbg(escore->dev, "%s(): spi read err = %d, rv = 0x%08x\n",
			__func__, err, be32_to_cpu(rv));

		if (err < 0)
			break;

		usleep_range(1000, 1050);
	} while (rv == 0 && read_retries--);

	if (rv == 0 && read_retries < 0)
		err = -ETIMEDOUT;

	if (!err)
		*resp = be32_to_cpu(rv);
	dev_dbg(escore->dev, "%s(): resp=0x%08x\n", __func__, *resp);
	return err;
}

static int escore_spi_boot_setup(struct escore_priv *escore)
{
	u32 boot_cmd = ES_SPI_BOOT_CMD;
	u32 boot_ack;
	u32 sbl_sync_cmd = ES_SPI_SBL_SYNC_CMD;
	u32 sbl_sync_ack;
	int rc;

	/* Reset Board */
	gpio_set_value(escore->pdata->reset_gpio, 0);
	msleep(20);
	gpio_set_value(escore->pdata->reset_gpio, 1);
	msleep(20);
	pr_debug("%s(): prepare for fw download\n", __func__);

	sbl_sync_cmd = cpu_to_be32(sbl_sync_cmd);
	rc = escore_spi_write(escore, &sbl_sync_cmd, sizeof(sbl_sync_cmd));
	if (rc < 0) {
		pr_err("%s(): firmware load failed sync write\n",
			__func__);
		goto escore_spi_boot_setup_failed;
	}
	usleep_range(1000, 1000);
	rc = escore_spi_read(escore, &sbl_sync_ack, sizeof(sbl_sync_ack));
	if (rc < 0) {
		pr_err("%s(): firmware load failed sync ack\n",
			__func__);
		goto escore_spi_boot_setup_failed;
	}

	sbl_sync_ack = be32_to_cpu(sbl_sync_ack);
	pr_debug("%s(): SBL SYNC ACK = 0x%08x\n", __func__, sbl_sync_ack);
	if (sbl_sync_ack != ES_SPI_SBL_SYNC_ACK) {
		pr_err("%s(): boot ack pattern fail\n", __func__);
		rc = -EIO;
		goto escore_spi_boot_setup_failed;
	}
	pr_debug("%s(): write ES_BOOT_CMD = 0x%04x\n", __func__, boot_cmd);
	boot_cmd = cpu_to_be32(boot_cmd);
	rc = escore_spi_write(escore, &boot_cmd, sizeof(boot_cmd));
	if (rc < 0) {
		pr_err("%s(): firmware load failed boot write\n",
			__func__);
		goto escore_spi_boot_setup_failed;
	}

	usleep_range(1000, 1000);
	rc = escore_spi_read(escore, &boot_ack, sizeof(boot_ack));
	if (rc < 0) {
		pr_err("%s(): firmware load failed boot ack\n",
			__func__);
		goto escore_spi_boot_setup_failed;
	}

	boot_ack = be32_to_cpu(boot_ack);
	pr_debug("%s(): BOOT ACK = 0x%08x\n", __func__, boot_ack);

	if (boot_ack != ES_SPI_BOOT_ACK) {
		pr_err("%s(): boot ack pattern fail\n", __func__);
		rc = -EIO;
		goto escore_spi_boot_setup_failed;
	}
escore_spi_boot_setup_failed:
	return rc;
}

int escore_spi_boot_finish(struct escore_priv *escore)
{
	u32 sync_cmd = (ES_SYNC_CMD << 16) | ES_SYNC_POLLING;
	u32 sync_ack;
	int rc = 0;
	int sync_retry = ES_SYNC_MAX_RETRY;

	/* sometimes earSmart chip sends success in second sync command */
	do {
		pr_debug("%s(): write ES_SYNC_CMD = 0x%08x\n",
				__func__, sync_cmd);
		rc = escore_spi_cmd(escore, sync_cmd, 0, &sync_ack);
		if (rc < 0) {
			pr_err("%s(): firmware load failed sync write\n",
					__func__);
			continue;
		}
		pr_debug("%s(): sync_ack = 0x%08x\n", __func__, sync_ack);
		if (sync_ack != ES_SYNC_ACK) {
			pr_err("%s(): firmware load failed sync ack pattern",
					__func__);
			rc = -EIO;
		} else {
			pr_info("%s(): firmware load success", __func__);
			break;
		}
	} while (sync_retry--);

	return rc;
}

static int __devinit escore_spi_probe(struct spi_device *spi)
{
	int rc;

	dev_set_drvdata(&spi->dev, &escore_priv);

	escore_spi = spi;

	if (escore_priv.pri_intf == ES_SPI_INTF) {
		escore_priv.bus.ops.read = escore_spi_read;
		escore_priv.bus.ops.write = escore_spi_write;
		escore_priv.bus.ops.cmd = escore_spi_cmd;
		escore_priv.streamdev = spi_streamdev;
		escore_priv.dev = &spi->dev;
	}

	if (escore_priv.high_bw_intf == ES_SPI_INTF) {
		escore_priv.boot_ops.setup = escore_spi_boot_setup;
		escore_priv.boot_ops.finish = escore_spi_boot_finish;
		escore_priv.bus.ops.high_bw_write = escore_spi_write;
		rc = escore_priv.probe(escore_priv.dev);
		if (rc) {
			dev_err(&spi->dev, "%s(): escore_core_probe() failed %d\n",
					__func__, rc);
			goto escore_core_probe_error;
		}

		rc = escore_priv.boot_ops.bootup(&escore_priv);
		if (rc) {
			dev_err(&spi->dev, "%s(): escore_bootup failed %d\n",
					__func__, rc);
			goto bootup_error;
		}
		release_firmware(escore_priv.standard);
	}

	if (escore_priv.flag.is_codec &&
			escore_priv.dev && escore_priv.mode == STANDARD) {
		rc = snd_soc_register_codec(escore_priv.dev,
				escore_priv.soc_codec_dev_escore,
				escore_priv.dai,
				escore_priv.dai_nr);

		pr_err("%s(): rc = snd_soc_regsiter_codec() = %d\n",
				__func__, rc);
	}

	return rc;

bootup_error:
escore_core_probe_error:
	dev_dbg(&spi->dev, "%s(): exit with error\n", __func__);
	return rc;
}

struct es_stream_device spi_streamdev = {
	.read = escore_spi_read,
	.intf = ES_SPI_INTF,
};

static int __devexit escore_spi_remove(struct spi_device *spi)
{
	snd_soc_unregister_codec(&spi->dev);
	return 0;
}

int __init escore_spi_init(void)
{
	return spi_register_driver(&escore_spi_driver);
}

void __exit escore_spi_exit(void)
{
	spi_unregister_driver(&escore_spi_driver);
}

struct spi_driver escore_spi_driver = {
	.driver = {
		.name   = "earSmart-codec",
		.bus    = &spi_bus_type,
		.owner  = THIS_MODULE,
	},
	.probe  = escore_spi_probe,
	.remove = __devexit_p(escore_spi_remove),
};

MODULE_DESCRIPTION("Audience earSmart SPI core driver");
MODULE_AUTHOR("Greg Clemson <gclemson@audience.com>");
MODULE_LICENSE("GPL");
MODULE_ALIAS("platform:earSmart-codec");
