/*
 * escore-uart.c  --  Audience eS705 UART interface
 *
 * Copyright 2013 Audience, Inc.
 *
 * Author: Matt Lupfer <mlupfer@cardinalpeak.com>
 *
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
 */

#include <linux/module.h>
#include <linux/moduleparam.h>
#include <linux/init.h>
#include <linux/firmware.h>
#include <linux/delay.h>
#include <linux/pm.h>
#include <linux/completion.h>
#include <linux/gpio.h>
#include <linux/platform_device.h>
#include <linux/slab.h>
#include <linux/err.h>
#include <sound/core.h>
#include <sound/pcm.h>
#include <sound/pcm_params.h>
#include <sound/soc.h>
#include <sound/soc-dapm.h>
#include <sound/initval.h>
#include <sound/tlv.h>
#include <linux/kthread.h>
#include <linux/esxxx.h>
#include <linux/serial_core.h>
#include <linux/tty.h>

#include "escore.h"
#include "escore-uart.h"
#include "escore-uart-common.h"
#include "escore-cdev.h"

static int escore_uart_boot_setup(struct escore_priv *escore);
static int escore_uart_boot_finish(struct escore_priv *escore);
static int escore_uart_probe(struct platform_device *dev);
static int escore_uart_remove(struct platform_device *dev);

#ifdef ESCORE_FW_LOAD_BUF_SZ
#undef ESCORE_FW_LOAD_BUF_SZ
#endif
#define ESCORE_FW_LOAD_BUF_SZ 1024

static u32 escore_default_uart_baud = 460800;

static u32 escore_uarths_baud[] = { 460800, 921600, 1000000, 1024000, 1152000,
	2000000, 2048000, 3000000, 3072000 };

int escore_uart_boot_setup(struct escore_priv *escore)
{
	u8 sbl_sync_cmd = ESCORE_SBL_SYNC_CMD;
	u8 sbl_boot_cmd = ESCORE_SBL_BOOT_CMD;
	u32 sbl_rate_req_cmd = ESCORE_SBL_SET_RATE_REQ_CMD << 16;
	char msg[4] = {0};
	int uart_tty_baud_rate = UART_TTY_BAUD_RATE_460_8_K;
	int rc;
	u8 i;
	u8 retry = 10;

	/* set speed to bootloader baud */
	escore_configure_tty(escore_priv.uart_dev.tty,
		escore_priv.uart_dev.baudrate_bootloader, UART_TTY_STOP_BITS);

	pr_debug("%s()\n", __func__);

	/* SBL SYNC BYTE 0x00 */
	pr_debug("%s(): write ESCORE_SBL_SYNC_CMD = 0x%02x\n", __func__,
		sbl_sync_cmd);
	memcpy(msg, (char *)&sbl_sync_cmd, 1);
	rc = escore_uart_write(escore, msg, 1);
	if (rc < sizeof(sbl_sync_cmd)) {
		pr_err("%s(): firmware load failed sbl sync write\n", __func__);
		rc = rc < 0 ? rc : -EIO;
		goto escore_bootup_failed;
	}
	pr_debug("%s(): firmware load sbl sync write rc=%d\n", __func__, rc);
	usleep_range(10000, 10500);
	memset(msg, 0, 4);
	rc = escore_uart_read(escore, msg, 1);
	if (rc < 1) {
		pr_err("%s(): firmware load failed sync ack rc = %d\n",
			__func__, rc);
		rc = rc < 0 ? rc : -EIO;
		goto escore_bootup_failed;
	}
	pr_debug("%s(): sbl sync ack = 0x%02x\n", __func__, msg[0]);
	if (msg[0] != ESCORE_SBL_SYNC_ACK) {
		pr_err("%s(): firmware load failed sync ack pattern", __func__);
		rc = rc < 0 ? rc : -EIO;
		goto escore_bootup_failed;
	}

	/* UART Baud rate and Clock setting:-
	 *
	 * Default baud rate will be 460.8Khz and external clock
	 * will be to 6MHz unless high speed firmware download
	 * is enabled.
	 */
	if (escore->pdata->enable_hs_uart_intf) {
#if defined(CONFIG_SND_SOC_ES_UARTHS_BAUD)
		escore_default_uart_baud = CONFIG_SND_SOC_ES_UARTHS_BAUD;
#endif
		/* Set Baud rate and external clock */
		uart_tty_baud_rate = ES_UARTHS_BAUD_RATE_3000K;
		for (i = 0; i < ARRAY_SIZE(escore_uarths_baud); i++) {
			if (escore_uarths_baud[i] == escore_default_uart_baud)
				uart_tty_baud_rate = i;
		}

		sbl_rate_req_cmd |= uart_tty_baud_rate << 8;
		sbl_rate_req_cmd |= (escore->pdata->ext_clk_rate & 0xff);

		pr_debug("Setting uart baud rate %x\n", sbl_rate_req_cmd);
		sbl_rate_req_cmd = cpu_to_be32(sbl_rate_req_cmd);
		rc = escore_uart_write(escore, &sbl_rate_req_cmd,
				sizeof(sbl_rate_req_cmd));
		if (rc < sizeof(sbl_rate_req_cmd)) {
			pr_err("%s(): Baud rate setting for UART failed\n",
					__func__);
			rc = rc < 0 ? rc : -EIO;
			goto escore_bootup_failed;
		}
		/* Sometimes the correct response is received in 2nd read */
		do {
			msleep(20);
			memset(msg, 0, 4);
			rc = escore_uart_read(escore, msg, 4);
			if (rc < 1) {
				pr_err("%s(): Set Rate Request read rc = %d\n",
						__func__, rc);
				rc = rc < 0 ? rc : -EIO;
				goto escore_bootup_failed;
			}
			if (!memcmp(msg, &sbl_rate_req_cmd, sizeof(msg)))
				break;
		} while (retry-- > 0);

		/* Set Host UART speed */
		escore_configure_tty(escore_priv.uart_dev.tty,
				escore_uarths_baud[uart_tty_baud_rate],
				UART_TTY_STOP_BITS);
	}

	msleep(20);

	/* SBL BOOT BYTE 0x01 */
	memset(msg, 0, 4);
	pr_debug("%s(): write ESCORE_SBL_BOOT_CMD = 0x%02x\n", __func__,
		sbl_boot_cmd);
	memcpy(msg, (char *)&sbl_boot_cmd, 1);
	rc = escore_uart_write(escore, msg, 1);
	if (rc < sizeof(sbl_boot_cmd)) {
		pr_err("%s(): firmware load failed sbl boot write\n", __func__);
		rc = rc < 0 ? rc : -EIO;
		goto escore_bootup_failed;
	}
	msleep(20);
	memset(msg, 0, 4);
	rc = escore_uart_read(escore, msg, 1);
	if (rc < 1) {
		pr_err("%s(): firmware load failed boot ack\n", __func__);
		rc = rc < 0 ? rc : -EIO;
		goto escore_bootup_failed;
	}
	pr_debug("%s(): sbl boot ack = 0x%02x\n", __func__, msg[0]);

	if (msg[0] != ESCORE_SBL_BOOT_ACK) {
		pr_err("%s(): firmware load failed boot ack pattern", __func__);
		rc = rc < 0 ? rc : -EIO;
		goto escore_bootup_failed;
	}
	rc = 0;

escore_bootup_failed:
	return rc;
}

