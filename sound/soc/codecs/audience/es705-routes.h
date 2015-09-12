/*
 * es705-routes.h  --  Audience eS705 ALSA SoC Audio driver
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

#ifndef _ES705_ROUTES_H
#define _ES705_ROUTES_H

struct esxxx_route_config {
	const u32 *route;
	const u32 *nb;
	const u32 *wb;
	const u32 *swb;
	const u32 *fb;
	const u32 *pnb;
	const u32 *pwb;
	const u32 *pswb;
	const u32 *pfb;
};

enum {
	ROUTE_OFF,						/* 0 */
	ROUTE_CS_VOICE_1MIC_CT,			/* 1 */
	ROUTE_CS_VOICE_2MIC_CT,			/* 2 */
	ROUTE_CS_VOICE_3MIC_CT,			/* 3 */
	ROUTE_CS_VOICE_1MIC_FT,			/* 4 */
	ROUTE_CS_VOICE_2MIC_FT,			/* 5 */
	ROUTE_CS_VOICE_3MIC_FT,			/* 6 */
	ROUTE_CS_VOICE_HEADSET,			/* 7 */
	ROUTE_CS_VOICE_1MIC_HEADPHONE,	/* 8 */
	ROUTE_VOIP_1MIC_CT,				/* 9 */
	ROUTE_VOIP_2MIC_CT,				/* 10 */
	ROUTE_VOIP_3MIC_CT,				/* 11 */
	ROUTE_VOIP_1MIC_FT,				/* 12 */
	ROUTE_VOIP_2MIC_FT,				/* 13 */
	ROUTE_VOIP_3MIC_FT,				/* 14 */
	ROUTE_VOIP_HEADSET,				/* 15 */
	ROUTE_VOIP_1MIC_HEADPHONE,		/* 16 */
	ROUTE_VOICE_ASR_1MIC,			/* 17 */
	ROUTE_VOICE_ASR_2MIC,			/* 18 */
	ROUTE_VOICE_ASR_3MIC,			/* 19 */
	ROUTE_VOICESENSE_SBUSRX4,		/* 20 */
	ROUTE_VOICESENSE_SBUSRX0,		/* 21 */
	ROUTE_VOICESENSE_PDM,			/* 22 */
	ROUTE_1CHAN_PLAYBACK,			/* 23 */
	ROUTE_2CHAN_PLAYBACK,			/* 24 */
	ROUTE_1CHAN_CAPTURE,			/* 25 */
	ROUTE_2CHAN_CAPTURE,			/* 26 */
	ROUTE_AUDIOZOOM_2MIC,			/* 27 */
	ROUTE_AUDIOZOOM_3MIC,			/* 28 */
	ROUTE_2MIC_NS_CT_ANALOG,		/* 29 */
	ROUTE_2MIC_NS_FT_ANALOG,		/* 30 */
	ROUTE_2MIC_NS_FO_ANALOG,		/* 31 */
	ROUTE_3MIC_NS_CT_ANALOG,		/* 32 */
	ROUTE_3MIC_NS_FT_ANALOG,		/* 33 */
	ROUTE_3MIC_NS_FO_ANALOG,		/* 34 */
	ROUTE_AEC7_2MIC_NS_FT,			/* 35 */
	ROUTE_AEC7_3MIC_NS_FT,			/* 36 */
	ROUTE_ASR_2MIC_NS_AF,			/* 37 */
	ROUTE_ASR_3MIC_NS_AF,			/* 38 */
	ROUTE_AZV_2MIC,					/* 39 */
	ROUTE_AZV_3MIC,					/* 40 */
	ROUTE_STEREO_RECORD_48K,		/* 41 */
	ROUTE_STEREO_RECORD_96K,		/* 42 */
	ROUTE_STEREO_RECORD_192K,		/* 43 */
	ROUTE_AVALON_PLAY,				/* 44 */
	ROUTE_AVALON_CAPTURE,			/* 45 */
	ROUTE_MAX						/* 46 */
};

enum {
	RATE_NB,
	RATE_WB,
	RATE_SWB,
	RATE_FB,
	RATE_MAX
};

static const u32 route_off[] = {
	0xffffffff,
};

static const u32 route_pass1[] = {//RichardYe test only: 
//Sample rate: 8kHz, Path  In: Slimbus Rx0&Rx1, Path Out: PCM B Channel0&Channel1,master mode
//Used on dragonboard, not for ZTE case
	0xB00C0B09,
	0xB00D0108,
	0xB05A0A00,//Set Path	SBUS.Rx0    	RxChMgr0
	0xB05A0A11,//Set Path	SBUS.Rx1    	RxChMgr1
	0xB05A020A,//Set Path	PCM0.TX0    	TxChMgr0
	0xB05A021B,//Set Path	PCM0.TX1    	TxChMgr1
	0xB05B000D,//Set PathId	RxChMgr0    	PATH_ID_PI1 
	0xB05B010E,//Set PathId	RxChMgr1    	PATH_ID_PI2
	0xB05B0A2C,//Set PathId	TxChMgr0    	PATH_ID_PO1
	0xB05B0B2D,//Set PathId	TxChMgr1    	PATH_ID_PO2
	0xB0640038,//Connect	RxChMgr0.o0
	0xB0640160,//Connect	PASSTHRU.i0
	0xB0640048,//Connect	RxChMgr1.o0
	0xB0640161,//Connect	PASSTHRU.i1
	0xB0640168,//Connect	PASSTHRU.o0
	0xB06400D0,//Connect	TxChMgr0.i0
	0xB0640169,//Connect	PASSTHRU.o1
	0xB06400E0,//Connect	TxChMgr1.i0
	0xB0450003,//Set Max External Port Rate	 48k
	0xB0630003,//Set Rate	RxChMgr0    	  8k
	0xB0630004,//Set Rate	RxChMgr1    	  8k
	0xB0630016,//Set Rate	PASSTHRU    	  8k
	0xB063000D,//Set Rate	TxChMgr0    	  8k
	0xB063000E,//Set Rate	TxChMgr1    	  8k
	0xB0680300,//Set Group	RxChMgr0     	  0
	0xB0680400,//Set Group	RxChMgr1     	  0
	0xB0681600,//Set Group	PASSTHRU     	  0
	0xB0680D00,//Set Group	TxChMgr0     	  0
	0xB0680E00,//Set Group	TxChMgr1     	  0
	0xB069000D,//Set Endpoint	PATH_ID_PI1
	0xB0150000,//Set Gain	0
	0xB069000E,//Set Endpoint	PATH_ID_PI2
	0xB0150000,//Set Gain	0
	0xB0690168,//Set Endpoint	passthru.o0
	0xB0150000,//Set Gain	0
	0xB0690169,//Set Endpoint	passthru.o1
	0xB0150000,//Set Gain	0
	0xB00C0900,//A300_msg_SetDeviceParmID	Set Multichannel Link bits
	0xB00D0000,//A300_msg_SetDeviceParm	SLIMbus Linked:  <no linked, so clear bits>
	0x80000000,
	0xffffffff
};

static const u32 route_pass2[] = {//RichardYe test only: 
//Playback mode: Sample rate: 48kHz, Path  In: Slimbus Rx0&Rx1, Path Out: PCM B Channel0&Channel1(I2S master)
//!Preset id: 1175	;  Multi-Media-Audio @48k,
//Used on dragonboard, not for ZTE case
	0xB00C0B09,
	0xB00D0130, 
	0xB05A0A00,//	; Set Path	sbus.rx0		RxChMgr0
	0xB05A0A11,//	; Set Path	sbus.rx1		RxChMgr1
	0xB05A020A,//	; Set Path	pcm1.tx0		TxChMgr0
	0xB05A021B,//	; Set Path	pcm1.tx1		TxChMgr1
	0xB05B0005,//	; Set PathId	RxChMgr0		PATH_ID_AI1
	0xB05B0106,//	; Set PathId	RxChMgr1		PATH_ID_AI2
	0xB05B0A24,//	; Set PathId	TxChMgr0		PATH_ID_AO1
	0xB05B0B25,//	; Set PathId	TxChMgr1		PATH_ID_AO2
	0xB0640038,//	; Connect	RxChMgr0.o0 	(Connect # 0 Output)
	0xB0640150,//	; Connect	mmaudio.i0		(Connect # 0 Input)
	0xB0640048,//	; Connect	RxChMgr1.o0 	(Connect # 1 Output)
	0xB0640151,//	; Connect	mmaudio.i1		(Connect # 1 Input)
	0xB0640158,//	; Connect	mmaudio.o0		(Connect # 2 Output)
	0xB0640200,//	; Connect	om0.i0			(Connect # 2 Input)
	0xB0640159,//	; Connect	mmaudio.o1		(Connect # 3 Output)
	0xB0640201,//	; Connect	om0.i1			(Connect # 3 Input)
	0xB0640208,//	; Connect	om0.o0			(Connect # 4 Output)
	0xB06400D0,//	; Connect	TxChMgr0.i0 	(Connect # 4 Input)
	0xB0640209,//	; Connect	om0.o1			(Connect # 5 Output)
	0xB06400E0,//	; Connect	TxChMgr1.i0 	(Connect # 5 Input)
	0xB0450005,//	; Set Max External Port Rate	192k
	0xB0630303,//	; Set Rate	RxChMgr0		 48k
	0xB0630304,//	; Set Rate	RxChMgr1		 48k
	0xB0630315,//	; Set Rate	mmaudio 		 48k
	0xB063030D,//	; Set Rate	TxChMgr0		 48k
	0xB063030E,//	; Set Rate	TxChMgr1		 48k
	0xB0174006,//	; A300_msg_SetAlgorithmParmID	eOutputManagerParam_EnableLimiterLookahead [eOMInstances_LIM_A]
	0xB0180001,//	; A300_msg_SetAlgorithmParm 	Yes 				 
	0xB0680300,//	; Set Group RxChMgr0		  0
	0xB0680400,//	; Set Group RxChMgr1		  0
	0xB0681500,//	; Set Group mmaudio 		  0
	0xB0682000,//	; Set Group om0 			  0
	0xB0680D00,//	; Set Group TxChMgr0		  0
	0xB0680E00,//	; Set Group TxChMgr1		  0
	0xB00C0900,//	; A300_msg_SetDeviceParmID	Set Multichannel Link bits
	0xB00D0002,//	; A300_msg_SetDeviceParm	SLIMbus Linked:  Rx0 -> Rx1
	0x80000000,//	; Sync to commit changes
	0xffffffff
};

