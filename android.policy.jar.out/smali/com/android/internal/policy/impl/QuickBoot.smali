.class public Lcom/android/internal/policy/impl/QuickBoot;
.super Ljava/lang/Object;
.source "QuickBoot.java"


# static fields
.field public static final QuickBootPowerOning:Ljava/lang/String; = "quick_boot_power_oning"

.field static final TAG:Ljava/lang/String; = "QuickBoot"


# instance fields
.field public final ACTION_ALARM_SHUT_DOWN:Ljava/lang/String;

.field mContext:Landroid/content/Context;

.field mHandler:Landroid/os/Handler;

.field private mPowerManager:Landroid/os/PowerManager;

.field mQuickBootReceiver:Landroid/content/BroadcastReceiver;

.field private mUsbManager:Landroid/hardware/usb/UsbManager;

.field private mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

.field private final playQuickbootAnim:Ljava/lang/Runnable;

.field private final stopQuickbootAnim:Ljava/lang/Runnable;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/view/WindowManagerPolicy$WindowManagerFuncs;)V
    .locals 2
    .parameter "context"
    .parameter "windowManagerFuncs"

    .prologue
    const/4 v1, 0x0

    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    iput-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    .line 43
    iput-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->mHandler:Landroid/os/Handler;

    .line 48
    const-string v1, "android.intent.action.ACTION_ALARM_SHUT_DOWN"

    iput-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->ACTION_ALARM_SHUT_DOWN:Ljava/lang/String;

    .line 75
    new-instance v1, Lcom/android/internal/policy/impl/QuickBoot$1;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/QuickBoot$1;-><init>(Lcom/android/internal/policy/impl/QuickBoot;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->playQuickbootAnim:Ljava/lang/Runnable;

    .line 109
    new-instance v1, Lcom/android/internal/policy/impl/QuickBoot$2;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/QuickBoot$2;-><init>(Lcom/android/internal/policy/impl/QuickBoot;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->stopQuickbootAnim:Ljava/lang/Runnable;

    .line 235
    new-instance v1, Lcom/android/internal/policy/impl/QuickBoot$3;

    invoke-direct {v1, p0}, Lcom/android/internal/policy/impl/QuickBoot$3;-><init>(Lcom/android/internal/policy/impl/QuickBoot;)V

    iput-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->mQuickBootReceiver:Landroid/content/BroadcastReceiver;

    .line 51
    iput-object p1, p0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    .line 52
    iput-object p2, p0, Lcom/android/internal/policy/impl/QuickBoot;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    .line 53
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 54
    .local v0, filter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.AS_QUICKBOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 55
    const-string v1, "android.intent.action.ACTION_ALARM_SHUT_DOWN"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 56
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 57
    iget-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->mQuickBootReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {p1, v1, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 58
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/policy/impl/QuickBoot;)Ljava/lang/Runnable;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/QuickBoot;->stopQuickbootAnim:Ljava/lang/Runnable;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/policy/impl/QuickBoot;)Landroid/os/PowerManager;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/QuickBoot;->mPowerManager:Landroid/os/PowerManager;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/policy/impl/QuickBoot;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/policy/impl/QuickBoot;->quickBootComplete()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/internal/policy/impl/QuickBoot;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    invoke-direct {p0}, Lcom/android/internal/policy/impl/QuickBoot;->isInQuickBootPowerOff()Z

    move-result v0

    return v0
.end method

.method static synthetic access$400(Lcom/android/internal/policy/impl/QuickBoot;)Landroid/view/WindowManagerPolicy$WindowManagerFuncs;
    .locals 1
    .parameter "x0"

    .prologue
    .line 40
    iget-object v0, p0, Lcom/android/internal/policy/impl/QuickBoot;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    return-object v0
.end method

.method private isInQuickBootPowerOff()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 269
    const-string v4, "persist.sys.quickboot"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 270
    .local v0, quickbootVal:I
    const-string v4, "service.quickboot.state"

    invoke-static {v4, v3}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 271
    .local v1, quickboot_state:I
    if-ne v0, v2, :cond_0

    if-ne v1, v2, :cond_0

    .line 274
    :goto_0
    return v2

    :cond_0
    move v2, v3

    goto :goto_0
.end method

.method private quickBootComplete()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 122
    invoke-direct {p0}, Lcom/android/internal/policy/impl/QuickBoot;->setHibernateFinishState()V

    .line 124
    iget-object v2, p0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "persist.sys.quickboot.modereset"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 125
    .local v1, quickbootmodereset:I
    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 127
    iget-object v2, p0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "persist.sys.quickboot.modereset"

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 128
    invoke-direct {p0}, Lcom/android/internal/policy/impl/QuickBoot;->resetAirplaneModeSet()V

    .line 131
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 132
    .local v0, intentBoot:Landroid/content/Intent;
    iget-object v2, p0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 133
    return-void
.end method

.method private resetAirplaneModeSet()V
    .locals 20

    .prologue
    .line 144
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v12

    .line 145
    .local v12, res:Landroid/content/ContentResolver;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "persist.sys.qbGpsWasOn"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    .line 146
    .local v4, gpsWasOn:I
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v4, v0, :cond_0

    .line 147
    const-string v17, "gps"

    const/16 v18, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-static {v12, v0, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 149
    :cond_0
    const-string v17, "QuickBoot"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "quickboot on: recovered GPS: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 152
    const-string v17, "wifi"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v14

    .line 153
    .local v14, wifi:Landroid/net/wifi/IWifiManager;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "persist.sys.quickboot.wifiwason"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v16

    .line 155
    .local v16, wifiWasOn:I
    if-eqz v14, :cond_1

    .line 156
    const/16 v17, 0x1

    move/from16 v0, v16

    move/from16 v1, v17

    if-ne v0, v1, :cond_1

    .line 157
    const/16 v17, 0x1

    :try_start_0
    move/from16 v0, v17

    invoke-interface {v14, v0}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1

    .line 162
    :cond_1
    :goto_0
    const-string v17, "QuickBoot"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "quickboot on: recovered WI-FI: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "persist.sys.quickboot.wifiapwason"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v15

    .line 168
    .local v15, wifiApWasOn:I
    if-eqz v14, :cond_2

    .line 169
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v15, v0, :cond_2

    .line 170
    const/16 v17, 0x0

    const/16 v18, 0x1

    :try_start_1
    move-object/from16 v0, v17

    move/from16 v1, v18

    invoke-interface {v14, v0, v1}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_2

    .line 175
    :cond_2
    :goto_1
    const-string v17, "QuickBoot"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "quickboot on: recovered WI-FI AP: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    const-string v17, "nfc"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v8

    .line 179
    .local v8, nfc:Landroid/nfc/INfcAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "persist_sys_qbnfcWasOn"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    .line 181
    .local v9, nfcWasOn:I
    if-eqz v8, :cond_3

    .line 182
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v9, v0, :cond_3

    .line 183
    :try_start_2
    invoke-interface {v8}, Landroid/nfc/INfcAdapter;->enable()Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_3

    .line 188
    :cond_3
    :goto_2
    const-string v17, "QuickBoot"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "quickboot on: recovered NFC: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {}, Landroid/bluetooth/BluetoothAdapter;->getDefaultAdapter()Landroid/bluetooth/BluetoothAdapter;

    move-result-object v6

    .line 192
    .local v6, mAdapter:Landroid/bluetooth/BluetoothAdapter;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "persist.sys.quickboot.btwason"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 193
    .local v2, bluetoothWasOn:I
    if-eqz v6, :cond_4

    .line 194
    const/16 v17, 0x1

    move/from16 v0, v17

    if-ne v2, v0, :cond_4

    .line 195
    invoke-virtual {v6}, Landroid/bluetooth/BluetoothAdapter;->enable()Z

    .line 199
    :cond_4
    const-string v17, "QuickBoot"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "quickboot on: recovered bluetooth: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    const-string v17, "phone"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v10

    .line 203
    .local v10, phone:Lcom/android/internal/telephony/ITelephony;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "persist.sys.quickboot.radiowason"

    const/16 v19, 0x0

    invoke-static/range {v17 .. v19}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v11

    .line 205
    .local v11, radioChannel:I
    :try_start_3
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v17

    if-eqz v17, :cond_6

    .line 206
    const-string v17, "phone_msim"

    invoke-static/range {v17 .. v17}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v17

    invoke-static/range {v17 .. v17}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v7

    .line 207
    .local v7, mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v7, :cond_7

    .line 208
    const/4 v5, 0x0

    .local v5, i:I
    :goto_3
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v17

    move/from16 v0, v17

    if-ge v5, v0, :cond_7

    .line 209
    const/16 v17, 0x1

    shl-int v17, v17, v5

    and-int v17, v17, v11

    if-lez v17, :cond_5

    .line 210
    const-string v17, "QuickBoot"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Turning on radio on Subscription :"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v7, v0, v5}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setRadio(ZI)Z

    .line 208
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 217
    .end local v5           #i:I
    .end local v7           #mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_6
    if-eqz v10, :cond_7

    .line 218
    and-int/lit8 v17, v11, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_7

    .line 219
    const-string v17, "QuickBoot"

    const-string v18, "Turning on radio on Subscription"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    const/16 v17, 0x1

    move/from16 v0, v17

    invoke-interface {v10, v0}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_0

    .line 228
    :cond_7
    :goto_4
    const-string v17, "QuickBoot"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "quickboot on:recovered airplanemode: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 230
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v17

    const-string v18, "persist_sys_usb_config"

    invoke-static/range {v17 .. v18}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 231
    .local v13, usbConfig:Ljava/lang/String;
    const-string v17, "sys.usb.config"

    move-object/from16 v0, v17

    invoke-static {v0, v13}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 232
    const-string v17, "QuickBoot"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "quickboot on:recovered usb:"

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 233
    return-void

    .line 224
    .end local v13           #usbConfig:Ljava/lang/String;
    :catch_0
    move-exception v3

    .line 225
    .local v3, ex:Landroid/os/RemoteException;
    const-string v17, "QuickBoot"

    const-string v18, "RemoteException during radio restore"

    move-object/from16 v0, v17

    move-object/from16 v1, v18

    invoke-static {v0, v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_4

    .line 160
    .end local v2           #bluetoothWasOn:I
    .end local v3           #ex:Landroid/os/RemoteException;
    .end local v6           #mAdapter:Landroid/bluetooth/BluetoothAdapter;
    .end local v8           #nfc:Landroid/nfc/INfcAdapter;
    .end local v9           #nfcWasOn:I
    .end local v10           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v11           #radioChannel:I
    .end local v15           #wifiApWasOn:I
    :catch_1
    move-exception v17

    goto/16 :goto_0

    .line 173
    .restart local v15       #wifiApWasOn:I
    :catch_2
    move-exception v17

    goto/16 :goto_1

    .line 186
    .restart local v8       #nfc:Landroid/nfc/INfcAdapter;
    .restart local v9       #nfcWasOn:I
    :catch_3
    move-exception v17

    goto/16 :goto_2
.end method

.method private setHibernateFinishState()V
    .locals 4

    .prologue
    .line 138
    const-string v1, "sys.hibernate.state"

    const-string v2, "unknow"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 139
    .local v0, reason:Ljava/lang/String;
    const-string v1, "sys.hibernate.state"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "-finish"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 140
    return-void
.end method


# virtual methods
.method public quickBootPowerOn()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    .line 61
    iget-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    const-string v2, "power"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    iput-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->mPowerManager:Landroid/os/PowerManager;

    .line 62
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->mHandler:Landroid/os/Handler;

    .line 63
    const-string v1, "service.quickboot.state"

    const-string v2, "2"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 64
    iget-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->mPowerManager:Landroid/os/PowerManager;

    const-string v2, "PhoneWindowManager.mQuitBootWakeLock2"

    invoke-virtual {v1, v3, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v0

    .line 66
    .local v0, mQuitBootWakeLock2:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v1, 0xfa0

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 67
    const-string v1, "chargerQuickboot"

    invoke-static {v1}, Landroid/os/SystemService;->isRunning(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 68
    const-string v1, "chargerQuickboot"

    invoke-static {v1}, Landroid/os/SystemService;->stop(Ljava/lang/String;)V

    .line 69
    const-string v1, "QuickBoot"

    const-string v2, "quickboot stop chargerQuickboot."

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 71
    :cond_0
    iget-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "quick_boot_power_oning"

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 72
    iget-object v1, p0, Lcom/android/internal/policy/impl/QuickBoot;->mHandler:Landroid/os/Handler;

    iget-object v2, p0, Lcom/android/internal/policy/impl/QuickBoot;->playQuickbootAnim:Ljava/lang/Runnable;

    const-wide/16 v3, 0x1

    invoke-virtual {v1, v2, v3, v4}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 73
    return-void
.end method
