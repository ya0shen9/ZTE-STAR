/* Copyright (c) 2012, The Linux Foundation. All rights reserved.
 *
 * This program is free software; you can redistribute it and/or modify
 * it under the terms of the GNU General Public License version 2 and
 * only version 2 as published by the Free Software Foundation.
 *
 * This program is distributed in the hope that it will be useful,
 * but WITHOUT ANY WARRANTY; without even the implied warranty of
 * MERCHANTABILITY or FITNESS FOR A PARTICULAR PURPOSE.  See the
 * GNU General Public License for more details.
 */
#include <linux/kernel.h>
#include <linux/module.h>
#include <linux/interrupt.h>
#include <linux/gpio.h>
#include <linux/proc_fs.h>
#include <asm/uaccess.h>
#include <linux/delay.h>
#include <linux/clk.h>


#include <linux/init.h>
#include <linux/fs.h>
#include <linux/device.h>
#include <linux/err.h>
#include <linux/list.h>
#include <linux/errno.h>
#include <linux/mutex.h>
#include <linux/slab.h>
#include <linux/spi/spi.h>
#include <linux/spi/spidev.h>
#include <linux/clk.h>
#ifdef CONFIG_IR_LATTICE_LED
#include "ice40_led.h"
#endif

#define GPIO_SPI_CS             14
#ifdef CONFIG_PROJECT_P862A10_ZTE
#define GPIO_3V3_EN             31
#endif
#if defined (CONFIG_PROJECT_P898S10_ZTE) || defined (CONFIG_PROJECT_P892S10_ZTE)
#define GPIO_3V3_EN             51
#define GPIO_SWITCH_EN         66
#endif

#define GPIO_RESET_IR           27 
#define GPIO_CDONE_IR           69
#define MEMBLOCK                32216
static  char fw_path[]= "/system/etc/firmware/irda/irda_top_bitmap.bin";
uint8_t pirdata[32216]={0};
static char ir_status[16] = "recv on";
static char g_power_open_flag = 0;
extern ssize_t spiphy_dev_write(u8 bits_per_word,u32 speed_hz,const char *buf,size_t count);
extern struct clk *irda_clk ;
struct spiphy_dev_s	*spiphy_dev = NULL;
#define SPI_MODE_MASK		(SPI_CPHA | SPI_CPOL | SPI_CS_HIGH \
				| SPI_LSB_FIRST | SPI_3WIRE | SPI_LOOP \
				| SPI_NO_CS | SPI_READY)

struct spiphy_dev_s {
	spinlock_t		spi_lock;
	struct spi_device	*spi;
	struct list_head	device_entry;
	struct mutex		ir_mutex;
  struct completion  transfer_in_process;
};


static int ir_get_fw_block(char *buf, int len, void *image)
{
  struct file *fp = (struct file *)image;
  int rdlen;

  if (!image)
    return 0;

  rdlen = kernel_read(fp, fp->f_pos, buf, len);
  if (rdlen > 0)
    fp->f_pos += rdlen;

  return rdlen;
}

static void * ir_open_fw(char *filename)
{
  struct file *fp;

  fp = filp_open(filename, O_RDONLY, 0);
  if (IS_ERR(fp))
  {
    printk("filp_open fail \n");
    fp = NULL;
  }

  return fp;
}

static void ir_close_fw(void *fw)
{
  if (fw)
    filp_close((struct file *)fw, NULL);

  return;
}

static void ir_file_rw_test(void)
{
  void *fw = NULL;
  uint len;
  int i;
  
  printk("ir_file_rw_test enter: %s \n",fw_path);
  fw=ir_open_fw(fw_path);
  if (fw == NULL)
  {
    printk("ir_open_fw fail !\n");
    return;
  }
  while ((len = ir_get_fw_block((char*)pirdata, MEMBLOCK, fw))) {
    printk("len=%d \n", len);
  }
  ir_close_fw(fw);

  for (i=0; i < MEMBLOCK; i ++)
  {
    if((i%16)!=0)
      printk("%x ",pirdata[i]);
    else if((i%16)==0)
    {
      printk("\n");
      printk("%x ",pirdata[i]);
    }
  }
  return;
}