static const u32 route_pass3[] = {//RichardYe test only: 
//Capture stereo mode: Sample rate: 48kHz, Path  Out: Slimbus Rx0&Rx1, Path In: DMIC0&DMIC1
//!Preset id: 1178	;  Multi-Media-Audio @48k,
//Not for ZTE case
	0xB05A0C00,//	; Set Path	pdm0.rx     	RxChMgr0
	0xB05A0E01,//	; Set Path	pdm1.rx     	RxChMgr1
	0xB05A0A0A,//	; Set Path	sbus.tx0    	TxChMgr0
	0xB05A0A1B,//	; Set Path	sbus.tx1    	TxChMgr1
	0xB05B0005,//	; Set PathId	RxChMgr0    	PATH_ID_AI1
	0xB05B0106,//	; Set PathId	RxChMgr1    	PATH_ID_AI2
	0xB05B0A24,//	; Set PathId	TxChMgr0    	PATH_ID_AO1
	0xB05B0B25,//	; Set PathId	TxChMgr1    	PATH_ID_AO2
	0xB0640038,//	; Connect	RxChMgr0.o0 	(Connect # 0 Output)
	0xB0640150,//	; Connect	mmaudio.i0  	(Connect # 0 Input)
	0xB0640048,//	; Connect	RxChMgr1.o0 	(Connect # 1 Output)
	0xB0640151,//	; Connect	mmaudio.i1  	(Connect # 1 Input)
	0xB0640158,//	; Connect	mmaudio.o0  	(Connect # 2 Output)
	0xB0640200,//	; Connect	om0.i0      	(Connect # 2 Input)
	0xB0640159,//	; Connect	mmaudio.o1  	(Connect # 3 Output)
	0xB0640201,//	; Connect	om0.i1      	(Connect # 3 Input)
	0xB0640208,//	; Connect	om0.o0      	(Connect # 4 Output)
	0xB06400D0,//	; Connect	TxChMgr0.i0 	(Connect # 4 Input)
	0xB0640209,//	; Connect	om0.o1      	(Connect # 5 Output)
	0xB06400E0,//	; Connect	TxChMgr1.i0 	(Connect # 5 Input)
	0xB0450005,//	; Set Max External Port Rate	192k
	0xB0630303,//	; Set Rate	RxChMgr0    	 48k
	0xB0630304,//	; Set Rate	RxChMgr1    	 48k
	0xB0630315,//	; Set Rate	mmaudio     	 48k
	0xB063030D,//	; Set Rate	TxChMgr0    	 48k
	0xB063030E,//	; Set Rate	TxChMgr1    	 48k
	0xB0174006,//	; A300_msg_SetAlgorithmParmID	eOutputManagerParam_EnableLimiterLookahead [eOMInstances_LIM_A]
	0xB0180001,//	; A300_msg_SetAlgorithmParm  	Yes                  
	0xB0680300,//	; Set Group	RxChMgr0     	  0
	0xB0680400,//	; Set Group	RxChMgr1     	  0
	0xB0681500,//	; Set Group	mmaudio      	  0
	0xB0682000,//	; Set Group	om0          	  0
	0xB0680D00,//	; Set Group	TxChMgr0     	  0
	0xB0680E00,//	; Set Group	TxChMgr1     	  0
	0xB00C0900,//	; A300_msg_SetDeviceParmID	Set Multichannel Link bits
	0xB00D0800,//	; A300_msg_SetDeviceParm	SLIMbus Linked:  Tx0 -> Tx1
	0x80000000,//	; Sync to commit changes
	0xffffffff
};

static const u32 route_pass4[] = {//RichardYe test only:
//paththrough mode, 8k Hz, Path in: sbus Rx0&Rx1, Path out Tx2&Tx3
//Both for ZTE and dragonboard, paththrough mode
	0xB05A0A00,// # Set Path sbus.Rx0 RxChMgr0 */
	0xB05A0A11,// # Set Path sbus.Rx1 RxChMgr1 */
	0xB05A0A2A,// # Set Path sbus.Tx2 TxChMgr0 */
	0xB05A0A3B,// # Set Path sbus.Tx3 TxChMgr1 */
	0xB05B000D,//# Set PathId RxChMgr0 PATH_ID_PI1 */
	0xB05B010E,//# Set PathId RxChMgr1 PATH_ID_PI2 */
	0xB05B0A2C,//# Set PathId TxChMgr0 PATH_ID_PO1 */
	0xB05B0B2D,//# Set PathId TxChMgr1 PATH_ID_PO2 */
	0xB0640038,//# Connect RxChMgr0.o0 (Connect # 0 Output) */
	0xB0640160,//# Connect passthru.i0 (Connect # 0 Input) */
	0xB0640048,//# Connect RxChMgr1.o0 (Connect # 1 Output) */
	0xB0640161,//# Connect passthru.i1 (Connect # 1 Input) */
	0xB0640168,//# Connect passthru.o0 (Connect # 2 Output) */
	0xB06400D0,//# Connect TxChMgr0.i0 (Connect # 2 Input) */
	0xB0640169,//# Connect passthru.o1 (Connect # 3 Output) */
	0xB06400E0,//# Connect TxChMgr1.i0 (Connect # 3 Input) */
	0xB0630003,//# Set Rate RxChMgr0 8k */
	0xB0630004,//# Set Rate RxChMgr1 8k */
	0xB0630016,//# Set Rate passthru 8k */
	0xB063000D,//# Set Rate TxChMgr0 8k */
	0xB063000E,//# Set Rate TxChMgr1 8k */
	0xB0680300,//# Set Group RxChMgr0 0 */
	0xB0680400,//# Set Group RxChMgr1 0 */
	0xB0681600,//# Set Group passthru 0 */
	0xB0680D00,//# Set Group TxChMgr0 0 */
	0xB0680E00,//# Set Group TxChMgr1 0 */
	0xB00C0900,//# A300_msg_SetDeviceParmID Set Multichannel Link bits */
	0x900D0000,//# A300_msg_SetDeviceParm SLIMbus Linked:  <no linked, so clear bits> */
	0xffffffff	/* terminate */
};

