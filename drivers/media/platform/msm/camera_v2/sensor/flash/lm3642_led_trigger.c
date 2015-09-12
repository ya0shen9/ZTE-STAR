/* Copyright (c) 2012-2013, The Linux Foundation. All rights reserved.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 and
 * only version 2 as published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
 */
 
#include <linux/module.h>
#include "msm_led_flash.h"
#include "msm_cci.h"
#include "msm_camera_io_util.h"

#define CONFIG_FLASH_DEBUG
#ifdef CONFIG_FLASH_DEBUG
#define CDBG(fmt, args...) pr_err(fmt, ##args)
#else
#define CDBG(fmt, args...) do { } while (0)
#endif

#define ENABLE_REG 0xa
#define FLAGS_REG 0x0b
#define FLASH_FEATURES_REG 0x08
#define CURRENT_REG 0x09
#define TORCH_RT_REG 0x06
#define lm3642_ID 0xf
#define lm3642_FLASH_STROBE 32
#define lm3642_FLASH_TORCH_EN 55

static int32_t lm3642_flash_trigger_get_subdev_id(struct msm_led_flash_ctrl_t *fctrl,
	void *arg)
{
	uint32_t *subdev_id = (uint32_t *)arg;
	if (!subdev_id) {
		pr_err("%s:%d failed\n", __func__, __LINE__);
		return -EINVAL;
	}
	*subdev_id = fctrl->pdev->id;
	CDBG("%s:%d subdev_id %d\n", __func__, __LINE__, *subdev_id);
	return 0;
}

static int lm3642_flash_trigger_power_up(struct msm_led_flash_ctrl_t *a_ctrl)
{
	int rc = 0;
	
	printk("chengjiatest: lm3642 flash trigger power up\n");
	if((rc = gpio_request(lm3642_FLASH_TORCH_EN, "lm3642_torch_enable")) < 0) {
		printk("chengjiatest: request gpio lm3642_FLASH_TORCH_EN 79 error!\n");
		return rc;
	}	
 	gpio_direction_output(lm3642_FLASH_TORCH_EN, 1);
	if((rc = gpio_request(lm3642_FLASH_STROBE, "lm3642_flash_strobe")) < 0) {
		printk("chengjiatest: request gpio lm3642_FLASH_STROBE 24  error!\n");
		return rc;
	}	
 	gpio_direction_output(lm3642_FLASH_STROBE, 1);	

	msleep(5);
 
	return rc;
}

static int lm3642_flash_trigger_power_down(struct msm_led_flash_ctrl_t *a_ctrl)
{
	int rc = 0;
	printk("chengjiatest: lm3642 flash trigger power down\n");

	gpio_set_value(lm3642_FLASH_TORCH_EN, 0);
	gpio_set_value(lm3642_FLASH_STROBE, 0);
	gpio_free(lm3642_FLASH_TORCH_EN);
	gpio_free(lm3642_FLASH_STROBE);
	
	return rc;
}