void ir_spi_cs(int level)
{

  gpio_set_value(GPIO_SPI_CS, level);
  mdelay(10);
  
  return;
}

#ifdef CONFIG_IR_LATTICE_LED
extern char g_led_open_flag;
extern char g_irda_open_flag;
static unsigned char g_ir_clk_flag = 0;
extern int spidev_is_suspend(void);
void ir_clk_set(int status)
{  
    int ret=0;
    
    printk("ir_clk_set status=%d \n",status);
    if (status)
    {
        if(0 == g_ir_clk_flag)
        {
            ret=clk_prepare_enable(irda_clk);
            if (ret)
            {
                printk("-----lattic ir_clk_set fail \n");
                clk_disable_unprepare(irda_clk);
            }
            g_ir_clk_flag = 1;
        }
    }
    else 
    {
        if(1 == g_ir_clk_flag)
        {
            clk_disable_unprepare(irda_clk);
            g_ir_clk_flag = 0;
        }
    }
}
#endif 

static uint8_t spidev_buffer[32]={0xcc,0xcc,0xcc,0xcc,0xcc,0xcc,0xcc,0xcc,0xcc,0xcc,0xcc,0xcc,0xcc,0xcc,0xcc,0xcc,
0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,0x55,
};

static void spi_write_test(void)
{
  printk(" enter spi_write_test!\n");
  ir_spi_cs(0);
  spiphy_dev_write(8,2000000,spidev_buffer,32);
  return;
}

#if 1
#if 1
static int ir_download_fw(void * ptr)
{
  uint8_t buf[100]={0};
  int i;
  int ret = 0;
  
  //send 8 clocks
  for(i=0; i<8; i++)
  {
    ret = spiphy_dev_write(8,6000000,buf,8);
    if(ret == -1)
    {
        printk(KERN_ERR"spiphy_dev_write failed\n");
        return -1;
    }
  }

  //send data from bin file
  //for(i=0; i<MEMBLOCK; i++)
  {
    ret = spiphy_dev_write(8,6000000,ptr,MEMBLOCK);
    if(ret == -1)
    {
        printk(KERN_ERR"spiphy_dev_write 1 failed\n");
        return -1;
    }
  }
  
  //send 100 clocks
  for(i=0; i<100; i++)
  {
    ret = spiphy_dev_write(8,6000000,buf,100);
     if(ret == -1)
    {
        printk(KERN_ERR"spiphy_dev_write 2 failed\n");
        return -1;
    }
  }
  return 0;
}
#endif
static int check_ice40_state(void)
{
  int level = -1;
  level = gpio_get_value(GPIO_CDONE_IR);
  return level;
}

static void ir_reset(void)
{
  gpio_set_value(GPIO_RESET_IR, 1);
  mdelay(10);
  
  gpio_set_value(GPIO_RESET_IR, 0);
  mdelay(10);
  
  gpio_set_value(GPIO_RESET_IR, 1);
  mdelay(10);
  return;
}

static void ir_enable(void)
{
  gpio_set_value(GPIO_3V3_EN, 1);
#if defined (CONFIG_PROJECT_P898S10_ZTE) || defined (CONFIG_PROJECT_P892S10_ZTE)
  gpio_set_value(GPIO_SWITCH_EN, 1);
#endif
  mdelay(10);
  return;
}
#if 0
static void ir_out_tx(void)
{
  printk("ir_out_tx test \n");
  gpio_set_value(5, 0);
  mdelay(10);
  gpio_set_value(4, 1);

  return;
}

static void ir_demo_test(void)
{
  printk("ir_demo_test test \n");
  gpio_set_value(5, 1);
  mdelay(10);
  gpio_set_value(4, 1);

  return;
}

