/* Copyright (c) 2011-2013, The Linux Foundation. All rights reserved.
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


#include "msm_sensor.h"
#include "msm_cci.h"
#include "msm_camera_io_util.h"
#include "ap1302.h"
#include <linux/kobject.h>
#include <linux/string.h>
#include <linux/sysfs.h>
#include <linux/module.h>
#include <linux/init.h>
#include <linux/kthread.h>
#include <linux/proc_fs.h>

#define SPI_BUS_SPEED     (19200000)
#define CONFIG_MSMB_CAMERA_DEBUG
//#undef CONFIG_MSMB_CAMERA_DEBUG
#define PROCESS_DEBUG
#undef CDBG
#ifdef CONFIG_MSMB_CAMERA_DEBUG
#define CDBG(fmt, args...) pr_err(fmt, ##args)
#else
#define CDBG(fmt, args...) do { } while (0)
#endif

#define AP1302_SENSOR_NAME "ap1302"
DEFINE_MSM_MUTEX(ap1302_mut);

	wait_queue_head_t exif_wq;
static int exif_wq_flag=0;
static struct msm_sensor_ctrl_t ap1302_s_ctrl;
static struct spi_device *ap1302_spi_device = NULL;
static int af_touch_after_manual = 0;
#define AF_CONTINUS 0
#define AF_TOUCH 1
#define AF_MANUAL 2
#define AF_AREA 3
static int ap1302_af_mode = 0;
static DEFINE_MUTEX(ap1302_mutex);
static uint16_t reg_data_iso=0x0100;
static uint32_t	reg_data_exp=0x4000;
static uint16_t	flash_needed=0;
static uint16_t	camera_state=1;
/**************
is_snapshot_mode
0 preview
1 snapshot
2 enter video
3 exit video
4 zsl mode
**************/
static int32_t is_snapshot_mode = 0;

static struct msm_sensor_power_setting ap1302_power_setting[] = {
	{
		.seq_type = SENSOR_GPIO,
		.seq_val = SENSOR_GPIO_STANDBY,///////isp standby high
		.config_val = GPIO_OUT_LOW,///////////////orig high
		.delay = 10,//50
	},
	{
		.seq_type = SENSOR_GPIO,
		.seq_val = SENSOR_GPIO_RESET,////////isp reset low
		.config_val = GPIO_OUT_LOW,
		.delay = 10,//20
	},
	{
		.seq_type = SENSOR_GPIO,
		.seq_val = SENSOR_GPIO_ISP_XVDD,//////isp 1.2V
		.config_val = GPIO_OUT_HIGH,
		.delay = 10,//20
	},
	/** ZTE_MODIFY by zhangxiaobo to use new power control for new 898S10 board 2014-03-11 */
	{
		.seq_type = SENSOR_GPIO,
		.seq_val = SENSOR_GPIO_ISP_IOVDD_HMISC,/////////isp1.8V
		.config_val = GPIO_OUT_HIGH,
		.delay =10,//20
	},
	/** ZTE_MODIFY end */
	{
		.seq_type = SENSOR_GPIO,
		.seq_val = SENSOR_GPIO_ISP_IOVDD,/////////isp1.8V
		.config_val = GPIO_OUT_HIGH,
		.delay = 10,//20
	},

		{
		.seq_type = SENSOR_CLK,
		.seq_val = SENSOR_CAM_MCLK,
		.config_val = 24000000,
		.delay = 10,//20
	},
	
	{
		.seq_type = SENSOR_GPIO,
		.seq_val = SENSOR_GPIO_RESET,////////isp reset high
		.config_val = GPIO_OUT_HIGH,
		.delay = 10,
	},
	{
		.seq_type = SENSOR_GPIO,
		.seq_val = SENSOR_GPIO_VDIG,
		.config_val = GPIO_OUT_HIGH,
		.delay = 5,
	},
#ifdef CONFIG_PROJECT_P892S10_ZTE
	{
		.seq_type = SENSOR_VREG,
		.seq_val = CAM_VDIG,
		.config_val = 0,
		.delay = 5,
	},
#endif
	
	{
		.seq_type = SENSOR_VREG,
		.seq_val = CAM_VAF,
		.config_val = 0,
		.delay = 5,
	},
	#ifdef CONFIG_PROJECT_P898S10_ZTE
	/*{
		.seq_type = SENSOR_GPIO,
		.seq_val = SENSOR_GPIO_FLASH_INT_898,
		.config_val = GPIO_OUT_LOW,
		.delay = 50,
	},*/
	{
		.seq_type = SENSOR_GPIO,
		.seq_val = SENSOR_GPIO_FLASH_HWEN_898,
		.config_val = GPIO_OUT_HIGH,
		.delay = 10,//50
	},
#endif

	
#ifdef CONFIG_PROJECT_P892S10_ZTE
	{
		.seq_type = SENSOR_GPIO,
		.seq_val = SENSOR_GPIO_FLASH_HWEN_892,
		.config_val = GPIO_OUT_HIGH,
		.delay = 10,//50
	},
	
	#endif
	
	{
		.seq_type = SENSOR_I2C_MUX,
		.seq_val = 0,
		.config_val = 0,
		.delay = 5,
	},
};

static struct msm_camera_i2c_reg_conf ap1302_start_settings1[] = {
	{0x601a, 0x8050},
	//{0x601a, 0x8100},///0x8100
};

static struct msm_camera_i2c_reg_conf ap1302_start_settings2[] = {
	//{0x601a, 0x8010},
	{0x601a, 0x8140},///0x8100
};

static struct msm_camera_i2c_reg_conf ap1302_start_settings3[] = {
	{0x601a, 0x0110},
	//{0x601a, 0x8100},///0x8100
};

static struct msm_camera_i2c_reg_conf ap1302_stop_settings[] = {
	{0x601a, 0x8040},
	{0x601a, 0x8140},
};

#if 0
static struct msm_camera_i2c_reg_conf ap1302_snapshot_settings1[] = {
	{0x1002, 0x0012},
	{0x1004, 0x0028},///
	{0x1000, 0x001c},
};
#endif

#if 1
static struct msm_camera_i2c_reg_conf ap1302_snapshot_settings2[] = {
	{0x1002, 0x0422},
	{0x1004, 0x0000},//0x0000//0x1000
	{0x1000, 0x001c},
};
#endif

static struct msm_camera_i2c_reg_conf ap1302_preview_settings[] = {
	{0x1000, 0x0000},//0x0001
	{0x2000, 1920},
	{0x2002, 1440},
	{0x4000, 1920},/////////add for video
	{0x4002, 1440},
};

static struct msm_camera_i2c_reg_conf ap1302_zsl_settings[] = {
	{0x1000, 0x0000},//0x0001
	{0x2000, 3208},
	{0x2002, 2408},
	{0x4000, 3208},
	{0x4002, 2408},
};

static struct msm_camera_i2c_reg_conf ap1302_wb_cloudy_daylight[] = {
	{0x5100, 0x1156},
};

static struct msm_camera_i2c_reg_conf ap1302_wb_sunny_daylight[] = {
	{0x5100, 0x1155},
};

static struct msm_camera_i2c_reg_conf ap1302_wb_incandescent[] = {
	{0x5100, 0x1153},
};

static struct msm_camera_i2c_reg_conf ap1302_wb_fluorescent[] = {
	{0x5100, 0x1153},
};

static struct msm_camera_i2c_reg_conf ap1302_wb_auto[] = {
	{0x5100, 0x115F},
};

static struct v4l2_subdev_info ap1302_subdev_info[] = {
	{
		.code   = V4L2_MBUS_FMT_YUYV8_2X8,
		.colorspace = V4L2_COLORSPACE_JPEG,
		.fmt    = 1,
		.order  = 0,
	},
};

static const struct i2c_device_id ap1302_i2c_id[] = {
	{AP1302_SENSOR_NAME, (kernel_ulong_t)&ap1302_s_ctrl},
	{ }
};

static int ap1302_write_i2c_array(struct msm_sensor_ctrl_t *s_ctrl, struct msm_camera_i2c_reg_conf *array, int length)
{
	int rc = 0;

	rc = s_ctrl->sensor_i2c_client->i2c_func_tbl->
			i2c_write_conf_tbl(s_ctrl->sensor_i2c_client,
			array,
			length,
			MSM_CAMERA_I2C_WORD_DATA);
	if(rc) {
		printk("chengjiatest: ap1302_write_i2c_array error!\n");
	}

	return rc;
	
}

static void ap1302_write_i2c_reg(uint32_t addr, uint16_t data)
{
	ap1302_s_ctrl.sensor_i2c_client->i2c_func_tbl->
			i2c_write(ap1302_s_ctrl.sensor_i2c_client,
			addr,
			data,
			MSM_CAMERA_I2C_WORD_DATA);
	return;
	
}

static void ap1302_read_i2c_reg(uint32_t addr, uint16_t *data)
{
	ap1302_s_ctrl.sensor_i2c_client->i2c_func_tbl->
			i2c_read(ap1302_s_ctrl.sensor_i2c_client,
			addr,
			data,
			MSM_CAMERA_I2C_WORD_DATA);
	return;
	
}
static int32_t msm_ap1302_i2c_probe(struct i2c_client *client,
	const struct i2c_device_id *id)
{
	CDBG("%s, E.", __func__);

	return msm_sensor_i2c_probe(client, id, &ap1302_s_ctrl);
}

static struct i2c_driver ap1302_i2c_driver = {
	.id_table = ap1302_i2c_id,
	.probe  = msm_ap1302_i2c_probe,
	.driver = {
		.name = AP1302_SENSOR_NAME,
	},
};

static struct msm_camera_i2c_client ap1302_sensor_i2c_client = {
	.addr_type = MSM_CAMERA_I2C_BYTE_ADDR,
};

#if defined(CONFIG_PROJECT_P898S10_ZTE)
static const struct of_device_id ap1302_dt_match[] = {
	{.compatible = "qcom,ap1302_P898S10", .data = &ap1302_s_ctrl},
	{}
};
#else
static const struct of_device_id ap1302_dt_match[] = {
	{.compatible = "qcom,ap1302_P892S10", .data = &ap1302_s_ctrl},
	{}
};
#endif


MODULE_DEVICE_TABLE(of, ap1302_dt_match);

static struct platform_driver ap1302_platform_driver = {
	.driver = {
		.name = "qcom,ap1302",
		.owner = THIS_MODULE,
		.of_match_table = ap1302_dt_match,
	},
};
static int32_t flash_mode = 0;
enum ap1302_sys_flag {
	ap1302_enable_initinfo,
	ap1302_disable_iso,
	ap1302_disable_wb,
	ap1302_disable_effect,
	ap1302_disable_ev,
	ap1302_disable_scene,
	ap1302_disable_anti,
	ap1302_disable_sharpness,
	ap1302_disable_contrast,
	ap1302_disable_saturation,
	ap1302_disable_flash,
	ap1302_disable_brightness,
	ap1302_disable_ae_metering,
	ap1302_enable_afinfo,
	ap1302_sys_flag_max,
};

static int ap1302_debug_set[ap1302_sys_flag_max] = {0};

