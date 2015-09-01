.class public final Landroid/provider/ZteSettings;
.super Ljava/lang/Object;
.source "ZteSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/provider/ZteSettings$VoiceSwitch;,
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

.field public static final CONFIG_02:I = 0x2

.field public static final CONFIG_03:I = 0x3

.field public static final CONFIG_04:I = 0x4

.field public static final CONFIG_05:I = 0x5

.field public static final CONFIG_06:I = 0x6

.field public static final CONFIG_07:I = 0x7

.field public static final CONFIG_0E:I = 0xe

.field public static final CONFIG_0F:I = 0xf

.field public static final CONFIG_13:I = 0x13

.field public static final CONFIG_14:I = 0x14

.field public static final CONFIG_15:I = 0x15

.field public static final CONFIG_16:I = 0x16

.field public static final CONFIG_17:I = 0x17

.field public static final CONFIG_DEFAULT:Ljava/lang/String; = "0000000.0000000.0000000.0000000."

.field public static final CONFIG_GLOVE_MODE:I = 0x8

.field public static final CONFIG_HOME_SELECTOR:I = 0x10

.field public static final CONFIG_IS_ROM:I = 0x0

.field public static final CONFIG_KIDS_MODE:I = 0x11

.field public static final CONFIG_MI_POP:I = 0x12

.field public static final CONFIG_PPPOE:I = 0xb

.field public static final CONFIG_PROP:Ljava/lang/String; = "persist.sys.settings.config"

.field public static final CONFIG_SCREEN_EFFECT:I = 0x9

.field public static final CONFIG_SILENT_POWERON:I = 0xa

.field public static final CONFIG_SOUND_UNLOCK:I = 0xd

.field public static final CONFIG_VERSION_TYPE:I = 0x1

.field public static final CONFIG_VOICE_ASSISTANT:I = 0xc

.field public static final EXTRA_KEY:Ljava/lang/String; = "key"

.field public static final EXTRA_VAL:Ljava/lang/String; = "val"

.field public static final NOTIFICATION_RINGTONE:Ljava/lang/String; = "pref_key_ringtone"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 24
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 274
    return-void
.end method

.method public static getConfig(I)C
    .locals 3
    .parameter "pos"

    .prologue
    .line 333
    const-string/jumbo v1, "persist.sys.settings.config"

    const-string v2, "0000000.0000000.0000000.0000000."

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 335
    .local v0, prop:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v1

    if-ge p0, v1, :cond_0

    .line 338
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v1

    .line 341
    :goto_0
    return v1

    :cond_0
    const/16 v1, 0x20

    goto :goto_0
.end method

.method public static isConfiged(I)Z
    .locals 4
    .parameter "pos"

    .prologue
    const/4 v1, 0x0

    .line 320
    const-string/jumbo v2, "persist.sys.settings.config"

    const-string v3, "0000000.0000000.0000000.0000000."

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 322
    .local v0, prop:Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v2

    if-ge p0, v2, :cond_0

    .line 325
    invoke-virtual {v0, p0}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v3, 0x31

    if-ne v2, v3, :cond_0

    const/4 v1, 0x1

    .line 328
    :cond_0
    return v1
.end method
