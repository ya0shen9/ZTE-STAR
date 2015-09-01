.class public Landroid/media/ZteRingtoneManager;
.super Landroid/media/RingtoneManager;
.source "ZteRingtoneManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZteRingtoneManager"

.field public static final TYPE_ALL:I = 0xf

.field public static final TYPE_MESSAGE:I = 0x8


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 0
    .parameter "activity"

    .prologue
    .line 60
    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;-><init>(Landroid/app/Activity;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0, p1}, Landroid/media/RingtoneManager;-><init>(Landroid/content/Context;)V

    .line 72
    return-void
.end method

.method public static getActualDefaultRingtoneUri(Landroid/content/Context;I)Landroid/net/Uri;
    .locals 4
    .parameter "context"
    .parameter "type"

    .prologue
    const/4 v2, 0x0

    .line 87
    invoke-static {p1}, Landroid/media/ZteRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 88
    .local v0, setting:Ljava/lang/String;
    if-nez v0, :cond_1

    .line 90
    :cond_0
    :goto_0
    return-object v2

    .line 89
    :cond_1
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    invoke-static {v3, v0}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 90
    .local v1, uriString:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-static {v1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    goto :goto_0
.end method

.method public static getDefaultType(Landroid/net/Uri;)I
    .locals 1
    .parameter "defaultRingtoneUri"

    .prologue
    .line 134
    sget-object v0, Landroid/provider/ZteSettings$System;->DEFAULT_MESSAGE_URI:Landroid/net/Uri;

    invoke-virtual {v0, p0}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 135
    const/16 v0, 0x8

    .line 138
    :goto_0
    return v0

    :cond_0
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultType(Landroid/net/Uri;)I

    move-result v0

    goto :goto_0
.end method

.method public static getDefaultUri(I)Landroid/net/Uri;
    .locals 1
    .parameter "type"

    .prologue
    .line 152
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_0

    .line 153
    sget-object v0, Landroid/provider/ZteSettings$System;->DEFAULT_MESSAGE_URI:Landroid/net/Uri;

    .line 156
    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0}, Landroid/media/RingtoneManager;->getDefaultUri(I)Landroid/net/Uri;

    move-result-object v0

    goto :goto_0
.end method

.method private static getSettingForType(I)Ljava/lang/String;
    .locals 1
    .parameter "type"

    .prologue
    .line 111
    and-int/lit8 v0, p0, 0x1

    if-eqz v0, :cond_0

    .line 112
    const-string/jumbo v0, "ringtone"

    .line 120
    :goto_0
    return-object v0

    .line 113
    :cond_0
    and-int/lit8 v0, p0, 0x2

    if-eqz v0, :cond_1

    .line 114
    const-string/jumbo v0, "notification_sound"

    goto :goto_0

    .line 115
    :cond_1
    and-int/lit8 v0, p0, 0x8

    if-eqz v0, :cond_2

    .line 116
    const-string/jumbo v0, "message_sound"

    goto :goto_0

    .line 117
    :cond_2
    and-int/lit8 v0, p0, 0x4

    if-eqz v0, :cond_3

    .line 118
    const-string v0, "alarm_alert"

    goto :goto_0

    .line 120
    :cond_3
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setActualDefaultRingtoneUri(Landroid/content/Context;ILandroid/net/Uri;)V
    .locals 3
    .parameter "context"
    .parameter "type"
    .parameter "ringtoneUri"

    .prologue
    .line 104
    invoke-static {p1}, Landroid/media/ZteRingtoneManager;->getSettingForType(I)Ljava/lang/String;

    move-result-object v0

    .line 105
    .local v0, setting:Ljava/lang/String;
    if-nez v0, :cond_0

    .line 108
    :goto_0
    return-void

    .line 106
    :cond_0
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v1

    :goto_1
    invoke-static {v2, v0, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_0

    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method
