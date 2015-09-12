/*
 * escore-vs.c  --  Audience Voice Sense component ALSA Audio driver
 *
 * Copyright 2013 Audience, Inc.
 *
 * Author: Greg Clemson <gclemson@audience.com>
 *
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 as
 * published by the Free Software Foundation.
 */

#include "escore.h"
#include "escore-vs.h"

int escore_vs_load(struct escore_priv *escore)
{
	struct escore_voice_sense *voice_sense =
			(struct escore_voice_sense *) escore->voice_sense;
	int rc = 0;
	int write_size = ES_VS_FW_CHUNK;
	int data_remaining = voice_sense->vs->size;

	BUG_ON(voice_sense->vs->size == 0);

	if (!escore->boot_ops.setup || !escore->boot_ops.finish) {
		dev_err(escore->dev,
			"%s(): boot setup or finish function undefined\n",
			__func__);
		rc = -EIO;
		goto escore_vs_fw_download_failed;
	}

	rc = escore->boot_ops.setup(escore);
	if (rc) {
		dev_err(escore->dev, "%s(): fw download start error\n",
			__func__);
		goto escore_vs_fw_download_failed;
	}

	dev_dbg(escore->dev, "%s(): write vs firmware image\n", __func__);

	while (data_remaining) {
		rc = escore->bus.ops.high_bw_write(escore,
			((char *)voice_sense->vs->data)
			+ (voice_sense->vs->size - data_remaining), write_size);

		data_remaining -= write_size;

		dev_dbg(escore->dev,
			"data_remaining = %d, write_size = %d\n",
			data_remaining, write_size);

		if (rc) {
			dev_err(escore->dev,
				"%s(): vs firmware image write error\n",
				__func__);
			rc = -EIO;
			goto escore_vs_fw_download_failed;
		} else if (data_remaining < write_size) {
			write_size = data_remaining;
		}

		usleep_range(2000, 2000);
	}

	escore->mode = VOICESENSE;
	rc = escore->boot_ops.finish(escore);
	if (rc) {
		dev_err(escore->dev, "%s() vs fw download finish error\n",
			__func__);
			goto escore_vs_fw_download_failed;
	}
	dev_dbg(escore->dev, "%s(): fw download done\n", __func__);

escore_vs_fw_download_failed:
	return rc;
}

int escore_get_vs_wakeup_keyword(struct snd_kcontrol *kcontrol,
				       struct snd_ctl_elem_value *ucontrol)
{
	struct escore_voice_sense *voice_sense =
			(struct escore_voice_sense *) escore_priv.voice_sense;
	ucontrol->value.enumerated.item[0] = voice_sense->vs_wakeup_keyword;
	return 0;
}

int escore_put_vs_wakeup_keyword(struct snd_kcontrol *kcontrol,
				       struct snd_ctl_elem_value *ucontrol)
{
	struct escore_voice_sense *voice_sense =
			(struct escore_voice_sense *) escore_priv.voice_sense;
	voice_sense->vs_wakeup_keyword = ucontrol->value.enumerated.item[0];
	return 0;
}

/* Note: this may only end up being called in a api locked context. In
 * that case the mutex locks need to be removed.
 */
int escore_read_vs_data_block(struct escore_priv *escore)
{
	struct escore_voice_sense *voice_sense =
			(struct escore_voice_sense *) escore->voice_sense;
	/* This function is not re-entrant so avoid stack bloat. */
	u8 block[ES_VS_KEYWORD_PARAM_MAX];

	u32 cmd;
	u32 resp;
	int ret;
	unsigned size;
	unsigned rdcnt;

	mutex_lock(&escore->api_mutex);

	/* Read voice sense keyword data block request. */
	cmd = cpu_to_le32(ES_READ_DATA_BLOCK << 16 | ES_VS_DATA_BLOCK);
	escore->bus.ops.write(escore, (char *)&cmd, 4);

	usleep_range(5000, 5000);

	ret = escore->bus.ops.read(escore, (char *)&resp, 4);
	if (ret < 0) {
		dev_dbg(escore->dev, "%s(): error sending request = %d\n",
			__func__, ret);
		goto out;
	}

	le32_to_cpus(resp);
	size = resp & 0xffff;
	dev_dbg(escore->dev, "%s(): resp=0x%08x size=%d\n",
		__func__, resp, size);
	if ((resp & 0xffff0000) != (ES_READ_DATA_BLOCK << 16)) {
		dev_err(escore->dev,
			"%s(): invalid read vs data block response = 0x%08x\n",
			__func__, resp);
		goto out;
	}

	BUG_ON(size == 0);
	BUG_ON(size > ES_VS_KEYWORD_PARAM_MAX);
	BUG_ON(size % 4 != 0);

	/* This assumes we need to transfer the block in 4 byte
	 * increments. This is true on slimbus, but may not hold true
	 * for other buses.
	 */
	for (rdcnt = 0; rdcnt < size; rdcnt += 4) {
		ret = escore->bus.ops.read(escore, (char *)&resp, 4);
		if (ret < 0) {
			dev_dbg(escore->dev,
				"%s(): error reading data block at %d bytes\n",
				__func__, rdcnt);
			goto out;
		}
		memcpy(&block[rdcnt], &resp, 4);
	}

	memcpy(voice_sense->vs_keyword_param, block, rdcnt);
	voice_sense->vs_keyword_param_size = rdcnt;
	dev_dbg(escore->dev, "%s(): stored v-s keyword block of %d bytes\n",
		__func__, rdcnt);

out:
	mutex_unlock(&escore->api_mutex);
	if (ret)
		dev_err(escore->dev, "%s(): v-s read data block failure=%d\n",
			__func__, ret);
	return ret;
}

