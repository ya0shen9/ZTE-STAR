/*
 * drivers/staging/zte_ftm/ftm.c
 *
 * Copyright (C) 2012-2013 ZTE, Corp.
 *
 * This software is licensed under the terms of the GNU General Public
 * License version 2, as published by the Free Software Foundation, and
 * may be copied, distributed, and modified under those terms.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 *
*/

#include <linux/module.h>
#include <linux/sysdev.h>
#include <linux/errno.h>
#include <linux/init.h>
#include <linux/kernel.h>
#include <linux/spinlock.h>
#include <linux/uaccess.h>
#include <linux/version.h>
#include <linux/platform_device.h>
#include <linux/io.h>
#include <mach/msm_smem.h>

/*
 * Macro Definition
 */
#define FUSE_CLASS_NAME "zte_fuse"

/*
 * Type Definition
 */
typedef struct {
    uint32_t secboot_status;
} zte_sysdev_attrs_t;

/*
 * Global Variables Definition
 */
static struct sys_device zte_sysdev;
static zte_sysdev_attrs_t zte_sysdev_attrs;

/*
 * Function declaration
 */
static int32_t zte_register_sysdev(struct sys_device *sysdev);

static ssize_t show_secboot_status(struct sys_device *dev, struct sysdev_attribute *attr, char *buf)
{
    uint32_t *smem_fuse_status = NULL;

    smem_fuse_status = (int *)smem_alloc2(SMEM_ID_VENDOR2, sizeof(uint32_t)*2);

    if (!smem_fuse_status)
    {
        pr_err("%s: alloc smem failed!\n", __func__);
        return -EFAULT;
    }    
    
    /*
      * 0: No Blown
      * 2: Has Blown
      */
    zte_sysdev_attrs.secboot_status = (*(smem_fuse_status))&0x03;

    pr_info("%s: secboot_status:%d.\n", __func__, zte_sysdev_attrs.secboot_status);
    
    return snprintf(buf, PAGE_SIZE, "%d\n", zte_sysdev_attrs.secboot_status);
    
}

static SYSDEV_ATTR(secboot_status, S_IRUGO | S_IRUSR, show_secboot_status, NULL);


static struct sysdev_attribute *zte_attrs[] = {
    &attr_secboot_status,
};

static struct sysdev_class zte_fuse_sysdev_class = {
    .name = FUSE_CLASS_NAME
};

/*
 * Sys device register
 *
 * sysdev file:
 *
 * /sys/devices/system/zte_ftm/zte_ftm0/fusion
 * /sys/devices/system/zte_ftm/zte_ftm0/simlocking
 */
static int32_t zte_register_sysdev(struct sys_device *sysdev)
{
    int32_t ret;
    int32_t i;

    ret = sysdev_class_register(&zte_fuse_sysdev_class);
    if (ret)
    {
        return ret;
    }

    sysdev->id = 0;
    sysdev->cls = &zte_fuse_sysdev_class;

    ret = sysdev_register(sysdev);
    if (ret)
    {
        sysdev_class_unregister(&zte_fuse_sysdev_class);
        return ret;
    }

    for (i = 0; i < ARRAY_SIZE(zte_attrs); i++)
    {
        ret = sysdev_create_file(sysdev,zte_attrs[i]);
        if (ret)
        {
            goto  _fail;
        }
    }

    return 0;

_fail:

    while (--i >= 0) sysdev_remove_file(sysdev, zte_attrs[i]);

    sysdev_unregister(sysdev);
    sysdev_class_unregister(&zte_fuse_sysdev_class);

    return ret;
}

static int32_t __init zte_fuse_probe(struct platform_device *pdev)
{
    return 0;
}

static int32_t zte_fuse_remove(struct platform_device *pdev)
{
    pr_info("%s: e\n", __func__);
    return 0;
}

static struct platform_driver zte_fuse_driver = {
    .remove = zte_fuse_remove,
    .driver = {
        .name = "zte_fuse",
        .owner = THIS_MODULE,
    },
};

/*
 * Initializes the module.
 */
static int32_t __init zte_init(void)
{
    int ret;

    pr_info("%s: e\n", __func__);

    ret = platform_driver_probe(&zte_fuse_driver, zte_fuse_probe);
    if (ret)
    {
        return ret;
    }

    /*
     * Initialize sys device
     */
    zte_register_sysdev(&zte_sysdev);

    pr_info("%s: x\n", __func__);

    return 0;
}

/*
 * Cleans up the module.
 */
static void __exit zte_exit(void)
{
    platform_driver_unregister(&zte_fuse_driver);
}

module_init(zte_init);
module_exit(zte_exit);

MODULE_DESCRIPTION("ZTE Driver Ver %s" "1.0");
#ifdef MODULE_LICENSE
MODULE_LICENSE("GPL");
#endif
