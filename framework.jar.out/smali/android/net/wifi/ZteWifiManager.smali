.class public Landroid/net/wifi/ZteWifiManager;
.super Ljava/lang/Object;
.source "ZteWifiManager.java"


# static fields
.field public static final APSTA_ENABLED_FAILTURE_ACTION:Ljava/lang/String; = "android.net.wifi.APSTA_ENABLED_FAILTURE_CHANGED"

.field private static final CLASSNAME:Ljava/lang/String; = "android.net.wifi.IWifiManager"

.field public static final EXTRA_WIFI_AP_DEVICE_ADDRESS:Ljava/lang/String; = "device_address"

.field public static final EXTRA_WIFI_AP_STA_EVENT:Ljava/lang/String; = "wifi_ap_sta_event"

.field public static final HOSTAP_SLEEP_NOTIFY:I = 0x1

.field public static final HOTSPOT_SLEEP_CHANGED_ACTION:Ljava/lang/String; = "android.net.wifi.HOTSPOT_SLEEP_CHANGED"

.field public static final HOTSPOT_SLEEP_POLICY:I = 0x2

.field public static final START_WPS_SERVER:I = 0x25040

.field private static final TAG:Ljava/lang/String; = "WifiManager"

.field public static final WIFI_AP_STA_CONNECT:I = 0x14

.field public static final WIFI_AP_STA_DISCONNECT:I = 0x15

.field public static final WIFI_AP_STA_NOTIFICATION_ACTION:Ljava/lang/String; = "android.net.wifi.WIFI_AP_STA_NOTIFICATION"

.field public static final WIFI_AP_STA_UNKNOWN:I = 0x16

.field public static final WIFI_SOFTAP_IP_RANGE_START:I = 0x5

.field public static final WIFI_SOFTAP_NETMASK:I = 0x4

.field public static final WIFI_SOFTAP_STATIC_IP:I = 0x3


# instance fields
.field private mContext:Landroid/content/Context;

.field mService:Landroid/net/wifi/IWifiManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 122
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 123
    iput-object p1, p0, Landroid/net/wifi/ZteWifiManager;->mContext:Landroid/content/Context;

    .line 124
    const-string/jumbo v1, "wifi"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 125
    .local v0, b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v1

    iput-object v1, p0, Landroid/net/wifi/ZteWifiManager;->mService:Landroid/net/wifi/IWifiManager;

    .line 126
    return-void
.end method