int escore_write_vs_data_block(struct escore_priv *escore)
{
	u32 cmd;
	u32 resp;
	int ret;
	u8 *dptr;
	u16 rem;
	u8 wdb[4];
	struct escore_voice_sense *voice_sense =
			(struct escore_voice_sense *) escore->voice_sense;

	if (voice_sense->vs_keyword_param_size == 0) {
		dev_warn(escore->dev,
			"%s(): attempt to write empty keyword data block\n",
			__func__);
		return -ENOENT;
	}

	BUG_ON(voice_sense->vs_keyword_param_size % 4 != 0);

	mutex_lock(&escore->api_mutex);

	cmd = (ES_WRITE_DATA_BLOCK << 16) |
		(voice_sense->vs_keyword_param_size & 0xffff);
	cmd = cpu_to_le32(cmd);
	ret = escore->bus.ops.write(escore, (char *)&cmd, 4);
	if (ret < 0) {
		dev_err(escore->dev,
			"%s(): error writing cmd 0x%08x to device\n",
			__func__, cmd);
		goto EXIT;
	}

	usleep_range(10000, 10000);
	ret = escore->bus.ops.read(escore, (char *)&resp, 4);
	if (ret < 0) {
		dev_dbg(escore->dev, "%s(): error sending request = %d\n",
			__func__, ret);
		goto EXIT;
	}

	le32_to_cpus(resp);
	dev_dbg(escore->dev, "%s(): resp=0x%08x\n", __func__, resp);
	if ((resp & 0xffff0000) != (ES_WRITE_DATA_BLOCK << 16)) {
		dev_err(escore->dev, "%s(): invalid write data block 0x%08x\n",
			__func__, resp);
		goto EXIT;
	}

	dptr = voice_sense->vs_keyword_param;
	for (rem = voice_sense->vs_keyword_param_size; rem > 0;
					rem -= 4, dptr += 4) {
		wdb[0] = dptr[3];
		wdb[1] = dptr[2];
		wdb[2] = dptr[1];
		wdb[3] = dptr[0];
		ret = escore->bus.ops.write(escore, (char *)wdb, 4);
		if (ret < 0) {
			dev_err(escore->dev, "%s(): v-s wdb error offset=%hu\n",
			    __func__, dptr - voice_sense->vs_keyword_param);
			goto EXIT;
		}
	}

	usleep_range(10000, 10000);
	memset(&resp, 0, 4);

	ret = escore->bus.ops.read(escore, (char *)&resp, 4);
	if (ret < 0) {
		dev_dbg(escore->dev, "%s(): error sending request = %d\n",
			__func__, ret);
		goto EXIT;
	}

	le32_to_cpus(resp);
	dev_dbg(escore->dev, "%s(): resp=0x%08x\n", __func__, resp);
	if (resp & 0xffff) {
		dev_err(escore->dev, "%s(): write data block error 0x%08x\n",
			__func__, resp);
		goto EXIT;
	}

	dev_info(escore->dev, "%s(): v-s wdb success\n", __func__);
EXIT:
	mutex_unlock(&escore->api_mutex);
	if (ret != 0)
		dev_err(escore->dev, "%s(): v-s wdb failed ret=%d\n",
			__func__, ret);
	return ret;
}

int escore_put_vs_stored_keyword(struct snd_kcontrol *kcontrol,
				      struct snd_ctl_elem_value *ucontrol)
{
	int op;
	int ret;
	struct escore_voice_sense *voice_sense =
			(struct escore_voice_sense *) escore_priv.voice_sense;

	op = ucontrol->value.enumerated.item[0];
	dev_dbg(escore_priv.dev, "%s(): op=%d\n", __func__, op);

	ret = 0;
	switch (op) {
	case 0:
		dev_dbg(escore_priv.dev, "%s(): keyword params put...\n",
			__func__);
		ret = escore_write_vs_data_block(&escore_priv);
		break;
	case 1:
		dev_dbg(escore_priv.dev, "%s(): keyword params get...\n",
			__func__);
		ret = escore_read_vs_data_block(&escore_priv);
		break;
	case 2:
		dev_dbg(escore_priv.dev, "%s(): keyword params clear...\n",
			__func__);
		voice_sense->vs_keyword_param_size = 0;
		break;
	default:
		BUG_ON(0);
	};

	return ret;
}

int escore_vs_request_firmware(struct escore_priv *escore,
				const char *vs_filename)
{
	struct escore_voice_sense *voice_sense =
			(struct escore_voice_sense *) escore->voice_sense;

	return request_firmware((const struct firmware **)&voice_sense->vs,
			      vs_filename, escore->dev);
}

void escore_vs_release_firmware(struct escore_priv *escore)
{
	struct escore_voice_sense *voice_sense =
			(struct escore_voice_sense *) escore->voice_sense;

	release_firmware(voice_sense->vs);
}

int escore_vs_init(struct escore_priv *escore)
{
	int rc = 0;

	escore->voice_sense = (struct escore_voice_sense *)
			kmalloc(sizeof(struct escore_voice_sense), GFP_KERNEL);
	if (!escore->voice_sense)
		rc = -ENOMEM;

	return rc;
}