int escore_uart_boot_finish(struct escore_priv *escore)
{
	char msg[4];
	int rc;
	u32 sync_cmd = (ES_SYNC_CMD << 16) | ES_SYNC_POLLING;
	u32 sync_ack;
	int sync_retry = ES_SYNC_MAX_RETRY;

	/*
	 * Give the chip some time to become ready after firmware
	 * download. (FW is still transferring)
	 */
	msleep(20);

	/* discard up to two extra bytes from escore during firmware load */
	memset(msg, 0, 4);
	rc = escore_uart_read(escore, msg, 1);
	if (rc < 1) {
		pr_err("%s(): firmware read\n", __func__);
		rc = rc < 0 ? rc : -EIO;
		goto escore_boot_finish_failed;
	}

	pr_debug("%s(): read byte = 0x%02x\n", __func__, msg[0]);

	if (msg[0] != 0x02) {
		rc = escore_uart_read(escore, msg, 1);
		if (rc < 1) {
			rc = rc < 0 ? rc : -EIO;
			goto escore_boot_finish_failed;
		}

		pr_debug("%s(): read byte = 0x%02x\n", __func__, msg[0]);
	}

	/* now switch to firmware baud to talk to chip */
	escore_configure_tty(escore_priv.uart_dev.tty,
		escore_priv.uart_dev.baudrate_fw, UART_TTY_STOP_BITS);

	/* sometimes earSmart chip sends success in second sync command */
	do {
		pr_debug("%s(): write ES_SYNC_CMD = 0x%08x\n",
			__func__, sync_cmd);
		rc = escore_cmd(escore, sync_cmd);
		if (rc < 0) {
			pr_err("%s(): firmware load failed sync write - %d\n",
				__func__, rc);
			continue;
		}
		sync_ack = escore->bus.last_response;
		pr_debug("%s(): sync_ack = 0x%08x\n", __func__, sync_ack);
		if (sync_ack != ES_SYNC_ACK) {
			pr_err("%s(): firmware load failed sync ack pattern",
				__func__);
			rc = -EIO;
		} else {
			pr_info("%s(): firmware load success\n", __func__);
			break;
		}
	} while (sync_retry--);

escore_boot_finish_failed:
	return rc;
}

static struct platform_device *escore_dummy_device;