static int lm3642_flash_trigger_config(struct msm_led_flash_ctrl_t *fctrl,
	void *data)
{
	int rc = 0;
	struct msm_camera_led_cfg_t *cfg = (struct msm_camera_led_cfg_t *)data;
	printk("chengjiatest: called led_state %d\n", cfg->cfgtype);

	switch (cfg->cfgtype) {
	case MSM_CAMERA_LED_OFF:
	  rc = fctrl->flash_i2c_client->i2c_func_tbl->i2c_write(fctrl->flash_i2c_client, 
		       ENABLE_REG, 0x00 , MSM_CAMERA_I2C_BYTE_DATA);
		break;
	case MSM_CAMERA_LED_LOW:
		rc = fctrl->flash_i2c_client->i2c_func_tbl->i2c_write(fctrl->flash_i2c_client, 
		       CURRENT_REG, 0x3A , MSM_CAMERA_I2C_BYTE_DATA);
		rc = fctrl->flash_i2c_client->i2c_func_tbl->i2c_write(fctrl->flash_i2c_client, 
		       ENABLE_REG, 0x22 , MSM_CAMERA_I2C_BYTE_DATA);
		break;
	case MSM_CAMERA_LED_HIGH:
     		 rc = fctrl->flash_i2c_client->i2c_func_tbl->i2c_write(fctrl->flash_i2c_client, 
		       FLASH_FEATURES_REG, 0x7A , MSM_CAMERA_I2C_BYTE_DATA);
     		 rc = fctrl->flash_i2c_client->i2c_func_tbl->i2c_write(fctrl->flash_i2c_client, 
		       CURRENT_REG, 0x7c , MSM_CAMERA_I2C_BYTE_DATA);
    		rc = fctrl->flash_i2c_client->i2c_func_tbl->i2c_write(fctrl->flash_i2c_client, 
		       ENABLE_REG, 0x23 , MSM_CAMERA_I2C_BYTE_DATA);
		break;
	case MSM_CAMERA_LED_INIT:
		lm3642_flash_trigger_power_up(fctrl);
		break;
	case MSM_CAMERA_LED_RELEASE:
		lm3642_flash_trigger_power_down(fctrl);
		break;
	default:
		rc = -EFAULT;
		break;
	}
	CDBG("flash_set_led_state: return %d\n", rc);
	return rc;
}

static struct msm_camera_i2c_fn_t msm_led_cci_func_tbl = {
	.i2c_read = msm_camera_cci_i2c_read,
	.i2c_read_seq = msm_camera_cci_i2c_read_seq,
	.i2c_write = msm_camera_cci_i2c_write,
	.i2c_write_table = msm_camera_cci_i2c_write_table,
	.i2c_write_seq_table = msm_camera_cci_i2c_write_seq_table,
	.i2c_write_table_w_microdelay =
		msm_camera_cci_i2c_write_table_w_microdelay,
	.i2c_util = msm_sensor_cci_i2c_util,
};


#if defined(CONFIG_PROJECT_P898S10_ZTE) || defined(CONFIG_PROJECT_P892S10_ZTE)
static const struct of_device_id lm3642_led_trigger_dt_match[] = {
	{.compatible = "qcom,lm3642_NO", .data = NULL},   
	{}
};
#else
static const struct of_device_id lm3642_led_trigger_dt_match[] = {
	{.compatible = "qcom,lm3642", .data = NULL},   
	{}
};
#endif

static struct msm_flash_fn_t lm3642_flash_trigger_func_tbl = {
	.flash_get_subdev_id = lm3642_flash_trigger_get_subdev_id,
	.flash_led_config = lm3642_flash_trigger_config,
};

#define lm3642_TORCH_MODE 2
#define lm3642_FLASH_MODE 1

static int check_lm3642_device_id(struct msm_led_flash_ctrl_t *a_ctrl)
{
	int rc = 0;
	uint16_t current_setting = 0x80;

	lm3642_flash_trigger_power_up(a_ctrl);

	rc = a_ctrl->flash_i2c_client->i2c_func_tbl->i2c_util(
		a_ctrl->flash_i2c_client, MSM_CCI_INIT);
	if (rc < 0) {
		printk("chengjiatest: cci_init failed\n");
		goto check_error2;
	}
	rc = a_ctrl->flash_i2c_client->i2c_func_tbl->i2c_read(a_ctrl->flash_i2c_client, 
		CURRENT_REG, &current_setting, MSM_CAMERA_I2C_BYTE_DATA);
	if(rc < 0) {
		printk("chengjiatest: i2c read lm3642 error!\n");
		goto check_error1;
	}
	printk("chengjiatest: read from device lm3642 id is 0x%x\n", current_setting);

	rc = a_ctrl->flash_i2c_client->i2c_func_tbl->i2c_util(
		a_ctrl->flash_i2c_client, MSM_CCI_RELEASE);
	if (rc < 0) {
		printk("chengjiatest: cci_release failed\n");
	}

	lm3642_flash_trigger_power_down(a_ctrl);
	return 0;	
check_error1:
	rc = a_ctrl->flash_i2c_client->i2c_func_tbl->i2c_util(
		a_ctrl->flash_i2c_client, MSM_CCI_RELEASE);
check_error2:
	lm3642_flash_trigger_power_down(a_ctrl);
	return -1;
}