static void ap1302_set_default_debug_flag(void)
{
	int index = 0;

	for(index = 0; index < ap1302_sys_flag_max; index++) {
		ap1302_debug_set[index] = 0;
	}

	return;
}
static ssize_t set_debug_flag(struct device *dev,
	struct device_attribute *attr, const char *buf, size_t count)
{
	printk("chengjiatest: %s, count = %d\n", buf, count);
	if(count != ap1302_sys_flag_max+1) {
		printk("chengjiatest: count form sys isn't right!just do nothing\n");
		return count;
	}
	ap1302_set_default_debug_flag();
	if(buf[0] == '1') {
		printk("chengjiatest: enable ap1302 initinfo\n");
		ap1302_debug_set[ap1302_enable_initinfo] = 1;
	}if(buf[1] == '1') {
		printk("chengjiatest: disable ap1302 iso\n");
		ap1302_debug_set[ap1302_disable_iso] = 1;
	}
	if(buf[2] == '1') {
		printk("chengjiatest: disable ap1302 wb\n");
		ap1302_debug_set[ap1302_disable_wb] = 1;
	}
	if(buf[3] == '1') {
		printk("chengjiatest: disable ap1302 effect\n");
		ap1302_debug_set[ap1302_disable_effect] = 1;
	}
	if(buf[4] == '1') {
		printk("chengjiatest: disable ap1302 ev\n");
		ap1302_debug_set[ap1302_disable_ev] = 1;
	}
	if(buf[5] == '1') {
		printk("chengjiatest: disable ap1302 scene\n");
		ap1302_debug_set[ap1302_disable_scene] = 1;
	}
	if(buf[6] == '1') {
		printk("chengjiatest: disable ap1302 antibanding\n");
		ap1302_debug_set[ap1302_disable_anti] = 1;
	}
	if(buf[7] == '1') {
		printk("chengjiatest: disable ap1302 sharpness\n");
		ap1302_debug_set[ap1302_disable_sharpness] = 1;
	}
	if(buf[8] == '1') {
		printk("chengjiatest: disable ap1302 contrast\n");
		ap1302_debug_set[ap1302_disable_contrast] = 1;
	}
	if(buf[9] == '1') {
		printk("chengjiatest: disable ap1302 saturation\n");
		ap1302_debug_set[ap1302_disable_saturation] = 1;
	}
	if(buf[10] == '1') {
		printk("chengjiatest: disable ap1302 flash\n");
		ap1302_debug_set[ap1302_disable_flash] = 1;
	}
	if(buf[11] == '1') {
		printk("chengjiatest: disable ap1302 brightness\n");
		ap1302_debug_set[ap1302_disable_brightness] = 1;
	}
	if(buf[12] == '1') {
		printk("chengjiatest: disable ap1302 ae\n");
		ap1302_debug_set[ap1302_disable_ae_metering] = 1;
	}
	if(buf[13] == '1') {
		printk("chengjiatest: enabel ap1302 afinfo\n");
		ap1302_debug_set[ap1302_enable_afinfo] = 1;
	}
	
	return count;
}

static ssize_t show_debug_flag(struct device *d, struct device_attribute *attr, char *buf)
{
	
	return sprintf(buf, "echo [e_initinfo][d_iso][d_wb][d_effect][d_ev][d_scene][d_anti][d_sharp][d_contrast][d_saturation][d_flash][d_bright][d_ae][e_afinfo] > ap1302_debug \n");
}
static DEVICE_ATTR(ap1302_debug, S_IWUSR | S_IRUGO, show_debug_flag,
	set_debug_flag);

static struct attribute *ap1302_sysfs_entries[] = {
	&dev_attr_ap1302_debug.attr,
	NULL,
};

static const struct attribute_group ap1302_group = {
	.attrs = ap1302_sysfs_entries,
};
static struct kobject *ap1302_obj = NULL;
static int32_t ap1302_platform_probe(struct platform_device *pdev)
{
	int32_t rc;
	const struct of_device_id *match;
	CDBG("%s, E.", __func__);
	match = of_match_device(ap1302_dt_match, &pdev->dev);
	rc = msm_sensor_platform_probe(pdev, match->data);
	if(0) {
	if(!rc) {
		printk("chengjiatest: create sysfs entry for ap1302\n");
		ap1302_obj = kobject_create_and_add("ap1302", kernel_kobj);
		if(sysfs_create_group(ap1302_obj, &ap1302_group)) {
			printk("chengjiatest: error!\n");
		}
	}
		}
	return rc;
}

static int ap1302_download_bulk_i2c(struct msm_sensor_ctrl_t *s_ctrl, uint8_t *data, uint16_t addr, int length_bulk) 
{
	int rc = 0;
	int index = 0;
	uint8_t *temp = data;
	struct msm_camera_i2c_seq_reg_setting reg_setting;
	reg_setting.reg_setting = kmalloc(sizeof(struct msm_camera_i2c_seq_reg_array), GFP_KERNEL); 
	reg_setting.reg_setting[0].reg_addr = addr;
	while(length_bulk >= 6) {
		for(index = 0; index < 6; index++) {
			reg_setting.reg_setting[0].reg_data[index] = temp[index];
		}
		reg_setting.reg_setting[0].reg_data_size = 6;
  		reg_setting.size = 1;
  		reg_setting.addr_type = MSM_CAMERA_I2C_WORD_ADDR;
  		reg_setting.delay = 0;
		rc = msm_camera_cci_i2c_write_seq_table(s_ctrl->sensor_i2c_client, &reg_setting);
		length_bulk -= 6;
		temp += 6;
		reg_setting.reg_setting[0].reg_addr += 6;
	}
	
	if(length_bulk) {
		for(index = 0; index < length_bulk; index++) {
			reg_setting.reg_setting[0].reg_data[index] = temp[index];
		}
		reg_setting.reg_setting[0].reg_data_size = length_bulk;
  		reg_setting.size = 1;
  		reg_setting.addr_type = MSM_CAMERA_I2C_WORD_ADDR;
  		reg_setting.delay = 0;
		rc = msm_camera_cci_i2c_write_seq_table(s_ctrl->sensor_i2c_client, &reg_setting);		
	}

	kfree(reg_setting.reg_setting);
	return rc;
}

static int ap1302_enable_spi(void)
{
	int rc = 0;
	rc = ap1302_download_bulk_i2c(&ap1302_s_ctrl, enable_spi_reg1, 0xf038, ARRAY_SIZE(enable_spi_reg1));
	rc = ap1302_download_bulk_i2c(&ap1302_s_ctrl, enable_spi_reg2, 0xe008, ARRAY_SIZE(enable_spi_reg2));
	rc = ap1302_download_bulk_i2c(&ap1302_s_ctrl, enable_spi_reg3, 0xe000, ARRAY_SIZE(enable_spi_reg3));
	return rc;
}

static int ap1302_download_bulk_spi(uint8_t *data, int length_bulk) 
{
	int rc = 0;

	if(ap1302_spi_device) {
		rc = spi_write(ap1302_spi_device, data, length_bulk);
		printk("chengjiatest: spi write bulk rc = %d---\n", rc);
	}

	return rc;
}
extern int zte_get_board_id(void);
extern  char zte_get_bom_id(void);

static int ap1302_burst_spi(struct msm_sensor_ctrl_t *s_ctrl) 
{
	int rc = 0;
	char bomid;
	struct msm_camera_i2c_client *sensor_i2c_client = s_ctrl->sensor_i2c_client;
	rc = ap1302_enable_spi();
	//msleep(50);
	rc = sensor_i2c_client->i2c_func_tbl->i2c_write(sensor_i2c_client, 
		      0xF052, 0xFFFF , MSM_CAMERA_I2C_WORD_DATA);
	rc=zte_get_board_id();
	bomid=zte_get_bom_id();
	printk("chengjiatest add zte_get_board_id =%d\n",rc);

#ifdef CONFIG_PROJECT_P892S10_ZTE	
			printk("chengjiatest add bom_id=%c\n",bomid);

			if((rc == 0 )||((rc == 1)&&(bomid=='D'))) {

			ap1302_download_bulk_spi(block1, ARRAY_SIZE(block1));
				rc = sensor_i2c_client->i2c_func_tbl->i2c_write(sensor_i2c_client, 
					  0x6002, 0x0002 , MSM_CAMERA_I2C_WORD_DATA);
				msleep(120);//200
				ap1302_download_bulk_spi(block2, ARRAY_SIZE(block2));
				ap1302_download_bulk_spi(block3, ARRAY_SIZE(block3));
				ap1302_download_bulk_spi(block4, ARRAY_SIZE(block4));
				ap1302_download_bulk_spi(block5, ARRAY_SIZE(block5));
				ap1302_download_bulk_spi(block6, ARRAY_SIZE(block6));
				ap1302_download_bulk_spi(block7, ARRAY_SIZE(block7));
				rc = sensor_i2c_client->i2c_func_tbl->i2c_write(sensor_i2c_client, 
					  0x6002, 0xFFFF , MSM_CAMERA_I2C_WORD_DATA);
				printk("chengjiatest add load without otp  \n");
			}
			else {
			ap1302_download_bulk_spi(block_otp1, ARRAY_SIZE(block_otp1));
			rc = sensor_i2c_client->i2c_func_tbl->i2c_write(sensor_i2c_client, 
				  0x6002, 0x0002 , MSM_CAMERA_I2C_WORD_DATA);
			msleep(120);//200
			ap1302_download_bulk_spi(block_otp2, ARRAY_SIZE(block_otp2));
			ap1302_download_bulk_spi(block_otp3, ARRAY_SIZE(block_otp3));
			ap1302_download_bulk_spi(block_otp4, ARRAY_SIZE(block_otp4));
			ap1302_download_bulk_spi(block_otp5, ARRAY_SIZE(block_otp5));
			ap1302_download_bulk_spi(block_otp6, ARRAY_SIZE(block_otp6));
			ap1302_download_bulk_spi(block_otp7, ARRAY_SIZE(block_otp7));
			ap1302_download_bulk_spi(block_otp8, ARRAY_SIZE(block_otp8));
			rc = sensor_i2c_client->i2c_func_tbl->i2c_write(sensor_i2c_client, 
				  0x6002, 0xFFFF , MSM_CAMERA_I2C_WORD_DATA);
			printk("chengjiatest add load otp \n");
			}
#endif
#ifdef CONFIG_PROJECT_P898S10_ZTE	
			ap1302_download_bulk_spi(block_otp1, ARRAY_SIZE(block_otp1));
			rc = sensor_i2c_client->i2c_func_tbl->i2c_write(sensor_i2c_client, 
				  0x6002, 0x0002 , MSM_CAMERA_I2C_WORD_DATA);
			msleep(120);//200
			ap1302_download_bulk_spi(block_otp2, ARRAY_SIZE(block_otp2));
			ap1302_download_bulk_spi(block_otp3, ARRAY_SIZE(block_otp3));
			ap1302_download_bulk_spi(block_otp4, ARRAY_SIZE(block_otp4));
			ap1302_download_bulk_spi(block_otp5, ARRAY_SIZE(block_otp5));
			ap1302_download_bulk_spi(block_otp6, ARRAY_SIZE(block_otp6));
			ap1302_download_bulk_spi(block_otp7, ARRAY_SIZE(block_otp7));
			ap1302_download_bulk_spi(block_otp8, ARRAY_SIZE(block_otp8));
			rc = sensor_i2c_client->i2c_func_tbl->i2c_write(sensor_i2c_client, 
				  0x6002, 0xFFFF , MSM_CAMERA_I2C_WORD_DATA);
			printk("chengjiatest add load otp \n");

#endif

	return rc;	
}

static int mini_isp_probe(struct spi_device *spi)
{
	int rc = 0;

	spi->mode = SPI_MODE_0;	
	spi->max_speed_hz = SPI_BUS_SPEED;
	spi->bits_per_word = 8;
	rc = spi_setup(spi);
	if (rc<0) {
		printk("chengjiatest: probe - setup spi error");
		return rc;
	}	
       ap1302_spi_device = spi; 	
	printk("chengjiatest: mini_isp probe success\n");
	
	return rc;
}

static const struct of_device_id miniisp_dt_match[] = {
       {  .compatible  =  "qcom,mini_isp",},
       {  },
                 };

static struct spi_driver mini_isp_drv = {
	.driver = {
		.name =         "mini_isp",
		.owner =        THIS_MODULE,
		.of_match_table  = miniisp_dt_match,
	},
	.probe =        mini_isp_probe,
	.remove =       NULL,
};
static int ap1302_check_preview(void)
{
	int rc = 0;
	uint32_t reg_addr = 0x0a2c;
	int index = 0;
	uint16_t data = 0;
	char pri_data = 0;
	printk("chengjiatest: ap1302_check_preview   ");
	for(index = 0; index < 512; index++) {
	rc = ap1302_s_ctrl.sensor_i2c_client->i2c_func_tbl->i2c_read(
			ap1302_s_ctrl.sensor_i2c_client,
			reg_addr,
			&data, MSM_CAMERA_I2C_BYTE_DATA);
			reg_addr = reg_addr + 1;
			pri_data = (char)data;
		printk("%c  ", pri_data);
	}
	printk("\n");

	return rc;
}
static struct task_struct *isp_info_task = NULL;
static struct task_struct *isp_exif_task = NULL;
#define AP1302_STREAM_OFF 0
#define AP1302_STREAM_ON 1
#define AP1302_POWER_OFF 2
#define AP1302_POWER_ON 3
#define AP1302_INIT_ON 4
#define AP1302_IN_TORCH_MODE 5
static int ap1302_stream_status = AP1302_POWER_OFF;

