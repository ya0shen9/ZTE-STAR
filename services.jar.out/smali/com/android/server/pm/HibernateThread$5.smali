.class Lcom/android/server/pm/HibernateThread$5;
.super Ljava/lang/Thread;
.source "HibernateThread.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/pm/HibernateThread;->shutdownRadios(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/pm/HibernateThread;

.field final synthetic val$done:[Z

.field final synthetic val$endTime:J


# direct methods
.method constructor <init>(Lcom/android/server/pm/HibernateThread;J[Z)V
    .locals 0
    .parameter
    .parameter
    .parameter

    .prologue
    .line 370
    iput-object p1, p0, Lcom/android/server/pm/HibernateThread$5;->this$0:Lcom/android/server/pm/HibernateThread;

    iput-wide p2, p0, Lcom/android/server/pm/HibernateThread$5;->val$endTime:J

    iput-object p4, p0, Lcom/android/server/pm/HibernateThread$5;->val$done:[Z

    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 22

    .prologue
    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/HibernateThread$5;->this$0:Lcom/android/server/pm/HibernateThread;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/pm/HibernateThread;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/HibernateThread;->access$100(Lcom/android/server/pm/HibernateThread;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v14

    .line 375
    .local v14, res:Landroid/content/ContentResolver;
    const-string v18, "gps"

    move-object/from16 v0, v18

    invoke-static {v14, v0}, Landroid/provider/Settings$Secure;->isLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;)Z

    move-result v6

    .line 376
    .local v6, gpsEnabled:Z
    if-eqz v6, :cond_0

    .line 377
    const-string v18, "gps"

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-static {v14, v0, v1}, Landroid/provider/Settings$Secure;->setLocationProviderEnabled(Landroid/content/ContentResolver;Ljava/lang/String;Z)V

    .line 379
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/HibernateThread$5;->this$0:Lcom/android/server/pm/HibernateThread;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/pm/HibernateThread;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/HibernateThread;->access$100(Lcom/android/server/pm/HibernateThread;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "persist.sys.qbGpsWasOn"

    if-eqz v6, :cond_6

    const/16 v18, 0x1

    :goto_0
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 380
    const-string v18, "HibernateThread"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "QuickBoot DOWN Start, gpsEnabled="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    const-string v18, "nfc"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/nfc/INfcAdapter$Stub;->asInterface(Landroid/os/IBinder;)Landroid/nfc/INfcAdapter;

    move-result-object v9

    .line 393
    .local v9, nfc:Landroid/nfc/INfcAdapter;
    if-eqz v9, :cond_1

    :try_start_0
    invoke-interface {v9}, Landroid/nfc/INfcAdapter;->getState()I

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_7

    :cond_1
    const/4 v10, 0x1

    .line 395
    .local v10, nfcOff:Z
    :goto_1
    if-nez v10, :cond_2

    .line 396
    const-string v18, "HibernateThread"

    const-string v19, "Turning off NFC..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v9, v0}, Landroid/nfc/INfcAdapter;->disable(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/HibernateThread$5;->this$0:Lcom/android/server/pm/HibernateThread;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/pm/HibernateThread;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/HibernateThread;->access$100(Lcom/android/server/pm/HibernateThread;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "persist.sys.quickboot.nfcwason"

    if-eqz v10, :cond_8

    const/16 v18, 0x0

    :goto_3
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 404
    const-string v18, "HibernateThread"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "QuickBoot DOWN Start, nfcOff="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 407
    const-string v18, "bluetooth_manager"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/bluetooth/IBluetoothManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/bluetooth/IBluetoothManager;

    move-result-object v3

    .line 411
    .local v3, bluetooth:Landroid/bluetooth/IBluetoothManager;
    if-eqz v3, :cond_3

    :try_start_1
    invoke-interface {v3}, Landroid/bluetooth/IBluetoothManager;->isEnabled()Z

    move-result v18

    if-nez v18, :cond_9

    :cond_3
    const/4 v4, 0x1

    .line 412
    .local v4, bluetoothOff:Z
    :goto_4
    if-nez v4, :cond_4

    .line 413
    const-string v18, "HibernateThread"

    const-string v19, "Disabling Bluetooth..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 414
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v3, v0}, Landroid/bluetooth/IBluetoothManager;->disable(Z)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 420
    :cond_4
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/HibernateThread$5;->this$0:Lcom/android/server/pm/HibernateThread;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/pm/HibernateThread;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/HibernateThread;->access$100(Lcom/android/server/pm/HibernateThread;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "persist.sys.quickboot.btwason"

    if-eqz v4, :cond_a

    const/16 v18, 0x0

    :goto_6
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 422
    const-string v18, "phone"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/ITelephony$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/ITelephony;

    move-result-object v11

    .line 423
    .local v11, phone:Lcom/android/internal/telephony/ITelephony;
    const/4 v12, 0x0

    .line 425
    .local v12, radioChannel:I
    const/4 v13, 0x1

    .line 426
    .local v13, radioOff:Z
    :try_start_2
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 427
    const-string v18, "phone_msim"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v8

    .line 428
    .local v8, mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    if-eqz v8, :cond_e

    .line 429
    const/4 v7, 0x0

    .local v7, i:I
    :goto_7
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_e

    .line 430
    if-eqz v13, :cond_b

    invoke-interface {v8, v7}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z

    move-result v18

    if-nez v18, :cond_b

    const/4 v13, 0x1

    .line 431
    :goto_8
    invoke-interface {v8, v7}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z

    move-result v18

    if-eqz v18, :cond_5

    .line 432
    const-string v18, "HibernateThread"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Turning off radio on Subscription :"

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 433
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v8, v0, v7}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->setRadio(ZI)Z
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_2

    .line 434
    const/16 v18, 0x1

    shl-int v18, v18, v7

    add-int v12, v12, v18

    .line 429
    :cond_5
    add-int/lit8 v7, v7, 0x1

    goto :goto_7

    .line 379
    .end local v3           #bluetooth:Landroid/bluetooth/IBluetoothManager;
    .end local v4           #bluetoothOff:Z
    .end local v7           #i:I
    .end local v8           #mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .end local v9           #nfc:Landroid/nfc/INfcAdapter;
    .end local v10           #nfcOff:Z
    .end local v11           #phone:Lcom/android/internal/telephony/ITelephony;
    .end local v12           #radioChannel:I
    .end local v13           #radioOff:Z
    :cond_6
    const/16 v18, 0x0

    goto/16 :goto_0

    .line 393
    .restart local v9       #nfc:Landroid/nfc/INfcAdapter;
    :cond_7
    const/4 v10, 0x0

    goto/16 :goto_1

    .line 399
    :catch_0
    move-exception v5

    .line 400
    .local v5, ex:Landroid/os/RemoteException;
    const-string v18, "HibernateThread"

    const-string v19, "RemoteException during NFC shutdown"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 401
    const/4 v10, 0x1

    .restart local v10       #nfcOff:Z
    goto/16 :goto_2

    .line 403
    .end local v5           #ex:Landroid/os/RemoteException;
    :cond_8
    const/16 v18, 0x1

    goto/16 :goto_3

    .line 411
    .restart local v3       #bluetooth:Landroid/bluetooth/IBluetoothManager;
    :cond_9
    const/4 v4, 0x0

    goto/16 :goto_4

    .line 416
    :catch_1
    move-exception v5

    .line 417
    .restart local v5       #ex:Landroid/os/RemoteException;
    const-string v18, "HibernateThread"

    const-string v19, "RemoteException during bluetooth shutdown"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 418
    const/4 v4, 0x1

    .restart local v4       #bluetoothOff:Z
    goto/16 :goto_5

    .line 420
    .end local v5           #ex:Landroid/os/RemoteException;
    :cond_a
    const/16 v18, 0x1

    goto/16 :goto_6

    .line 430
    .restart local v7       #i:I
    .restart local v8       #mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .restart local v11       #phone:Lcom/android/internal/telephony/ITelephony;
    .restart local v12       #radioChannel:I
    .restart local v13       #radioOff:Z
    :cond_b
    const/4 v13, 0x0

    goto :goto_8

    .line 439
    .end local v7           #i:I
    .end local v8           #mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_c
    if-eqz v11, :cond_d

    :try_start_3
    invoke-interface {v11}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z

    move-result v18

    if-nez v18, :cond_16

    :cond_d
    const/4 v13, 0x1

    .line 440
    :goto_9
    if-nez v13, :cond_e

    .line 441
    const-string v18, "HibernateThread"

    const-string v19, "Turning off radio..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v11, v0}, Lcom/android/internal/telephony/ITelephony;->setRadio(Z)Z
    :try_end_3
    .catch Landroid/os/RemoteException; {:try_start_3 .. :try_end_3} :catch_2

    .line 443
    const/4 v12, 0x1

    .line 451
    :cond_e
    :goto_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/HibernateThread$5;->this$0:Lcom/android/server/pm/HibernateThread;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/pm/HibernateThread;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/HibernateThread;->access$100(Lcom/android/server/pm/HibernateThread;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v18

    const-string v19, "persist.sys.quickboot.radiowason"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v12}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 453
    const-string v18, "wifi"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Landroid/net/wifi/IWifiManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/net/wifi/IWifiManager;

    move-result-object v15

    .line 455
    .local v15, wifi:Landroid/net/wifi/IWifiManager;
    if-eqz v15, :cond_18

    .line 456
    :try_start_4
    invoke-interface {v15}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I

    move-result v18

    const/16 v19, 0x3

    move/from16 v0, v18

    move/from16 v1, v19

    if-eq v0, v1, :cond_17

    const/16 v17, 0x1

    .line 460
    .local v17, wifiOff:Z
    :goto_b
    if-nez v17, :cond_f

    .line 461
    const-string v18, "HibernateThread"

    const-string v19, "set wifi disabled"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    const/16 v18, 0x0

    move/from16 v0, v18

    invoke-interface {v15, v0}, Landroid/net/wifi/IWifiManager;->setWifiEnabled(Z)Z
    :try_end_4
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_3

    .line 468
    :cond_f
    :goto_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/HibernateThread$5;->this$0:Lcom/android/server/pm/HibernateThread;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/pm/HibernateThread;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/HibernateThread;->access$100(Lcom/android/server/pm/HibernateThread;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "persist.sys.quickboot.wifiwason"

    if-eqz v17, :cond_19

    const/16 v18, 0x0

    :goto_d
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 471
    if-eqz v15, :cond_1b

    .line 472
    :try_start_5
    invoke-interface {v15}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I

    move-result v18

    const/16 v19, 0xb

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1a

    const/16 v16, 0x1

    .line 476
    .local v16, wifiApOff:Z
    :goto_e
    if-nez v16, :cond_1c

    .line 477
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/HibernateThread$5;->this$0:Lcom/android/server/pm/HibernateThread;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/pm/HibernateThread;->DEBUG:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/HibernateThread;->access$200(Lcom/android/server/pm/HibernateThread;)Z

    move-result v18

    if-eqz v18, :cond_10

    .line 478
    const-string v18, "HibernateThread"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "set wifi ap disabled "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-interface {v15}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    :cond_10
    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object/from16 v0, v18

    move/from16 v1, v19

    invoke-interface {v15, v0, v1}, Landroid/net/wifi/IWifiManager;->setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_4

    .line 489
    :cond_11
    :goto_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/HibernateThread$5;->this$0:Lcom/android/server/pm/HibernateThread;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/pm/HibernateThread;->mContext:Landroid/content/Context;
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/HibernateThread;->access$100(Lcom/android/server/pm/HibernateThread;)Landroid/content/Context;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v19

    const-string v20, "persist.sys.quickboot.wifiapwason"

    if-eqz v16, :cond_1d

    const/16 v18, 0x0

    :goto_10
    move-object/from16 v0, v19

    move-object/from16 v1, v20

    move/from16 v2, v18

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 493
    const-string v18, "HibernateThread"

    const-string v19, "Waiting for Bluetooth Radio and Wifi..."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 495
    :goto_11
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/pm/HibernateThread$5;->val$endTime:J

    move-wide/from16 v20, v0

    cmp-long v18, v18, v20

    if-gez v18, :cond_25

    .line 509
    if-nez v17, :cond_13

    .line 510
    const-string v18, "HibernateThread"

    const-string v19, "wait wifi"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 512
    if-eqz v15, :cond_12

    :try_start_6
    invoke-interface {v15}, Landroid/net/wifi/IWifiManager;->getWifiEnabledState()I
    :try_end_6
    .catch Landroid/os/RemoteException; {:try_start_6 .. :try_end_6} :catch_5

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1e

    :cond_12
    const/16 v17, 0x1

    .line 520
    :cond_13
    :goto_12
    if-nez v16, :cond_15

    .line 522
    if-eqz v15, :cond_14

    :try_start_7
    invoke-interface {v15}, Landroid/net/wifi/IWifiManager;->getWifiApEnabledState()I

    move-result v18

    const/16 v19, 0xb

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_1f

    :cond_14
    const/16 v16, 0x1

    .line 524
    :goto_13
    if-nez v16, :cond_15

    .line 525
    const-string v18, "HibernateThread"

    const-string v19, "waiting wifi ap disabled"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_7
    .catch Landroid/os/RemoteException; {:try_start_7 .. :try_end_7} :catch_6

    .line 534
    :cond_15
    :goto_14
    if-nez v13, :cond_23

    .line 535
    const-string v18, "HibernateThread"

    const-string v19, "wait radio"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    :try_start_8
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/MSimTelephonyManager;->isMultiSimEnabled()Z

    move-result v18

    if-eqz v18, :cond_21

    .line 538
    const/4 v13, 0x1

    .line 539
    const-string v18, "phone_msim"

    invoke-static/range {v18 .. v18}, Landroid/os/ServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v18

    invoke-static/range {v18 .. v18}, Lcom/android/internal/telephony/msim/ITelephonyMSim$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/msim/ITelephonyMSim;

    move-result-object v8

    .line 541
    .restart local v8       #mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    const/4 v7, 0x0

    .restart local v7       #i:I
    :goto_15
    invoke-static {}, Landroid/telephony/MSimTelephonyManager;->getDefault()Landroid/telephony/MSimTelephonyManager;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Landroid/telephony/MSimTelephonyManager;->getPhoneCount()I

    move-result v18

    move/from16 v0, v18

    if-ge v7, v0, :cond_23

    .line 542
    const-string v18, "HibernateThread"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "wait radio channel: "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 543
    if-eqz v13, :cond_20

    invoke-interface {v8, v7}, Lcom/android/internal/telephony/msim/ITelephonyMSim;->isRadioOn(I)Z
    :try_end_8
    .catch Landroid/os/RemoteException; {:try_start_8 .. :try_end_8} :catch_7

    move-result v18

    if-nez v18, :cond_20

    const/4 v13, 0x1

    .line 541
    :goto_16
    add-int/lit8 v7, v7, 0x1

    goto :goto_15

    .line 439
    .end local v7           #i:I
    .end local v8           #mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    .end local v15           #wifi:Landroid/net/wifi/IWifiManager;
    .end local v16           #wifiApOff:Z
    .end local v17           #wifiOff:Z
    :cond_16
    const/4 v13, 0x0

    goto/16 :goto_9

    .line 446
    :catch_2
    move-exception v5

    .line 447
    .restart local v5       #ex:Landroid/os/RemoteException;
    const/4 v12, 0x0

    .line 448
    const/4 v13, 0x1

    .line 449
    const-string v18, "HibernateThread"

    const-string v19, "RemoteException during radio shutdown"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_a

    .line 456
    .end local v5           #ex:Landroid/os/RemoteException;
    .restart local v15       #wifi:Landroid/net/wifi/IWifiManager;
    :cond_17
    const/16 v17, 0x0

    goto/16 :goto_b

    .line 458
    :cond_18
    const/16 v17, 0x1

    .restart local v17       #wifiOff:Z
    goto/16 :goto_b

    .line 465
    .end local v17           #wifiOff:Z
    :catch_3
    move-exception v5

    .line 466
    .restart local v5       #ex:Landroid/os/RemoteException;
    const/16 v17, 0x1

    .restart local v17       #wifiOff:Z
    goto/16 :goto_c

    .line 468
    .end local v5           #ex:Landroid/os/RemoteException;
    :cond_19
    const/16 v18, 0x1

    goto/16 :goto_d

    .line 472
    :cond_1a
    const/16 v16, 0x0

    goto/16 :goto_e

    .line 474
    :cond_1b
    const/16 v16, 0x1

    .restart local v16       #wifiApOff:Z
    goto/16 :goto_e

    .line 482
    :cond_1c
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/HibernateThread$5;->this$0:Lcom/android/server/pm/HibernateThread;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/pm/HibernateThread;->DEBUG:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/HibernateThread;->access$200(Lcom/android/server/pm/HibernateThread;)Z

    move-result v18

    if-eqz v18, :cond_11

    .line 483
    const-string v18, "HibernateThread"

    const-string v19, "wifi ap is disabled"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_9
    .catch Landroid/os/RemoteException; {:try_start_9 .. :try_end_9} :catch_4

    goto/16 :goto_f

    .line 486
    .end local v16           #wifiApOff:Z
    :catch_4
    move-exception v5

    .line 487
    .restart local v5       #ex:Landroid/os/RemoteException;
    const/16 v16, 0x0

    .restart local v16       #wifiApOff:Z
    goto/16 :goto_f

    .line 489
    .end local v5           #ex:Landroid/os/RemoteException;
    :cond_1d
    const/16 v18, 0x1

    goto/16 :goto_10

    .line 512
    :cond_1e
    const/16 v17, 0x0

    goto/16 :goto_12

    .line 514
    :catch_5
    move-exception v5

    .line 515
    .restart local v5       #ex:Landroid/os/RemoteException;
    const-string v18, "HibernateThread"

    const-string v19, "RemoteException during wifi shutdown"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 516
    const/16 v17, 0x1

    goto/16 :goto_12

    .line 522
    .end local v5           #ex:Landroid/os/RemoteException;
    :cond_1f
    const/16 v16, 0x0

    goto/16 :goto_13

    .line 528
    :catch_6
    move-exception v5

    .line 529
    .restart local v5       #ex:Landroid/os/RemoteException;
    const-string v18, "HibernateThread"

    const-string v19, "RemoteException during wifi ap shutdown"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 530
    const/16 v16, 0x0

    goto/16 :goto_14

    .line 543
    .end local v5           #ex:Landroid/os/RemoteException;
    .restart local v7       #i:I
    .restart local v8       #mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_20
    const/4 v13, 0x0

    goto :goto_16

    .line 546
    .end local v7           #i:I
    .end local v8           #mphone:Lcom/android/internal/telephony/msim/ITelephonyMSim;
    :cond_21
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/HibernateThread$5;->this$0:Lcom/android/server/pm/HibernateThread;

    move-object/from16 v18, v0

    #getter for: Lcom/android/server/pm/HibernateThread;->DEBUG:Z
    invoke-static/range {v18 .. v18}, Lcom/android/server/pm/HibernateThread;->access$200(Lcom/android/server/pm/HibernateThread;)Z

    move-result v18

    if-eqz v18, :cond_22

    .line 547
    const-string v18, "HibernateThread"

    const-string v19, "wait radio only one radio."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    :cond_22
    invoke-interface {v11}, Lcom/android/internal/telephony/ITelephony;->isRadioOn()Z
    :try_end_a
    .catch Landroid/os/RemoteException; {:try_start_a .. :try_end_a} :catch_7

    move-result v18

    if-nez v18, :cond_26

    const/4 v13, 0x1

    .line 558
    :cond_23
    :goto_17
    if-nez v10, :cond_24

    .line 560
    :try_start_b
    invoke-interface {v9}, Landroid/nfc/INfcAdapter;->getState()I
    :try_end_b
    .catch Landroid/os/RemoteException; {:try_start_b .. :try_end_b} :catch_8

    move-result v18

    const/16 v19, 0x1

    move/from16 v0, v18

    move/from16 v1, v19

    if-ne v0, v1, :cond_27

    const/4 v10, 0x1

    .line 565
    :goto_18
    if-eqz v13, :cond_24

    .line 566
    const-string v18, "HibernateThread"

    const-string v19, "NFC turned off."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 570
    :cond_24
    if-eqz v13, :cond_28

    if-eqz v17, :cond_28

    if-eqz v16, :cond_28

    if-eqz v10, :cond_28

    .line 571
    const-string v18, "HibernateThread"

    const-string v19, "Bluetooth Radio and Wifi nfc shutdown complete."

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/server/pm/HibernateThread$5;->val$done:[Z

    move-object/from16 v18, v0

    const/16 v19, 0x0

    const/16 v20, 0x1

    aput-boolean v20, v18, v19

    .line 577
    :cond_25
    return-void

    .line 549
    :cond_26
    const/4 v13, 0x0

    goto :goto_17

    .line 551
    :catch_7
    move-exception v5

    .line 552
    .restart local v5       #ex:Landroid/os/RemoteException;
    const-string v18, "HibernateThread"

    const-string v19, "RemoteException during radio shutdown"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 553
    const/4 v13, 0x1

    goto :goto_17

    .line 560
    .end local v5           #ex:Landroid/os/RemoteException;
    :cond_27
    const/4 v10, 0x0

    goto :goto_18

    .line 561
    :catch_8
    move-exception v5

    .line 562
    .restart local v5       #ex:Landroid/os/RemoteException;
    const-string v18, "HibernateThread"

    const-string v19, "RemoteException during NFC shutdown"

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-static {v0, v1, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 563
    const/4 v10, 0x1

    goto :goto_18

    .line 575
    .end local v5           #ex:Landroid/os/RemoteException;
    :cond_28
    const-wide/16 v18, 0x1f4

    invoke-static/range {v18 .. v19}, Landroid/os/SystemClock;->sleep(J)V

    goto/16 :goto_11
.end method