int escore_uart_probe_thread(void *ptr)
{
	int rc = 0;
	struct device *dev = (struct device *) ptr;

	rc = escore_uart_open(&escore_priv);
	if (rc) {
		dev_err(dev, "%s(): es705_uart_open() failed %d\n",
			__func__, rc);
		return rc;
	}

	/* device node found, continue */
	dev_dbg(dev, "%s(): successfully opened tty\n",
		  __func__);

	if (escore_priv.pri_intf == ES_UART_INTF) {
		/* set escore function pointers */
		escore_priv.bus.ops.read = escore_uart_read;
		escore_priv.bus.ops.write = escore_uart_write;
		escore_priv.bus.ops.cmd = escore_uart_cmd;
		escore_priv.streamdev = es_uart_streamdev;
		escore_priv.dev = dev;
	}
	if (escore_priv.high_bw_intf == ES_UART_INTF) {
		escore_priv.bus.ops.high_bw_write = escore_uart_write;
		escore_priv.boot_ops.setup = escore_uart_boot_setup;
		escore_priv.uart_boot_finish = escore_uart_boot_finish;
		escore_priv.boot_ops.finish = escore_uart_boot_finish;

		rc = escore_priv.probe(escore_priv.dev);
		if (rc) {
			pr_err("%s(): escore_core_probe() failed %d\n",
					__func__, rc);
			goto bootup_error;
		}

		rc = escore_priv.boot_ops.bootup(&escore_priv);
		if (rc) {
			pr_err("%s(): escore_bootup failed %d\n",
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
		if (rc) {
			pr_err("%s(): Codec registration failed\n", __func__);
			goto bootup_error;
		}
	}

	/* HACK: Trigger the deferred probe */
	escore_dummy_device = platform_device_alloc("escore-codec", -1);
	if (!escore_dummy_device) {
		pr_err("%s(): Dummy platform device allocation failed\n",
				__func__);
		rc = -ENOMEM;
		goto bootup_error;
	}

	if (platform_device_add(escore_dummy_device)) {
		pr_err("%s(): Error while adding UART device\n", __func__);
		platform_device_put(escore_dummy_device);
	}

	return rc;

bootup_error:
	release_firmware(escore_priv.standard);
	/* close filp */
	filp_close(escore_priv.uart_dev.file, 0);
	snd_soc_unregister_codec(escore_priv.dev);
	dev_dbg(escore_priv.dev, "%s(): exit with error\n", __func__);
	return rc;
}

static int escore_uart_probe(struct platform_device *dev)
{
	int rc = 0;
	static struct task_struct *uart_probe_thread;

	dev_dbg(&dev->dev, "%s():\n", __func__);

	/* HACK: Ugly trick to handle deferred probe */
	if (uart_probe_thread) {
		pr_debug("%s(): Dummy device probe. Exiting\n", __func__);
		return rc;
	}
	uart_probe_thread = kthread_run(escore_uart_probe_thread,
					(void *) &dev->dev,
					"escore uart thread");
	if (IS_ERR_OR_NULL(uart_probe_thread)) {
		pr_err("%s(): can't create escore UART probe thread = %p\n",
			__func__, uart_probe_thread);
		rc = -ENOMEM;
	}

	return rc;
}

static int escore_uart_remove(struct platform_device *dev)
{
	int rc = 0;
	/*
	 * ML: GPIO pins are not connected
	 *
	 * struct esxxx_platform_data *pdata = escore_priv.pdata;
	 *
	 * gpio_free(pdata->reset_gpio);
	 * gpio_free(pdata->wakeup_gpio);
	 * gpio_free(pdata->gpioa_gpio);
	 */

	if (escore_priv.uart_dev.ld)
		tty_ldisc_deref(escore_priv.uart_dev.ld);

	if (escore_priv.uart_dev.file)
		rc = filp_close(escore_priv.uart_dev.file, 0);

	escore_priv.uart_dev.tty = NULL;
	escore_priv.uart_dev.file = NULL;

	snd_soc_unregister_codec(escore_priv.dev);
	platform_device_unregister(escore_dummy_device);

	return rc;
}

static int escore_uart_suspend(struct device *dev)
{
	return 0;
}

static int escore_uart_resume(struct device *dev)
{
	return 0;
}

static int escore_uart_runtime_suspend(struct device *dev)
{
	return 0;
}

static int escore_uart_runtime_resume(struct device *dev)
{
	return 0;
}

static int escore_uart_runtime_idle(struct device *dev)
{
	return 0;
}

static const struct dev_pm_ops escore_uart_dev_pm_ops = {
	SET_SYSTEM_SLEEP_PM_OPS(
		escore_uart_suspend,
		escore_uart_resume
	)
	SET_RUNTIME_PM_OPS(
		escore_uart_runtime_suspend,
		escore_uart_runtime_resume,
		escore_uart_runtime_idle
	)
};

struct platform_driver escore_uart_driver = {
	.driver = {
		.name = "escore-codec",
		.owner = THIS_MODULE,
		.pm = &escore_uart_dev_pm_ops,
	},
	.probe = escore_uart_probe,
	.remove = escore_uart_remove,
};


/* FIXME: Kludge for escore_bus_init abstraction */
int escore_uart_bus_init(struct escore_priv *escore)
{
	int rc;

	rc = platform_driver_register(&escore_uart_driver);
	if (rc)
		return rc;

	pr_debug("%s(): registered as UART", __func__);

	return rc;
}

MODULE_DESCRIPTION("ASoC ESCORE driver");
MODULE_AUTHOR("Greg Clemson <gclemson@audience.com>");
MODULE_LICENSE("GPL");
MODULE_ALIAS("platform:escore-codec");