static const u32 route_pass5[] = {//RichardYe test only:
//Playback mode: Sample rate: 48kHz, Path  In: Slimbus Rx0&Rx1, Path Out: PCM D Channel0&Channel1(I2S master)
//!Preset id: 1175	;  Multi-Media-Audio @48k,
//For ZTE case, Stereo playback in 48kHz
	0xB00C0D09,
	0xB00D0130, 
	0xB05A0A00,//	; Set Path	sbus.rx0    	RxChMgr0
	0xB05A0A11,//	; Set Path	sbus.rx1    	RxChMgr1
	0xB05A060A,//	; Set Path	pcm3.tx0    	TxChMgr0
	0xB05A061B,//	; Set Path	pcm3.tx1    	TxChMgr1
	0xB05B0005,//	; Set PathId	RxChMgr0    	PATH_ID_AI1
	0xB05B0106,//	; Set PathId	RxChMgr1    	PATH_ID_AI2
	0xB05B0A24,//	; Set PathId	TxChMgr0    	PATH_ID_AO1
	0xB05B0B25,//	; Set PathId	TxChMgr1    	PATH_ID_AO2
	0xB0640038,//	; Connect	RxChMgr0.o0 	(Connect # 0 Output)
	0xB0640150,//	; Connect	mmaudio.i0  	(Connect # 0 Input)
	0xB0640048,//	; Connect	RxChMgr1.o0 	(Connect # 1 Output)
	0xB0640151,//	; Connect	mmaudio.i1  	(Connect # 1 Input)
	0xB0640158,//	; Connect	mmaudio.o0  	(Connect # 2 Output)
	0xB0640200,//	; Connect	om0.i0      	(Connect # 2 Input)
	0xB0640159,//	; Connect	mmaudio.o1  	(Connect # 3 Output)
	0xB0640201,//	; Connect	om0.i1      	(Connect # 3 Input)
	0xB0640208,//	; Connect	om0.o0      	(Connect # 4 Output)
	0xB06400D0,//	; Connect	TxChMgr0.i0 	(Connect # 4 Input)
	0xB0640209,//	; Connect	om0.o1      	(Connect # 5 Output)
	0xB06400E0,//	; Connect	TxChMgr1.i0 	(Connect # 5 Input)
	0xB0450005,//	; Set Max External Port Rate	192k
	0xB0630303,//	; Set Rate	RxChMgr0    	 48k
	0xB0630304,//	; Set Rate	RxChMgr1    	 48k
	0xB0630315,//	; Set Rate	mmaudio     	 48k
	0xB063030D,//	; Set Rate	TxChMgr0    	 48k
	0xB063030E,//	; Set Rate	TxChMgr1    	 48k
	0xB0174006,//	; A300_msg_SetAlgorithmParmID	eOutputManagerParam_EnableLimiterLookahead [eOMInstances_LIM_A]
	0xB0180001,//	; A300_msg_SetAlgorithmParm  	Yes                  
	0xB0680300,//	; Set Group	RxChMgr0     	  0
	0xB0680400,//	; Set Group	RxChMgr1     	  0
	0xB0681500,//	; Set Group	mmaudio      	  0
	0xB0682000,//	; Set Group	om0          	  0
	0xB0680D00,//	; Set Group	TxChMgr0     	  0
	0xB0680E00,//	; Set Group	TxChMgr1     	  0
	0xB00C0900,//	; A300_msg_SetDeviceParmID	Set Multichannel Link bits
	0xB00D0002,//	; A300_msg_SetDeviceParm	SLIMbus Linked:  Rx0 -> Rx1
	0x80000000,//	; Sync to commit changes
	0xffffffff	/* terminate */
};

static const u32 route_pass6[] = {//RichardYe test only:
//Capture mono mode: Sample rate: 8kHz, Path  Out: Slimbus Rx0, Path In: DMIC0
//!Preset id: 1151	;  Passthrough-1 Ch PT Type1
//For ZTE case, record via Primary Mic
	0xB05A0C00,//	; Set Path	pdm0.rx     	RxChMgr0
	0xB05A0A0A,//	; Set Path	sbus.tx0    	TxChMgr0
	0xB05B000D,//	; Set PathId	RxChMgr0    	PATH_ID_PI1
	0xB05B0A2C,//	; Set PathId	TxChMgr0    	PATH_ID_PO1
	0xB0640038,//	; Connect	RxChMgr0.o0 	(Connect # 0 Output)
	0xB0640160,//	; Connect	passthru.i0 	(Connect # 0 Input)
	0xB0640168,//	; Connect	passthru.o0 	(Connect # 1 Output)
	0xB06400D0,//	; Connect	TxChMgr0.i0 	(Connect # 1 Input)
	0xB0450005,//	; Set Max External Port Rate	192k
	0xB0630003,//	; Set Rate	RxChMgr0    	  8k
	0xB0630016,//	; Set Rate	passthru    	  8k
	0xB063000D,//	; Set Rate	TxChMgr0    	  8k
	0xB0680300,//	; Set Group	RxChMgr0     	  0
	0xB0681600,//	; Set Group	passthru     	  0
	0xB0680D00,//	; Set Group	TxChMgr0     	  0
	0xB00C0900,//	; A300_msg_SetDeviceParmID	Set Multichannel Link bits
	0xB00D0000,//	; A300_msg_SetDeviceParm	SLIMbus Linked:  <no linked, so clear bits>
	0x80000000,//	; Sync to commit changes
	0xffffffff	/* terminate */	
};

static const u32 route_pass7[] = {//RichardYe test only:
//Capture mono mode: Sample rate: 8kHz, Path  Out: Slimbus Rx0, Path In: DMIC3
//!Preset id: 1151	;  Passthrough-1 Ch PT Type1
//For ZTE case, record via Tertiary Mic
	0xB05A1200,//	; Set Path	pdm3.rx     	RxChMgr0
	0xB05A0A0A,//	; Set Path	sbus.tx0    	TxChMgr0
	0xB05B000D,//	; Set PathId	RxChMgr0    	PATH_ID_PI1
	0xB05B0A2C,//	; Set PathId	TxChMgr0    	PATH_ID_PO1
	0xB0640038,//	; Connect	RxChMgr0.o0 	(Connect # 0 Output)
	0xB0640160,//	; Connect	passthru.i0 	(Connect # 0 Input)
	0xB0640168,//	; Connect	passthru.o0 	(Connect # 1 Output)
	0xB06400D0,//	; Connect	TxChMgr0.i0 	(Connect # 1 Input)
	0xB0450005,//	; Set Max External Port Rate	192k
	0xB0630003,//	; Set Rate	RxChMgr0    	  8k
	0xB0630016,//	; Set Rate	passthru    	  8k
	0xB063000D,//	; Set Rate	TxChMgr0    	  8k
	0xB0680300,//	; Set Group	RxChMgr0     	  0
	0xB0681600,//	; Set Group	passthru     	  0
	0xB0680D00,//	; Set Group	TxChMgr0     	  0
	0xB00C0900,//	; A300_msg_SetDeviceParmID	Set Multichannel Link bits
	0xB00D0000,//	; A300_msg_SetDeviceParm	SLIMbus Linked:  <no linked, so clear bits>
	0x80000000,//	; Sync to commit changes
	0xffffffff	/* terminate */	
};

static const u32 route_pass8[] = {//RichardYe test only:
//Capture mono mode: Sample rate: 8kHz, Path  Out: Slimbus Rx0, Path In: DMIC2
//!Preset id: 1151	;  Passthrough-1 Ch PT Type1
//For ZTE case, record via Secondary Mic
	0xB05A1000,//	; Set Path	pdm2.rx     	RxChMgr0
	0xB05A0A0A,//	; Set Path	sbus.tx0    	TxChMgr0
	0xB05B000D,//	; Set PathId	RxChMgr0    	PATH_ID_PI1
	0xB05B0A2C,//	; Set PathId	TxChMgr0    	PATH_ID_PO1
	0xB0640038,//	; Connect	RxChMgr0.o0 	(Connect # 0 Output)
	0xB0640160,//	; Connect	passthru.i0 	(Connect # 0 Input)
	0xB0640168,//	; Connect	passthru.o0 	(Connect # 1 Output)
	0xB06400D0,//	; Connect	TxChMgr0.i0 	(Connect # 1 Input)
	0xB0450005,//	; Set Max External Port Rate	192k
	0xB0630003,//	; Set Rate	RxChMgr0    	  8k
	0xB0630016,//	; Set Rate	passthru    	  8k
	0xB063000D,//	; Set Rate	TxChMgr0    	  8k
	0xB0680300,//	; Set Group	RxChMgr0     	  0
	0xB0681600,//	; Set Group	passthru     	  0
	0xB0680D00,//	; Set Group	TxChMgr0     	  0
	0xB00C0900,//	; A300_msg_SetDeviceParmID	Set Multichannel Link bits
	0xB00D0000,//	; A300_msg_SetDeviceParm	SLIMbus Linked:  <no linked, so clear bits>
	0x80000000,//	; Sync to commit changes
	0xffffffff	/* terminate */	
};

