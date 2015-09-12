

#if 1

#define LED_WRITE_CMD 0x02
#define LED_READ_CMD 0x03

#define LED_HIGH_ADD 0x00
#define LED_MODE_ADDR 10
#define LED_ON_COUNTER_HIGH_ADDR 12
#define LED_ON_COUNTER_LOW_ADDR 11
#define LED_PRD_CNT_HIGH_ADDR   14
#define LED_PRD_CNT_LOW_ADDR   13
#define LED_RGB_CTL_ADDR   15

#ifdef CONFIG_IR_LATTICE_LED_BREATH
#define LED_BREATH_MODE_VALUE    0x4          //fast
#define LED_NORMAL_ON_MODE_VALUE 0x0
#define LED_NORMAL_ON_OFF_MODE_VALUE 0x2
#define LED_BREATH_MODE_VALUE_STANDARD   0x5
#define LED_BREATH_MODE_VALUE_SLOW    0x6
#else
#define LED_BREATH_MODE_VALUE  0x3
#define LED_NORMAL_ON_MODE_VALUE 0x1
#define LED_NORMAL_ON_OFF_MODE_VALUE 0x0
#endif


#define LED_MODE_OFF_VALUE 0x2

#define LED_HIGH_VALUE_MASK 0xff00
#define LED_LOW_VALUE_MASK  0x00ff
#define LED_ON_COUNTER_VALUE  4000//4000 on is 0.5s
#define LED_PRD_CNT_VALUE    20000 //8000 is 1s prd
#define LED_RGB_CTL_RED_VALUE   (1<<2)
#define LED_RGB_CTL_GREEN_VALUE   (1<<1)
#define LED_RGB_CTL_BLUE_VALUE   (1<<0)
#define LED_RGB_CTL_OFF    0x0


#define LED_RED_ON  (1<<2)
#define LED_GREEN_ON  (1<<1)
#define LED_BLUE_ON  (1<<0)
#define LED_RED_GREEN_ON   (LED_RED_ON |LED_GREEN_ON)
#define LED_RED_BLUE_ON   (LED_RED_ON |LED_BLUE_ON)
#define LED_GREEN_BLUE_ON  (LED_GREEN_ON |LED_BLUE_ON)
#define LED_RGB_ON       (LED_RED_ON |LED_GREEN_ON |LED_BLUE_ON)

extern void ir_spi_cs(int level);
extern ssize_t spiphy_dev_write_read(u8 bits_per_word,u32 speed_hz,char  *txbuf, char *rxbuf,size_t count);
extern ssize_t spiphy_dev_write(u8 bits_per_word,u32 speed_hz,const char *buf,size_t count);
extern void set_led_on(int mode,int rgb,int enable);
extern void ir_clk_set(int status);
extern int ice40_power_on(void);
extern void ice40_power_off(void);
#endif
