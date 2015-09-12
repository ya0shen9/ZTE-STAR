/***********************************************************************
* Copyright (C) 2001, ZTE Corporation.
* 
* File Name:    hw_ver.c
* Description:  hw version process code
* Author:       liuzhongzhi
* Date:         2011-07-11
* 
**********************************************************************/
#include <linux/init.h>
#include <linux/platform_device.h>
#include <mach/hw_ver.h>
#include <linux/stat.h>
#include <linux/module.h> 

struct hw_ver_name
{
    int hw_ver;     /* hw version num */
    char *hw_name;  /* hw version name */
};

int hw_ver = -1;
/* ZTE_MODIFY begin: Added by yuanzongxuan for 3620 nv 2014-03-05 */
EXPORT_SYMBOL(hw_ver);
/* ZTE_MODIFY end: by yuanzongxuan 2014-03-05 */


static char *hw_version="noversion";

static struct hw_ver_name hw_ver_names[] = {
    /* P892S10 add here */
    {HW_VERSION_P892S10_A,  VERSION_STR_P892S10_A},
    {HW_VERSION_P892S10_B,  VERSION_STR_P892S10_B},
    {HW_VERSION_P892S10_C,  VERSION_STR_P892S10_C},
    {HW_VERSION_P892S10_D,  VERSION_STR_P892S10_D},
     /* P898S10 add here */
    {HW_VERSION_P898S10_A,  VERSION_STR_P898S10_A},
    {HW_VERSION_P898S10_B,  VERSION_STR_P898S10_B},
    {HW_VERSION_P898S10_C,  VERSION_STR_P898S10_C},
    {HW_VERSION_P898S10_D,  VERSION_STR_P898S10_D},
    /* P862A10 add here */
    {HW_VERSION_P862A10_A,  VERSION_STR_P862A10_A},
    {HW_VERSION_P862A10_B,  VERSION_STR_P862A10_B},
    {HW_VERSION_P862A10_C,  VERSION_STR_P862A10_C},
    {HW_VERSION_P862A10_D,  VERSION_STR_P862A10_D},
	/* P897A23 add here */
    {HW_VERSION_P897A23_A,  VERSION_STR_P897A23_A},
    {HW_VERSION_P897A23_B,  VERSION_STR_P897A23_B},
    {HW_VERSION_P897A23_C,  VERSION_STR_P897A23_C},
	/* P897A21 add here */
    {HW_VERSION_P897A21_A,  VERSION_STR_P897A21_A},
    {HW_VERSION_P897A21_B,  VERSION_STR_P897A21_B},
    {HW_VERSION_P897A21_C,  VERSION_STR_P897A21_C},
};

/*
 * Get the hw_ver value
 */
static int __init hw_ver_setup(char *str)
{
    char *after;

    printk(KERN_NOTICE "%s @str:%s\n", __func__, str);
    
    hw_ver = simple_strtoul(str, &after, 16);
    
	return 1;
}
__setup("hw_ver=", hw_ver_setup);

static int __init get_hw_version(void)
{
	int i = 0;

    /* find the hw version string according to hw_ver value */
	for (i = 0; i < sizeof(hw_ver_names)/sizeof(hw_ver_names[0]); i++) {
		if(hw_ver_names[i].hw_ver == hw_ver) {
            hw_version = hw_ver_names[i].hw_name;
            break;
		}
	}
    
	printk(KERN_NOTICE "@hw_version: %s\n",hw_version);
    
	return 0;
}

int  zte_get_board_id(void)
{
    int borad_id = -1;

    borad_id = hw_ver;
    borad_id &=0xff;
    printk("zte_get_board_id borad_id=%d\n",borad_id);
    
    return borad_id;
}

/*
 * show_hw_version() - Show public hw version to user space
 */
static ssize_t show_hw_version(struct device *dev, struct device_attribute *attr,
			   char *buf)
{
	return sprintf(buf, "%s\n", hw_version);
}

static struct device_attribute hw_version_attr =
	__ATTR(hw_version, S_IRUGO | S_IWUSR, show_hw_version, NULL);

static int __devinit hw_ver_probe(struct platform_device *pdev)
{
    int ret;   

	get_hw_version();
	zte_get_board_id();
    /* create attr file */
    ret = device_create_file(&pdev->dev, &hw_version_attr);
	if (ret) {
		dev_err(&pdev->dev, "failed: create hw_version file\n");
	}
    return 0;
}

static __devexit int hw_ver_remove(struct platform_device *pdev)
{
    device_remove_file(&pdev->dev, &hw_version_attr);	

	return 0;
}

static struct platform_driver hw_ver_driver = {
	.probe	= hw_ver_probe,
	.remove	= __devexit_p(hw_ver_remove),
	.driver = {
		.name	= "hw_version",
		.owner	= THIS_MODULE,
	},
};

static struct platform_device hw_ver_device = {
	.name = "hw_version",
	.id = -1,
};

static int __init hw_ver_init(void)
{
    int ret;

    /* register device */
    ret = platform_device_register(&hw_ver_device); 
    if (ret){
        printk(KERN_NOTICE "Unable to register hw version Device!\n");
        goto out;
    }

    /* register driver */
    ret = platform_driver_register(&hw_ver_driver);
out:
	return ret;
}


static void __exit hw_ver_exit(void)
{
    platform_device_unregister(&hw_ver_device);
	platform_driver_unregister(&hw_ver_driver);
}

module_init(hw_ver_init);
module_exit(hw_ver_exit);