static const u32 route_pass9[] = {//RichardYe test only:
//Voice mode: Uplink: PRI: Slimbus Rx4, CSOUT: Slimbus Tx0; Downlink: FEIN: Slimbus Rx0, FENOUT1: Slimbus Tx2, FENOUT2: Slimbus Tx3 
//!Preset id: 1005	;  voice- 1MIC+2FEOUT
//For ZTE case, 4 segments headset phone call
	0xB05A0A40,//; Set Path	sbus.rx4    	RxChMgr0
	0xB05A0A01,//; Set Path	sbus.rx0    	RxChMgr1
	0xB05A0A0A,//; Set Path	sbus.tx0    	TxChMgr0
	0xB05A0A2B,//; Set Path	sbus.tx2    	TxChMgr1
	0xB05A0A3C,//; Set Path	sbus.tx3    	TxChMgr2
	0xB05B0000,//; Set PathId	RxChMgr0    	PATH_ID_PRI
	0xB05B0103,//; Set PathId	RxChMgr1    	PATH_ID_FEI
	0xB05B0A20,//; Set PathId	TxChMgr0    	PATH_ID_CSO
	0xB05B0B22,//; Set PathId	TxChMgr1    	PATH_ID_FO1
	0xB05B0C23,//; Set PathId	TxChMgr2    	PATH_ID_FO2
	0xB0640038,//; Connect	RxChMgr0.o0 	(Connect # 0 Output)
	0xB0640131,//; Connect	voice.i1    	(Connect # 0 Input)
	0xB0640048,//; Connect	RxChMgr1.o0 	(Connect # 1 Output)
	0xB0640130,//; Connect	voice.i0    	(Connect # 1 Input)
	0xB0640138,//; Connect	voice.o0    	(Connect # 2 Output)
	0xB0640300,//; Connect	Copy0.i0    	(Connect # 2 Input)
	0xB0640139,//; Connect	voice.o1    	(Connect # 3 Output)
	0xB06400D0,//; Connect	TxChMgr0.i0 	(Connect # 3 Input)
	0xB0640308,//; Connect	Copy0.o0    	(Connect # 4 Output)
	0xB0640200,//; Connect	om0.i0      	(Connect # 4 Input)
	0xB0640309,//; Connect	Copy0.o1    	(Connect # 5 Output)
	0xB0640201,//; Connect	om0.i1      	(Connect # 5 Input)
	0xB0640208,//; Connect	om0.o0      	(Connect # 6 Output)
	0xB06400E0,//; Connect	TxChMgr1.i0 	(Connect # 6 Input)
	0xB0640209,//; Connect	om0.o1      	(Connect # 7 Output)
	0xB06400F0,//; Connect	TxChMgr2.i0 	(Connect # 7 Input)
	0xB0450005,//; Set Max External Port Rate	192k
	0xB0630003,//; Set Rate	RxChMgr0    	  8k
	0xB0630004,//; Set Rate	RxChMgr1    	  8k
	0xB017004F,//; A300_msg_SetAlgorithmParmID	BPID_USE_BWE         
	0xB0180000,//; A300_msg_SetAlgorithmParm  	No                   
	0xB0630013,//; Set Rate	voice       	  8k
	0xB063000D,//; Set Rate	TxChMgr0    	  8k
	0xB063000E,//; Set Rate	TxChMgr1    	  8k
	0xB063000F,//; Set Rate	TxChMgr2    	  8k
	0xB0174006,//; A300_msg_SetAlgorithmParmID	eOutputManagerParam_EnableLimiterLookahead [eOMInstances_LIM_A]
	0xB0180000,//; A300_msg_SetAlgorithmParm  	No                   
	0xB0680300,//; Set Group	RxChMgr0     	  0
	0xB0680400,//; Set Group	RxChMgr1     	  0
	0xB0681300,//; Set Group	voice        	  0
	0xB0683000,//; Set Group	Copy0        	  0
	0xB0682000,//; Set Group	om0          	  0
	0xB0680D00,//; Set Group	TxChMgr0     	  0
	0xB0680E00,//; Set Group	TxChMgr1     	  0
	0xB0680F00,//; Set Group	TxChMgr2     	  0
	0xB00C0900,//; A300_msg_SetDeviceParmID	Set Multichannel Link bits
	0xB00D2000,//; A300_msg_SetDeviceParm	SLIMbus Linked:  Tx2 -> Tx3
	0x80000000,//; Sync to commit changes
	0xffffffff	/* terminate */	
};

static const u32 route_pass10[] = {//RichardYe test only:
//!Preset id: 1151	;  Passthrough-1 Ch PT Type1
//Playback mode: Sample rate: 48kHz, Path  In: Slimbus Rx0&Rx1, Path Out: PCM D Channel0&Channel1(I2S master)
//For ZTE case, mono playback in 48khz
	0xB00C0D09,
	0xB00D0130,
	0xB05A0A00,//	; Set Path	sbus.rx0    	RxChMgr0
	0xB05A060A,//	; Set Path	pcm3.tx0    	TxChMgr0
	0xB05B000D,//	; Set PathId	RxChMgr0    	PATH_ID_PI1
	0xB05B0A2C,//	; Set PathId	TxChMgr0    	PATH_ID_PO1
	0xB0640038,//	; Connect	RxChMgr0.o0 	(Connect # 0 Output)
	0xB0640160,//	; Connect	passthru.i0 	(Connect # 0 Input)
	0xB0640168,//	; Connect	passthru.o0 	(Connect # 1 Output)
	0xB06400D0,//	; Connect	TxChMgr0.i0 	(Connect # 1 Input)
	0xB0450005,//	; Set Max External Port Rate	192k
	0xB0630303,//	; Set Rate	RxChMgr0    	  48k
	0xB0630316,//	; Set Rate	passthru    	  48k
	0xB063030D,//	; Set Rate	TxChMgr0    	  48k
	0xB0680300,//	; Set Group	RxChMgr0     	  0
	0xB0681600,//	; Set Group	passthru     	  0
	0xB0680D00,//	; Set Group	TxChMgr0     	  0
	0xB00C0900,//	; A300_msg_SetDeviceParmID	Set Multichannel Link bits
	0xB00D0000,//	; A300_msg_SetDeviceParm	SLIMbus Linked:  <no linked, so clear bits>
	0x80000000,//	; Sync to commit changes
	0xffffffff	/* terminate */	
};

static const u32 route_pass11[] = {//RichardYe test only:
//!Preset id: 1051	;  voice- 2MIC+1FEOUT
//For ZTE case, 2Mic close talk mode
	0xB05A0C00,//	; Set Path	pdm0.rx     	RxChMgr0
	0xB05A1001,//	; Set Path	pdm2.rx     	RxChMgr1
	0xB05A0A02,//	; Set Path	sbus.rx0    	RxChMgr2
	0xB05A0A0A,//	; Set Path	sbus.tx0    	TxChMgr0
	0xB05A0A2B,//	; Set Path	sbus.tx2    	TxChMgr1
	0xB05B0000,//	; Set PathId	RxChMgr0    	PATH_ID_PRI
	0xB05B0101,//	; Set PathId	RxChMgr1    	PATH_ID_SEC
	0xB05B0203,//	; Set PathId	RxChMgr2    	PATH_ID_FEI
	0xB05B0A20,//	; Set PathId	TxChMgr0    	PATH_ID_CSO
	0xB05B0B22,//	; Set PathId	TxChMgr1    	PATH_ID_FO1
	0xB0640038,//	; Connect	RxChMgr0.o0 	(Connect # 0 Output)
	0xB0640131,//	; Connect	voice.i1    	(Connect # 0 Input)
	0xB0640048,//	; Connect	RxChMgr1.o0 	(Connect # 1 Output)
	0xB0640132,//	; Connect	voice.i2    	(Connect # 1 Input)
	0xB0640058,//	; Connect	RxChMgr2.o0 	(Connect # 2 Output)
	0xB0640130,//	; Connect	voice.i0    	(Connect # 2 Input)
	0xB0640138,//	; Connect	voice.o0    	(Connect # 3 Output)
	0xB06400E0,//	; Connect	TxChMgr1.i0 	(Connect # 3 Input)
	0xB0640139,//	; Connect	voice.o1    	(Connect # 4 Output)
	0xB06400D0,//	; Connect	TxChMgr0.i0 	(Connect # 4 Input)
	0xB0450005,//	; Set Max External Port Rate	192k
	0xB0630003,//	; Set Rate	RxChMgr0    	  8k
	0xB0630004,//	; Set Rate	RxChMgr1    	  8k
	0xB0630005,//	; Set Rate	RxChMgr2    	  8k
	0xB017004F,//	; A300_msg_SetAlgorithmParmID	BPID_USE_BWE         
	0xB0180000,//	; A300_msg_SetAlgorithmParm  	No                   
	0xB0630013,//	; Set Rate	voice       	  8k
	0xB063000D,//	; Set Rate	TxChMgr0    	  8k
	0xB063000E,//	; Set Rate	TxChMgr1    	  8k
	0xB0680300,//	; Set Group	RxChMgr0     	  0
	0xB0680400,//	; Set Group	RxChMgr1     	  0
	0xB0680500,//	; Set Group	RxChMgr2     	  0
	0xB0681300,//	; Set Group	voice        	  0
	0xB0680D00,//	; Set Group	TxChMgr0     	  0
	0xB0680E00,//	; Set Group	TxChMgr1     	  0
	0xB00C0900,//	; A300_msg_SetDeviceParmID	Set Multichannel Link bits
	0xB00D0000,//	; A300_msg_SetDeviceParm	SLIMbus Linked:  <no linked, so clear bits>
	0x80000000,//	; Sync to commit changes
	0xffffffff	/* terminate */
};