static void ir_out_rx(void)
{
  printk("ir_out_rx test \n");
  gpio_set_value(5, 1);
  mdelay(10);
  gpio_set_value(4, 0);

  return;
}
#endif
static int ir_config_ice40(int type, char *pfw_path)
{
  void *fw = NULL;
  //uint8_t *memblock = NULL, *memptr;
  int len ;

  ir_enable();
  // read fw to ram
  fw = ir_open_fw(pfw_path);
  if(fw == NULL)
  {
    printk("ir_open_fw fail !\n");
    goto err;
  }
  while ((len = ir_get_fw_block((char*)pirdata, MEMBLOCK, fw))) {
      //printk("len=%d \n", len);
  }

  //
  // Reset the ice40 device
  //
  ir_spi_cs(0);
  //Set SPI_SS_B low
  ir_reset();
  ir_download_fw(pirdata);

  // Verify successful configuration
    if (check_ice40_state())
    {
        strncpy(ir_status, "success", 7);
        return 0;
    }
    else
    {
        strncpy(ir_status, "fail", 4);
        return -1;
    }

 err:
  if (fw)
    ir_close_fw(fw);
  return -1;
 }

static int lattice_ir_gpio_init(void)
{
  int rc = -1;

  rc = gpio_request(GPIO_CDONE_IR, "CDONE_IR");
  if (rc) {
    printk("gpio_request CDONE_IR error\n");
    return rc;
  }

  rc = gpio_direction_input(GPIO_CDONE_IR);
  if (rc) {
    printk("gpio_direction_input GPIO_CDONE_IR error\n");
    return rc;
  }

  rc = gpio_request(GPIO_RESET_IR, "RESET_IR");
  if (rc) {
    printk("gpio_request RESET_IR error\n");
    return rc;
  }

  rc = gpio_direction_output(GPIO_RESET_IR, 0);
  if (rc) {
    printk("GPIO_RESET_IR Unable to set direction\n");
    return rc;
  }

  rc = gpio_request(GPIO_3V3_EN, "EN_IR");
  if (rc) {
    printk("gpio_request EN_IR error\n");
    return rc;
  }

  rc = gpio_direction_output(GPIO_3V3_EN, 0);
  if (rc) {
    printk("EN_IR Unable to set direction\n");
    return rc;
  }
#if defined (CONFIG_PROJECT_P898S10_ZTE) || defined (CONFIG_PROJECT_P892S10_ZTE)
  rc = gpio_request(GPIO_SWITCH_EN, "SWITCH_EN_IR");
  if (rc) {
    printk("gpio_request GPIO_SWITCH_EN error rc=%d \n",rc);
    return rc;
  }

  rc = gpio_direction_output(GPIO_SWITCH_EN, 0);
  if (rc) {
    printk("GPIO_SWITCH_EN Unable to set direction\n");
    return rc;
  }
#endif
  rc = gpio_request(GPIO_SPI_CS, "SPI_CS");
  if (rc) {
    printk("gpio_request SPI_CS error\n");
    return rc;
  }

  rc = gpio_direction_output(GPIO_SPI_CS, 0);
  if (rc) {
    printk("SPI_CS Unable to set direction\n");
    return rc;
  }
  ir_spi_cs(0);
#if 0
  rc = gpio_request(4, "UART_TX");
  if (rc) {
    printk("gpio_request UART_TX error\n");
    return rc;
  }

  rc = gpio_direction_output(4, 0);
  if (rc) {
    printk("UART_TX Unable to set direction\n");
    return rc;
  }

  rc = gpio_request(5, "UART_RX");
  if (rc) {
    printk("gpio_request UART_RX error\n");
    return rc;
  }

  rc = gpio_direction_output(5, 0);
  if (rc) {
    printk("UART_RX Unable to set direction\n");
    return rc;
  }
  #endif
  
  return rc;
}
#endif

int ice40_power_on(void)
{
    int ret=0;
    if(0 == g_power_open_flag)
    {  
#ifdef CONFIG_IR_LATTICE_LED
        if((1 == g_led_open_flag) || (1 == g_irda_open_flag))
       {
#endif
        printk(KERN_ERR"ice40_power_on\n");
        ret=ir_config_ice40(1,fw_path);
        if(ret !=0)
        {
            printk(KERN_ERR"-----ir_config_ice40 fail \n");
            return -1;
        }
        ret=clk_prepare_enable(irda_clk);
        if (ret)
        {
            printk(KERN_ERR"-----lattic clk_prepare_enable fail \n");
            clk_disable_unprepare(irda_clk);
            return -1;
        }
        mdelay(10);
        g_power_open_flag=1;
#ifdef CONFIG_IR_LATTICE_LED
        }
#endif
    }
    return 0;
}

