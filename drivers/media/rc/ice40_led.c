#if 1

#include <linux/init.h>
#include <linux/module.h>
#include <linux/types.h>
#include <linux/device.h>
#include <linux/delay.h>
#include <linux/semaphore.h>
#include <linux/proc_fs.h>
#include <linux/fs.h>
#include <linux/delay.h>
#include "ice40_led.h"

static DEFINE_SEMAPHORE(ir_led_sema);

static unsigned char g_led_status = 0;
char g_led_open_flag = 0;

void ice40_spi_cs_set(int status)
{
    ir_spi_cs(status);
}

int ice40_spi_dma_xfer(unsigned char *txbuf,unsigned char *rxbuf, int len)
{
    int ret=0;
    if(txbuf)
        ret = spiphy_dev_write(8,6000000,txbuf,len);
    return ret;
}

int ice40_spi_read(unsigned char *txbuf,unsigned char *rxbuf, int len)
{
    int ret=0;
    if(txbuf && rxbuf)
        ret = spiphy_dev_write_read(8,6000000,txbuf,rxbuf,len);
    return ret;
}

void set_led_on(int mode,int rgb,int enable)
{
    unsigned char rx_buf[4] = {0x0,0x0,0x0,0x0};
    unsigned char led_breath_mod_buf[] = {LED_WRITE_CMD,LED_HIGH_ADD,LED_MODE_ADDR,LED_BREATH_MODE_VALUE};
    unsigned char led_normal_on_mod_buf[] = {LED_WRITE_CMD,LED_HIGH_ADD,LED_MODE_ADDR,LED_NORMAL_ON_MODE_VALUE};
    unsigned char led_normal_on_off_mod_buf[] = {LED_WRITE_CMD,LED_HIGH_ADD,LED_MODE_ADDR,LED_NORMAL_ON_OFF_MODE_VALUE};
    //unsigned char led_mod_off_buf[] = {LED_WRITE_CMD,LED_HIGH_ADD,LED_MODE_ADDR,LED_MODE_OFF_VALUE};

#ifdef CONFIG_IR_LATTICE_LED_BREATH
    unsigned char led_breath_mod_standard_buf[] = {LED_WRITE_CMD,LED_HIGH_ADD,LED_MODE_ADDR,LED_BREATH_MODE_VALUE_STANDARD};
    unsigned char led_breath_mod_slow_buf[] = {LED_WRITE_CMD,LED_HIGH_ADD,LED_MODE_ADDR,LED_BREATH_MODE_VALUE_SLOW};
#endif
    unsigned char led_on_high_buf[] = {LED_WRITE_CMD,LED_HIGH_ADD,LED_ON_COUNTER_HIGH_ADDR,(LED_ON_COUNTER_VALUE & LED_HIGH_VALUE_MASK)>>8};
    unsigned char led_on_low_buf[] = {LED_WRITE_CMD,LED_HIGH_ADD,LED_ON_COUNTER_LOW_ADDR,(LED_ON_COUNTER_VALUE & LED_LOW_VALUE_MASK)};

    unsigned char led_prd_high_buf[] ={LED_WRITE_CMD,LED_HIGH_ADD,LED_PRD_CNT_HIGH_ADDR,(LED_PRD_CNT_VALUE & LED_HIGH_VALUE_MASK)>>8};
    unsigned char led_prd_low_buf[] ={LED_WRITE_CMD,LED_HIGH_ADD,LED_PRD_CNT_LOW_ADDR,(LED_PRD_CNT_VALUE & LED_LOW_VALUE_MASK)};

    unsigned char led_rgb_ctr_red_buf[] ={LED_WRITE_CMD,LED_HIGH_ADD,LED_RGB_CTL_ADDR,LED_RGB_CTL_RED_VALUE};
    unsigned char led_rgb_ctr_green_buf[] ={LED_WRITE_CMD,LED_HIGH_ADD,LED_RGB_CTL_ADDR,LED_RGB_CTL_GREEN_VALUE};
    unsigned char led_rgb_ctr_blue_buf[] ={LED_WRITE_CMD,LED_HIGH_ADD,LED_RGB_CTL_ADDR,LED_RGB_CTL_BLUE_VALUE};
    unsigned char led_rgb_ctr_rgb_buf[] ={LED_WRITE_CMD,LED_HIGH_ADD,LED_RGB_CTL_ADDR,LED_RGB_CTL_RED_VALUE |LED_RGB_CTL_GREEN_VALUE|LED_RGB_CTL_BLUE_VALUE };
    unsigned char led_rgb_crl_off[] = {LED_WRITE_CMD,LED_HIGH_ADD,LED_RGB_CTL_ADDR,LED_RGB_CTL_OFF};
    
    unsigned char led_rgb_crl_read_buf[]= {LED_READ_CMD,LED_HIGH_ADD,LED_RGB_CTL_ADDR,0x00};
    unsigned char led_mode_read_buf[]= {LED_READ_CMD,LED_HIGH_ADD,LED_MODE_ADDR,0x00};
    unsigned char led_mode_rx_buf[4] = {0x0,0x0,0x0,0x0};

    int i=0;
     
    udelay(800);//800 us
    
    ice40_spi_cs_set(0);
    ice40_spi_read(led_rgb_crl_read_buf,rx_buf,sizeof(led_rgb_crl_read_buf));
    ice40_spi_cs_set(1);
    rx_buf[3] = g_led_status;
    printk(KERN_ERR"ZTE rgb_ctl_reg :0x%x,0x%x,0x%x,0x%x g_led_status =0x%x \n",rx_buf[0],rx_buf[1],rx_buf[2],rx_buf[3],g_led_status);
    
    if(!enable) //close led all
    {
        #if 0
        printk("ZTE: led off\n");
        ice40_spi_cs_set(0);
        ice40_spi_dma_xfer(led_mod_off_buf,NULL,sizeof(led_mod_off_buf));
      // ice40_spi_dma_xfer(led_rgb_crl_off,NULL,sizeof(led_rgb_crl_off));
        ice40_spi_cs_set(1);
       #endif
        if(LED_RED_ON==rgb)
        {
            led_rgb_crl_off[3] = rx_buf[3] &( ~LED_RED_ON);
            udelay(800);//800 us
            ice40_spi_cs_set(0);
            ice40_spi_dma_xfer(led_rgb_crl_off,NULL,sizeof(led_rgb_crl_off));
            ice40_spi_cs_set(1);
            g_led_status &= ( ~LED_RED_ON);
            printk(KERN_ERR"ZTE: red led off rgb_ctl_reg=0x%x\n",led_rgb_crl_off[3]);
        }
        else if(LED_GREEN_ON==rgb)
        {
            led_rgb_crl_off[3] = rx_buf[3] &( ~LED_GREEN_ON);
            udelay(800);//800 us
            ice40_spi_cs_set(0);
            ice40_spi_dma_xfer(led_rgb_crl_off,NULL,sizeof(led_rgb_crl_off));
            ice40_spi_cs_set(1);
            g_led_status &= ( ~LED_GREEN_ON);
            printk(KERN_ERR"ZTE: green led off rgb_ctl_reg=0x%x\n",led_rgb_crl_off[3]);
        }
        else if(LED_BLUE_ON==rgb)
        {
            led_rgb_crl_off[3] = rx_buf[3] &( ~LED_BLUE_ON);
            udelay(800);//800 us
            ice40_spi_cs_set(0);
            ice40_spi_dma_xfer(led_rgb_crl_off,NULL,sizeof(led_rgb_crl_off));
            ice40_spi_cs_set(1);
            g_led_status &= ( ~LED_BLUE_ON);
            printk(KERN_ERR"ZTE: blue led off rgb_ctl_reg=0x%x\n",led_rgb_crl_off[3]);
        }
        return;
    }
     printk("ZTE: set_led_on mode=%d rgb=%d enable =%d\n",mode,rgb,enable);
     if(LED_BREATH_MODE_VALUE == mode)
    {
        printk(KERN_ERR"ZTE: led breath mode\n");
        for(i=0; i<5; i++)
        {
            ice40_spi_cs_set(0);
            ice40_spi_dma_xfer(led_breath_mod_buf,NULL,sizeof(led_breath_mod_buf));
            ice40_spi_cs_set(1);
            
            udelay(800);//800 us
            ice40_spi_cs_set(0);
            ice40_spi_read(led_mode_read_buf,led_mode_rx_buf,sizeof(led_mode_read_buf));
            ice40_spi_cs_set(1);

            if(led_mode_rx_buf[3] == led_breath_mod_buf[3] )
            {
                break;
            }
            else
            {
                mdelay(10);
                printk(KERN_ERR"ZTE: led breath mode set error i=%d led_mode_reg =0x%x \n",i,led_mode_rx_buf[3]);
            }
        }
    }
    else if(LED_NORMAL_ON_MODE_VALUE == mode)
    {
         printk(KERN_ERR"ZTE: led normal on  mode\n");
         for(i=0; i<5; i++)
         {
            ice40_spi_cs_set(0);
            ice40_spi_dma_xfer(led_normal_on_mod_buf,NULL,sizeof(led_normal_on_mod_buf));
            ice40_spi_cs_set(1);

            udelay(800);//800 us
            ice40_spi_cs_set(0);
            ice40_spi_read(led_mode_read_buf,led_mode_rx_buf,sizeof(led_mode_read_buf));
            ice40_spi_cs_set(1);

            if(led_mode_rx_buf[3] == led_normal_on_mod_buf[3] )
            {
                break;
            }
            else
            {
                mdelay(10);
                printk(KERN_ERR"ZTE: led normal on  mode set error i=%d led_mode_reg =0x%x \n",i,led_mode_rx_buf[3]);
            }
        }
    }
    else if(LED_NORMAL_ON_OFF_MODE_VALUE == mode)
    {
         printk(KERN_ERR"ZTE: led normal on off mode\n");
         for(i=0; i<5; i++)
         {
            ice40_spi_cs_set(0);
            ice40_spi_dma_xfer(led_normal_on_off_mod_buf,NULL,sizeof(led_normal_on_off_mod_buf));
            ice40_spi_cs_set(1);

            udelay(800);//800 us
            ice40_spi_cs_set(0);
            ice40_spi_read(led_mode_read_buf,led_mode_rx_buf,sizeof(led_mode_read_buf));
            ice40_spi_cs_set(1);

            if(led_mode_rx_buf[3] == led_normal_on_off_mod_buf[3] )
            {
                break;
            }
            else
            {
                mdelay(10);
                printk(KERN_ERR"ZTE: led normal on off mode set error i=%d led_mode_reg =0x%x \n",i,led_mode_rx_buf[3]);
            }
        }
    }
#ifdef CONFIG_IR_LATTICE_LED_BREATH
     else if(LED_BREATH_MODE_VALUE_STANDARD == mode)
    {
         printk(KERN_ERR"ZTE: led breath mode standard\n");
         for(i=0; i<5; i++)
         {
            ice40_spi_cs_set(0);
            ice40_spi_dma_xfer(led_breath_mod_standard_buf,NULL,sizeof(led_breath_mod_standard_buf));
            ice40_spi_cs_set(1);

            udelay(800);//800 us
            ice40_spi_cs_set(0);
            ice40_spi_read(led_mode_read_buf,led_mode_rx_buf,sizeof(led_mode_read_buf));
            ice40_spi_cs_set(1);

            if(led_mode_rx_buf[3] == led_breath_mod_standard_buf[3] )
            {
                printk(KERN_ERR"ZTE: led breath mode standard set  i=%d led_mode_reg =0x%x \n",i,led_mode_rx_buf[3]);
                break;
            }
            else
            {
                mdelay(10);
                printk(KERN_ERR"ZTE: led breath mode standard  set error i=%d led_mode_reg =0x%x \n",i,led_mode_rx_buf[3]);
            }
        }
    }
      else if(LED_BREATH_MODE_VALUE_SLOW == mode)
    {
         printk(KERN_ERR"ZTE: led breath mode slow \n");
         for(i=0; i<5; i++)
         {
            ice40_spi_cs_set(0);
            ice40_spi_dma_xfer(led_breath_mod_slow_buf,NULL,sizeof(led_breath_mod_slow_buf));
            ice40_spi_cs_set(1);

            udelay(800);//800 us
            ice40_spi_cs_set(0);
            ice40_spi_read(led_mode_read_buf,led_mode_rx_buf,sizeof(led_mode_read_buf));
            ice40_spi_cs_set(1);

            if(led_mode_rx_buf[3] == led_breath_mod_slow_buf[3] )
            {
                printk(KERN_ERR"ZTE: lled breath mode slow set  i=%d led_mode_reg =0x%x \n",i,led_mode_rx_buf[3]);
                break;
            }
            else
            {
                mdelay(10);
                printk(KERN_ERR"ZTE: led breath mode slow set error i=%d led_mode_reg =0x%x \n",i,led_mode_rx_buf[3]);
            }
        }
    }
 #endif
  
   udelay(800);//800 us
   ice40_spi_cs_set(0);
   ice40_spi_dma_xfer(led_on_high_buf,NULL,sizeof(led_on_high_buf));
   ice40_spi_cs_set(1);

   udelay(800);//800 us
   ice40_spi_cs_set(0);
   ice40_spi_dma_xfer(led_on_low_buf,NULL,sizeof(led_on_low_buf));
   ice40_spi_cs_set(1);
   
   udelay(800);//800 us
   ice40_spi_cs_set(0);
   ice40_spi_dma_xfer(led_prd_high_buf,NULL,sizeof(led_prd_high_buf));
   ice40_spi_cs_set(1);
   
   udelay(800);//800 us
   ice40_spi_cs_set(0);
   ice40_spi_dma_xfer(led_prd_low_buf,NULL,sizeof(led_prd_low_buf));
   ice40_spi_cs_set(1);
   
   if(LED_RED_ON == rgb)
   {
       led_rgb_ctr_red_buf[3] = rx_buf[3] |( LED_RED_ON);
       printk(KERN_ERR"ZTE: set_led_on red 0x%x \n",led_rgb_ctr_red_buf[3]);
       udelay(800);//800 us
       ice40_spi_cs_set(0);
       ice40_spi_dma_xfer(led_rgb_ctr_red_buf,NULL,sizeof(led_rgb_ctr_red_buf));
       ice40_spi_cs_set(1);
       g_led_status |= LED_RED_ON;
   }
   else if(LED_GREEN_ON == rgb)
   {
        led_rgb_ctr_green_buf[3] = rx_buf[3] |( LED_GREEN_ON);
       printk(KERN_ERR"ZTE: set_led_on green 0x%x\n",led_rgb_ctr_green_buf[3]);
       udelay(800);//800 us
       ice40_spi_cs_set(0);
       ice40_spi_dma_xfer(led_rgb_ctr_green_buf,NULL,sizeof(led_rgb_ctr_green_buf));
       ice40_spi_cs_set(1);
       g_led_status |= LED_GREEN_ON;
   } 
   else if(LED_BLUE_ON == rgb)
   {
        led_rgb_ctr_blue_buf[3] = rx_buf[3] |( LED_BLUE_ON);
       printk(KERN_ERR"ZTE: set_led_on blue 0x%x\n",led_rgb_ctr_blue_buf[3]);
       udelay(800);//800 us
       ice40_spi_cs_set(0);
       ice40_spi_dma_xfer(led_rgb_ctr_blue_buf,NULL,sizeof(led_rgb_ctr_blue_buf));
       ice40_spi_cs_set(1);
       g_led_status |= LED_BLUE_ON;
   }  
   else if (LED_RGB_ON == rgb)
   {
       printk(KERN_ERR"ZTE: set_led_on red greeen blue\n");
       udelay(800);//800 us
       ice40_spi_cs_set(0);
       ice40_spi_dma_xfer(led_rgb_ctr_rgb_buf,NULL,sizeof(led_rgb_ctr_rgb_buf));
       ice40_spi_cs_set(1);
       g_led_status |= LED_RED_ON |LED_BLUE_ON| LED_GREEN_ON;

   }
}