static const u32 route_pass12[] = {//RichardYe test only:
//!Preset id: 1051	;  voice- 2MIC+1FEOUT
//For ZTE case, 2 Mic far talk mode
	0xB00C0D09,
	0xB00D0108,
	0xB05A0C00,//	; Set Path	pdm0.rx     	RxChMgr0
	0xB05A1001,//	; Set Path	pdm2.rx     	RxChMgr1
	0xB05A0A02,//	; Set Path	sbus.rx0    	RxChMgr2
	0xB05A0A0A,//	; Set Path	sbus.tx0    	TxChMgr0
	0xB05A060B,//	; Set Path	pcm3.tx0    	TxChMgr1
	0xB05B0000,//	; Set PathId	RxChMgr0    	PATH_ID_PRI
	0xB05B0101,//	; Set PathId	RxChMgr1    	PATH_ID_SEC
	0xB05B0203,//	; Set PathId	RxChMgr2    	PATH_ID_FEI
	0xB05B0A20,//	; Set PathId	TxChMgr0    	PATH_ID_CSO
	0xB05B0B22,//	; Set PathId	TxChMgr1    	PATH_ID_FO1
	0xB0640038,//	; Connect	RxChMgr0.o0 	(Connect # 0 Output)
	0xB0640131,//	; Connect	voice.i1    	(Connect # 0 Input)
	0xB0640048,//	; Connect	RxChMgr1.o0 	(Connect # 1 Output)
	0xB0640132,//	; Connect	voice.i2    	(Connect # 1 Input)
	0xB0640058,//	; Connect	RxChMgr2.o0 	(Connect # 2 Output)
	0xB0640130,//	; Connect	voice.i0    	(Connect # 2 Input)
	0xB0640138,//	; Connect	voice.o0    	(Connect # 3 Output)
	0xB06400E0,//	; Connect	TxChMgr1.i0 	(Connect # 3 Input)
	0xB0640139,//	; Connect	voice.o1    	(Connect # 4 Output)
	0xB06400D0,//	; Connect	TxChMgr0.i0 	(Connect # 4 Input)
	0xB0450005,//	; Set Max External Port Rate	192k
	0xB0630003,//	; Set Rate	RxChMgr0    	  8k
	0xB0630004,//	; Set Rate	RxChMgr1    	  8k
	0xB0630005,//	; Set Rate	RxChMgr2    	  8k
	0xB017004F,//	; A300_msg_SetAlgorithmParmID	BPID_USE_BWE         
	0xB0180000,//	; A300_msg_SetAlgorithmParm  	No                   
	0xB0630013,//	; Set Rate	voice       	  8k
	0xB063000D,//	; Set Rate	TxChMgr0    	  8k
	0xB063000E,//	; Set Rate	TxChMgr1    	  8k
	0xB0680300,//	; Set Group	RxChMgr0     	  0
	0xB0680400,//	; Set Group	RxChMgr1     	  0
	0xB0680500,//	; Set Group	RxChMgr2     	  0
	0xB0681300,//	; Set Group	voice        	  0
	0xB0680D00,//	; Set Group	TxChMgr0     	  0
	0xB0680E00,//	; Set Group	TxChMgr1     	  0
	0xB00C0900,//	; A300_msg_SetDeviceParmID	Set Multichannel Link bits
	0xB00D0000,//	; A300_msg_SetDeviceParm	SLIMbus Linked:  <no linked, so clear bits>
	0x80000000,//	; Sync to commit changes
	0xffffffff	/* terminate */
};

static const u32 pxx_default_power_preset[] = {
	0x90311388, /* 5000 - Def */
	0xffffffff	/* terminate */
};
static const u32 route_cs_voice_1mic_ct[] = {
	0x903103e9,
	0xffffffff	/* terminate */
};
static const u32 nb_cs_voice_1mic_ct[] = {
	0x90310227, /* 551 */
	0xffffffff	/* terminate */
};
static const u32 wb_cs_voice_1mic_ct[] = {
	0x9031024f, /* 591 */
	0xffffffff	/* terminate */
};
static const u32 swb_cs_voice_1mic_ct[] = {
	0x90310250, /* 592 */
	0xffffffff	/* terminate */
};

static const u32 pnb_cs_voice_1mic_ct[] = {
	0x903115AF, /* 5551 */
	0xffffffff	/* terminate */
};
static const u32 pwb_cs_voice_1mic_ct[] = {
	0x903115D7, /* 5591 */
	0xffffffff	/* terminate */
};

static const u32 route_cs_voice_2mic_ct[] = {
	0x9031041b,	/* without PDM  */
/*	0x90310577,	 1399 with PDM*/
	0xffffffff	/* terminate */
};
static const u32 nb_cs_voice_2mic_ct[] = {
	0x9031022a, /* 554 */
	0xffffffff	/* terminate */
};
static const u32 wb_cs_voice_2mic_ct[] = {
	0x9031022b, /* 555 */
	0xffffffff	/* terminate */
};
static const u32 swb_cs_voice_2mic_ct[] = {
	0x9031022c, /* 556 */
	0xffffffff	/* terminate */
};

static const u32 pnb_cs_voice_2mic_ct[] = {
	0x903115b2, /* 5554 */
	0xffffffff	/* terminate */
};
static const u32 pwb_cs_voice_2mic_ct[] = {
	0x903115b3, /* 5555 */
	0xffffffff	/* terminate */
};
static const u32 pswb_cs_voice_2mic_ct[] = {
	0x903115b4, /* 5556 */
	0xffffffff	/* terminate */
};

static const u32 route_cs_voice_3mic_ct[] = {
	0x903157d,	/* 1405, 3 mic, 1PDM-2Analog */
	0xffffffff	/* terminate */
};
static const u32 nb_cs_voice_3mic_ct[] = {
	0xffffffff	/* terminate */
};
static const u32 wb_cs_voice_3mic_ct[] = {
	0xffffffff	/* terminate */
};
static const u32 swb_cs_voice_3mic_ct[] = {
	0xffffffff	/* terminate */
};

static const u32 route_cs_voice_1mic_ft[] = {
	0x903103e9,
	0xffffffff	/* terminate */
};
static const u32 nb_cs_voice_1mic_ft[] = {
	0x90310230, /* 560 */
	0xffffffff	/* terminate */
};
static const u32 wb_cs_voice_1mic_ft[] = {
	0x9031024f, /* 591 */
	0xffffffff	/* terminate */
};
static const u32 swb_cs_voice_1mic_ft[] = {
	0x90310250, /* 592 */
	0xffffffff	/* terminate */
};

static const u32 pnb_cs_voice_1mic_ft[] = {
	0x903115B8, /* 5560 */
	0xffffffff	/* terminate */
};
static const u32 pwb_cs_voice_1mic_ft[] = {
	0x903115D7, /* 5591 */
	0xffffffff	/* terminate */
};

static const u32 route_cs_voice_2mic_ft[] = {
	0x9031041b,	/* Analog Mic */
/*	0x90310577,	1399, 2mic, PDM mic */
	0xffffffff	/* terminate */
};
static const u32 nb_cs_voice_2mic_ft[] = {
	0x9031023c, /* 572 */
	0xffffffff	/* terminate */
};
static const u32 wb_cs_voice_2mic_ft[] = {
	0x9031023a, /* 570 */
	0xffffffff	/* terminate */
};
static const u32 swb_cs_voice_2mic_ft[] = {
	0x9031023b, /*571 */
	0xffffffff	/* terminate */
};

static const u32 pwb_cs_voice_2mic_ft[] = {
	0x903115C2, /* 5570 */
	0xffffffff	/* terminate */
};
static const u32 pswb_cs_voice_2mic_ft[] = {
	0x903115C3, /* 5571 */
	0xffffffff	/* terminate */
};

static const u32 route_cs_voice_3mic_ft[] = {
	0xffffffff	/* terminate */
};
static const u32 nb_cs_voice_3mic_ft[] = {
	0xffffffff	/* terminate */
};
static const u32 wb_cs_voice_3mic_ft[] = {
	0xffffffff	/* terminate */
};
static const u32 swb_cs_voice_3mic_ft[] = {
	0xffffffff	/* terminate */
};

static const u32 route_cs_voice_headset[] = {
	0x903103ed,
	0xffffffff	/* terminate */
};
static const u32 nb_cs_voice_headset[] = {
	0x9031024e,
	0xffffffff	/* terminate */
};
static const u32 wb_cs_voice_headset[] = {
	0x9031024f,
	0xffffffff	/* terminate */
};
static const u32 swb_cs_voice_headset[] = {
	0xffffffff	/* terminate */
};
static const u32 pnb_cs_voice_headset[] = {
	0x903115d6, /* 5590 */
	0xffffffff	/* terminate */
};
static const u32 pwb_cs_voice_headset[] = {
	0x903115d7, /* 5591 */
	0xffffffff	/* terminate */
};
static const u32 route_cs_voice_1mic_headphone[] = {
	0x903103ed,
	0xffffffff	/* terminate */
};
static const u32 nb_cs_voice_1mic_headphone[] = {
	0xffffffff	/* terminate */
};
static const u32 wb_cs_voice_1mic_headphone[] = {
	0xffffffff	/* terminate */
};
static const u32 swb_cs_voice_1mic_headphone[] = {
	0xffffffff	/* terminate */
};

