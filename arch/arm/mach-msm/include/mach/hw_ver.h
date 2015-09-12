/***********************************************************************
* Copyright (C) 2001, ZTE Corporation.
* 
* File Name:    hw_ver.h
* Description:  hw version macro
* Author:       liuzhongzhi
* Date:         2011-07-11
* 
**********************************************************************/
#ifndef HW_VER_H
#define HW_VER_H

/*
 * HW_VERSION() - compute hw version
 * @board   : the board num
 * @gpio    : the gpio value
 *
 * This macro compute hw_version from board and project num
 */
#define HW_VERSION(board, gpio)  ((board) << 8 | (gpio))

/*
 * BOARD_NUM() - get board num
 * @hw_ver  : the hw version
 *
 * This macro deduce board num from hw version
 */
#define BOARD_NUM(hw_ver)  ((hw_ver) >> 8)


/*
 * GPIO_VALUE() - get project num
 * @hw_ver  : the hw version
 *
 * This macro deduce project num from hw version
 */
#define GPIO_VALUE(hw_ver)  ((hw_ver) & 0xFF)

/*******************************************************
*               Define HW Board  Info                  *
*******************************************************/
#define BOARD_NUM_P897A23	  0
#define BOARD_NUM_P897A21   1
#define BOARD_NUM_P862A10   2
#define BOARD_NUM_P898S10   3
#define BOARD_NUM_P892S10   4

#define BOARD_STR_P897A23   "P897A23"
#define BOARD_STR_P897A21   "P897A21"
#define BOARD_STR_P862A10   "P862A10" 
#define BOARD_STR_P898S10   "P898S10" 
#define BOARD_STR_P892S10   "P892S10" 

/*******************************************************
*               Define Project Info                    *
*******************************************************/
/* P897A23 add here */
#define GPIO_VALUE_P897A23_A    0
#define GPIO_VALUE_P897A23_B    1
#define GPIO_VALUE_P897A23_C    2

#define HW_VERSION_P897A23_A    HW_VERSION(BOARD_NUM_P897A23, GPIO_VALUE_P897A23_A)
#define HW_VERSION_P897A23_B    HW_VERSION(BOARD_NUM_P897A23, GPIO_VALUE_P897A23_B)
#define HW_VERSION_P897A23_C    HW_VERSION(BOARD_NUM_P897A23, GPIO_VALUE_P897A23_C)


#define VERSION_STR_P897A23_A   "HW_V1.0"
#define VERSION_STR_P897A23_B   "HW_V1.1"
#define VERSION_STR_P897A23_C   "HW_V1.2"

/* P897A21 add here */
#define GPIO_VALUE_P897A21_A    0
#define GPIO_VALUE_P897A21_B    1
#define GPIO_VALUE_P897A21_C    2

#define HW_VERSION_P897A21_A    HW_VERSION(BOARD_NUM_P897A21, GPIO_VALUE_P897A21_A)
#define HW_VERSION_P897A21_B    HW_VERSION(BOARD_NUM_P897A21, GPIO_VALUE_P897A21_B)
#define HW_VERSION_P897A21_C    HW_VERSION(BOARD_NUM_P897A21, GPIO_VALUE_P897A21_C)

#define VERSION_STR_P897A21_A   "xs8A"
#define VERSION_STR_P897A21_B   "xs8B"
#define VERSION_STR_P897A21_C   "xs8C"

/* P862A10 add here */
#define GPIO_VALUE_P862A10_A    0
#define GPIO_VALUE_P862A10_B    1
#define GPIO_VALUE_P862A10_C    2
#define GPIO_VALUE_P862A10_D    3

#define HW_VERSION_P862A10_A HW_VERSION(BOARD_NUM_P862A10, GPIO_VALUE_P862A10_A)
#define HW_VERSION_P862A10_B HW_VERSION(BOARD_NUM_P862A10, GPIO_VALUE_P862A10_B)
#define HW_VERSION_P862A10_C HW_VERSION(BOARD_NUM_P862A10, GPIO_VALUE_P862A10_C)
#define HW_VERSION_P862A10_D HW_VERSION(BOARD_NUM_P862A10, GPIO_VALUE_P862A10_D)

#define VERSION_STR_P862A10_A   "wmcA"
#define VERSION_STR_P862A10_B   "wmcB"
#define VERSION_STR_P862A10_C   "wmcC"
#define VERSION_STR_P862A10_D   "wmcD"

/* P898S10 */
#define GPIO_VALUE_P898S10_A    0
#define GPIO_VALUE_P898S10_B    1
#define GPIO_VALUE_P898S10_C    2
#define GPIO_VALUE_P898S10_D    3

#define HW_VERSION_P898S10_A HW_VERSION(BOARD_NUM_P898S10, GPIO_VALUE_P898S10_A)
#define HW_VERSION_P898S10_B HW_VERSION(BOARD_NUM_P898S10, GPIO_VALUE_P898S10_B)
#define HW_VERSION_P898S10_C HW_VERSION(BOARD_NUM_P898S10, GPIO_VALUE_P898S10_C)
#define HW_VERSION_P898S10_D HW_VERSION(BOARD_NUM_P898S10, GPIO_VALUE_P898S10_D)

#define VERSION_STR_P898S10_A   "wmuA"
#define VERSION_STR_P898S10_B   "wmuB"
#define VERSION_STR_P898S10_C   "wmuC"
#define VERSION_STR_P898S10_D   "wmuD"

/* P892S10 */
#define GPIO_VALUE_P892S10_A    0
#define GPIO_VALUE_P892S10_B    1
#define GPIO_VALUE_P892S10_C    2
#define GPIO_VALUE_P892S10_D    3

#define HW_VERSION_P892S10_A HW_VERSION(BOARD_NUM_P892S10, GPIO_VALUE_P892S10_A)
#define HW_VERSION_P892S10_B HW_VERSION(BOARD_NUM_P892S10, GPIO_VALUE_P892S10_B)
#define HW_VERSION_P892S10_C HW_VERSION(BOARD_NUM_P892S10, GPIO_VALUE_P892S10_C)
#define HW_VERSION_P892S10_D HW_VERSION(BOARD_NUM_P892S10, GPIO_VALUE_P892S10_D)

#define VERSION_STR_P892S10_A   "xv2A"
#define VERSION_STR_P892S10_B   "xw2A"
#define VERSION_STR_P892S10_C   "xw2B"
#define VERSION_STR_P892S10_D   "xw2C"

/*******************************************************
*               Global Variable                        *
*******************************************************/
extern int hw_ver;
#endif