static int ap1302_print_isp_info(void *arg)
{
	int rc = 0;
	msleep(1000);
	while(1) {
		if(ap1302_stream_status == AP1302_POWER_OFF) {
			printk("chengjiatest: out thread func\n");
			msleep(1000);
			continue;
		}
		mutex_lock(&ap1302_mutex);
		ap1302_check_preview();
		mutex_unlock(&ap1302_mutex);
		msleep(1000);
		
	}

	return rc;

	
	
}
static void ap1302_read_exif(void )
{
	
	uint16_t reg_data = 0;
	uint16_t reg_data_l=0;
	uint16_t reg_data_h=0;
	int16_t  reg_data_flash=0;
	uint32_t exp=0;
	
	printk("lizhenhuatest add camera_state  =%d\n",camera_state);
	ap1302_read_i2c_reg(0x0198, &reg_data);
	reg_data_iso =reg_data;
	printk("lizhenhuatest add et_ae  iso=%x\n",reg_data);
	ap1302_read_i2c_reg(0x0194, &reg_data_h);
	ap1302_read_i2c_reg(0x0196, &reg_data_l);
	exp= (reg_data_h<<16)|reg_data_l;	
	reg_data_exp=exp;
	printk("lizhenhuatest add et_ae   exp=%x\n",exp);
	ap1302_read_i2c_reg(0x53f4, &reg_data_flash);
	printk("lizhenhuatest add et_ae 53f4   exp=%x\n",reg_data_flash);
	reg_data_flash=reg_data_flash&0x0004;	

	if(reg_data_flash==0x0004)
	{
	flash_needed=1;
	}
	else
	flash_needed=0;
	exif_wq_flag=0;

}

static int ap1302_read_exif_info(void *arg)
{
	//int rc = 0;
	#if 1
	do {
		wait_event_interruptible(exif_wq, exif_wq_flag); 
		if (kthread_should_stop())
			break;
		if(is_snapshot_mode!=4)
		msleep(100);
		if(ap1302_stream_status !=AP1302_POWER_OFF)
			{
			mutex_lock(&ap1302_mutex);
			ap1302_read_exif();
			mutex_unlock(&ap1302_mutex);
			}
	} while (1);
	#else
	
	if(1)
		{
	msleep(100);
	mutex_lock(&ap1302_mutex);
	ap1302_read_exif();
	mutex_unlock(&ap1302_mutex);
		}
	#endif
	return 0;
	//return rc;	

}

static int ap1302_read_proc_exif_info(char *page, char **start, off_t offset,
					int count, int *eof, void *data)
{
	*eof = 1;
	return sprintf(page, "%d\n%d\n%d\n%d\n",camera_state,reg_data_iso,reg_data_exp,flash_needed);
//	sprintf(page, "iso:%x   exp_time:%x     flash :%x\n",reg_data,exp,get_ae.flash_needed), NULL)
}
static int create_proc_exif_entity(void)
{
	if (create_proc_read_entry("exif", 0, NULL,
				ap1302_read_proc_exif_info, NULL) == NULL) {
		printk("chengjiatest: unable create back camera exif info\n");
	}

	return 0;
}
static int ap1302_read_proc_info(char *page, char **start, off_t offset,
					int count, int *eof, void *data)
{
	*eof = 1;
	return sprintf(page, "ID: 0x0842\n" "Name: ar0842\n");
}
static int create_proc_camera_entity(void)
{
	if (create_proc_read_entry("back_camera_info", 0, NULL,
				ap1302_read_proc_info, NULL) == NULL) {
		printk("chengjiatest: unable create back camera proc info\n");
	}

	return 0;
}
static int __init ap1302_init_module(void)
{
	int32_t rc;
	pr_info("%s:%d\n", __func__, __LINE__);
	rc = platform_driver_probe(&ap1302_platform_driver,
		ap1302_platform_probe);
	if (!rc) {
		printk("chengjiatest: add ap1302 spi driver\n");
		rc = spi_register_driver(&mini_isp_drv);
		ap1302_s_ctrl.func_tbl->sensor_power_down(&ap1302_s_ctrl);
		ap1302_s_ctrl.sensor_i2c_client->addr_type = MSM_CAMERA_I2C_WORD_ADDR;
		if(!rc) {
			printk("chengjiatest: create proc entity for ap1302\n");
			create_proc_camera_entity();	
			create_proc_exif_entity();
		}
		isp_info_task = kthread_create(ap1302_print_isp_info, NULL, "ap1302_isp_debug");
		init_waitqueue_head(&exif_wq);

		isp_exif_task = kthread_create(ap1302_read_exif_info, NULL, "ap1302_isp_exif");
						if(isp_exif_task)
							{
							printk("lizhenhua: start stream isp_exif_task\n");
					wake_up_process(isp_exif_task);

							}
		if (IS_ERR(isp_info_task)) {
			printk("chengjiatest: ap1302 thread info create error\n");
			isp_info_task = NULL;
		}
		if (IS_ERR(isp_exif_task)) {
			printk("chengjiatest: ap1302 thread exif create error\n");
			isp_exif_task = NULL;
		}
		return rc;
	}
	pr_err("%s:%d rc %d\n", __func__, __LINE__, rc);
	return i2c_add_driver(&ap1302_i2c_driver);
}

static void __exit ap1302_exit_module(void)
{
	pr_info("%s:%d\n", __func__, __LINE__);
	if (ap1302_s_ctrl.pdev) {
		msm_sensor_free_sensor_data(&ap1302_s_ctrl);
		platform_driver_unregister(&ap1302_platform_driver);
	} else
		i2c_del_driver(&ap1302_i2c_driver);
	return;
}


enum cam_flash_mode {
	CAM_FLASH_MODE_OFF,
	CAM_FLASH_MODE_AUTO,
	CAM_FLASH_MODE_ON,
	CAM_FLASH_MODE_TORCH,
};
static void ap1302_set_flash_mode(struct msm_sensor_ctrl_t *s_ctrl,
	int value)
{
	uint16_t reg_data;
	printk("%s %d\n", __func__, value);
	ap1302_read_i2c_reg(0x53f4, &reg_data);
	switch (value) {
	case CAM_FLASH_MODE_OFF: {
		if(reg_data & 0x0010) {
			ap1302_write_i2c_reg(0x53f4, 0x0000);
		}
		ap1302_write_i2c_reg(0x53f2, 0x9c0e);
		break;
	}
	case CAM_FLASH_MODE_AUTO: {
			//ap1302_write_i2c_reg(0x53f4, 0x0000);
				ap1302_write_i2c_reg(0x53f2, 0x9d0e);
		break;
	}
	case CAM_FLASH_MODE_ON: {
		//ap1302_write_i2c_reg(0x5058, 0x1183);
		//ap1302_write_i2c_reg(0x53f4, 0x0000);
		ap1302_write_i2c_reg(0x53f2, 0x9e0e);
		break;
	}
	case CAM_FLASH_MODE_TORCH: {
		//ap1302_write_i2c_reg(0x53f2, 0x9c0e);
		ap1302_write_i2c_reg(0x53f4, 0x0010);	
		break;
	}
	default:
		break;
	}
}


static void ap1302_set_white_balance_mode(struct msm_sensor_ctrl_t *s_ctrl,
	int value)
{
	uint16_t reg_data;
	printk("%s %d\n", __func__, value);
	switch (value) {
	case MSM_CAMERA_WB_MODE_AUTO: {
		ap1302_write_i2c_array(s_ctrl, &ap1302_wb_auto[0],
			ARRAY_SIZE(ap1302_wb_auto));
		break;
	}
	case MSM_CAMERA_WB_MODE_INCANDESCENT: {
		ap1302_write_i2c_array(s_ctrl, &ap1302_wb_incandescent[0],
			ARRAY_SIZE(ap1302_wb_incandescent));
		break;
	}
	case MSM_CAMERA_WB_MODE_DAYLIGHT: {
		ap1302_write_i2c_array(s_ctrl, &ap1302_wb_sunny_daylight[0],
			ARRAY_SIZE(ap1302_wb_sunny_daylight));
		break;
	}
	case MSM_CAMERA_WB_MODE_FLUORESCENT: {
		ap1302_write_i2c_array(s_ctrl, &ap1302_wb_fluorescent[0],
			ARRAY_SIZE(ap1302_wb_fluorescent));
		break;
	}
	case MSM_CAMERA_WB_MODE_CLOUDY_DAYLIGHT: {
		ap1302_write_i2c_array(s_ctrl, &ap1302_wb_cloudy_daylight[0],
			ARRAY_SIZE(ap1302_wb_cloudy_daylight));
		break;
	}
	case MSM_CAMERA_WB_MODE_OFF:{
		ap1302_read_i2c_reg(0x5100, &reg_data);
		reg_data&=0xfff0;
		reg_data|=0x0007;
		ap1302_write_i2c_reg(0x5100, reg_data);
		break;
	}
	default:
		ap1302_write_i2c_array(s_ctrl, &ap1302_wb_auto[0],
			ARRAY_SIZE(ap1302_wb_auto));
	}
}

static struct msm_camera_i2c_reg_conf ap1302_reg_iso[7][1] = {
	/* auto */
	{
		//{0x5002, 0x02ac},
		//{0x5010, 0xfc00},
	},
	/* auto hjt */
	{
		//{0x5002, 0x02ac},
		//{0x5010, 0xfc00},
	},
	/* iso 100 */
	{
		//{0x5002, 0x020b},
		{0x5008, 0x0064},
		//{0x5010, 0x0200},
	},
	/* iso 200 */
	{
		//{0x5002, 0x020b},
		{0x5008, 0x00c8},
		//{0x5010, 0x0100},
	},
	/* iso 400 */
	{
		//{0x5002, 0x020b},
		{0x5008, 0x0190},
		//{0x5010, 0xff80},
	},
	/* iso 800 */
	{
		//{0x5002, 0x020b},
		{0x5008, 0x0320},
		//{0x5010, 0xfe00},
	},
	/* iso 1600 */
	{
		//{0x5002, 0x020b},
		{0x5008, 0x0640},
		//{0x5010, 0xfc00},
	},
};

static void ap1302_set_iso(struct msm_sensor_ctrl_t *s_ctrl, int value)
{
	uint16_t reg_data;
	printk("%s %d\n", __func__, value);
	if(value != 0 && value != 1) {
		ap1302_write_i2c_reg(0x1184, 0x0001);
		ap1302_read_i2c_reg(0x5002, &reg_data);
		reg_data &= ~0x000f;
		reg_data |= 0x000b;
		ap1302_write_i2c_reg(0x5002, reg_data);
		/*if(0x020b != reg_data) {
			ap1302_write_i2c_reg(0x5002, 0x020b);
			printk("chengjiatest: must set 0x020b\n");
		}*/
		}
	else {
		ap1302_read_i2c_reg(0x5002, &reg_data);
		reg_data &= ~0x000f;
		reg_data |= 0x000c;
		ap1302_write_i2c_reg(0x5002, reg_data);
	}
	ap1302_write_i2c_array(s_ctrl, &ap1302_reg_iso[value][0],
		ARRAY_SIZE(ap1302_reg_iso[value]));
	if(value != 0 && value != 1) {
		ap1302_read_i2c_reg(0x1000, &reg_data);
		reg_data |= 0x2000;
		ap1302_write_i2c_reg(0x1000, reg_data);
		ap1302_write_i2c_reg(0x1184, 0x0003);
	}
}

static struct msm_camera_i2c_reg_conf ap1302_reg_effect_normal[] = {
	/* normal: */
	{0x1016, 0x0000},
};

static struct msm_camera_i2c_reg_conf ap1302_reg_effect_negative[] = {
	/* negative: */
	{0x1016, 0x0007},
};

static struct msm_camera_i2c_reg_conf ap1302_reg_effect_mono[] = {
	/* normal: */
	{0x1016, 0x0006},
};

static struct msm_camera_i2c_reg_conf ap1302_reg_effect_aqua[] = {
	/* negative: */
	{0x1016, 0x0008},
};

static struct msm_camera_i2c_reg_conf ap1302_reg_effect_emboss[] = {
	/* emboss: */
	{0x1016, 0x0004},
};

static struct msm_camera_i2c_reg_conf ap1302_reg_effect_sketch[] = {
	/* sketch: */
	{0x1016, 0x000f},
};