static int32_t lm3642_led_trigger_probe(struct platform_device *pdev)
{
	int32_t rc = 0;
	struct msm_camera_cci_client *cci_client = NULL;
	struct msm_led_flash_ctrl_t *s_ctrl;
	enum cci_i2c_master_t cci_i2c_master;

	printk("chengjiatest: lm3642 led trigger probe\n");
      	if (!pdev->dev.of_node) {		
	       pr_err("of_node NULL\n");		
		return -EINVAL;	
	}
	s_ctrl = kzalloc(sizeof(struct msm_led_flash_ctrl_t), GFP_KERNEL);
	if(!s_ctrl){
		pr_err("%s:%d failed no memory\n", __func__, __LINE__);
		return -ENOMEM;
	}
	       
	rc = of_property_read_u32((&pdev->dev)->of_node, "cell-index",
		&pdev->id);
	if (rc < 0) {
		kfree(s_ctrl);
		printk("failed rc %d\n", rc);
		return rc;
	}
	rc = of_property_read_u32((&pdev->dev)->of_node, "qcom,cci-master",
		&cci_i2c_master);
	if (rc < 0) {
		kfree(s_ctrl);
		printk("failed rc %d\n", rc);
		return rc;
	}
	s_ctrl->flash_i2c_client = kzalloc(sizeof(
		struct msm_camera_i2c_client), GFP_KERNEL);
	if (!s_ctrl->flash_i2c_client) {
		printk("failed no memory\n");
		kfree(s_ctrl);
		return -ENOMEM;
	}
	s_ctrl->flash_i2c_client->cci_client = kzalloc(sizeof(
		struct msm_camera_cci_client), GFP_KERNEL);
	if (!s_ctrl->flash_i2c_client->cci_client) {
		printk("failed no memory\n");
		kfree(s_ctrl->flash_i2c_client);
		kfree(s_ctrl);
		return -ENOMEM;
	}
	
	cci_client = s_ctrl->flash_i2c_client->cci_client;
	cci_client->cci_subdev = msm_cci_get_subdev();
	cci_client->cci_i2c_master = cci_i2c_master;
	cci_client->sid = 0x63;
	cci_client->retries = 3;
	cci_client->id_map = 0;
	s_ctrl->pdev = pdev;
 	s_ctrl->flash_i2c_client->i2c_func_tbl = &msm_led_cci_func_tbl;
	s_ctrl->flash_i2c_client->addr_type = MSM_CAMERA_I2C_BYTE_ADDR; 
       s_ctrl->func_tbl = &lm3642_flash_trigger_func_tbl;

	printk("chengjiatest: cell-index %d, cci-master %d\n", pdev->id, cci_client->cci_i2c_master);
	if((rc = check_lm3642_device_id(s_ctrl)) != 0) {
		kfree(s_ctrl->flash_i2c_client->cci_client);
		kfree(s_ctrl->flash_i2c_client);
		kfree(s_ctrl);
		return rc;
	}
	rc = msm_led_flash_create_v4lsubdev(pdev, s_ctrl);
	
	return rc;
}

MODULE_DEVICE_TABLE(of, msm_led_trigger_dt_match);

static struct platform_driver lm3642_led_trigger_driver = {
	.driver = {
		.name = "qcom,lm3642",
		.owner = THIS_MODULE,
		.of_match_table = lm3642_led_trigger_dt_match,
	},
};

static int __init lm3642_led_trigger_add_driver(void)
{
	//printk("chengjiatest: lm3642_led_trigger_add_driver!\n");
	return platform_driver_probe(&lm3642_led_trigger_driver,
		lm3642_led_trigger_probe);
}

module_init(lm3642_led_trigger_add_driver);
MODULE_DESCRIPTION("LED TRIGGER FLASH");
MODULE_LICENSE("GPL v2");