void ice40_power_off(void)
{
    if(1 == g_power_open_flag)
    {
#ifdef CONFIG_IR_LATTICE_LED
        if((0 == g_led_open_flag) && (0 == g_irda_open_flag))
       {
#endif    
        printk(KERN_ERR"ice40_power_off\n");
#if defined (CONFIG_PROJECT_P898S10_ZTE) || defined (CONFIG_PROJECT_P892S10_ZTE)
        gpio_set_value(GPIO_SWITCH_EN,0);
#endif
        gpio_set_value(GPIO_3V3_EN, 0);
        gpio_set_value(GPIO_RESET_IR, 0);
        ir_spi_cs(0);

        clk_disable_unprepare(irda_clk);
        strncpy(ir_status, "invalid", 7);
        g_power_open_flag = 0;
#ifdef CONFIG_IR_LATTICE_LED
        }
#endif

    }
}

static ssize_t ir_recv_proc(char *page, char **start, off_t off, int count, int *eof, void *data)
{
  int ret = 0;

  if (NULL == page)	
  {
    return 0;
  }
  ret = sprintf(page, "%s\n", ir_status);	

  return ret;
}

static ssize_t ir_control_proc(struct file *filp, const char *buff, size_t len, loff_t *off)
{
  char messages[32] = {0};
  char buffer[7] = {0};
  int state;
 // int r=0;
  
  memset(messages,0,sizeof(messages));

  memset(buffer,0,sizeof(buffer));
  if (len > 31)
    len = 31;
  if (copy_from_user(messages, buff, len))
    return -EFAULT;
  if (strncmp(messages, "rw_test", 7) == 0) 
  {
    memset(ir_status,0,sizeof(ir_status));
    strncpy(ir_status, "rw_test", 7);
    ir_file_rw_test();
  } 
  else if (strncmp(messages, "cdone", 5) == 0)
  {     
    memset(ir_status,0,sizeof(ir_status));	
    strncpy(ir_status, "cdone", 5);
    state = check_ice40_state();
    printk("cdone:%d \n", state);
  }
  else if (strncmp(messages, "spi_test", 8) == 0)
  {     
    memset(ir_status,0,sizeof(ir_status));	
    strncpy(ir_status, "spi_test", 8);
    spi_write_test();
  } 
  else if (strncmp(messages, "ir_test", 7) == 0)
  {     
    memset(ir_status,0,sizeof(ir_status));	
    strncpy(ir_status, "ir_test", 7);
    ir_config_ice40(1,fw_path);
  }
   else if (strncmp(messages, "poff", 4) == 0)
  {     
    memset(ir_status,0,sizeof(ir_status));	
    strncpy(ir_status, "poff", 4);
    ice40_power_off();
  }
  else if (strncmp(messages, "reset", 5) == 0)
  {     
    memset(ir_status,0,sizeof(ir_status));	
    strncpy(ir_status, "reset", 5);
    printk("ir_reset \n");
    //ir_reset();
  ir_spi_cs(0);
  }
  else if (strncmp(messages, "enable", 6) == 0)
  {     
    memset(ir_status,0,sizeof(ir_status));	
    strncpy(ir_status, "enable", 6);
    printk("ir_enable \n");
    ir_enable();
  }
  else if (strncmp(messages, "txtest", 6) == 0)
  {     
    memset(ir_status,0,sizeof(ir_status));	
    strncpy(ir_status, "txtest", 6);
    //ir_out_tx();
  }
  else if (strncmp(messages, "rxtest", 6) == 0)
  {     
    memset(ir_status,0,sizeof(ir_status));	
    strncpy(ir_status, "rxtest", 6);
    //ir_out_rx();
  }
  else if (strncmp(messages, "demo", 4) == 0)
  {     
    memset(ir_status,0,sizeof(ir_status));	
    strncpy(ir_status, "demo", 4);
    //ir_demo_test();
  }
  else if(strncmp(messages, "clk_en", 6) == 0)
  {
    #if 0
    printk("clk_en \n");
    memset(ir_status,0,sizeof(ir_status));	
    strncpy(ir_status, "clk_en", 6);
    r=clk_prepare_enable(irda_clk);
    if (r)
    {
      printk("-----lattic clk_prepare_enable fail \n");
      clk_disable_unprepare(irda_clk);
    }
    #endif
  }
  else if(strncmp(messages, "clk_dis", 7) == 0)
  {
    printk("clk_dis \n");
    memset(ir_status,0,sizeof(ir_status));	
    strncpy(ir_status, "clk_dis", 7);
    clk_disable_unprepare(irda_clk);
  }
  #ifdef CONFIG_IR_LATTICE_LED
   // led breath mode
  else if (strncmp(messages, "bred", 4) == 0)
  {     
    memset(ir_status,0,sizeof(ir_status));	
    strncpy(ir_status, "bred", 4);
    set_led_on(LED_BREATH_MODE_VALUE,LED_RED_ON,1);
  }
  else if (strncmp(messages, "bgreen", 6) == 0)
  {     
    memset(ir_status,0,sizeof(ir_status));	
    strncpy(ir_status, "bgreen", 6);
    set_led_on(LED_BREATH_MODE_VALUE,LED_GREEN_ON,1);
  }
   else if (strncmp(messages, "bblue", 5) == 0)
  {     
    memset(ir_status,0,sizeof(ir_status));	
    strncpy(ir_status, "bblue", 5);
    set_led_on(LED_BREATH_MODE_VALUE,LED_BLUE_ON,1);
  }
   // led normal on  mode
  else if (strncmp(messages, "red", 3) == 0)
  {     
    memset(ir_status,0,sizeof(ir_status));	
    strncpy(ir_status, "red", 3);
    set_led_on(LED_NORMAL_ON_MODE_VALUE,LED_RED_ON,1);
  }
  else if (strncmp(messages, "green", 5) == 0)
  {     
    memset(ir_status,0,sizeof(ir_status));	
    strncpy(ir_status, "green", 5);
    set_led_on(LED_NORMAL_ON_MODE_VALUE,LED_GREEN_ON,1);
  }
   else if (strncmp(messages, "blue", 4) == 0)
  {     
    memset(ir_status,0,sizeof(ir_status));	
    strncpy(ir_status, "blue", 4);
    set_led_on(LED_NORMAL_ON_MODE_VALUE,LED_BLUE_ON,1);
  }
   // led normal on off mode
   else if (strncmp(messages, "1red", 4) == 0)
  {     
    memset(ir_status,0,sizeof(ir_status));	
    strncpy(ir_status, "1red", 4);
    set_led_on(LED_NORMAL_ON_OFF_MODE_VALUE,LED_RED_ON,1);
  }
  else if (strncmp(messages, "1green", 6) == 0)
  {     
    memset(ir_status,0,sizeof(ir_status));	
    strncpy(ir_status, "1green", 6);
    set_led_on(LED_NORMAL_ON_OFF_MODE_VALUE,LED_GREEN_ON,1);
  }
   else if (strncmp(messages, "1blue", 5) == 0)
  {     
    memset(ir_status,0,sizeof(ir_status));	
    strncpy(ir_status, "1blue", 5);
    set_led_on(LED_NORMAL_ON_OFF_MODE_VALUE,LED_BLUE_ON,1);
  }
    else if (strncmp(messages, "ball", 4) == 0)
    {
        memset(ir_status,0,sizeof(ir_status));	
        strncpy(ir_status, "ball", 4);
        set_led_on(LED_BREATH_MODE_VALUE,LED_RGB_ON,1);
    }
    // close led 
   else if (strncmp(messages, "ored", 4) == 0)
  {     
    memset(ir_status,0,sizeof(ir_status));	
    strncpy(ir_status, "ored", 4);
    set_led_on(LED_NORMAL_ON_OFF_MODE_VALUE,LED_RED_ON,0);
  }
   else if (strncmp(messages, "ogreen", 6) == 0)
  {     
    memset(ir_status,0,sizeof(ir_status));	
    strncpy(ir_status, "ogreen", 6);
    set_led_on(LED_NORMAL_ON_OFF_MODE_VALUE,LED_GREEN_ON,0);
  }
   else if (strncmp(messages, "oblue", 5) == 0)
  {     
    memset(ir_status,0,sizeof(ir_status));	
    strncpy(ir_status, "oblue", 5);
    set_led_on(LED_NORMAL_ON_OFF_MODE_VALUE,LED_BLUE_ON,0);
  }
#endif

  else 
  {
    printk("usage: echo {rw_test/cdone/spi_test} > /proc/driver/irda\n");
  }
  return len;
}

