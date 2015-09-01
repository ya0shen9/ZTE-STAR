.class public final Landroid/provider/ZteSettings$System;
.super Ljava/lang/Object;
.source "ZteSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ZteSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "System"
.end annotation


# static fields
.field public static final DEFAULT_MESSAGE_URI:Landroid/net/Uri; = null

.field public static final DEFAULT_ONEHANDOPERATION_CALCULATOR_ON:Ljava/lang/String; = "default_onehandoperation_calculator_on"

.field public static final DEFAULT_ONEHANDOPERATION_DIALPAD_INCALL_ON:Ljava/lang/String; = "default_onehandoperation_dialpad_incall_on"

.field public static final DEFAULT_ONEHANDOPERATION_KEYBOARD_ON:Ljava/lang/String; = "default_onehandoperation_keyboard_on"

.field public static final DEFAULT_ONEHANDOPERATION_ON:Ljava/lang/String; = "default_onehandoperation_on"

.field public static final DEFAULT_ONEHANDOPERATION_UNLOCK_ON:Ljava/lang/String; = "default_onehandoperation_unlock_on"

.field public static final ENROLL_POWERON_MODE:Ljava/lang/String; = "enroll_poweron_mode"

.field public static final FLIPFONT:Ljava/lang/String; = "flipfont"

.field public static final HOTSPOT_NAME_SET_BY_USER:Ljava/lang/String; = "hotspot_name_set_by_user"

.field public static final HOTSPOT_SLEEP_POLICY:Ljava/lang/String; = "hotspot_sleep_policy"

.field public static final HOTSPOT_SLEEP_POLICY_DEFAULT:I = 0x1

.field public static final HOTSPOT_SLEEP_POLICY_NEVER:I = 0x0

.field public static final HOTSPOT_SLEEP_POLICY_NOTIFY:Ljava/lang/String; = "hotspot_sleep_policy_notify"

.field public static final HOTSPOT_SLEEP_POLICY_NOTIFY_CLOSE:I = 0x0

.field public static final HOTSPOT_SLEEP_POLICY_NOTIFY_OPEN:I = 0x1

.field public static final HOTSPOT_SLEEP_POLICY_THIRTY_MINUTES:I = 0x2

.field public static final HOTSPOT_WITHOUT_NOTIFICATION:Ljava/lang/String; = "hotspot_without_notification"

.field public static final MESSAGE_SOUND:Ljava/lang/String; = "message_sound"

.field public static final NEXT_ALARM_NAME:Ljava/lang/String; = "next_alarm_name"

.field public static final NEXT_ALARM_TIME:Ljava/lang/String; = "next_alarm_time"

.field public static final P2P_DEV_NAME_SET_BY_USER:Ljava/lang/String; = "p2p_dev_name_set_by_user"

.field public static final RING_INCREASING_ENABLED:Ljava/lang/String; = "ring_increasing_enabled"

.field public static final SAVE_LOCATION:Ljava/lang/String; = "save_location"

.field public static final SCREEN_EFFECT_MODE:Ljava/lang/String; = "screen_effect_mode"

.field public static final SHOW_OPEN_NETWORK_DIALOG:Ljava/lang/String; = "show_open_network_dialog"

.field public static final SYSTEM_DEVICE_NAME:Ljava/lang/String; = "system_device_name"

.field public static final TSKIN_ENABLED:Ljava/lang/String; = "tskin_enabled"

.field public static final TSKIN_ENABLED_MODE:Ljava/lang/String; = "tskin_enabled_mode"

.field public static final VOICE_CALLING_CONTROL:Ljava/lang/String; = "voice_calling_control"

.field public static final VOICE_MEDIA_CONTROL:Ljava/lang/String; = "voice_media_control"

.field public static final VOICE_PHOTO_CONTROL:Ljava/lang/String; = "voice_photo_control"

.field public static final VOICE_STATUS:Ljava/lang/String; = "zte_voice_status"

.field public static final VOICE_SWITCH:Ljava/lang/String; = "zte_voice_switch"

.field public static final VOICE_WAKE_UP_SWITCH_STATE:Ljava/lang/String; = "voice_wake_up_state"

.field public static final WIFI_SOFTAP_IP_RANGE_END:Ljava/lang/String; = "wifi_softap_ip_range_end"

.field public static final WIFI_SOFTAP_IP_RANGE_START:Ljava/lang/String; = "wifi_softap_ip_range_start"

.field public static final WIFI_SOFTAP_NETMASK:Ljava/lang/String; = "wifi_softap_netmask"

.field public static final WIFI_SOFTAP_STATIC_IP:Ljava/lang/String; = "wifi_softap_static_ip"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 44
    const-string/jumbo v0, "message_sound"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ZteSettings$System;->DEFAULT_MESSAGE_URI:Landroid/net/Uri;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