static struct msm_camera_i2c_reg_conf ap1302_reg_effect_sepia[] = {
	/* sepia: */
	{0x1016, 0x000d},
};

static struct msm_camera_i2c_reg_conf ap1302_reg_effect_posterize[] = {
	/* posterize: */
	{0x1016, 0x000b},
};

static struct msm_camera_i2c_reg_conf ap1302_reg_effect_solarize[] = {
	/* solarize: */
	{0x1016, 0x0010},
};
static void ap1302_set_effect(struct msm_sensor_ctrl_t *s_ctrl, int value)
{
	printk("%s %d", __func__, value);
	switch (value) {
	case MSM_CAMERA_EFFECT_MODE_OFF: {
		ap1302_write_i2c_array(s_ctrl, &ap1302_reg_effect_normal[0],
			ARRAY_SIZE(ap1302_reg_effect_normal));
		break;
	}
	case MSM_CAMERA_EFFECT_MODE_NEGATIVE: {
		ap1302_write_i2c_array(s_ctrl, &ap1302_reg_effect_negative[0],
			ARRAY_SIZE(ap1302_reg_effect_negative));
		break;
	}
	case MSM_CAMERA_EFFECT_MODE_MONO: {
		ap1302_write_i2c_array(s_ctrl, &ap1302_reg_effect_mono[0],
			ARRAY_SIZE(ap1302_reg_effect_mono));
		break;
	}
	case MSM_CAMERA_EFFECT_MODE_SOLARIZE: {
		ap1302_write_i2c_array(s_ctrl, &ap1302_reg_effect_solarize[0],
			ARRAY_SIZE(ap1302_reg_effect_solarize));
		break;
	}
	case MSM_CAMERA_EFFECT_MODE_SEPIA: {
		ap1302_write_i2c_array(s_ctrl, &ap1302_reg_effect_sepia[0],
			ARRAY_SIZE(ap1302_reg_effect_sepia));
		break;
	}
	case MSM_CAMERA_EFFECT_MODE_POSTERIZE: {
		ap1302_write_i2c_array(s_ctrl, &ap1302_reg_effect_posterize[0],
			ARRAY_SIZE(ap1302_reg_effect_posterize));
		break;
	}
	///////////////////////
		case MSM_CAMERA_EFFECT_MODE_EMBOSS: {
			if(1)
		ap1302_write_i2c_array(s_ctrl, &ap1302_reg_effect_emboss[0],
			ARRAY_SIZE(ap1302_reg_effect_emboss));
			//ap1302_write_i2c_reg(0x5058, 0x1183);
		//ap1302_write_i2c_reg(0x53f2, 0x9e0e);
		break;
	}
	case MSM_CAMERA_EFFECT_MODE_SKETCH: {
		ap1302_write_i2c_array(s_ctrl, &ap1302_reg_effect_sketch[0],
			ARRAY_SIZE(ap1302_reg_effect_sketch));
		break;
	}
	case MSM_CAMERA_EFFECT_MODE_AQUA: {
		ap1302_write_i2c_array(s_ctrl, &ap1302_reg_effect_aqua[0],
			ARRAY_SIZE(ap1302_reg_effect_aqua));
		break;
	}
	default:
		ap1302_write_i2c_array(s_ctrl, &ap1302_reg_effect_normal[0],
			ARRAY_SIZE(ap1302_reg_effect_normal));
	}
}

static struct msm_camera_i2c_reg_conf ap1302_reg_antibanding[][1] = {
	/* OFF */
	{
		{0x5440, 0x0000},//{0x5440, 0x0000},
	},
	/* 60Hz */
	{
		{0x5440, 0x3c01},//{0x5440, 0x3c05},
	},
	/* 50Hz */
	{
		{0x5440, 0x3201},
	},
	/* AUTO */
	{
		{0x5440, 0x0002},//{0x5440, 0x0002},
	},
};
static void ap1302_set_antibanding(struct msm_sensor_ctrl_t *s_ctrl, int value)
{
	printk("%s %d\n", __func__, value);
	ap1302_write_i2c_array(s_ctrl, &ap1302_reg_antibanding[value][0],
		ARRAY_SIZE(ap1302_reg_antibanding[value]));
}

static struct msm_camera_i2c_reg_conf ap1302_reg_exposure_compensation[5][1] = {
	/* -2 */
	{
		{0x5014, 0xfeac},
	},
	/* -1 */
	{
		{0x5014, 0xff57},
	},
	/* 0 */
	{
		{0x5014, 0x0000},
	},
	/* 1 */
	{
		{0x5014, 0x00a9},
	},
	/* 2 */
	{
		{0x5014, 0x0154},
	},
};
static void ap1302_set_exposure_compensation(struct msm_sensor_ctrl_t *s_ctrl,
	int value)
{
	int val = (value + 12) / 6;
	printk("%s %d\n", __func__, val);
	ap1302_write_i2c_array(s_ctrl, &ap1302_reg_exposure_compensation[val][0],
		ARRAY_SIZE(ap1302_reg_exposure_compensation[val]));
}

static struct msm_camera_i2c_reg_conf ap1302_reg_scene_auto[] = {
	/* <SCENE_auto> */
	{0x3014, 0x0000},
	{0x2014, 0x0000},
	{0x202e, 0x0000},
	{0x5454, 0x0000},
};

static struct msm_camera_i2c_reg_conf ap1302_reg_scene_portrait[] = {
	/* <CAMTUNING_SCENE_PORTRAIT> */
	{0x5454, 0x0001},
};

static struct msm_camera_i2c_reg_conf ap1302_reg_scene_landscape[] = {
	/* <CAMTUNING_SCENE_LANDSCAPE> */
	{0x5454, 0x0002},
};

static struct msm_camera_i2c_reg_conf ap1302_reg_scene_night[] = {
	/* <SCENE_NIGHT> */
	{0x5454, 0x0005},
};

static struct msm_camera_i2c_reg_conf ap1302_reg_scene_hdr[] = {
	/* <SCENE_HDR> */
	{0x5454, 0x0000},
	{0x2014, 0x0004},
	{0x202e, 0x0004},
	{0x3014, 0x0004},
};
static void ap1302_set_scene_mode(struct msm_sensor_ctrl_t *s_ctrl, int value)
{
	printk("%s %d\n", __func__, value);
	switch (value) {
	case MSM_CAMERA_SCENE_MODE_OFF: {
		ap1302_write_i2c_array(s_ctrl, &ap1302_reg_scene_auto[0],
			ARRAY_SIZE(ap1302_reg_scene_auto));
		break;
	}
	case MSM_CAMERA_SCENE_MODE_NIGHT: {
		ap1302_write_i2c_array(s_ctrl, &ap1302_reg_scene_night[0],
			ARRAY_SIZE(ap1302_reg_scene_night));
					break;
	}
	case MSM_CAMERA_SCENE_MODE_LANDSCAPE: {
		ap1302_write_i2c_array(s_ctrl, &ap1302_reg_scene_landscape[0],
			ARRAY_SIZE(ap1302_reg_scene_landscape));
		break;
	}
	case MSM_CAMERA_SCENE_MODE_PORTRAIT: {
		ap1302_write_i2c_array(s_ctrl, &ap1302_reg_scene_portrait[0],
			ARRAY_SIZE(ap1302_reg_scene_portrait));
		break;
	}
	case MSM_CAMERA_SCENE_MODE_HDR: {
		ap1302_write_i2c_array(s_ctrl, &ap1302_reg_scene_hdr[0],
			ARRAY_SIZE(ap1302_reg_scene_hdr));
		break;
	}
	default:
		ap1302_write_i2c_array(s_ctrl, &ap1302_reg_scene_auto[0],
			ARRAY_SIZE(ap1302_reg_scene_auto));
	}
}

static struct msm_camera_i2c_reg_conf ap1302_reg_sharpness[5][1] = {
	{
		{0x7010, 0xe000},
	}, /* SHARPNESS LEVEL 0*/
	{
		{0x7010, 0xeb33},
	}, /* SHARPNESS LEVEL 1*/
	//{
	//	{0x7010, 0xf4cd},
	//}, /* SHARPNESS LEVEL 2*/
	{
		{0x7010, 0x0000},
	}, /* SHARPNESS LEVEL 3*/
	//{
	//	{0x7010, 0x0b33},
	//}, /* SHARPNESS LEVEL 4*/
	{
		{0x7010, 0x14cd},
	}, /* SHARPNESS LEVEL 5*/
	{
		{0x7010, 0x2000},
	}, /* SHARPNESS LEVEL 6*/
};
static void ap1302_set_sharpness(struct msm_sensor_ctrl_t *s_ctrl, int value)
{
	int val = value / 6;
	printk("%s %d\n", __func__, value);
	ap1302_write_i2c_array(s_ctrl, &ap1302_reg_sharpness[val][0],
		ARRAY_SIZE(ap1302_reg_sharpness[val]));
}

 static struct msm_camera_i2c_reg_conf ap1302_reg_brightness[5][1] = {
	 {
		 {0x7000, 0xfccd},
	 }, /* BRIGHTNESS  LEVEL 0*/
	 {
		 {0x7000, 0xfe66},
	 }, /* BRIGHTNESS LEVEL 1*/
	 {
		 {0x7000, 0x0000},
	 }, /* BRIGHTNESS LEVEL 2*/
	 {
		 {0x7000, 0x019a},
	 }, /* BRIGHTNESS LEVEL 3*/
	 {
		 {0x7000, 0x0333},
	 }, /* BRIGHTNESS LEVEL 4*/
	
 };
 static void ap1302_set_brightness(struct msm_sensor_ctrl_t *s_ctrl, int value)
 {
	// int val = value / 6;
	 printk("%s %d\n", __func__, value);
	 ap1302_write_i2c_array(s_ctrl, &ap1302_reg_brightness[value][0],
		 ARRAY_SIZE(ap1302_reg_brightness[value]));
 }

static void ap1302_wait_reg_status(uint32_t reg, uint16_t val)
{
	int i = 0;
	uint16_t reg_data;

	for(i = 0; i < 100; i++) {
		ap1302_read_i2c_reg(reg, &reg_data);
		if(reg_data&val) {
			mdelay(20);
			continue;
		}
		else {
			printk("chengjiatest: ap1302 wait 0x%x status ok!\n", reg);
			return;
		}

	}
	printk("chengjiatest: ap1302 wait 0x%x status timeout!\n", reg);
	

	return;
}

static void ap1302_wait_reg_status_1(uint32_t reg, uint16_t val)
{
	int i = 0;
	uint16_t reg_data;

	for(i = 0; i < 300; i++) {
		ap1302_read_i2c_reg(reg, &reg_data);
		if(reg_data&val) {
			printk("chengjiatest: ap1302 wait 0x%x status ok!\n", reg);
			return;
			
		}
		else {
			mdelay(20);
			continue;
		}

	}
	printk("chengjiatest: ap1302 wait 0x%x status timeout!\n", reg);
	

	return;
}

static struct msm_camera_i2c_reg_conf ap1302_reg_ae_metering[3][4] = {
	 {
		// {0x503e, 0x0},
		  {0x5036, 0x0000},
		  {0x5038, 0x0000},
		  {0x503a, 0x4000},
		  {0x503c, 0x4000},
	 }, /* FRAME AVERAGE */
	 {
		 //{0x503e, 0x2},
		 {0x5036, 0x1000},
		  {0x5038, 0x1000},
		  {0x503a, 0x3000},
		  {0x503c, 0x3000},
	 }, /* narrow center */
	 
	 {
		 //{0x503e, 0x3},
		 //{0x5002, 0x020c},
	 }, /*spot ae metering*/	
 };