static void create_ir_proc_file(void)
{
  struct proc_dir_entry *ir_proc_file = create_proc_entry("driver/irda", 0777, NULL);
  if (ir_proc_file) 
  {
    ir_proc_file->read_proc = (read_proc_t *)ir_recv_proc;
    ir_proc_file->write_proc = (write_proc_t  *)ir_control_proc;
    printk(KERN_INFO "proc file create success!\n");
  } 
  else 
  {
    printk(KERN_INFO "proc file create failed!\n");
  }
}


/*
 * We can't use the standard synchronous wrappers for file I/O; we
 * need to protect against async removal of the underlying spi_device.
 */
static void spiphy_dev_complete(void *arg)
{
  struct spiphy_dev_s *spi = (struct spiphy_dev_s *) arg;
  //printk("[spi_phy] spiphy_dev_complete\r\n");
  complete(&spi->transfer_in_process);
  ir_spi_cs(1);
}

/* Read-only message with current device setup */
ssize_t
spiphy_dev_write_read(u8 bits_per_word,u32 speed_hz,char  *txbuf, char *rxbuf,size_t count)
{
  int status;     
  int res;
  struct spi_message message;                                       
  struct spi_transfer transfer;   
#ifdef CONFIG_IR_LATTICE_LED
  if(spidev_is_suspend())
  {
        printk(KERN_INFO"[spi_phy]spiphy_dev_read  spi suspend!\n");
        return -1;
  }
#endif
  //printk("[spi_phy]++++++++++++ spiphy_dev_read++++++++++++ count=%d\r\n",count) ;
  mutex_lock(&spiphy_dev->ir_mutex);
  memset(&transfer, 0, sizeof(transfer));
  spi_message_init(&message);       

  init_completion(&spiphy_dev->transfer_in_process);                  
  message.spi= spiphy_dev->spi;
  message.complete=spiphy_dev_complete;
  message.context=spiphy_dev;
  
  transfer.tx_buf = txbuf;
  transfer.rx_buf = rxbuf;
  transfer.bits_per_word = bits_per_word;   
  transfer.speed_hz = speed_hz;
  transfer.len = count;  
  INIT_LIST_HEAD(&transfer.transfer_list);
  spi_message_add_tail(&transfer, &message);  
                                     
  status = spiphy_dev->spi->master->transfer (spiphy_dev->spi, &message);  
  if(status)
  {
    printk(KERN_INFO"[spi_phy]spiphy_dev_read transfer failed!!!status=%d",status);
  }
  res=wait_for_completion_timeout(&spiphy_dev->transfer_in_process, 4 * HZ);
  if(!res)
  {
    printk(KERN_INFO"[spi_phy]spiphy_dev_read  timeout!");
    complete(&spiphy_dev->transfer_in_process);
  }
  mutex_unlock(&spiphy_dev->ir_mutex);
  //printk("[spi_phy]------------- spiphy_dev_read-----------\r\n");
  return count;
}

