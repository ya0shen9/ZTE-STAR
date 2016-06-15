.class public final Landroid/provider/ZteSettings;
.super Ljava/lang/Object;
.source "ZteSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ZteSettings$VoiceSwitch;,
        Landroid/provider/ZteSettings$ColorTemperatureMode;,
        Landroid/provider/ZteSettings$ScreenEffectMode;,
        Landroid/provider/ZteSettings$GloveMode;,
        Landroid/provider/ZteSettings$Global;,
        Landroid/provider/ZteSettings$Secure;,
        Landroid/provider/ZteSettings$System;
    }
.end annotation


# static fields
.field public static final ACTION_RINGER_CHANGED:Ljava/lang/String; = "cn.com.zte.settings.RINGER_CHANGED"

.field public static final ACTION_SETTINGS_CHANGING:Ljava/lang/String; = "cn.com.zte.settings.SETTINGS_CHANGING"

.field public static final ACTION_VOICEASSISTANT_INIT_READY:Ljava/lang/String; = "VOICEASSISTANT_INIT_READY"

.field public static final ACTION_VOICE_SENSE_ENABLED:Ljava/lang/String; = "VOICE_SENSE_ENABLED"

.field public static final CONFIG_03:I = 0x3

.field public static final CONFIG_04:I = 0x4

.field public static final CONFIG_05:I = 0x5

.field public static final CONFIG_06:I = 0x6

.field public static final CONFIG_36:I = 0x24

.field public static final CONFIG_37:I = 0x25

.field public static final CONFIG_38:I = 0x26

.field public static final CONFIG_43:I = 0x2b

.field public static final CONFIG_44:I = 0x2c

.field public static final CONFIG_45:I = 0x2d

.field public static final CONFIG_46:I = 0x2e

.field public static final CONFIG_BATTERY:I = 0x1e

.field public static final CONFIG_CONNECT_PC:I = 0x29

.field public static final CONFIG_DEBUG:I = 0x2

.field private static final CONFIG_DEFAULT:Ljava/lang/String; = "1000000.0000000.0000010.0000010.0000000.0s00000"

.field public static final CONFIG_DOLBY:I = 0x2a

.field public static final CONFIG_GLOVE_MODE:I = 0x8

.field public static final CONFIG_GUEST_MODE:I = 0x23

.field public static final CONFIG_HOME_SELECTOR:I = 0x18

.field public static final CONFIG_IMMERSION_VIBRATE:I = 0x1c

.field public static final CONFIG_INPUT_METHOD:I = 0x28

.field public static final CONFIG_IS_ROM:I = 0x0

.field public static final CONFIG_KIDS_MODE:I = 0x19

.field private static final CONFIG_MF30:Ljava/lang/String; = "0000000.0000000.0001010.0000011.0000000.0f00000"

.field public static final CONFIG_MI_POP:I = 0x1a

.field public static final CONFIG_NETWORK_MODE_TYPE:I = 0x15

.field public static final CONFIG_NOTIFICATION_PULSE:I = 0x1d

.field public static final CONFIG_ONE_HAND:I = 0x12

.field private static final CONFIG_P897A20:Ljava/lang/String; = "1000000.1001100.0001110.0001011.0000000.0f20000"

.field private static final CONFIG_P897S10:Ljava/lang/String; = "0000000.1001100.0101100.0003011.1000000.0f20000"

.field private static final CONFIG_P897S11:Ljava/lang/String; = "0000000.0001100.0101100.0002001.0000000.0f00000"

.field private static final CONFIG_P897S15:Ljava/lang/String; = "0000000.0001100.0101100.0002001.0000000.af00000"

.field private static final CONFIG_P897S20:Ljava/lang/String; = "0000000.1001100.0101100.0003111.0000000.0f00000"

.field private static final CONFIG_P898S10:Ljava/lang/String; = "1000000.0001100.0101110.0001011.0000000.0f10000"

.field public static final CONFIG_PPPOE:I = 0xb

.field public static final CONFIG_PRINT:I = 0x13

.field public static final CONFIG_PROFILES:I = 0xe

.field private static final CONFIG_PROP:Ljava/lang/String; = "persist.sys.settings.config"

.field public static final CONFIG_QUICKSTART:I = 0x11

.field public static final CONFIG_SCREEN_EFFECT:I = 0x9

.field public static final CONFIG_SCREEN_WAKEUP:I = 0x10

.field public static final CONFIG_SILENT_POWERON:I = 0xa

.field public static final CONFIG_SKY_DOMAIN:I = 0x21

.field public static final CONFIG_SKY_EYE:I = 0x22

.field public static final CONFIG_SKY_LOCK:I = 0x20

.field public static final CONFIG_SOUND_UNLOCK:I = 0xd

.field public static final CONFIG_UPLMN_ENABLED:I = 0x16

.field public static final CONFIG_VERSION_TYPE:I = 0x1

.field public static final CONFIG_VOICE_ASSISTANT:I = 0xc

.field public static final CONFIG_WIFI:I = 0x1b

.field public static final CONFIG_ZGESTURE:I = 0x14

.field public static final EXTRA_KEY:Ljava/lang/String; = "key"

.field public static final EXTRA_VAL:Ljava/lang/String; = "val"

.field public static final NOTIFICATION_RINGTONE:Ljava/lang/String; = "pref_key_ringtone"

.field public static final PROP_IMMERSION_VIBRATE:Ljava/lang/String; = "persist.sys.immersion_vibrate"

.field private static final TAG:Ljava/lang/String; = "zte_settings"