void set_led_breath_mode(int rgb,int enable)
{
     //  ir_clk_set(1);
     down(&ir_led_sema);
    g_led_open_flag = 1;
    ice40_power_on();
    set_led_on(LED_BREATH_MODE_VALUE,rgb,enable);
    up(&ir_led_sema);
}

#ifdef CONFIG_IR_LATTICE_LED_BREATH
void set_led_breath_mode_standard(int rgb,int enable)
{
     //  ir_clk_set(1);
     down(&ir_led_sema);
    g_led_open_flag = 1;
    ice40_power_on();
    set_led_on(LED_BREATH_MODE_VALUE_STANDARD,rgb,enable);
    up(&ir_led_sema);
}

void set_led_breath_mode_slow(int rgb,int enable)
{
     //  ir_clk_set(1);
     down(&ir_led_sema);
    g_led_open_flag = 1;
    ice40_power_on();
    set_led_on(LED_BREATH_MODE_VALUE_SLOW,rgb,enable);
    up(&ir_led_sema);
}
#endif

void set_led_normal_on_mode(int rgb,int enable)
{
     //  ir_clk_set(1);
    down(&ir_led_sema);
    g_led_open_flag = 1;
    ice40_power_on();
    set_led_on(LED_NORMAL_ON_MODE_VALUE,rgb,enable);
    up(&ir_led_sema);
}

void set_led_normal_on_off_mode(int rgb,int enable)
{
     //  ir_clk_set(1);
    down(&ir_led_sema);
    if(enable)
    {
         g_led_open_flag = 1;
         ice40_power_on();
    }
    set_led_on(LED_NORMAL_ON_OFF_MODE_VALUE,rgb,enable);
    if(0==enable && 0 == g_led_status)
    {
        g_led_open_flag = 0;
        ice40_power_off();
    }
    up(&ir_led_sema);
}

#endif