static const u32 route_voip_1mic_ct[] = {
	0x903103e9,
	0xffffffff	/* terminate */
};
static const u32 nb_voip_1mic_ct[] = {
	0x9031024e,
	0xffffffff	/* terminate */
};
static const u32 wb_voip_1mic_ct[] = {
	0x9031024f,
	0xffffffff	/* terminate */
};
static const u32 swb_voip_1mic_ct[] = {
	0x90310250,
	0xffffffff	/* terminate */
};
static const u32 pnb_voip_1mic_ct[] = {
	0x903115d6,
	0xffffffff	/* terminate */
};
static const u32 pwb_voip_1mic_ct[] = {
	0x903115d7,
	0xffffffff	/* terminate */
};

static const u32 route_voip_2mic_ct[] = {
	/*	0x9031041b,     without PDM  */
	0x90310577,	/* 1399 with PDM*/
	0xffffffff	/* terminate */
};
static const u32 nb_voip_2mic_ct[] = {
	0x9031022a, /* 554 */
	0xffffffff	/* terminate */
};
static const u32 wb_voip_2mic_ct[] = {
	0x9031022b, /* 555 */
	0xffffffff	/* terminate */
};
static const u32 swb_voip_2mic_ct[] = {
	0x9031022c,
	0xffffffff	/* terminate */
};
static const u32 fb_voip_2mic_ct[] = {
	0x90310272, /* 626 */
	0xffffffff	/* terminate */
};
static const u32 pnb_voip_2mic_ct[] = {
	0x903115b2, /* 5554 */
	0xffffffff	/* terminate */
};
static const u32 pwb_voip_2mic_ct[] = {
	0x903115b3, /* 5555 */
	0xffffffff	/* terminate */
};
static const u32 pswb_voip_2mic_ct[] = {
	0x903115b4, /* 5556 */
	0xffffffff	/* terminate */
};
static const u32 pfb_voip_2mic_ct[] = {
	0x903115fa, /* 5626 */
	0xffffffff	/* terminate */
};
static const u32 route_voip_3mic_ct[] = {
	0x9031057d,	/* 1405, 3 mic, 1PDM-2Analog */
	0xffffffff	/* terminate */
};
static const u32 nb_voip_3mic_ct[] = {
	0x9031022d, /* 557 */
	0xffffffff	/* terminate */
};
static const u32 wb_voip_3mic_ct[] = {
	0x9031022e, /* 558 */
	0xffffffff	/* terminate */
};
static const u32 swb_voip_3mic_ct[] = {
	0x9031022f, /* 559 */
	0xffffffff	/* terminate */
};
static const u32 fb_voip_3mic_ct[] = {
	0x90310273, /* 627 */
	0xffffffff	/* terminate */
};
static const u32 pnb_voip_3mic_ct[] = {
	0x903115b5, /* 5557 */
	0xffffffff	/* terminate */
};
static const u32 pwb_voip_3mic_ct[] = {
	0x903115b6, /* 5558 */
	0xffffffff	/* terminate */
};
static const u32 pswb_voip_3mic_ct[] = {
	0x903115b7, /* 5559 */
	0xffffffff	/* terminate */
};

static const u32 route_voip_1mic_ft[] = {
	0x903103e9,
	0xffffffff	/* terminate */
};
static const u32 nb_voip_1mic_ft[] = {
	0x9031024e,
	0xffffffff	/* terminate */
};
static const u32 wb_voip_1mic_ft[] = {
	0x9031024f,
	0xffffffff	/* terminate */
};
static const u32 swb_voip_1mic_ft[] = {
	0x90310250,
	0xffffffff	/* terminate */
};
static const u32 pnb_voip_1mic_ft[] = {
	0x903115d6,
	0xffffffff	/* terminate */
};
static const u32 pwb_voip_1mic_ft[] = {
	0x903115d7,
	0xffffffff	/* terminate */
};

static const u32 route_voip_2mic_ft[] = {
/*	0x9031041b, Analog Mic */
	0x90310577, /* 1399, 2mic, PDM mic */
	0xffffffff	/* terminate */
};
static const u32 nb_voip_2mic_ft[] = {
	0x90310239, /* 570 */
	0xffffffff	/* terminate */
};
static const u32 wb_voip_2mic_ft[] = {
	0x9031023a, /* 571 */
	0xffffffff	/* terminate */
};
static const u32 swb_voip_2mic_ft[] = {
	0x9031023b, /* 572 */
	0xffffffff	/* terminate */
};
static const u32 fb_voip_2mic_ft[] = {
	0x90310277, /* 631 */
	0xffffffff	/* terminate */
};
static const u32 pnb_voip_2mic_ft[] = {
	0x903115c1, /* 569 */
	0xffffffff	/* terminate */
};
static const u32 pwb_voip_2mic_ft[] = {
	0x903115c2, /* 570 */
	0xffffffff	/* terminate */
};
static const u32 pswb_voip_2mic_ft[] = {
	0x903115c3, /* 5571 */
	0xffffffff	/* terminate */
};
static const u32 pfb_voip_2mic_ft[] = {
	0x903115ff, /* 5631 */
	0xffffffff	/* terminate */
};

static const u32 route_voip_3mic_ft[] = {
	0x90310595,	/* 1429, 3 mic, 1PDM-2Analog, Ter is PDM Mic */
	0xffffffff	/* terminate */
};
static const u32 nb_voip_3mic_ft[] = {
	0x90310242, /* 578 */
	0xffffffff	/* terminate */
};
static const u32 wb_voip_3mic_ft[] = {
	0x90310243, /* 579 */
	0xffffffff	/* terminate */
};
static const u32 swb_voip_3mic_ft[] = {
	0x90310244, /* 580 */
	0xffffffff	/* terminate */
};
static const u32 fb_voip_3mic_ft[] = {
	0x9031027a, /* 634 */
	0xffffffff	/* terminate */
};
static const u32 pnb_voip_3mic_ft[] = {
	0x903115ca, /* 578 */
	0xffffffff	/* terminate */
};
static const u32 pwb_voip_3mic_ft[] = {
	0x903115cb, /* 579 */
	0xffffffff	/* terminate */
};
static const u32 pswb_voip_3mic_ft[] = {
	0x903115c3, /* 580 */
	0xffffffff	/* terminate */
};

static const u32 route_voip_headset[] = {
	0x903103ed,
	0xffffffff	/* terminate */
};
static const u32 nb_voip_headset[] = {
	0x9031024e, /* 590 */
	0xffffffff	/* terminate */
};
static const u32 wb_voip_headset[] = {
	0x9031024f, /* 591 */
	0xffffffff	/* terminate */
};
static const u32 swb_voip_headset[] = {
	0xffffffff	/* terminate */
};
static const u32 pnb_voip_headset[] = {
	0x903115d6, /* 5590 */
	0xffffffff	/* terminate */
};
static const u32 pwb_voip_headset[] = {
	0x903115d7, /* 5591 */
	0xffffffff	/* terminate */
};

static const u32 route_voip_1mic_headphone[] = {
	0x903103ed,
	0xffffffff	/* terminate */
};
static const u32 nb_voip_1mic_headphone[] = {
	0xffffffff	/* terminate */
};
static const u32 wb_voip_1mic_headphone[] = {
	0xffffffff	/* terminate */
};
static const u32 swb_voip_1mic_headphone[] = {
	0xffffffff	/* terminate */
};

static const u32 route_voice_asr_1mic[] = {
	0x903104b1,
	0xffffffff	/* terminate */
};
static const u32 nb_voice_asr_1mic[] = {
	0xffffffff	/* terminate */
};
static const u32 wb_voice_asr_1mic[] = {
	0xffffffff	/* terminate */
};
static const u32 swb_voice_asr_1mic[] = {
	0xffffffff	/* terminate */
};

static const u32 route_voice_asr_2mic[] = {
	0x903104ca,
	0xffffffff	/* terminate */
};
static const u32 nb_voice_asr_2mic[] = {
	0xffffffff	/* terminate */
};
static const u32 wb_voice_asr_2mic[] = {
	0xffffffff	/* terminate */
};
static const u32 swb_voice_asr_2mic[] = {
	0xffffffff	/* terminate */
};

static const u32 route_voice_asr_3mic[] = {
	0xffffffff	/* terminate */
};
static const u32 nb_voice_asr_3mic[] = {
	0xffffffff	/* terminate */
};
static const u32 wb_voice_asr_3mic[] = {
	0xffffffff	/* terminate */
};
static const u32 swb_voice_asr_3mic[] = {
	0xffffffff	/* terminate */
};