.field private static final mPrj2Cfg:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 445
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    .line 447
    sget-object v0, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v1, "P897A20"

    const-string v2, "1000000.1001100.0001110.0001011.0000000.0f20000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 448
    sget-object v0, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v1, "ZTE Grand S II LTE"

    const-string v2, "1000000.1001100.0001110.0001011.0000000.0f20000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 450
    sget-object v0, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v1, "P898S10"

    const-string v2, "1000000.0001100.0101110.0001011.0000000.0f10000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 451
    sget-object v0, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v1, "ZTE STAR"

    const-string v2, "1000000.0001100.0101110.0001011.0000000.0f10000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 453
    sget-object v0, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v1, "MF30"

    const-string v2, "0000000.0000000.0001010.0000011.0000000.0f00000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 454
    sget-object v0, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v1, "MiFavor V3"

    const-string v2, "0000000.0000000.0001010.0000011.0000000.0f00000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 456
    sget-object v0, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v1, "P897S11"

    const-string v2, "0000000.0001100.0101100.0002001.0000000.0f00000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 457
    sget-object v0, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v1, "ZTE S2005"

    const-string v2, "0000000.0001100.0101100.0002001.0000000.0f00000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 459
    sget-object v0, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v1, "P897S10"

    const-string v2, "0000000.1001100.0101100.0003011.1000000.0f20000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 460
    sget-object v0, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v1, "ZTE S2004"

    const-string v2, "0000000.1001100.0101100.0003011.1000000.0f20000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 462
    sget-object v0, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v1, "P897S20"

    const-string v2, "0000000.1001100.0101100.0003111.0000000.0f00000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 464
    sget-object v0, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v1, "P897S15"

    const-string v2, "0000000.0001100.0101100.0002001.0000000.af00000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 465
    sget-object v0, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    const-string v1, "ZTE S2007"

    const-string v2, "0000000.0001100.0101100.0002001.0000000.af00000"

    invoke-virtual {v0, v1, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 466
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 365
    return-void
.end method

.method private static getAllConfigs()Ljava/lang/String;
    .locals 5

    .prologue
    .line 514
    const-string/jumbo v3, "ro.product.name"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 515
    .local v1, "name":Ljava/lang/String;
    const-string/jumbo v3, "ro.product.model"

    const-string v4, ""

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 516
    .local v0, "model":Ljava/lang/String;
    const-string/jumbo v3, "persist.sys.settings.config"

    invoke-static {v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 518
    .local v2, "prop":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    const-string v4, "1000000.0000000.0000010.0000010.0000000.0s00000"

    invoke-virtual {v4}, Ljava/lang/String;->length()I

    move-result v4

    if-lt v3, v4, :cond_1

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_1

    .line 531
    .end local v2    # "prop":Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 521
    .restart local v2    # "prop":Ljava/lang/String;
    :cond_1
    sget-object v3, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 522
    sget-object v3, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    invoke-virtual {v3, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    goto :goto_0

    .line 524
    :cond_2
    sget-object v3, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 525
    sget-object v3, Landroid/provider/ZteSettings;->mPrj2Cfg:Ljava/util/HashMap;

    invoke-virtual {v3, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/String;

    move-object v2, v3

    goto :goto_0

    .line 527
    :cond_3
    invoke-virtual {v2}, Ljava/lang/String;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 531
    const-string v2, "1000000.0000000.0000010.0000010.0000000.0s00000"

    goto :goto_0
.end method

.method public static getConfig(I)C
    .locals 3
    .param p0, "pos"    # I

    .prologue
    .line 480
    invoke-static {}, Landroid/provider/ZteSettings;->getAllConfigs()Ljava/lang/String;

    move-result-object v0

    .line 482
    .local v0, "cfgs":Ljava/lang/String;
    const/4 v2, 0x1

    if-ne p0, v2, :cond_2

    .line 483
    const-string/jumbo v2, "ro.product.versiontype"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 484
    .local v1, "verType":Ljava/lang/String;
    const-string v2, "NETWORK_VER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 485
    const/16 v2, 0x31

    .line 498
    .end local v1    # "verType":Ljava/lang/String;
    :goto_0
    return v2

    .line 487
    .restart local v1    # "verType":Ljava/lang/String;
    :cond_0
    const-string v2, "CMCC_TEST_VER"

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 488
    const/16 v2, 0x32

    goto :goto_0

    .line 491
    :cond_1
    const/16 v2, 0x30

    goto :goto_0

    .line 494
    .end local v1    # "verType":Ljava/lang/String;
    :cond_2
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p0, v2, :cond_3

    .line 495
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    goto :goto_0

    .line 498
    :cond_3
    const/16 v2, 0x20

    goto :goto_0
.end method

.method public static isConfiged(I)Z
    .locals 4
    .param p0, "pos"    # I

    .prologue
    const/4 v1, 0x0

    .line 469
    invoke-static {}, Landroid/provider/ZteSettings;->getAllConfigs()Ljava/lang/String;

    move-result-object v0

    .line 471
    .local v0, "cfgs":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p0, v2, :cond_0

    .line 472
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    invoke-static {p0}, Landroid/provider/ZteSettings;->isSupported(I)Z

    move-result v2

    if-eqz v2, :cond_0

    const/4 v1, 0x1

    .line 475
    :cond_0
    return v1
.end method

.method private static isSupported(I)Z
    .locals 1
    .param p0, "pos"    # I

    .prologue
    .line 503
    packed-switch p0, :pswitch_data_0

    .line 509
    const/4 v0, 0x1

    :goto_0
    return v0

    .line 505
    :pswitch_0
    const/4 v0, 0x0

    goto :goto_0

    .line 503
    nop

    :pswitch_data_0
    .packed-switch 0xe
        :pswitch_0
    .end packed-switch
.end method