/* Write-only message with current device setup */
ssize_t
spiphy_dev_write(u8 bits_per_word,u32 speed_hz,const char *buf,
		size_t count)
{
  int status;     
  int res;
  struct spi_message message;                                       
  struct spi_transfer transfer;   

#ifdef CONFIG_IR_LATTICE_LED
  if(spidev_is_suspend())
  {
        printk(KERN_INFO"[spi_phy]spiphy_dev_write  spi suspend!\n");
        return -1;
  }
#endif
  //printk("[spi_phy]++++++++++++ spiphy_dev_write++++++++++++ count=%d\r\n",count) ;
  mutex_lock(&spiphy_dev->ir_mutex);
  memset(&transfer, 0, sizeof(transfer));
  spi_message_init(&message);       

  init_completion(&spiphy_dev->transfer_in_process);                  
  message.spi= spiphy_dev->spi;
  message.complete=spiphy_dev_complete;
  message.context=spiphy_dev;

  transfer.tx_buf = buf;           
  transfer.bits_per_word = bits_per_word;   
  transfer.speed_hz = speed_hz;
  transfer.len = count;  
  //transfer.delay_usecs =10;
  INIT_LIST_HEAD(&transfer.transfer_list);
  spi_message_add_tail(&transfer, &message);  
                                     
  status = spiphy_dev->spi->master->transfer (spiphy_dev->spi, &message);  
  if(status)
  {
    printk(KERN_INFO"[spi_phy]spiphy_dev_write transfer failed!!!status=%d",status);
  }
  res=wait_for_completion_timeout(&spiphy_dev->transfer_in_process, 4 * HZ);
  if(!res)
  {
    printk(KERN_INFO"[spi_phy]spiphy_dev_write  timeout!");
    complete(&spiphy_dev->transfer_in_process);
  }
  mutex_unlock(&spiphy_dev->ir_mutex);
  //printk("[spi_phy]------------- spiphy_dev_write-----------\r\n") ;
  return count;
}