static const u32 route_voicesense_sbusrx4[] = {
	0xb05a0a40,	/* SBUS.Rx4 -> RxChMgr0*/
	0xb05b0000,	/* Set PathId  RxChMgr0 PATH_ID_PRI */
	0xb0640038,	/* connect RxChMgr0.o0 */
	0xb0640190,	/* connect senseVoice.i0 */
	0xb0630003,	/* set rate RxChMgr0 8k*/
	0xb0630019,	/* set rate senseVoice 8k*/
	0xb0680300,	/* set group RxChMgr0 0*/
	0xb0681900,	/* set group sensevoice 0*/
	0xb00c0900,	/* setDeviceParamID set Multichannel Link Bits*/
	0x900d0000,	/* setDeviceParam Slimbus Linked*/
	0xffffffff	/* terminate */
};

static const u32 route_voicesense_pdm[] = {
	0x90310566,
	0xffffffff      /* terminate */
};

static const u32 route_voicesense_sbusrx0[] = {
	0xb05a0a00,	/* SBUS.Rx0 -> RxChMgr0*/
	0xb05b0000,	/* Set PathId  RxChMgr0 PATH_ID_PRI */
	0xb0640038,	/* connect RxChMgr0.o0 */
	0xb0640190,	/* connect senseVoice.i0 */
	0xb0630003,	/* set rate RxChMgr0 8k*/
	0xb0630019,	/* set rate senseVoice 8k*/
	0xb0680300,	/* set group RxChMgr0 0*/
	0xb0681900,	/* set group sensevoice 0*/
	0xb00c0900,	/* setDeviceParamID set Multichannel Link Bits*/
	0x900d0000,	/* setDeviceParam Slimbus Linked*/
	0xffffffff	/* terminate */
};

static const u32 route_1chan_playback[] = {
	0x9031047f,
	0xffffffff	/* terminate */
};

static const u32 route_2chan_playback[] = {
	0x90310483,
	0xffffffff	/* terminate */
};

static const u32 route_1chan_capture[] = {
	0x90310480,
	0xffffffff	/* terminate */
};

static const u32 route_2chan_capture[] = {
	0x90310484,
	0xffffffff	/* terminate */
};

static const u32 route_audiozoom_2mic[] = {
	0x9031054b,
	0xffffffff	/* terminate */
};

static const u32 route_audiozoom_3mic[] = {
	0x9031054d,
	0xffffffff	/* terminate */
};

static const u32 route_2mic_ns_ct_analog[] = {
	0x9031041b, /* 1051 */
	0x9031022A, /* 554 */
	0xffffffff	/* terminate */
};

static const u32 route_2mic_ns_ft_analog[] = {
	0x9031041b, /* 1051 */
	0x90310239, /* 569 */
	0xffffffff	/* terminate */
};

static const u32 route_2mic_ns_fo_analog[] = {
	0x9031041b, /* 1051 */
	0x90310391, /* 913 */
	0xffffffff	/* terminate */
};

static const u32 route_3mic_ns_ct_analog[] = {
	0x9031044d, /* 1101 */
	0x9031022D, /* 557 */
	0xffffffff	/* terminate */
};

static const u32 route_3mic_ns_ft_analog[] = {
	0x9031044d, /* 1101 */
	0x90310242, /* 578 */
	0xffffffff	/* terminate */
};

static const u32 route_3mic_ns_fo_analog[] = {
	0x9031044d, /* 1101 */
	0x9031039d, /* 925 */
	0xffffffff	/* terminate */
};

static const u32 route_aec7_2mic_ns_ft[] = {
	0x9031041b, /* 1051 */
	0x90310239, /* 569 */
	0xffffffff	/* terminate */
};

static const u32 route_aec7_3mic_ns_ft[] = {
	0xffffffff	/* terminate */
};

static const u32 route_asr_2mic_ns_af[] = {
	0x903104ca, /* 1226 */
	0x903103b1, /* 945 */
	0xffffffff	/* terminate */
};

static const u32 route_asr_3mic_ns_af[] = {
	0x903104e3, /* 1251 */
	0x903103b9, /* 953 */
	0xffffffff	/* terminate */
};

static const u32 route_azv_2mic[] = {
	0xffffffff	/* terminate */
};

static const u32 route_azv_3mic[] = {
	0xffffffff	/* terminate */
};

static const u32 route_stereo_record_48k[] = {
	0x9031049a, /* 1178 */
	0x9031028d, /* 653 */
	0xffffffff	/* terminate */
};

static const u32 route_stereo_record_96k[] = {
	0x9031049a, /* 1178 */
	0x9031029f, /* 671 */
	0xffffffff	/* terminate */
};

static const u32 route_stereo_record_192k[] = {
	0x9031049a, /* 1178 */
	0x903102ae, /* 686 */
	0xffffffff	/* terminate */
};

static const u32 route_avalon_play[] = {
	0x90310497, /* 1175 */
	0xffffffff	/* terminate */
};
static const u32 route_avalon_capture[] = {
	0x9031049a, /* 1178 */
	0xffffffff	/* terminate */
};