static void ap1302_enable_ae_spot(void) {

	uint16_t four_region[4] = {0};
	#if defined(CONFIG_PROJECT_P898S10_ZTE)
	uint32_t x = 960;
	uint32_t y = 543;
	int32_t  pWidth = 1920;
	int32_t  pHeight = 1080;
	

	#else
	uint32_t x = 643;
	uint32_t y = 358;
	int32_t  pWidth = 1280;
	int32_t  pHeight = 720;
	#endif
	
	four_region[0] = (x-126) * 16383 / pWidth;
	four_region[1] = (y-126) * 16383 / pHeight;
	four_region[2] = (x+126) * 16383 / pWidth;	
	four_region[3] =  (y+126) * 16383 / pHeight;

	ap1302_write_i2c_reg(0x1184,0x0005);
	ap1302_write_i2c_reg(0x5036, four_region[0]);
	ap1302_write_i2c_reg(0x5038, four_region[1]);
	ap1302_write_i2c_reg(0x503a, four_region[2]);
	ap1302_write_i2c_reg(0x503c, four_region[3]);
	//ap1302_write_i2c_reg(0x5002, 0x022c);	
	ap1302_write_i2c_reg(0x1184,0x0007);	
	ap1302_wait_reg_status(0x1184, 0x0001);
	
}
 static void ap1302_set_ae_metering(struct msm_sensor_ctrl_t *s_ctrl, int value)
 {
	// int val = value / 6;
	uint16_t reg_data;
	 printk("%s %d\n", __func__, value);
	if(value == 0 || value == 1) {
		ap1302_read_i2c_reg(0x1184, &reg_data);
		reg_data |= 0x0001;
		ap1302_write_i2c_reg(0x1184, reg_data);
	
	 ap1302_write_i2c_array(s_ctrl, &ap1302_reg_ae_metering[value][0],
		 ARRAY_SIZE(ap1302_reg_ae_metering[value]));
	
		ap1302_read_i2c_reg(0x1184, &reg_data);
		reg_data |= 0x0002;
		ap1302_write_i2c_reg(0x1184, reg_data);
		ap1302_wait_reg_status(0x1184, 0x0001);
	}
	else if(value == 2) {		
		ap1302_enable_ae_spot();
		printk("chengjiatest: set ae spot\n");
	}
 }
static struct msm_camera_i2c_reg_conf ap1302_reg_contrast[5][1] = {
	//{
	//	{0x7002, 0xd000},
	//}, 
	{
		{0x7002, 0xd99a},
	}, 
//	{
	//	{0x7002, 0xe333},
	//},
	{
		{0x7002, 0xeccd},
	},
	//{
	//	{0x7002, 0xf666},
	//},
	{
		{0x7002, 0x0000},
	},
	//{
//		{0x7002, 0x099a},
//	},
	{
		{0x7002, 0x1333},
	},
	//{
//		{0x7002, 0x1ccd},
//	},
	{
		{0x7002, 0x2666},
	},
	//{
//		{0x7002, 0x3000},
//	},
};
static void ap1302_set_contrast(struct msm_sensor_ctrl_t *s_ctrl, int value)
{
	printk("%s %d\n", __func__, value);
	ap1302_write_i2c_array(s_ctrl, &ap1302_reg_contrast[value][0],
		ARRAY_SIZE(ap1302_reg_contrast[value]));
}

static struct msm_camera_i2c_reg_conf ap1302_reg_saturation[5][1] = {
	//{
	//	{0x7006, 0x0000},
	//},
	{
		{0x7006, 0x0333},
	},
//	{
	//	{0x7006, 0x0666},
//	},
	{
		{0x7006, 0x099a},
	},
	//{
	//	{0x7006, 0x0ccd},
	//},
	{
		{0x7006, 0x1000},
	},
	//{
	//	{0x7006, 0x119a},
	//},
	{
		{0x7006, 0x1333},
	},
	//{
	//	{0x7006, 0x14cd},
	//},
	{
		{0x7006, 0x1666},
	},
	//{
	//	{0x7006, 0x1800},
	//},
};
static void ap1302_set_saturation(struct msm_sensor_ctrl_t *s_ctrl, int value)
{
	printk("%s %d\n", __func__, value);
	ap1302_write_i2c_array(s_ctrl, &ap1302_reg_saturation[value][0],
		ARRAY_SIZE(ap1302_reg_saturation[value]));
}

static int ap1302_init_brightness = 2;
static int ap1302_init_saturation = 2;
static int ap1302_init_contrast = 2;
static int ap1302_init_sharpness = 2;
static int ap1302_init_antibanding = 2;
static int ap1302_init_effect = 0;
static int ap1302_init_ev = 0;
static int ap1302_init_iso = 0;
static int ap1302_init_bestshot = 0;
static int ap1302_init_wb = 0;
static int ap1302_init_flash = 0;
static int ap1302_init_ae_metering=1;

static void ap1302_set_default_setting(struct msm_sensor_ctrl_t *s_ctrl)
{
	if(!ap1302_debug_set[ap1302_disable_brightness]) 
	ap1302_set_brightness(s_ctrl, ap1302_init_brightness);
	if(!ap1302_debug_set[ap1302_disable_saturation]) 
	ap1302_set_saturation(s_ctrl, ap1302_init_saturation);
	if(!ap1302_debug_set[ap1302_disable_contrast]) 
	ap1302_set_contrast(s_ctrl, ap1302_init_contrast);
	if(!ap1302_debug_set[ap1302_disable_sharpness]) 
	ap1302_set_sharpness(s_ctrl, ap1302_init_sharpness);
	if(!ap1302_debug_set[ap1302_disable_anti]) 
	ap1302_set_antibanding(s_ctrl, ap1302_init_antibanding);
	if(!ap1302_debug_set[ap1302_disable_ae_metering]) 
	ap1302_set_ae_metering(s_ctrl, ap1302_init_ae_metering);
	if(!ap1302_debug_set[ap1302_disable_effect]) 
	ap1302_set_effect(s_ctrl, ap1302_init_effect);
	if(!ap1302_debug_set[ap1302_disable_ev]) 
	ap1302_set_exposure_compensation(s_ctrl, ap1302_init_ev);
	if(!ap1302_debug_set[ap1302_disable_iso]) 
	ap1302_set_iso(s_ctrl, ap1302_init_iso);
	if(!ap1302_debug_set[ap1302_disable_scene]) 
	ap1302_set_scene_mode(s_ctrl, ap1302_init_bestshot);
	if(!ap1302_debug_set[ap1302_disable_wb]) 
	ap1302_set_white_balance_mode(s_ctrl, ap1302_init_wb);
	if(!ap1302_debug_set[ap1302_disable_flash]) 
	ap1302_set_flash_mode(s_ctrl, ap1302_init_flash);
	is_snapshot_mode = 0;
	ap1302_af_mode = AF_CONTINUS;
	af_touch_after_manual = 0;
	
}

#define MAX_ROI 5

typedef struct  {
    int32_t left;
    int32_t top;
    int32_t width;
    int32_t height;
} cam_rect_t;

typedef struct {
    uint32_t frm_id;
    uint8_t num_roi;
    cam_rect_t roi[MAX_ROI];
    int32_t weight[MAX_ROI];
    uint8_t is_multiwindow;
    int32_t pWidth;
    int32_t pHeight;
} cam_roi_info_t;

typedef enum {
    CAM_AEC_ROI_OFF,
    CAM_AEC_ROI_ON
} cam_aec_roi_ctrl_t;

typedef enum {
    CAM_AEC_ROI_BY_INDEX,
    CAM_AEC_ROI_BY_COORDINATE,
} cam_aec_roi_type_t;

typedef struct {
    uint32_t x;
    uint32_t y;
} cam_coordinate_type_t;

typedef struct {
    cam_aec_roi_ctrl_t aec_roi_enable;
    cam_aec_roi_type_t aec_roi_type;
    union {
        cam_coordinate_type_t coordinate[MAX_ROI];
        uint32_t aec_roi_idx[MAX_ROI];
    } cam_aec_roi_position;
    int32_t pWidth;  //add by zhangduo 20140401
    int32_t pHeight; //add by zhangduo 20140401
} cam_set_aec_roi_t;

enum cam_focus_distance_index{
  CAM_FOCUS_DISTANCE_NEAR_INDEX,  /* 0 */
  CAM_FOCUS_DISTANCE_OPTIMAL_INDEX,
  CAM_FOCUS_DISTANCE_FAR_INDEX,
  CAM_FOCUS_DISTANCE_MAX_INDEX
};

typedef struct {
  float focus_distance[CAM_FOCUS_DISTANCE_MAX_INDEX];
} cam_focus_distances_info_t;

typedef enum {
    CAM_AF_SCANNING,
    CAM_AF_FOCUSED,
    CAM_AF_NOT_FOCUSED
} cam_autofocus_state_t;

typedef struct {
    cam_autofocus_state_t focus_state;           /* state of focus */
    cam_focus_distances_info_t focus_dist;       /* focus distance */
} cam_auto_focus_data_t;

typedef enum {
    CAM_FOCUS_MODE_AUTO,
    CAM_FOCUS_MODE_INFINITY,
    CAM_FOCUS_MODE_MACRO,
    CAM_FOCUS_MODE_FIXED,
    CAM_FOCUS_MODE_EDOF,
    CAM_FOCUS_MODE_CONTINOUS_VIDEO,
    CAM_FOCUS_MODE_CONTINOUS_PICTURE,
    CAM_FOCUS_MODE_MAX
} cam_focus_mode_type;

static void ap1302_enter_fullsize_mode(void) 
{
	ap1302_write_i2c_array(&ap1302_s_ctrl, ap1302_zsl_settings,
		ARRAY_SIZE(ap1302_zsl_settings));

	return;
}


static void ap1302_enter_qtr_mode(void) 
{
	
	ap1302_write_i2c_array(&ap1302_s_ctrl, ap1302_preview_settings,
		ARRAY_SIZE(ap1302_preview_settings));

	return;
}

static int ap1302_steamoff_mode(void) 
{
	int rc = 0;
	rc = ap1302_write_i2c_array(&ap1302_s_ctrl, ap1302_stop_settings,
					ARRAY_SIZE(ap1302_stop_settings));	

	return rc;
}

static int ap1302_take_snapshot(void) 
{
	int index = 0;
	uint16_t reg_data;
	int rc = 0;
	
	ap1302_write_i2c_array(&ap1302_s_ctrl, ap1302_start_settings2,
		ARRAY_SIZE(ap1302_start_settings2));
	ap1302_write_i2c_array(&ap1302_s_ctrl, ap1302_snapshot_settings2,
		ARRAY_SIZE(ap1302_snapshot_settings2));
	//////////////
	///////////
	printk("chengjiatest: snapshot start loop wait\n");
	for(index = 0; index < 500; index++) {
		ap1302_read_i2c_reg(0x601a, &reg_data);
		reg_data &= 0x0200;
		if(reg_data) {
			printk("chengjiatest: it is ready to snapshot\n");
			break;
		}
			//msleep(10);
			mdelay(10);
	}
	if(index == 500) {
		printk("chengjiatest: time out during waiting reg 0x601a\n");
		rc = -1;
	}
	ap1302_stream_status = AP1302_STREAM_OFF;

	return rc;
}

#if 0	
static int ap1302_enable_hdr_video(void) {
	int rc = 0;
	uint16_t reg_data = 0;

	ap1302_read_i2c_reg(0x4014, &reg_data);
	reg_data &= ~0x000f;
	reg_data |= 0x0004;
	ap1302_write_i2c_reg(0x4014, reg_data);

	return rc;
}
#else
static int ap1302_disable_hdr_video(void) {
	int rc = 0;
	uint16_t reg_data = 0;
	
	reg_data = 0x0000;
	ap1302_write_i2c_reg(0x4014, reg_data);

	return rc;
}
#endif
static int read_exif=0;

static int ap1302_af_status_before = CAM_AF_SCANNING;
static int ap1302_iso_value = 0;