static int spi_phy_init(void)
{
  struct spi_master	*master;
  struct spi_device  *spi_d;
  int status;
  
  printk("[spi_phy]spi_phy_init enter \r\n");
  
	/* Allocate driver data */
	spiphy_dev = kzalloc(sizeof(*spiphy_dev), GFP_KERNEL);
	if (!spiphy_dev)
		return -ENOMEM;

  /* Initialize the driver data */
  spi_d = kzalloc(sizeof(struct spi_device), GFP_KERNEL);
  if(!spi_d )
  {
    printk("[spi_phy] spi_d is null in spiphy_dev_register \r\n") ;
    return -ENOMEM;
  }
  master =spi_busnum_to_master(4);  
  spi_d->master = master;  
  spi_d->max_speed_hz=12000 * 1000;
  spi_d->chip_select=0;
  spi_d->mode=SPI_MODE_3;
  //spi_d->mode=SPI_MODE_3 | SPI_LSB_FIRST;//ZTE:modifyed by liumx
  spi_d->bits_per_word=8;//32;//8;
  strcpy(spi_d->modalias, "spiphy_dev");

  spiphy_dev->spi=spi_d;
  spin_lock_init(&spiphy_dev->spi_lock);
  INIT_LIST_HEAD(&spiphy_dev->device_entry);
  mutex_init(&spiphy_dev->ir_mutex);
  /* If we can allocate a minor number, hook up this device.
  * Reusing minors is fine so long as udev or mdev is working.
  */
  printk("[spi_phy]spi_phy_init exit \r\n");

  return status;
}

static void spi_phy_exit(void)
{
  /* make sure ops on existing fds can abort cleanly */
  spin_lock_irq(&spiphy_dev->spi_lock);
  spin_unlock_irq(&spiphy_dev->spi_lock);
  kfree(spiphy_dev->spi);
  kfree(spiphy_dev);
}

static int __init lattice_ir_init(void)
{
  int rc = -1;
  printk("enter lattice_ir_init \n");
  spi_phy_init();
  rc = lattice_ir_gpio_init();
  if(rc) {
    printk(" lattice_ir_gpio_init failed !\n");
  }
  create_ir_proc_file();
//  ir_config_ice40(1,fw_path);

  return 0;
}
late_initcall(lattice_ir_init);

static void __exit lattice_ir_exit(void)
{
  spi_phy_exit();
  return;
}
module_exit(lattice_ir_exit);

MODULE_DESCRIPTION("LATTICE IR Control driver");
MODULE_LICENSE("GPL v2");