.method public static LoadMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .parameter "cName"
    .parameter "obj"
    .parameter "MethodName"
    .parameter "params"
    .parameter "ArgsClass"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 260
    const/4 v3, 0x0

    .line 263
    .local v3, retObject:Ljava/lang/Object;
    const/4 v0, 0x0

    .line 264
    .local v0, cls:Ljava/lang/Class;
    if-eqz p1, :cond_0

    .line 265
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 271
    :goto_0
    if-eqz p3, :cond_1

    .line 272
    invoke-virtual {v0, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 273
    .local v2, meth:Ljava/lang/reflect/Method;
    invoke-virtual {v2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 288
    :goto_1
    return-object v3

    .line 268
    .end local v2           #meth:Ljava/lang/reflect/Method;
    :cond_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 276
    :cond_1
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 277
    .restart local v2       #meth:Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_1

    .line 280
    .end local v2           #meth:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 281
    .local v1, e:Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "WifiManager"

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    throw v1

    .line 283
    .end local v1           #e:Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 284
    .local v1, e:Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 285
    throw v1
.end method


# virtual methods
.method public getHostapPara(I)Ljava/lang/String;
    .locals 7
    .parameter "hostapParaType"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 172
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v0, v5

    .line 173
    .local v0, args:[Ljava/lang/Object;
    new-array v1, v6, [Ljava/lang/Class;

    const-class v4, Ljava/lang/Integer;

    aput-object v4, v1, v5

    .line 176
    .local v1, argsCls:[Ljava/lang/Class;
    :try_start_0
    const-string v4, "android.net.wifi.IWifiManager"

    iget-object v5, p0, Landroid/net/wifi/ZteWifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const-string v6, "getHostapPara"

    invoke-static {v4, v5, v6, v0, v1}, Landroid/net/wifi/ZteWifiManager;->LoadMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 186
    .local v3, retObj:Ljava/lang/Object;
    check-cast v3, Ljava/lang/String;

    .end local v3           #retObj:Ljava/lang/Object;
    :goto_0
    return-object v3

    .line 178
    :catch_0
    move-exception v2

    .line 179
    .local v2, e:Landroid/os/RemoteException;
    const-string v3, "-1"

    goto :goto_0

    .line 181
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 182
    .local v2, e:Ljava/lang/Exception;
    const-string v4, "WifiManager"

    const-string v5, "NO SUPPORT PPPOE!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 183
    const-string v3, "-1"

    goto :goto_0
.end method

.method public getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    .locals 8

    .prologue
    const/4 v2, 0x0

    .line 246
    :try_start_0
    const-string v3, "android.net.wifi.IWifiManager"

    iget-object v4, p0, Landroid/net/wifi/ZteWifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const-string v5, "getPPPOEInfo"

    const/4 v6, 0x0

    const/4 v7, 0x0

    invoke-static {v3, v4, v5, v6, v7}, Landroid/net/wifi/ZteWifiManager;->LoadMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v1

    .line 247
    .local v1, retObj:Ljava/lang/Object;
    check-cast v1, Landroid/net/wifi/PPPOEInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 254
    .end local v1           #retObj:Ljava/lang/Object;
    :goto_0
    return-object v1

    .line 249
    :catch_0
    move-exception v0

    .local v0, e:Landroid/os/RemoteException;
    move-object v1, v2

    .line 250
    goto :goto_0

    .line 252
    .end local v0           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v0

    .line 253
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "WifiManager"

    const-string v4, "NO SUPPORT PPPOE!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move-object v1, v2

    .line 254
    goto :goto_0
.end method

.method public setHostapPara(ILjava/lang/String;)Z
    .locals 9
    .parameter "hostapParaType"
    .parameter "mParameter"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v5, 0x0

    .line 140
    new-array v0, v8, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v0, v5

    aput-object p2, v0, v7

    .line 141
    .local v0, args:[Ljava/lang/Object;
    new-array v1, v8, [Ljava/lang/Class;

    const-class v6, Ljava/lang/Integer;

    aput-object v6, v1, v5

    const-class v6, Ljava/lang/String;

    aput-object v6, v1, v7

    .line 144
    .local v1, argsCls:[Ljava/lang/Class;
    :try_start_0
    const-string v6, "android.net.wifi.IWifiManager"

    iget-object v7, p0, Landroid/net/wifi/ZteWifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const-string/jumbo v8, "setHostapPara"

    invoke-static {v6, v7, v8, v0, v1}, Landroid/net/wifi/ZteWifiManager;->LoadMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_2

    move-result-object v4

    .line 157
    .local v4, retObj:Ljava/lang/Object;
    check-cast v4, Ljava/lang/Boolean;

    .end local v4           #retObj:Ljava/lang/Object;
    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v5

    :goto_0
    return v5

    .line 146
    :catch_0
    move-exception v2

    .line 147
    .local v2, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 149
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v3

    .line 150
    .local v3, ex:Ljava/lang/NullPointerException;
    goto :goto_0

    .line 152
    .end local v3           #ex:Ljava/lang/NullPointerException;
    :catch_2
    move-exception v2

    .line 153
    .local v2, e:Ljava/lang/Exception;
    const-string v6, "WifiManager"

    const-string v7, "NO SUPPORT PPPOE!"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    .locals 6
    .parameter "config"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 214
    new-array v0, v3, [Ljava/lang/Object;

    aput-object p1, v0, v4

    .line 215
    .local v0, args:[Ljava/lang/Object;
    new-array v1, v3, [Ljava/lang/Class;

    const-class v3, Landroid/net/wifi/PPPOEConfig;

    aput-object v3, v1, v4

    .line 217
    .local v1, argsCls:[Ljava/lang/Class;
    :try_start_0
    const-string v3, "android.net.wifi.IWifiManager"

    iget-object v4, p0, Landroid/net/wifi/ZteWifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const-string/jumbo v5, "startPPPOE"

    invoke-static {v3, v4, v5, v0, v1}, Landroid/net/wifi/ZteWifiManager;->LoadMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 224
    :goto_0
    return-void

    .line 221
    :catch_0
    move-exception v2

    .line 222
    .local v2, e:Ljava/lang/Exception;
    const-string v3, "WifiManager"

    const-string v4, "NO SUPPORT PPPOE!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 219
    .end local v2           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_0
.end method

.method public startWpsServer(ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "wpsMethod"
    .parameter "wpsBssid"
    .parameter "wpsPin"

    .prologue
    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x3

    const/4 v4, 0x0

    .line 190
    new-array v0, v6, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    aput-object v5, v0, v4

    aput-object p2, v0, v7

    aput-object p3, v0, v8

    .line 191
    .local v0, args:[Ljava/lang/Object;
    new-array v1, v6, [Ljava/lang/Class;

    const-class v5, Ljava/lang/Integer;

    aput-object v5, v1, v4

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v7

    const-class v5, Ljava/lang/String;

    aput-object v5, v1, v8

    .line 193
    .local v1, argsCls:[Ljava/lang/Class;
    if-ltz p1, :cond_0

    if-le p1, v6, :cond_1

    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string v5, "chen: Invalid WPS server para"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 195
    :cond_1
    :try_start_0
    const-string v5, "android.net.wifi.IWifiManager"

    iget-object v6, p0, Landroid/net/wifi/ZteWifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const-string/jumbo v7, "startWpsServer"

    invoke-static {v5, v6, v7, v0, v1}, Landroid/net/wifi/ZteWifiManager;->LoadMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    .line 205
    .local v3, retObj:Ljava/lang/Object;
    check-cast v3, Ljava/lang/Boolean;

    .end local v3           #retObj:Ljava/lang/Object;
    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    :goto_0
    return v4

    .line 197
    :catch_0
    move-exception v2

    .line 198
    .local v2, e:Landroid/os/RemoteException;
    goto :goto_0

    .line 200
    .end local v2           #e:Landroid/os/RemoteException;
    :catch_1
    move-exception v2

    .line 201
    .local v2, e:Ljava/lang/Exception;
    const-string v5, "WifiManager"

    const-string v6, "NO SUPPORT PPPOE!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public stopPPPOE()V
    .locals 6

    .prologue
    .line 231
    :try_start_0
    const-string v1, "android.net.wifi.IWifiManager"

    iget-object v2, p0, Landroid/net/wifi/ZteWifiManager;->mService:Landroid/net/wifi/IWifiManager;

    const-string/jumbo v3, "stopPPPOE"

    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-static {v1, v2, v3, v4, v5}, Landroid/net/wifi/ZteWifiManager;->LoadMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 238
    :goto_0
    return-void

    .line 235
    :catch_0
    move-exception v0

    .line 236
    .local v0, e:Ljava/lang/Exception;
    const-string v1, "WifiManager"

    const-string v2, "NO SUPPORT PPPOE!"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 233
    .end local v0           #e:Ljava/lang/Exception;
    :catch_1
    move-exception v1

    goto :goto_0
.end method