static const struct esxxx_route_config es705_route_config[ROUTE_MAX] = {
	[ROUTE_OFF] = {
		.route = route_off,
	},
#if 0//Richard Ye test only
	[ROUTE_CS_VOICE_1MIC_CT] = {
		.route = route_cs_voice_1mic_ct,
		.nb = nb_cs_voice_1mic_ct,
		.wb = wb_cs_voice_1mic_ct,
		.swb = swb_cs_voice_1mic_ct,
		.pnb = pnb_cs_voice_1mic_ct,
		.pwb = pwb_cs_voice_1mic_ct,
		.pswb = pxx_default_power_preset,
	},
	[ROUTE_CS_VOICE_2MIC_CT] = {
		.route = route_cs_voice_2mic_ct,
		.nb = nb_cs_voice_2mic_ct,
		.wb = wb_cs_voice_2mic_ct,
		.swb = swb_cs_voice_2mic_ct,
		.pnb = pnb_cs_voice_2mic_ct,
		.pwb = pwb_cs_voice_2mic_ct,
		.pswb = pswb_cs_voice_2mic_ct,
	},
	[ROUTE_CS_VOICE_3MIC_CT] = {
		.route = route_cs_voice_3mic_ct,
		.nb = nb_cs_voice_3mic_ct,
		.wb = wb_cs_voice_3mic_ct,
		.swb = swb_cs_voice_3mic_ct,
		.pnb = pxx_default_power_preset,
		.pwb = pxx_default_power_preset,
		.pswb = pxx_default_power_preset,
	},
	[ROUTE_CS_VOICE_1MIC_FT] = {
		.route = route_cs_voice_1mic_ft,
		.nb = nb_cs_voice_1mic_ft,
		.wb = wb_cs_voice_1mic_ft,
		.swb = swb_cs_voice_1mic_ft,
		.pnb = pnb_cs_voice_1mic_ft,
		.pwb = pwb_cs_voice_1mic_ft,
		.pswb = pxx_default_power_preset,
	},
	[ROUTE_CS_VOICE_2MIC_FT] = {
		.route = route_cs_voice_2mic_ft,
		.nb = nb_cs_voice_2mic_ft,
		.wb = wb_cs_voice_2mic_ft,
		.swb = swb_cs_voice_2mic_ft,
		.pnb = pxx_default_power_preset,
		.pwb = pwb_cs_voice_2mic_ft,
		.pswb = pswb_cs_voice_2mic_ft,
	},
	[ROUTE_CS_VOICE_3MIC_FT] = {
		.route = route_cs_voice_3mic_ft,
		.nb = nb_cs_voice_3mic_ft,
		.wb = wb_cs_voice_3mic_ft,
		.swb = swb_cs_voice_3mic_ft,
		.pnb = pxx_default_power_preset,
		.pwb = pxx_default_power_preset,
		.pswb = pxx_default_power_preset,
	},
	[ROUTE_CS_VOICE_HEADSET] = {
		.route = route_cs_voice_headset,
		.nb = nb_cs_voice_headset,
		.wb = wb_cs_voice_headset,
		.swb = swb_cs_voice_headset,
		.pnb = pnb_cs_voice_headset,
		.pwb = pwb_cs_voice_headset,
		.pswb = pxx_default_power_preset,
	},
	[ROUTE_CS_VOICE_1MIC_HEADPHONE] = {
		.route = route_cs_voice_1mic_headphone,
		.nb = nb_cs_voice_1mic_headphone,
		.wb = wb_cs_voice_1mic_headphone,
		.swb = swb_cs_voice_1mic_headphone,
		.pnb = pxx_default_power_preset,
		.pwb = pxx_default_power_preset,
		.pswb = pxx_default_power_preset,
	},
	[ROUTE_VOIP_1MIC_CT] = {
		.route = route_voip_1mic_ct,
		.nb = nb_voip_1mic_ct,
		.wb = wb_voip_1mic_ct,
		.swb = swb_voip_1mic_ct,
		.pnb = pnb_voip_1mic_ct,
		.pwb = pwb_voip_1mic_ct,
		.pswb = pxx_default_power_preset,
	},
	[ROUTE_VOIP_2MIC_CT] = {
		.route = route_voip_2mic_ct,
		.nb = nb_voip_2mic_ct,
		.wb = wb_voip_2mic_ct,
		.swb = swb_voip_2mic_ct,
		.fb = fb_voip_2mic_ct,
		.pnb = pnb_voip_2mic_ct,
		.pwb = pwb_voip_2mic_ct,
		.pswb = pswb_voip_2mic_ct,
		.pfb = pfb_voip_2mic_ct,
	},
	[ROUTE_VOIP_3MIC_CT] = {
		.route = route_voip_3mic_ct,
		.nb = nb_voip_3mic_ct,
		.wb = wb_voip_3mic_ct,
		.swb = swb_voip_3mic_ct,
		.fb = fb_voip_3mic_ct,
		.pnb = pnb_voip_3mic_ct,
		.pwb = pwb_voip_3mic_ct,
		.pswb = pswb_voip_3mic_ct,
		.pfb = pxx_default_power_preset,
	},
	[ROUTE_VOIP_1MIC_FT] = {
		.route = route_voip_1mic_ft,
		.nb = nb_voip_1mic_ft,
		.wb = wb_voip_1mic_ft,
		.swb = swb_voip_1mic_ft,
		.pnb = pnb_voip_1mic_ft,
		.pwb = pwb_voip_1mic_ft,
		.pswb = pxx_default_power_preset,
	},
#else
	[ROUTE_CS_VOICE_1MIC_CT] = {
		.route = route_pass1,
	},
	[ROUTE_CS_VOICE_2MIC_CT] = {
		.route = route_pass2,
	},
	[ROUTE_CS_VOICE_3MIC_CT] = {
		.route = route_pass3,
	},
	[ROUTE_CS_VOICE_1MIC_FT] = {
		.route = route_pass4,
	},
	[ROUTE_CS_VOICE_2MIC_FT] = {
		.route = route_pass5,
	},
	[ROUTE_CS_VOICE_3MIC_FT] = {
		.route = route_pass6,
	},
	[ROUTE_CS_VOICE_HEADSET] = {
		.route = route_pass7,
	},
	[ROUTE_CS_VOICE_1MIC_HEADPHONE] = {
		.route = route_pass8,
	},
	[ROUTE_VOIP_1MIC_CT] = {
		.route = route_pass9,
	},
	[ROUTE_VOIP_2MIC_CT] = {
		.route = route_pass10,
	},
	[ROUTE_VOIP_3MIC_CT] = {
		.route = route_pass11,
	},
	[ROUTE_VOIP_1MIC_FT] = {
		.route = route_pass12,
	},
#endif
	[ROUTE_VOIP_2MIC_FT] = {
		.route = route_voip_2mic_ft,
		.nb = nb_voip_2mic_ft,
		.wb = wb_voip_2mic_ft,
		.swb = swb_voip_2mic_ft,
		.fb = fb_voip_2mic_ft,
		.pnb = pnb_voip_2mic_ft,
		.pwb = pwb_voip_2mic_ft,
		.pswb = pswb_voip_2mic_ft,
		.pfb = pfb_voip_2mic_ft,
	},
	[ROUTE_VOIP_3MIC_FT] = {
		.route = route_voip_3mic_ft,
		.nb = nb_voip_3mic_ft,
		.wb = wb_voip_3mic_ft,
		.swb = swb_voip_3mic_ft,
		.fb = fb_voip_3mic_ft,
		.pnb = pnb_voip_3mic_ft,
		.pwb = pwb_voip_3mic_ft,
		.pswb = pswb_voip_3mic_ft,
		.pfb = pxx_default_power_preset,
	},
	[ROUTE_VOIP_HEADSET] = {
		.route = route_voip_headset,
		.nb = nb_voip_headset,
		.wb = wb_voip_headset,
		.swb = swb_voip_headset,
		.pnb = pnb_voip_headset,
		.pwb = pwb_voip_headset,
		.pswb = pxx_default_power_preset,
	},
	[ROUTE_VOIP_1MIC_HEADPHONE] = {
		.route = route_voip_1mic_headphone,
		.nb = nb_voip_1mic_headphone,
		.wb = wb_voip_1mic_headphone,
		.swb = swb_voip_1mic_headphone,
		.pnb = pxx_default_power_preset,
		.pwb = pxx_default_power_preset,
		.pswb = pxx_default_power_preset,
	},
	[ROUTE_VOICE_ASR_1MIC] = {
		.route = route_voice_asr_1mic,
		.nb = nb_voice_asr_1mic,
		.wb = wb_voice_asr_1mic,
		.swb = swb_voice_asr_1mic,
		.pnb = pxx_default_power_preset,
		.pwb = pxx_default_power_preset,
		.pswb = pxx_default_power_preset,
	},
	[ROUTE_VOICE_ASR_2MIC] = {
		.route = route_voice_asr_2mic,
		.nb = nb_voice_asr_2mic,
		.wb = wb_voice_asr_2mic,
		.swb = swb_voice_asr_2mic,
		.pnb = pxx_default_power_preset,
		.pwb = pxx_default_power_preset,
		.pswb = pxx_default_power_preset,
	},
	[ROUTE_VOICE_ASR_3MIC] = {
		.route = route_voice_asr_3mic,
		.nb = nb_voice_asr_3mic,
		.wb = wb_voice_asr_3mic,
		.swb = swb_voice_asr_3mic,
		.pnb = pxx_default_power_preset,
		.pwb = pxx_default_power_preset,
		.pswb = pxx_default_power_preset,
	},
	[ROUTE_VOICESENSE_SBUSRX4] = {
		.route = route_voicesense_sbusrx4,
	},
	[ROUTE_VOICESENSE_SBUSRX0] = {
		.route = route_voicesense_sbusrx0,
	},
	[ROUTE_VOICESENSE_PDM] = {
		.route = route_voicesense_pdm,
	},
	[ROUTE_1CHAN_PLAYBACK] = {
		.route = route_1chan_playback,
	},
	[ROUTE_2CHAN_PLAYBACK] = {
		.route = route_2chan_playback,
	},
	[ROUTE_1CHAN_CAPTURE] = {
		.route = route_1chan_capture,
	},
	[ROUTE_2CHAN_CAPTURE] = {
		.route = route_2chan_capture,
	},
	[ROUTE_AUDIOZOOM_2MIC] = {
		.route = route_audiozoom_2mic,
	},
	[ROUTE_AUDIOZOOM_3MIC] = {
		.route = route_audiozoom_3mic,
	},
	[ROUTE_2MIC_NS_CT_ANALOG] = {
		.route = route_2mic_ns_ct_analog,
	},
	[ROUTE_2MIC_NS_FT_ANALOG] = {
		.route = route_2mic_ns_ft_analog,
	},
	[ROUTE_2MIC_NS_FO_ANALOG] = {
		.route = route_2mic_ns_fo_analog,
	},
	[ROUTE_3MIC_NS_CT_ANALOG] = {
		.route = route_3mic_ns_ct_analog,
	},
	[ROUTE_3MIC_NS_FT_ANALOG] = {
		.route = route_3mic_ns_ft_analog,
	},
	[ROUTE_3MIC_NS_FO_ANALOG] = {
		.route = route_3mic_ns_fo_analog,
	},
	[ROUTE_AEC7_2MIC_NS_FT] = {
	.route = route_aec7_2mic_ns_ft,
	},
	[ROUTE_AEC7_3MIC_NS_FT] = {
	.route = route_aec7_3mic_ns_ft,
	},
	[ROUTE_ASR_2MIC_NS_AF] = {
	.route = route_asr_2mic_ns_af,
	},
	[ROUTE_ASR_3MIC_NS_AF] = {
		.route = route_asr_3mic_ns_af,
	},
	[ROUTE_AZV_2MIC] = {
		.route = route_azv_2mic,
	},
	[ROUTE_AZV_3MIC] = {
		.route = route_azv_3mic,
	},
	[ROUTE_STEREO_RECORD_48K] = {
		.route = route_stereo_record_48k,
	},
	[ROUTE_STEREO_RECORD_96K] = {
		.route = route_stereo_record_96k,
	},
	[ROUTE_STEREO_RECORD_192K] = {
		.route = route_stereo_record_192k,
	},
	[ROUTE_AVALON_PLAY] = {
		.route = route_avalon_play,
	},
	[ROUTE_AVALON_CAPTURE] = {
		.route = route_avalon_capture,
	},
};

#endif