static int32_t ap1302_sensor_config(struct msm_sensor_ctrl_t *s_ctrl,
	void __user *argp)
{
	struct sensorb_cfg_data *cdata = (struct sensorb_cfg_data *)argp;
	long rc = 0;
	int32_t i = 0;
	int val_mode = 0;
	int32_t wb_mode = 0;
	int32_t iso_lev = 0;
	int32_t effect_mode = 0;
	int32_t antibanding_mode = 0;
	int32_t ae_metering_mode = 0;
	int32_t ec_lev = 0;
	int32_t bs_mode = 0;
	int32_t shp_lev = 0;
	int32_t bri_lev = 0;
	int32_t sat_lev = 0;
	int32_t con_lev = 0;
	uint16_t reg_data = 0;
	cam_roi_info_t cam_af_info;
	cam_set_aec_roi_t cam_aec_info;
	cam_rect_t *rect_info = NULL;
	cam_coordinate_type_t *aec_info=NULL;	
	uint16_t four_region[4] = {0};
	int32_t af_mode = 0;
	int32_t zsl_mode = 0;
	int32_t col_tem = 0;
	int32_t focus_lev = 0;
	int32_t ae_lock_enable = 0;
	cam_aec_roi_ctrl_t *aec_mode=NULL;
	cam_auto_focus_data_t af_data;
	mutex_lock(s_ctrl->msm_sensor_mutex);
	/*printk("chengjiatest: %s:%d %s cfgtype = %d\n", __func__, __LINE__,
		s_ctrl->sensordata->sensor_name, cdata->cfgtype);*/
	switch (cdata->cfgtype) {
	case CFG_GET_SENSOR_INFO:
		memcpy(cdata->cfg.sensor_info.sensor_name,
			s_ctrl->sensordata->sensor_name,
			sizeof(cdata->cfg.sensor_info.sensor_name));
		cdata->cfg.sensor_info.session_id =
			s_ctrl->sensordata->sensor_info->session_id;
		for (i = 0; i < SUB_MODULE_MAX; i++)
			cdata->cfg.sensor_info.subdev_id[i] =
				s_ctrl->sensordata->sensor_info->subdev_id[i];
		CDBG("%s:%d sensor name %s\n", __func__, __LINE__,
			cdata->cfg.sensor_info.sensor_name);
		CDBG("%s:%d session id %d\n", __func__, __LINE__,
			cdata->cfg.sensor_info.session_id);
		for (i = 0; i < SUB_MODULE_MAX; i++)
			CDBG("%s:%d subdev_id[%d] %d\n", __func__, __LINE__, i,
				cdata->cfg.sensor_info.subdev_id[i]);

		break;
	case CFG_SET_INIT_SETTING:
		printk("chengjiatest: ap1302 init setting\n");
		ap1302_burst_spi(s_ctrl);
		//ap1302_write_i2c_reg(0x1000, 0x0000);
		ap1302_stream_status = AP1302_POWER_ON;
		//ap1302_debug_set[ap1302_enable_initinfo] = 1;//should be deleted, just for test log
		if(ap1302_debug_set[ap1302_enable_initinfo]) {
		printk("chengjiatest: wake up thread\n");
			if(isp_info_task)
				wake_up_process(isp_info_task);
		}
		break;
	case CFG_SET_RESOLUTION:
		if (copy_from_user(&val_mode,
			(void *)cdata->cfg.setting, sizeof(int))) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -EFAULT;
			break;
		}
		printk("chengjiatest: ap1302 get res %d\n", val_mode);		
		if (val_mode == 0) {///////full size
			if(is_snapshot_mode == 4 || is_snapshot_mode == 0) {
				ap1302_enter_fullsize_mode();
				break;
			}
			ap1302_take_snapshot();
			read_exif=0;
		}
		else if (val_mode == 1) {////////qtr size
			ap1302_enter_qtr_mode();
			read_exif=1;
		}
		break;
	case CFG_SET_STOP_STREAM:
		if(ap1302_stream_status == AP1302_POWER_ON) {
			printk("chengjiatest: stop stream during init, do nothing\n");
			break;
		}
		if(ap1302_stream_status == AP1302_STREAM_ON) {
			printk("%s, chengjiatest sensor stop stream without snapshot!!\n", __func__);
  			
			rc = ap1302_steamoff_mode();  
		   	ap1302_stream_status = AP1302_STREAM_OFF;
			msleep(200);
			
		}
		else {
			printk("chengjiatest: stop stream, do nothing\n");
		}
		break;
	case CFG_SET_START_STREAM:
		if(ap1302_stream_status == AP1302_POWER_ON ) {
		pr_err("%s, sensor start stream after power on!!\n", __func__);
			rc = ap1302_write_i2c_array(s_ctrl, ap1302_start_settings1,
					ARRAY_SIZE(ap1302_start_settings1));
			msleep(250);//300
			ap1302_stream_status = AP1302_STREAM_ON;
			ap1302_set_default_setting(s_ctrl);
			break;
		}
		if(ap1302_stream_status == AP1302_STREAM_OFF) {
			pr_err("%s, chengjia sensor start stream after res change!!\n", __func__);
			printk("lizhenhua: read_exif=%d \n",read_exif);
			rc = ap1302_write_i2c_array(s_ctrl, ap1302_start_settings2,
					ARRAY_SIZE(ap1302_start_settings2));
			ap1302_stream_status = AP1302_STREAM_ON;
			if(is_snapshot_mode!=4)
				{
			if(read_exif==0)
			 	{	
			 	exif_wq_flag=1;
			wake_up(&exif_wq);
				}	
			 	}
			is_snapshot_mode = 0;
			 
		}
		else {
			printk("chengjiatest: start stream, do nothing\n");
		}
		break;
	case CFG_GET_SENSOR_INIT_PARAMS:
		cdata->cfg.sensor_init_params =
			*s_ctrl->sensordata->sensor_init_params;
		CDBG("%s:%d init params mode %d pos %d mount %d\n", __func__,
			__LINE__,
			cdata->cfg.sensor_init_params.modes_supported,
			cdata->cfg.sensor_init_params.position,
			cdata->cfg.sensor_init_params.sensor_mount_angle);
		break;
	case CFG_SET_SLAVE_INFO: {
		struct msm_camera_sensor_slave_info sensor_slave_info;
		struct msm_sensor_power_setting_array *power_setting_array;
		int slave_index = 0;
		if (copy_from_user(&sensor_slave_info,
		    (void *)cdata->cfg.setting,
		    sizeof(struct msm_camera_sensor_slave_info))) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -EFAULT;
			break;
		}
		/* Update sensor slave address */
		if (sensor_slave_info.slave_addr) {
			s_ctrl->sensor_i2c_client->cci_client->sid =
				sensor_slave_info.slave_addr >> 1;
		}

		/* Update sensor address type */
		s_ctrl->sensor_i2c_client->addr_type =
			sensor_slave_info.addr_type;

		/* Update power up / down sequence */
		s_ctrl->power_setting_array =
			sensor_slave_info.power_setting_array;
		power_setting_array = &s_ctrl->power_setting_array;
		power_setting_array->power_setting = kzalloc(
			power_setting_array->size *
			sizeof(struct msm_sensor_power_setting), GFP_KERNEL);
		if (!power_setting_array->power_setting) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -ENOMEM;
			break;
		}
		if (copy_from_user(power_setting_array->power_setting,
		    (void *)sensor_slave_info.power_setting_array.power_setting,
		    power_setting_array->size *
		    sizeof(struct msm_sensor_power_setting))) {
			kfree(power_setting_array->power_setting);
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -EFAULT;
			break;
		}
		s_ctrl->free_power_setting = true;
		CDBG("%s sensor id %x\n", __func__,
			sensor_slave_info.slave_addr);
		CDBG("%s sensor addr type %d\n", __func__,
			sensor_slave_info.addr_type);
		CDBG("%s sensor reg %x\n", __func__,
			sensor_slave_info.sensor_id_info.sensor_id_reg_addr);
		CDBG("%s sensor id %x\n", __func__,
			sensor_slave_info.sensor_id_info.sensor_id);
		for (slave_index = 0; slave_index <
			power_setting_array->size; slave_index++) {
			CDBG("%s i %d power setting %d %d %ld %d\n", __func__,
				slave_index,
				power_setting_array->power_setting[slave_index].
				seq_type,
				power_setting_array->power_setting[slave_index].
				seq_val,
				power_setting_array->power_setting[slave_index].
				config_val,
				power_setting_array->power_setting[slave_index].
				delay);
		}
		kfree(power_setting_array->power_setting);
		break;
	}
	case CFG_WRITE_I2C_ARRAY: {
		struct msm_camera_i2c_reg_setting conf_array;
		struct msm_camera_i2c_reg_array *reg_setting = NULL;

		if (copy_from_user(&conf_array,
			(void *)cdata->cfg.setting,
			sizeof(struct msm_camera_i2c_reg_setting))) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -EFAULT;
			break;
		}

		reg_setting = kzalloc(conf_array.size *
			(sizeof(struct msm_camera_i2c_reg_array)), GFP_KERNEL);
		if (!reg_setting) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -ENOMEM;
			break;
		}
		if (copy_from_user(reg_setting, (void *)conf_array.reg_setting,
			conf_array.size *
			sizeof(struct msm_camera_i2c_reg_array))) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			kfree(reg_setting);
			rc = -EFAULT;
			break;
		}

		conf_array.reg_setting = reg_setting;
		rc = s_ctrl->sensor_i2c_client->i2c_func_tbl->i2c_write_table(
			s_ctrl->sensor_i2c_client, &conf_array);
		kfree(reg_setting);
		break;
	}
	case CFG_WRITE_I2C_SEQ_ARRAY: {
		struct msm_camera_i2c_seq_reg_setting conf_array;
		struct msm_camera_i2c_seq_reg_array *reg_setting = NULL;

		if (copy_from_user(&conf_array,
			(void *)cdata->cfg.setting,
			sizeof(struct msm_camera_i2c_seq_reg_setting))) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -EFAULT;
			break;
		}

		reg_setting = kzalloc(conf_array.size *
			(sizeof(struct msm_camera_i2c_seq_reg_array)),
			GFP_KERNEL);
		if (!reg_setting) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -ENOMEM;
			break;
		}
		if (copy_from_user(reg_setting, (void *)conf_array.reg_setting,
			conf_array.size *
			sizeof(struct msm_camera_i2c_seq_reg_array))) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			kfree(reg_setting);
			rc = -EFAULT;
			break;
		}

		conf_array.reg_setting = reg_setting;
		rc = s_ctrl->sensor_i2c_client->i2c_func_tbl->
			i2c_write_seq_table(s_ctrl->sensor_i2c_client,
			&conf_array);
		kfree(reg_setting);
		break;
	}

	case CFG_POWER_UP:
		if (s_ctrl->func_tbl->sensor_power_up) {
			rc = s_ctrl->func_tbl->sensor_power_up(s_ctrl);
		camera_state=0;
		}
		else
			rc = -EFAULT;
		break;

	case CFG_POWER_DOWN:
		if (s_ctrl->func_tbl->sensor_power_down)  {
			ap1302_stream_status = AP1302_POWER_OFF;
			//msleep(1500);
			mutex_lock(&ap1302_mutex);
			rc = s_ctrl->func_tbl->sensor_power_down(
				s_ctrl);
			mutex_unlock(&ap1302_mutex);
			/*if(ap1302_debug_set[ap1302_enable_initinfo]) {
			
			if(isp_info_task) {
				msleep(2000);
				printk("chengjiatest: stop ap1302 thread\n");
				kthread_stop(isp_info_task);
				
			}
			else {
				printk("chengjiatest: can't stop ap1302 thread\n");
			}
				}*/
			camera_state=1;
		}
		else
			rc = -EFAULT;
		break;

	case CFG_SET_STOP_STREAM_SETTING: {
		
		struct msm_camera_i2c_reg_setting *stop_setting =
			&s_ctrl->stop_setting;
		struct msm_camera_i2c_reg_array *reg_setting = NULL;
		if (copy_from_user(stop_setting, (void *)cdata->cfg.setting,
		    sizeof(struct msm_camera_i2c_reg_setting))) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -EFAULT;
			break;
		}

		reg_setting = stop_setting->reg_setting;
		stop_setting->reg_setting = kzalloc(stop_setting->size *
			(sizeof(struct msm_camera_i2c_reg_array)), GFP_KERNEL);
		if (!stop_setting->reg_setting) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -ENOMEM;
			break;
		}
		if (copy_from_user(stop_setting->reg_setting,
		    (void *)reg_setting, stop_setting->size *
		    sizeof(struct msm_camera_i2c_reg_array))) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			kfree(stop_setting->reg_setting);
			stop_setting->reg_setting = NULL;
			stop_setting->size = 0;
			rc = -EFAULT;
			break;
		}
		break;
	}
	case CFG_SET_SATURATION: 
		if (copy_from_user(&sat_lev, (void *)cdata->cfg.setting,
			sizeof(int32_t))) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -EFAULT;
			break;
		}
		printk("%s: saturation Value is %d\n", __func__, sat_lev);
		if(ap1302_stream_status == AP1302_POWER_ON ) {
			ap1302_init_saturation = sat_lev;
		}
		else if(!ap1302_debug_set[ap1302_disable_saturation]) {
			ap1302_set_saturation(s_ctrl, sat_lev);
		}
		break;
	case CFG_SET_BRIGHTNESS: 
		if (copy_from_user(&bri_lev, (void *)cdata->cfg.setting,
			sizeof(int32_t))) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -EFAULT;
			break;
		}
		printk("%s: brightness Value is %d\n", __func__, bri_lev);
		if(ap1302_stream_status == AP1302_POWER_ON ) {
			ap1302_init_brightness = bri_lev;
		}
		else if(!ap1302_debug_set[ap1302_disable_brightness]) {
			ap1302_set_brightness(s_ctrl, bri_lev);
		}
		break;

	case CFG_SET_AEC_ALGO_TYPE: 
		if (copy_from_user(&ae_metering_mode, (void *)cdata->cfg.setting,
			sizeof(int32_t))) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -EFAULT;
			break;
		}
		printk("%s: AE metering  Value is %d\n", __func__, ae_metering_mode);
		if(ap1302_stream_status == AP1302_POWER_ON ) {
			ap1302_init_ae_metering = ae_metering_mode;
		}
		else if(!ap1302_debug_set[ap1302_disable_ae_metering]) {
			ap1302_set_ae_metering(s_ctrl, ae_metering_mode);
		}
		break;
	
	case CFG_SET_CONTRAST: 		
		if (copy_from_user(&con_lev, (void *)cdata->cfg.setting,
			sizeof(int32_t))) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -EFAULT;
			break;
		}
		printk("%s: contrast Value is %d\n", __func__, con_lev);
		if(ap1302_stream_status == AP1302_POWER_ON ) {
			ap1302_init_contrast= con_lev;
		}
		else if(!ap1302_debug_set[ap1302_disable_contrast]) {
			ap1302_set_contrast(s_ctrl, con_lev);
		}

		break;
	
	case CFG_SET_SHARPNESS: 
		if (copy_from_user(&shp_lev, (void *)cdata->cfg.setting,
			sizeof(int32_t))) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -EFAULT;
			break;
		}
		printk("%s: Sharpness Value is %d\n", __func__, shp_lev);
		if(ap1302_stream_status == AP1302_POWER_ON ) {
			ap1302_init_sharpness= shp_lev;
		}
		else if(!ap1302_debug_set[ap1302_disable_sharpness]) {
			ap1302_set_sharpness(s_ctrl, shp_lev);
		}
		break;	
	case CFG_SET_ISO: 
		if (copy_from_user(&iso_lev, (void *)cdata->cfg.setting,
			sizeof(int32_t))) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -EFAULT;
			break;
		}
		printk("%s: ISO Value is %d\n", __func__, iso_lev);
		ap1302_iso_value = iso_lev;
		if(ap1302_stream_status == AP1302_POWER_ON ) {
			ap1302_init_iso= iso_lev;
		}
		else if(!ap1302_debug_set[ap1302_disable_iso]) {
			ap1302_set_iso(s_ctrl, iso_lev);
		}

		break;
	case CFG_SET_EXPOSURE_COMPENSATION: 
		if (copy_from_user(&ec_lev, (void *)cdata->cfg.setting,
			sizeof(int32_t))) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -EFAULT;
			break;
		}
		printk("%s: Exposure compensation Value is %d\n",
			__func__, ec_lev);
		if(ap1302_stream_status == AP1302_POWER_ON ) {
			ap1302_init_ev= ec_lev;
		}
		else if(!ap1302_debug_set[ap1302_disable_ev]) {
			ap1302_set_exposure_compensation(s_ctrl, ec_lev);
		}
		break;
	case CFG_SET_EFFECT: 
		if (copy_from_user(&effect_mode, (void *)cdata->cfg.setting,
			sizeof(int32_t))) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -EFAULT;
			break;
		}
		printk("%s: Effect mode is %d\n", __func__, effect_mode);
		if(ap1302_stream_status == AP1302_POWER_ON ) {
			ap1302_init_effect= effect_mode;
		}
		else if(!ap1302_debug_set[ap1302_disable_effect]) {
			ap1302_set_effect(s_ctrl, effect_mode);
		}
		break;	
	case CFG_SET_ANTIBANDING: 
		if (copy_from_user(&antibanding_mode,
			(void *)cdata->cfg.setting,
			sizeof(int32_t))) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -EFAULT;
			break;
		}
		printk("%s: anti-banding mode is %d\n", __func__,
			antibanding_mode);
		if(ap1302_stream_status == AP1302_POWER_ON ) {
			ap1302_init_antibanding= antibanding_mode;
		}
		else if(!ap1302_debug_set[ap1302_disable_anti]) {
			ap1302_set_antibanding(s_ctrl, antibanding_mode);
		}
		break;
	case CFG_SET_BESTSHOT_MODE: 
		if (copy_from_user(&bs_mode, (void *)cdata->cfg.setting,
			sizeof(int32_t))) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -EFAULT;
			break;
		}
		printk("%s: best shot mode is %d\n", __func__, bs_mode);
		if(ap1302_stream_status == AP1302_POWER_ON ) {
			ap1302_init_bestshot= bs_mode;
		}
		else if(!ap1302_debug_set[ap1302_disable_scene]) {
			ap1302_set_scene_mode(s_ctrl, bs_mode);
		}
		break;
	
	case CFG_SET_WHITE_BALANCE: 
	if (copy_from_user(&wb_mode, (void *)cdata->cfg.setting, sizeof(int32_t))) {
		pr_err("%s:%d failed\n", __func__, __LINE__);
		rc = -EFAULT;
		break;
	}
	printk("chengjiatest: %s: white balance is %d", __func__, wb_mode);
	if(ap1302_stream_status == AP1302_POWER_ON ) {
			ap1302_init_wb= wb_mode;
		}
	else if(!ap1302_debug_set[ap1302_disable_wb]) {
		ap1302_set_white_balance_mode(s_ctrl, wb_mode);
	}
	break;

	case CFG_SET_AUTOFLASH: 
	if (copy_from_user(&flash_mode, (void *)cdata->cfg.setting, sizeof(int32_t))) {
		pr_err("%s:%d failed\n", __func__, __LINE__);
		rc = -EFAULT;
		break;
	}
	printk("chengjiatest: flash mode is %d\n",  flash_mode);
	if(flash_mode == CAM_FLASH_MODE_TORCH) {
		printk("chengjiatest: set torch mode\n");
		if(ap1302_stream_status == AP1302_POWER_ON) {
			printk("chengjiatest: set torch on\n");
			rc = ap1302_write_i2c_array(s_ctrl, ap1302_start_settings3,
					ARRAY_SIZE(ap1302_start_settings3));
			ap1302_wait_reg_status_1(0x601a, 0x0200);
			ap1302_stream_status = AP1302_IN_TORCH_MODE;
		}
		ap1302_set_flash_mode(s_ctrl, flash_mode);
		
	}
	if(ap1302_stream_status == AP1302_POWER_ON ) {
			ap1302_init_flash= flash_mode;
	}
	else if(!ap1302_debug_set[ap1302_disable_flash]) {
		ap1302_set_flash_mode(s_ctrl, flash_mode);
	}

	break;
	case CFG_SET_AEC_AREA: 
		if (copy_from_user(&cam_aec_info, (void *)cdata->cfg.setting, sizeof(cam_set_aec_roi_t))) {
				pr_err("%s:%d failed\n", __func__, __LINE__);
				rc = -EFAULT;
				break;
			}
		aec_info = &cam_aec_info.cam_aec_roi_position.coordinate[0];
		aec_mode=&cam_aec_info.aec_roi_enable;
		printk("chengjiatest : x: %d y:  %d  pWidth :%d  pHeight :%d \n",
				aec_info->x, aec_info->y,cam_aec_info.pWidth,cam_aec_info.pHeight);


	if(CAM_AEC_ROI_ON==*aec_mode)
		{
		////////////////fix ae division 0
		if(aec_info->x<126)
			aec_info->x=126;
		if(aec_info->x+126>cam_aec_info.pWidth)
			aec_info->x=cam_aec_info.pWidth-126;
		if(aec_info->y<126)
			aec_info->y=126;
		if(aec_info->y+126>cam_aec_info.pHeight)
			aec_info->y=cam_aec_info.pHeight-126;
	#ifdef CONFIG_PROJECT_P898S10_ZTE	
	four_region[0] = (aec_info->x-126) * 16383 / cam_aec_info.pWidth;
	four_region[1] = (aec_info->y-126) * 16383 / cam_aec_info.pHeight;
	four_region[2] = (aec_info->x+126) * 16383 / cam_aec_info.pWidth;	
	four_region[3] =  (aec_info->y+126) * 16383 / cam_aec_info.pHeight;
#endif
#ifdef CONFIG_PROJECT_P892S10_ZTE	
		four_region[0] = (aec_info->x-126) * 16383 / cam_aec_info.pWidth;
		four_region[1] = (aec_info->y-126) * 16383 / cam_aec_info.pHeight;
		four_region[2] = (aec_info->x+126) * 16383 / cam_aec_info.pWidth;	
		four_region[3] =  (aec_info->y+126) * 16383 / cam_aec_info.pHeight;
#endif
		//////////
	ap1302_write_i2c_reg(0x1184,0x0005);
	ap1302_write_i2c_reg(0x5036, four_region[0]);
	ap1302_write_i2c_reg(0x5038, four_region[1]);
	ap1302_write_i2c_reg(0x503a, four_region[2]);
	ap1302_write_i2c_reg(0x503c, four_region[3]);
	//ap1302_write_i2c_reg(0x5002, 0x022c);	
	ap1302_write_i2c_reg(0x1184,0x0007);
	
	ap1302_wait_reg_status(0x1184, 0x0001);
	/*
		do {
			ap1302_read_i2c_reg(0x1184,&reg_data);
			printk("chengjiatest add regdata = %x\n",reg_data);
			}
			while(reg_data&0x0001);
		*/
		}
	else
		{
		printk("chengjiatest add touch roi off\n");
		//ap1302_write_i2c_reg(0x5002, 0x020c);	
		}
	break;

	case CFG_SET_AFAREA: 
	if (copy_from_user(&cam_af_info, (void *)cdata->cfg.setting, sizeof(cam_roi_info_t))) {
		pr_err("%s:%d failed\n", __func__, __LINE__);
		rc = -EFAULT;
		break;
	}
	rect_info = &cam_af_info.roi[0];
	/////////////
	printk("chengjiatest: top: %d left:  %d wight: %d high: %d pwight: %d phigh:%d\n",
	        rect_info->top, rect_info->left, rect_info->width, rect_info->height, cam_af_info.pWidth, cam_af_info.pHeight);

	four_region[0] = rect_info->left * 16383 / cam_af_info.pWidth;
	four_region[1] = rect_info->top * 16383 / cam_af_info.pHeight;
	four_region[2] = (rect_info->left+rect_info->width) * 16383 / cam_af_info.pWidth;	
	four_region[3] =  (rect_info->top+rect_info->height) * 16383 / cam_af_info.pHeight;
	ap1302_write_i2c_reg(0x1184,0x0005);	
	ap1302_read_i2c_reg(0x505a,&reg_data);
	ap1302_write_i2c_reg(0x505a, (reg_data | 0x0080));
	ap1302_write_i2c_reg(0x5062, four_region[0]);
	ap1302_write_i2c_reg(0x5064, four_region[1]);
	ap1302_write_i2c_reg(0x5066, four_region[2]);
	ap1302_write_i2c_reg(0x5068, four_region[3]);	
	ap1302_write_i2c_reg(0x1002,0x00e1);
	ap1302_write_i2c_reg(0x1184,0x0007);

	ap1302_wait_reg_status(0x1184, 0x0001);
	/*	
			do {
			ap1302_read_i2c_reg(0x1184,&reg_data);
			printk("chengjiatest add regdata = %x\n",reg_data);		
			}
			while(reg_data&0x0001);
			*/
			ap1302_af_mode = AF_AREA;
		
	break;
	
	case CFG_SET_AUTOFOCUS:
	printk("chengjiatest CFG_SET_AUTOFOCUS\n");
	if(ap1302_af_mode == AF_AREA) {
		ap1302_read_i2c_reg(0x1000,&reg_data);
		ap1302_write_i2c_reg(0x1000,(reg_data & 0x0003)|0x0114);
                if(af_touch_after_manual) {
			ap1302_write_i2c_reg(0x5058,0x1096);
			af_touch_after_manual = 0;
		}
		ap1302_af_mode = AF_TOUCH;
		}
	else {
		four_region[0] = 720 * 16383 / 1920;
	four_region[1] = 320 * 16383 / 1080;
	four_region[2] = (720+400) * 16383 / 1920;	
	four_region[3] =  (320+400) * 16383 / 1080;
	ap1302_write_i2c_reg(0x1184,0x0005);	
	ap1302_read_i2c_reg(0x505a,&reg_data);
	ap1302_write_i2c_reg(0x505a, (reg_data | 0x0080));
	ap1302_write_i2c_reg(0x5062, four_region[0]);
	ap1302_write_i2c_reg(0x5064, four_region[1]);
	ap1302_write_i2c_reg(0x5066, four_region[2]);
	ap1302_write_i2c_reg(0x5068, four_region[3]);	
	ap1302_write_i2c_reg(0x1002,0x00e1);
	ap1302_write_i2c_reg(0x1184,0x0007);
	printk("chengjiatest: auto focus myself\n");

	ap1302_wait_reg_status(0x1184, 0x0001);
	/*
	do {
		ap1302_read_i2c_reg(0x1184,&reg_data);
		printk("chengjiatest add regdata = %x\n",reg_data);		
	}
	while(reg_data&0x0001);
	*/

	ap1302_read_i2c_reg(0x1000,&reg_data);
		ap1302_write_i2c_reg(0x1000,(reg_data & 0x0003)|0x0114);
                if(af_touch_after_manual) {
			ap1302_write_i2c_reg(0x5058,0x1096);
			af_touch_after_manual = 0;
		}
		ap1302_af_mode = AF_TOUCH;
	}

     break;

	case CFG_GET_AF_FOCUS_DATA: 
	ap1302_read_i2c_reg(0x01c4, &reg_data);
	reg_data &= 0x000F;
	if(ap1302_debug_set[ap1302_enable_afinfo]) {
		printk("chengjiatest: get focus reg data = 0x%x\n", reg_data);
	}
	if(0x02 == reg_data) {	
		af_data.focus_state = CAM_AF_SCANNING;
		if( copy_to_user((void*)(cdata->cfg.setting),  &af_data, sizeof(cam_auto_focus_data_t)))
		{
		rc= -EFAULT;
		break;
		}	
	}
	
	else if(0x03 == reg_data) {
		af_data.focus_state = CAM_AF_FOCUSED;
		if( copy_to_user((void*)(cdata->cfg.setting),  &af_data, sizeof(cam_auto_focus_data_t)))
		{
		rc= -EFAULT;
		break;
		}	
	}
	else if(0x04 == reg_data) {
		af_data.focus_state = CAM_AF_NOT_FOCUSED;
		if( copy_to_user((void*)(cdata->cfg.setting),  &af_data, sizeof(cam_auto_focus_data_t)))
		{
		rc= -EFAULT;
		break;
		}	
	}
	else {
		af_data.focus_state = ap1302_af_status_before;
		if( copy_to_user((void*)(cdata->cfg.setting),  &af_data, sizeof(cam_auto_focus_data_t)))
		{
		rc= -EFAULT;
		break;
		}	

	}

	ap1302_af_status_before = af_data.focus_state;
	break;

	case CFG_SET_AF_MODE:
		if (copy_from_user(&af_mode, (void *)cdata->cfg.setting, sizeof(int32_t))) {
		pr_err("%s:%d failed\n", __func__, __LINE__);
		rc = -EFAULT;
		break;
	}

		if(CAM_FOCUS_MODE_INFINITY==af_mode)
		{
		printk("chengjiatest: set af CAM_FOCUS_MODE_INFINITY\n");
		ap1302_read_i2c_reg(0x5058, &reg_data);		
		reg_data&=0xfff0;
		reg_data|=0x0003;		
		ap1302_write_i2c_reg(0x5058, reg_data);
		ap1302_write_i2c_reg(0x505c, 0x00);
		ap1302_af_mode = AF_MANUAL;
		af_touch_after_manual = 1;

		};
	
		if(CAM_FOCUS_MODE_CONTINOUS_VIDEO == af_mode || CAM_FOCUS_MODE_CONTINOUS_PICTURE== af_mode) {
			printk("chengjiatest: set af continus\n");
			ap1302_read_i2c_reg(0x505a,&reg_data);
			ap1302_write_i2c_reg(0x505a, (reg_data & 0xff7f));
			
			if(ap1302_af_mode == AF_TOUCH) {

			ap1302_wait_reg_status(0x1000, 0x0010);
			/*
			ap1302_read_i2c_reg(0x1000,&reg_data);
				while(reg_data&0x0010) {
				ap1302_read_i2c_reg(0x1000,&reg_data);
				}
			*/
				if(reg_data&0x000c){
				ap1302_write_i2c_reg(0x1002,0x0002);
				ap1302_read_i2c_reg(0x1000,&reg_data);
				ap1302_write_i2c_reg(0x1000,(reg_data |0x0010));	
					}
			}
				ap1302_write_i2c_reg(0x5058,0x1086);	
				/////////////////should be fixed
						four_region[0] = 720 * 16383 / 1920;
	four_region[1] = 320 * 16383 / 1080;
	four_region[2] = (720+400) * 16383 / 1920;	
	four_region[3] =  (320+400) * 16383 / 1080;
	ap1302_write_i2c_reg(0x1184,0x0005);	
	ap1302_read_i2c_reg(0x505a,&reg_data);
	ap1302_write_i2c_reg(0x505a, (reg_data | 0x0080));
	ap1302_write_i2c_reg(0x5062, four_region[0]);
	ap1302_write_i2c_reg(0x5064, four_region[1]);
	ap1302_write_i2c_reg(0x5066, four_region[2]);
	ap1302_write_i2c_reg(0x5068, four_region[3]);	
	ap1302_write_i2c_reg(0x1002,0x00e1);
	ap1302_write_i2c_reg(0x1184,0x0007);

	ap1302_wait_reg_status(0x1184, 0x0001);
	/*
	do {
		ap1302_read_i2c_reg(0x1184,&reg_data);
		printk("lizhenhua add regdata = %x\n",reg_data);		
	}
	while(reg_data&0x0001);
	*/
				////////////////
				ap1302_af_mode = AF_CONTINUS;
		}
		else {
			printk("chengjiatest: set af another mode\n");
		}

	break;

	case CFG_SET_AP1302_CAPTURE:
		if (copy_from_user(&is_snapshot_mode, (void *)cdata->cfg.setting, sizeof(int32_t))) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -EFAULT;
			break;
		}
		printk("chengjiatest: set ap1302 capture %d\n", is_snapshot_mode);
		if(is_snapshot_mode == 2) {
			printk("chengjiatest: enter video mode\n");
			ap1302_write_i2c_reg(0x1000, 0x2);
			ap1302_write_i2c_reg(0x5058,0x1088);//swtich slow af in video
ap1302_set_iso(s_ctrl, 0);
			ap1302_disable_hdr_video();//zhangxiaobo
		}
		else if(is_snapshot_mode == 3) {
			printk("chengjiatest: return from video mode\n");
			ap1302_write_i2c_reg(0x1000, 0x0);
			ap1302_write_i2c_reg(0x5058,0x1086);//swtich fast af in preview
ap1302_set_iso(s_ctrl, ap1302_iso_value);
			is_snapshot_mode = 0;
		}

	break;

	case CFG_GET_FLASH_STATE:
	#if 0
		if(flash_mode == CAM_FLASH_MODE_OFF) {
			printk("chengjiatest: flash is off\n");
			*((int32_t*)(cdata->cfg.setting)) = 0;
		}
		else if(flash_mode == CAM_FLASH_MODE_AUTO) {
			
			printk("chengjiatest: flash is auto\n");
			ap1302_read_i2c_reg(0x5138, &reg_data);
			printk("chengjiatest: reg_data is %x\n",reg_data);
			reg_data&=0x0100;
			if(reg_data)
				*((int32_t*)(cdata->cfg.setting)) = 1;
			else
				*((int32_t*)(cdata->cfg.setting)) = 0;			
			
		}
		else if(flash_mode == CAM_FLASH_MODE_ON) {
			printk("chengjiatest: flash is on\n");
			*((int32_t*)(cdata->cfg.setting)) = 1;
		}
	#endif
	break;
	case CFG_SET_ZSL_MODE:
		if (copy_from_user(&zsl_mode, (void *)cdata->cfg.setting, sizeof(int32_t))) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -EFAULT;
			break;
		}
		printk("chengjiatest: set zsl mode %d\n", zsl_mode);
		if(zsl_mode) {
			is_snapshot_mode= 4;
		}
		else {
			is_snapshot_mode= 0;
		}

	if(is_snapshot_mode==4)
					{
					exif_wq_flag=1;
				wake_up(&exif_wq);
					}	
	break;

	case CFG_SET_MANUAL_FOCUS:
		if (copy_from_user(&focus_lev, (void *)cdata->cfg.setting, sizeof(int32_t))) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -EFAULT;
			break;
		}
		printk("chengjiatest: focus lev = %d\n", focus_lev);
		
		reg_data =focus_lev * 4 + 10;
		//printk("chengjiatest: reg_data = %d\n", reg_data);
		ap1302_write_i2c_reg(0x505c, reg_data);
		msleep(5);
		ap1302_af_mode = AF_MANUAL;
		
	break;

	case CFG_SET_MANUAL_AWB:
		if (copy_from_user(&col_tem, (void *)cdata->cfg.setting, sizeof(int32_t))) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -EFAULT;
			break;
		}
		ap1302_write_i2c_reg(0x510a, (uint16_t)col_tem);
		msleep(5);
		printk("chengjiatest add col_tem=%d\n",col_tem);
		
	break;
	
	case CFG_SET_AEC_LOCK:
		if (copy_from_user(&ae_lock_enable, (void *)cdata->cfg.setting, sizeof(int32_t))) {
			pr_err("%s:%d failed\n", __func__, __LINE__);
			rc = -EFAULT;
			break;
		}
		printk("chengjiatest: ae_lock_enable %d\n", ae_lock_enable);
		if(ae_lock_enable == 1) {
			ap1302_read_i2c_reg(0x200e, &reg_data);
			reg_data |= 0x0002;
			ap1302_write_i2c_reg(0x200e, reg_data);
			ap1302_read_i2c_reg(0x300e, &reg_data);
			reg_data |= 0x0002;
			ap1302_write_i2c_reg(0x300e, reg_data);
			ap1302_read_i2c_reg(0x400e, &reg_data);
			reg_data |= 0x0002;
			ap1302_write_i2c_reg(0x400e, reg_data);
		}
		else {
			ap1302_read_i2c_reg(0x200e, &reg_data);
			reg_data &= 0xfffd;
			ap1302_write_i2c_reg(0x200e, reg_data);
			ap1302_read_i2c_reg(0x300e, &reg_data);
			reg_data &= 0xfffd;
			ap1302_write_i2c_reg(0x300e, reg_data);
			ap1302_read_i2c_reg(0x400e, &reg_data);
			reg_data &= 0xfffd;
			ap1302_write_i2c_reg(0x400e, reg_data);
		}
		
		
	break;
	
	case CFG_GET_ZTE_AP1302_AE:
		
	break;
	default:
		rc = -EFAULT;
		break;
	}

	mutex_unlock(s_ctrl->msm_sensor_mutex);

	return rc;
}

static struct msm_sensor_fn_t ap1302_sensor_func_tbl = {
	.sensor_config = ap1302_sensor_config,
	.sensor_power_up = msm_sensor_power_up,
	.sensor_power_down = msm_sensor_power_down,
};

static struct msm_sensor_ctrl_t ap1302_s_ctrl = {
	.sensor_i2c_client = &ap1302_sensor_i2c_client,
	.power_setting_array.power_setting = ap1302_power_setting,
	.power_setting_array.size = ARRAY_SIZE(ap1302_power_setting),
	.msm_sensor_mutex = &ap1302_mut,
	.sensor_v4l2_subdev_info = ap1302_subdev_info,
	.sensor_v4l2_subdev_info_size = ARRAY_SIZE(ap1302_subdev_info),
	.func_tbl = &ap1302_sensor_func_tbl,
};

module_init(ap1302_init_module);
module_exit(ap1302_exit_module);
MODULE_DESCRIPTION("Aptina 8MP YUV sensor driver");
MODULE_LICENSE("GPL v2");
