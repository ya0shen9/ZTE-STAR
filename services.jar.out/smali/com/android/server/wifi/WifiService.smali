.class public final Lcom/android/server/wifi/WifiService;
.super Landroid/net/wifi/IWifiManager$Stub;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/wifi/WifiService$Multicaster;,
        Lcom/android/server/wifi/WifiService$DeathRecipient;,
        Lcom/android/server/wifi/WifiService$LockList;,
        Lcom/android/server/wifi/WifiService$WifiLock;,
        Lcom/android/server/wifi/WifiService$TdlsTask;,
        Lcom/android/server/wifi/WifiService$TdlsTaskParams;,
        Lcom/android/server/wifi/WifiService$BatchedScanRequest;,
        Lcom/android/server/wifi/WifiService$PPPOEHandler;,
        Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;,
        Lcom/android/server/wifi/WifiService$ClientHandler;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "WIFI:FRAMEWORK:WifiService"


# instance fields
.field private final mAppOps:Landroid/app/AppOpsManager;

.field final mBatchedScanSupported:Z

.field private final mBatchedScanners:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiService$BatchedScanRequest;",
            ">;"
        }
    .end annotation
.end field

.field private final mBatteryStats:Lcom/android/internal/app/IBatteryStats;

.field private mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

.field private final mContext:Landroid/content/Context;

.field private mFullHighPerfLocksAcquired:I

.field private mFullHighPerfLocksReleased:I

.field private mFullLocksAcquired:I

.field private mFullLocksReleased:I

.field private mInterfaceName:Ljava/lang/String;

.field final mLocks:Lcom/android/server/wifi/WifiService$LockList;

.field private mMulticastDisabled:I

.field private mMulticastEnabled:I

.field private final mMulticasters:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/server/wifi/WifiService$Multicaster;",
            ">;"
        }
    .end annotation
.end field

.field private mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

.field mPPPOEHandler:Lcom/android/server/wifi/WifiService$PPPOEHandler;

.field private mPPPOEService:Lcom/android/server/PPPOEService;

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private mScanLocksAcquired:I

.field private mScanLocksReleased:I

.field final mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

.field private mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

.field private mWifiController:Lcom/android/server/wifi/WifiController;

.field final mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

.field private mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

.field mWifiStateMachineHandler:Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;

.field private mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 5
    .parameter "context"

    .prologue
    .line 319
    invoke-direct {p0}, Landroid/net/wifi/IWifiManager$Stub;-><init>()V

    .line 114
    new-instance v1, Lcom/android/server/wifi/WifiService$LockList;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiService$LockList;-><init>(Lcom/android/server/wifi/WifiService;Lcom/android/server/wifi/WifiService$1;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    .line 123
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    .line 442
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    .line 1216
    new-instance v1, Lcom/android/server/wifi/WifiService$2;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiService$2;-><init>(Lcom/android/server/wifi/WifiService;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 320
    iput-object p1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    .line 322
    const-string v1, "wifi.interface"

    const-string v2, "wlan0"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiService;->mInterfaceName:Ljava/lang/String;

    .line 324
    new-instance v1, Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    .line 325
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->enableRssiPolling(Z)V

    .line 326
    invoke-static {}, Lcom/android/server/am/BatteryStatsService;->getService()Lcom/android/internal/app/IBatteryStats;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    .line 327
    const-string v1, "appops"

    invoke-virtual {p1, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/AppOpsManager;

    iput-object v1, p0, Lcom/android/server/wifi/WifiService;->mAppOps:Landroid/app/AppOpsManager;

    .line 329
    new-instance v1, Lcom/android/server/wifi/WifiNotificationController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wifi/WifiNotificationController;-><init>(Landroid/content/Context;Landroid/net/wifi/WifiStateMachine;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiService;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    .line 330
    new-instance v1, Lcom/android/server/wifi/WifiTrafficPoller;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mInterfaceName:Ljava/lang/String;

    invoke-direct {v1, v2, v3}, Lcom/android/server/wifi/WifiTrafficPoller;-><init>(Landroid/content/Context;Ljava/lang/String;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiService;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    .line 331
    new-instance v1, Lcom/android/server/wifi/WifiSettingsStore;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2}, Lcom/android/server/wifi/WifiSettingsStore;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    .line 333
    new-instance v0, Landroid/os/HandlerThread;

    const-string v1, "WifiService"

    invoke-direct {v0, v1}, Landroid/os/HandlerThread;-><init>(Ljava/lang/String;)V

    .line 334
    .local v0, wifiThread:Landroid/os/HandlerThread;
    invoke-virtual {v0}, Landroid/os/HandlerThread;->start()V

    .line 335
    new-instance v1, Lcom/android/server/wifi/WifiService$ClientHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiService$ClientHandler;-><init>(Lcom/android/server/wifi/WifiService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    .line 336
    new-instance v1, Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;-><init>(Lcom/android/server/wifi/WifiService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineHandler:Lcom/android/server/wifi/WifiService$WifiStateMachineHandler;

    .line 337
    new-instance v1, Lcom/android/server/wifi/WifiController;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v3

    invoke-direct {v1, v2, p0, v3}, Lcom/android/server/wifi/WifiController;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    .line 338
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiController;->start()V

    .line 339
    new-instance v1, Lcom/android/server/wifi/WifiService$PPPOEHandler;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, p0, v2}, Lcom/android/server/wifi/WifiService$PPPOEHandler;-><init>(Lcom/android/server/wifi/WifiService;Landroid/os/Looper;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiService;->mPPPOEHandler:Lcom/android/server/wifi/WifiService$PPPOEHandler;

    .line 341
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1110019

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v1

    iput-boolean v1, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanSupported:Z

    .line 344
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->registerForScanModeChange()V

    .line 345
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    new-instance v2, Lcom/android/server/wifi/WifiService$1;

    invoke-direct {v2, p0}, Lcom/android/server/wifi/WifiService$1;-><init>(Lcom/android/server/wifi/WifiService;)V

    new-instance v3, Landroid/content/IntentFilter;

    const-string v4, "android.intent.action.AIRPLANE_MODE"

    invoke-direct {v3, v4}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 359
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->registerForBroadcasts()V

    .line 360
    return-void
.end method

.method static synthetic access$100(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiTrafficPoller;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/server/wifi/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/wifi/WifiService;->mFullLocksAcquired:I

    return v0
.end method

.method static synthetic access$1100(Lcom/android/server/wifi/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/wifi/WifiService;->mFullLocksReleased:I

    return v0
.end method

.method static synthetic access$1600(Lcom/android/server/wifi/WifiService;)Ljava/util/List;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    return-object v0
.end method

.method static synthetic access$1700(Lcom/android/server/wifi/WifiService;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2}, Lcom/android/server/wifi/WifiService;->removeMulticasterLocked(II)V

    return-void
.end method

.method static synthetic access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$302(Lcom/android/server/wifi/WifiService;Lcom/android/internal/util/AsyncChannel;)Lcom/android/internal/util/AsyncChannel;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    iput-object p1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    return-object p1
.end method

.method static synthetic access$400(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    return-object v0
.end method

.method static synthetic access$500(Lcom/android/server/wifi/WifiService;Landroid/net/wifi/BatchedScanSettings;II)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 106
    invoke-direct {p0, p1, p2, p3}, Lcom/android/server/wifi/WifiService;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;II)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/wifi/WifiService;Landroid/os/IBinder;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 106
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$800(Lcom/android/server/wifi/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksAcquired:I

    return v0
.end method

.method static synthetic access$900(Lcom/android/server/wifi/WifiService;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 106
    iget v0, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksReleased:I

    return v0
.end method

.method private acquireWifiLockLocked(Lcom/android/server/wifi/WifiService$WifiLock;)Z
    .locals 6
    .parameter "wifiLock"

    .prologue
    .line 1478
    const-string v3, "WIFI:FRAMEWORK:WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "acquireWifiLockLocked: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1480
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    #calls: Lcom/android/server/wifi/WifiService$LockList;->addLock(Lcom/android/server/wifi/WifiService$WifiLock;)V
    invoke-static {v3, p1}, Lcom/android/server/wifi/WifiService$LockList;->access$1200(Lcom/android/server/wifi/WifiService$LockList;Lcom/android/server/wifi/WifiService$WifiLock;)V

    .line 1482
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1484
    .local v1, ident:J
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService;->noteAcquireWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V

    .line 1485
    iget v3, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mMode:I

    packed-switch v3, :pswitch_data_0

    .line 1497
    :goto_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v4, 0x26006

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1498
    const/4 v3, 0x1

    .line 1502
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1500
    return v3

    .line 1487
    :pswitch_0
    :try_start_1
    iget v3, p0, Lcom/android/server/wifi/WifiService;->mFullLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiService;->mFullLocksAcquired:I

    goto :goto_0

    .line 1499
    :catch_0
    move-exception v0

    .line 1500
    .local v0, e:Landroid/os/RemoteException;
    const/4 v3, 0x0

    goto :goto_1

    .line 1490
    .end local v0           #e:Landroid/os/RemoteException;
    :pswitch_1
    iget v3, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksAcquired:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1502
    :catchall_0
    move-exception v3

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1494
    :pswitch_2
    :try_start_2
    iget v3, p0, Lcom/android/server/wifi/WifiService;->mScanLocksAcquired:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiService;->mScanLocksAcquired:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 1485
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private enforceAccessPermission()V
    .locals 3

    .prologue
    .line 603
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.ACCESS_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 605
    return-void
.end method

.method private enforceChangePermission()V
    .locals 3

    .prologue
    .line 608
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 611
    return-void
.end method

.method private enforceConnectivityInternalPermission()V
    .locals 3

    .prologue
    .line 626
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CONNECTIVITY_INTERNAL"

    const-string v2, "ConnectivityService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    return-void
.end method

.method private enforceMulticastChangePermission()V
    .locals 3

    .prologue
    .line 620
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.CHANGE_WIFI_MULTICAST_STATE"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 623
    return-void
.end method

.method private enforceWorkSourcePermission()V
    .locals 3

    .prologue
    .line 614
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const-string v2, "WifiService"

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 617
    return-void
.end method

.method private noteAcquireWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V
    .locals 2
    .parameter "wifiLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1458
    iget v0, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 1465
    :goto_0
    return-void

    .line 1462
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockAcquiredFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 1458
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private noteReleaseWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V
    .locals 2
    .parameter "wifiLock"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 1468
    iget v0, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 1475
    :goto_0
    return-void

    .line 1472
    :pswitch_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    iget-object v1, p1, Lcom/android/server/wifi/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    invoke-interface {v0, v1}, Lcom/android/internal/app/IBatteryStats;->noteFullWifiLockReleasedFromSource(Landroid/os/WorkSource;)V

    goto :goto_0

    .line 1468
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 1279
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 1280
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.SCREEN_ON"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1281
    const-string v1, "android.intent.action.USER_PRESENT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1282
    const-string v1, "android.intent.action.SCREEN_OFF"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1283
    const-string v1, "android.intent.action.BATTERY_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1284
    const-string v1, "android.net.wifi.STATE_CHANGE"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1285
    const-string v1, "android.bluetooth.adapter.action.CONNECTION_STATE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1286
    const-string v1, "android.intent.action.EMERGENCY_CALLBACK_MODE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1287
    const-string v1, "android.net.wifi.HOTSPOT_SLEEP_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1288
    const-string v1, "android.net.wifi.APSTA_ENABLED_FAILTURE_CHANGED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 1289
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 1290
    return-void
.end method

.method private registerForScanModeChange()V
    .locals 4

    .prologue
    .line 1265
    new-instance v0, Lcom/android/server/wifi/WifiService$3;

    const/4 v1, 0x0

    invoke-direct {v0, p0, v1}, Lcom/android/server/wifi/WifiService$3;-><init>(Lcom/android/server/wifi/WifiService;Landroid/os/Handler;)V

    .line 1273
    .local v0, contentObserver:Landroid/database/ContentObserver;
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "wifi_scan_always_enabled"

    invoke-static {v2}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3, v0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1276
    return-void
.end method

.method private releaseWifiLockLocked(Landroid/os/IBinder;)Z
    .locals 7
    .parameter "lock"

    .prologue
    .line 1543
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    #calls: Lcom/android/server/wifi/WifiService$LockList;->removeLock(Landroid/os/IBinder;)Lcom/android/server/wifi/WifiService$WifiLock;
    invoke-static {v4, p1}, Lcom/android/server/wifi/WifiService$LockList;->access$1500(Lcom/android/server/wifi/WifiService$LockList;Landroid/os/IBinder;)Lcom/android/server/wifi/WifiService$WifiLock;

    move-result-object v3

    .line 1545
    .local v3, wifiLock:Lcom/android/server/wifi/WifiService$WifiLock;
    const-string v4, "WIFI:FRAMEWORK:WifiService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "releaseWifiLockLocked: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1547
    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 1549
    .local v0, hadLock:Z
    :goto_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 1551
    .local v1, ident:J
    if-eqz v0, :cond_0

    .line 1552
    :try_start_0
    invoke-direct {p0, v3}, Lcom/android/server/wifi/WifiService;->noteReleaseWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V

    .line 1553
    iget v4, v3, Lcom/android/server/wifi/WifiService$WifiLock;->mMode:I

    packed-switch v4, :pswitch_data_0

    .line 1564
    :goto_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v5, 0x26006

    invoke-virtual {v4, v5}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1568
    :cond_0
    :goto_2
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1571
    return v0

    .line 1547
    .end local v0           #hadLock:Z
    .end local v1           #ident:J
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 1555
    .restart local v0       #hadLock:Z
    .restart local v1       #ident:J
    :pswitch_0
    :try_start_1
    iget v4, p0, Lcom/android/server/wifi/WifiService;->mFullLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiService;->mFullLocksReleased:I

    goto :goto_1

    .line 1566
    :catch_0
    move-exception v4

    goto :goto_2

    .line 1558
    :pswitch_1
    iget v4, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksReleased:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_1

    .line 1568
    :catchall_0
    move-exception v4

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v4

    .line 1561
    :pswitch_2
    :try_start_2
    iget v4, p0, Lcom/android/server/wifi/WifiService;->mScanLocksReleased:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiService;->mScanLocksReleased:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_1

    .line 1553
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method private removeMulticasterLocked(II)V
    .locals 4
    .parameter "i"
    .parameter "uid"

    .prologue
    .line 1677
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiService$Multicaster;

    .line 1679
    .local v2, removed:Lcom/android/server/wifi/WifiService$Multicaster;
    if-eqz v2, :cond_0

    .line 1680
    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService$Multicaster;->unlinkDeathRecipient()V

    .line 1682
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-nez v3, :cond_1

    .line 1683
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    .line 1686
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1688
    .local v0, ident:J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, p2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastDisabled(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1691
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1693
    return-void

    .line 1691
    :catchall_0
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1689
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method private resolveBatchedScannersLocked()V
    .locals 20

    .prologue
    .line 525
    new-instance v14, Landroid/net/wifi/BatchedScanSettings;

    invoke-direct {v14}, Landroid/net/wifi/BatchedScanSettings;-><init>()V

    .line 526
    .local v14, setting:Landroid/net/wifi/BatchedScanSettings;
    const/4 v12, 0x0

    .line 527
    .local v12, responsibleWorkSource:Landroid/os/WorkSource;
    const/4 v11, 0x0

    .line 528
    .local v11, responsibleUid:I
    const-wide/16 v9, 0x0

    .line 530
    .local v9, responsibleCsph:D
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v15

    if-nez v15, :cond_0

    .line 531
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    invoke-virtual/range {v15 .. v19}, Landroid/net/wifi/WifiStateMachine;->setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;IILandroid/os/WorkSource;)V

    .line 600
    :goto_0
    return-void

    .line 534
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_1
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_13

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lcom/android/server/wifi/WifiService$BatchedScanRequest;

    .line 535
    .local v8, r:Lcom/android/server/wifi/WifiService$BatchedScanRequest;
    iget-object v13, v8, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->settings:Landroid/net/wifi/BatchedScanSettings;

    .line 542
    .local v13, s:Landroid/net/wifi/BatchedScanSettings;
    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v15, :cond_2

    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->isEmpty()Z

    move-result v15

    if-eqz v15, :cond_e

    .line 544
    :cond_2
    const/16 v1, 0x14

    .line 552
    .local v1, currentChannelCount:I
    :cond_3
    :goto_2
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-ne v15, v0, :cond_10

    .line 553
    const/16 v4, 0x1e

    .line 557
    .local v4, currentScanInterval:I
    :goto_3
    mul-int/lit16 v15, v1, 0xe10

    div-int/2addr v15, v4

    int-to-double v2, v15

    .line 559
    .local v2, currentCsph:D
    cmpl-double v15, v2, v9

    if-lez v15, :cond_4

    .line 560
    iget v11, v8, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->uid:I

    .line 561
    iget-object v12, v8, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->workSource:Landroid/os/WorkSource;

    .line 562
    move-wide v9, v2

    .line 565
    :cond_4
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v15, v0, :cond_5

    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_5

    .line 567
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    iput v15, v14, Landroid/net/wifi/BatchedScanSettings;->maxScansPerBatch:I

    .line 569
    :cond_5
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v15, v0, :cond_7

    iget v15, v14, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v15, v0, :cond_6

    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_7

    .line 572
    :cond_6
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    iput v15, v14, Landroid/net/wifi/BatchedScanSettings;->maxApPerScan:I

    .line 574
    :cond_7
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v15, v0, :cond_8

    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-ge v15, v0, :cond_8

    .line 576
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    iput v15, v14, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    .line 578
    :cond_8
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v15, v0, :cond_a

    iget v15, v14, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    const v16, 0x7fffffff

    move/from16 v0, v16

    if-eq v15, v0, :cond_9

    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    iget v0, v14, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    move/from16 v16, v0

    move/from16 v0, v16

    if-le v15, v0, :cond_a

    .line 581
    :cond_9
    iget v15, v13, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    iput v15, v14, Landroid/net/wifi/BatchedScanSettings;->maxApForDistance:I

    .line 583
    :cond_a
    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v15, :cond_11

    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v15

    if-eqz v15, :cond_11

    .line 584
    iget-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v15, :cond_b

    iget-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v15

    if-eqz v15, :cond_1

    .line 585
    :cond_b
    iget-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-nez v15, :cond_c

    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    .line 586
    :cond_c
    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_d
    :goto_4
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v15

    if-eqz v15, :cond_1

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 587
    .local v5, i:Ljava/lang/String;
    iget-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15, v5}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-nez v15, :cond_d

    iget-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15, v5}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_4

    .line 546
    .end local v1           #currentChannelCount:I
    .end local v2           #currentCsph:D
    .end local v4           #currentScanInterval:I
    .end local v5           #i:Ljava/lang/String;
    .end local v7           #i$:Ljava/util/Iterator;
    :cond_e
    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v1

    .line 548
    .restart local v1       #currentChannelCount:I
    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    const-string v16, "A"

    invoke-interface/range {v15 .. v16}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_f

    add-int/lit8 v1, v1, 0x8

    .line 549
    :cond_f
    iget-object v15, v13, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    const-string v16, "B"

    invoke-interface/range {v15 .. v16}, Ljava/util/Collection;->contains(Ljava/lang/Object;)Z

    move-result v15

    if-eqz v15, :cond_3

    add-int/lit8 v1, v1, 0xa

    goto/16 :goto_2

    .line 555
    :cond_10
    iget v4, v13, Landroid/net/wifi/BatchedScanSettings;->scanIntervalSec:I

    .restart local v4       #currentScanInterval:I
    goto/16 :goto_3

    .line 591
    .restart local v2       #currentCsph:D
    :cond_11
    iget-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    if-eqz v15, :cond_12

    iget-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    invoke-interface {v15}, Ljava/util/Collection;->size()I

    move-result v15

    if-eqz v15, :cond_1

    .line 592
    :cond_12
    new-instance v15, Ljava/util/ArrayList;

    invoke-direct {v15}, Ljava/util/ArrayList;-><init>()V

    iput-object v15, v14, Landroid/net/wifi/BatchedScanSettings;->channelSet:Ljava/util/Collection;

    goto/16 :goto_1

    .line 597
    .end local v1           #currentChannelCount:I
    .end local v2           #currentCsph:D
    .end local v4           #currentScanInterval:I
    .end local v8           #r:Lcom/android/server/wifi/WifiService$BatchedScanRequest;
    .end local v13           #s:Landroid/net/wifi/BatchedScanSettings;
    :cond_13
    invoke-virtual {v14}, Landroid/net/wifi/BatchedScanSettings;->constrain()V

    .line 598
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    double-to-int v0, v9

    move/from16 v16, v0

    move/from16 v0, v16

    invoke-virtual {v15, v14, v11, v0, v12}, Landroid/net/wifi/WifiStateMachine;->setBatchedScanSettings(Landroid/net/wifi/BatchedScanSettings;IILandroid/os/WorkSource;)V

    goto/16 :goto_0
.end method

.method private stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;II)V
    .locals 5
    .parameter "settings"
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 507
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 508
    .local v0, found:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/server/wifi/WifiService$BatchedScanRequest;>;"
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    monitor-enter v4

    .line 509
    :try_start_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiService$BatchedScanRequest;

    .line 510
    .local v2, r:Lcom/android/server/wifi/WifiService$BatchedScanRequest;
    invoke-virtual {v2, p2, p3}, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->isSameApp(II)Z

    move-result v3

    if-eqz v3, :cond_0

    if-eqz p1, :cond_1

    iget-object v3, v2, Lcom/android/server/wifi/WifiService$BatchedScanRequest;->settings:Landroid/net/wifi/BatchedScanSettings;

    invoke-virtual {p1, v3}, Landroid/net/wifi/BatchedScanSettings;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 511
    :cond_1
    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 512
    if-eqz p1, :cond_0

    .line 515
    .end local v2           #r:Lcom/android/server/wifi/WifiService$BatchedScanRequest;
    :cond_2
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v1

    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_3

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/wifi/WifiService$BatchedScanRequest;

    .line 516
    .restart local v2       #r:Lcom/android/server/wifi/WifiService$BatchedScanRequest;
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    invoke-interface {v3, v2}, Ljava/util/List;->remove(Ljava/lang/Object;)Z

    goto :goto_0

    .line 521
    .end local v1           #i$:Ljava/util/Iterator;
    .end local v2           #r:Lcom/android/server/wifi/WifiService$BatchedScanRequest;
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3

    .line 518
    .restart local v1       #i$:Ljava/util/Iterator;
    :cond_3
    :try_start_1
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-eqz v3, :cond_4

    .line 519
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->resolveBatchedScannersLocked()V

    .line 521
    :cond_4
    monitor-exit v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 522
    return-void
.end method


# virtual methods
.method public acquireMulticastLock(Landroid/os/IBinder;Ljava/lang/String;)V
    .locals 6
    .parameter "binder"
    .parameter "tag"

    .prologue
    .line 1637
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceMulticastChangePermission()V

    .line 1639
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v4

    .line 1640
    :try_start_0
    iget v3, p0, Lcom/android/server/wifi/WifiService;->mMulticastEnabled:I

    add-int/lit8 v3, v3, 0x1

    iput v3, p0, Lcom/android/server/wifi/WifiService;->mMulticastEnabled:I

    .line 1641
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    new-instance v5, Lcom/android/server/wifi/WifiService$Multicaster;

    invoke-direct {v5, p0, p2, p1}, Lcom/android/server/wifi/WifiService$Multicaster;-><init>(Lcom/android/server/wifi/WifiService;Ljava/lang/String;Landroid/os/IBinder;)V

    invoke-interface {v3, v5}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 1646
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->stopFilteringMulticastV4Packets()V

    .line 1647
    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1649
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 1650
    .local v2, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1652
    .local v0, ident:J
    :try_start_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatteryStats:Lcom/android/internal/app/IBatteryStats;

    invoke-interface {v3, v2}, Lcom/android/internal/app/IBatteryStats;->noteWifiMulticastEnabled(I)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    .line 1655
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1657
    return-void

    .line 1647
    .end local v0           #ident:J
    .end local v2           #uid:I
    :catchall_0
    move-exception v3

    :try_start_2
    monitor-exit v4
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    throw v3

    .line 1655
    .restart local v0       #ident:J
    .restart local v2       #uid:I
    :catchall_1
    move-exception v3

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3

    .line 1653
    :catch_0
    move-exception v3

    goto :goto_0
.end method

.method public acquireWifiLock(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/WorkSource;)Z
    .locals 6
    .parameter "binder"
    .parameter "lockMode"
    .parameter "tag"
    .parameter "ws"

    .prologue
    .line 1434
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v2, "android.permission.WAKE_LOCK"

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1435
    const/4 v1, 0x1

    if-eq p2, v1, :cond_0

    const/4 v1, 0x2

    if-eq p2, v1, :cond_0

    const/4 v1, 0x3

    if-eq p2, v1, :cond_0

    .line 1438
    const-string v1, "WIFI:FRAMEWORK:WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Illegal argument, lockMode= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1439
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "lockMode="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1442
    :cond_0
    if-eqz p4, :cond_1

    invoke-virtual {p4}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-nez v1, :cond_1

    .line 1443
    const/4 p4, 0x0

    .line 1445
    :cond_1
    if-eqz p4, :cond_2

    .line 1446
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v2

    invoke-virtual {p0, v1, v2}, Lcom/android/server/wifi/WifiService;->enforceWakeSourcePermission(II)V

    .line 1448
    :cond_2
    if-nez p4, :cond_3

    .line 1449
    new-instance p4, Landroid/os/WorkSource;

    .end local p4
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-direct {p4, v1}, Landroid/os/WorkSource;-><init>(I)V

    .line 1451
    .restart local p4
    :cond_3
    new-instance v0, Lcom/android/server/wifi/WifiService$WifiLock;

    move-object v1, p0

    move v2, p2

    move-object v3, p3

    move-object v4, p1

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/server/wifi/WifiService$WifiLock;-><init>(Lcom/android/server/wifi/WifiService;ILjava/lang/String;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 1452
    .local v0, wifiLock:Lcom/android/server/wifi/WifiService$WifiLock;
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    monitor-enter v2

    .line 1453
    :try_start_0
    invoke-direct {p0, v0}, Lcom/android/server/wifi/WifiService;->acquireWifiLockLocked(Lcom/android/server/wifi/WifiService$WifiLock;)Z

    move-result v1

    monitor-exit v2

    return v1

    .line 1454
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public addOrUpdateNetwork(Landroid/net/wifi/WifiConfiguration;)I
    .locals 3
    .parameter "config"

    .prologue
    const/4 v0, -0x1

    .line 790
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 791
    iget-object v1, p1, Landroid/net/wifi/WifiConfiguration;->proxySettings:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    sget-object v2, Landroid/net/wifi/WifiConfiguration$ProxySettings;->PAC:Landroid/net/wifi/WifiConfiguration$ProxySettings;

    if-ne v1, v2, :cond_0

    .line 792
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceConnectivityInternalPermission()V

    .line 794
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 795
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_1

    .line 796
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncAddOrUpdateNetwork(Lcom/android/internal/util/AsyncChannel;Landroid/net/wifi/WifiConfiguration;)I

    move-result v0

    .line 803
    :goto_0
    return v0

    .line 798
    :cond_1
    const-string v1, "WIFI:FRAMEWORK:WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 802
    :cond_2
    const-string v1, "WIFI:FRAMEWORK:WifiService"

    const-string v2, "bad network configuration"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public addToBlacklist(Ljava/lang/String;)V
    .locals 1
    .parameter "bssid"

    .prologue
    .line 1081
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1083
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->addToBlacklist(Ljava/lang/String;)V

    .line 1084
    return-void
.end method

.method public captivePortalCheckComplete()V
    .locals 1

    .prologue
    .line 1059
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceConnectivityInternalPermission()V

    .line 1060
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->captivePortalCheckComplete()V

    .line 1061
    return-void
.end method

.method public checkAndStartWifi()V
    .locals 4

    .prologue
    .line 373
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v0

    .line 374
    .local v0, wifiEnabled:Z
    const-string v2, "WIFI:FRAMEWORK:WifiService"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "WifiService starting up with Wi-Fi "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    if-eqz v0, :cond_1

    const-string v1, "enabled"

    :goto_0
    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v2, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    if-eqz v0, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/server/wifi/WifiService;->setWifiEnabled(Z)Z

    .line 381
    :cond_0
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-static {v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->makeWifiWatchdogStateMachine(Landroid/content/Context;)Landroid/net/wifi/WifiWatchdogStateMachine;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    .line 383
    new-instance v1, Lcom/android/server/PPPOEService;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-direct {v1, v2, p0}, Lcom/android/server/PPPOEService;-><init>(Landroid/content/Context;Lcom/android/server/wifi/WifiService;)V

    iput-object v1, p0, Lcom/android/server/wifi/WifiService;->mPPPOEService:Lcom/android/server/PPPOEService;

    .line 385
    return-void

    .line 374
    :cond_1
    const-string v1, "disabled"

    goto :goto_0
.end method

.method public clearBlacklist()V
    .locals 1

    .prologue
    .line 1091
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1093
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->clearBlacklist()V

    .line 1094
    return-void
.end method

.method public disableNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 848
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 849
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 850
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncDisableNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 853
    :goto_0
    return v0

    .line 852
    :cond_0
    const-string v0, "WIFI:FRAMEWORK:WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public disconnect()V
    .locals 1

    .prologue
    .line 750
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 751
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->disconnectCommand()V

    .line 752
    return-void
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 8
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    const/4 v7, 0x0

    .line 1294
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v4, "android.permission.DUMP"

    invoke-virtual {v3, v4}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v3

    if-eqz v3, :cond_0

    .line 1296
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Permission Denial: can\'t dump WifiService from from pid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ", uid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1340
    :goto_0
    return-void

    .line 1301
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Wi-Fi is "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiStateByName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1302
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Stay-awake conditions: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v5, "stay_on_while_plugged_in"

    invoke-static {v4, v5, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1305
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMulticastEnabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/WifiService;->mMulticastEnabled:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1306
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "mMulticastDisabled "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/WifiService;->mMulticastDisabled:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1307
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wifi/WifiController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1308
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wifi/WifiSettingsStore;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1309
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mNotificationController:Lcom/android/server/wifi/WifiNotificationController;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wifi/WifiNotificationController;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1310
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mTrafficPoller:Lcom/android/server/wifi/WifiTrafficPoller;

    invoke-virtual {v3, p1, p2, p3}, Lcom/android/server/wifi/WifiTrafficPoller;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1312
    const-string v3, "Latest scan results:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1313
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v2

    .line 1314
    .local v2, scanResults:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-eqz v3, :cond_2

    .line 1315
    const-string v3, "  BSSID              Frequency   RSSI  Flags             SSID"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1316
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_1
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_2

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/net/wifi/ScanResult;

    .line 1317
    .local v1, r:Landroid/net/wifi/ScanResult;
    const-string v4, "  %17s  %9d  %5d  %-16s  %s%n"

    const/4 v3, 0x5

    new-array v5, v3, [Ljava/lang/Object;

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->BSSID:Ljava/lang/String;

    aput-object v3, v5, v7

    const/4 v3, 0x1

    iget v6, v1, Landroid/net/wifi/ScanResult;->frequency:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x2

    iget v6, v1, Landroid/net/wifi/ScanResult;->level:I

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    aput-object v6, v5, v3

    const/4 v3, 0x3

    iget-object v6, v1, Landroid/net/wifi/ScanResult;->capabilities:Ljava/lang/String;

    aput-object v6, v5, v3

    const/4 v6, 0x4

    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    if-nez v3, :cond_1

    const-string v3, ""

    :goto_2
    aput-object v3, v5, v6

    invoke-virtual {p2, v4, v5}, Ljava/io/PrintWriter;->printf(Ljava/lang/String;[Ljava/lang/Object;)Ljava/io/PrintWriter;

    goto :goto_1

    :cond_1
    iget-object v3, v1, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    goto :goto_2

    .line 1325
    .end local v0           #i$:Ljava/util/Iterator;
    .end local v1           #r:Landroid/net/wifi/ScanResult;
    :cond_2
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1326
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locks acquired: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/WifiService;->mFullLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full high perf, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/WifiService;->mScanLocksAcquired:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1329
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Locks released: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/WifiService;->mFullLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/WifiService;->mFullHighPerfLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " full high perf, "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/server/wifi/WifiService;->mScanLocksReleased:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " scan"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1332
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1333
    const-string v3, "Locks held:"

    invoke-virtual {p2, v3}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1334
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    #calls: Lcom/android/server/wifi/WifiService$LockList;->dump(Ljava/io/PrintWriter;)V
    invoke-static {v3, p2}, Lcom/android/server/wifi/WifiService$LockList;->access$600(Lcom/android/server/wifi/WifiService$LockList;Ljava/io/PrintWriter;)V

    .line 1336
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiWatchdogStateMachine:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {v3, p1, p2, p3}, Landroid/net/wifi/WifiWatchdogStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1337
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 1338
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1339
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    goto/16 :goto_0
.end method

.method public enableNetwork(IZ)Z
    .locals 2
    .parameter "netId"
    .parameter "disableOthers"

    .prologue
    .line 831
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 832
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 833
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1, p2}, Landroid/net/wifi/WifiStateMachine;->syncEnableNetwork(Lcom/android/internal/util/AsyncChannel;IZ)Z

    move-result v0

    .line 837
    :goto_0
    return v0

    .line 836
    :cond_0
    const-string v0, "WIFI:FRAMEWORK:WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public enableTdls(Ljava/lang/String;Z)V
    .locals 4
    .parameter "remoteAddress"
    .parameter "enable"

    .prologue
    .line 1171
    new-instance v0, Lcom/android/server/wifi/WifiService$TdlsTaskParams;

    invoke-direct {v0, p0}, Lcom/android/server/wifi/WifiService$TdlsTaskParams;-><init>(Lcom/android/server/wifi/WifiService;)V

    .line 1172
    .local v0, params:Lcom/android/server/wifi/WifiService$TdlsTaskParams;
    iput-object p1, v0, Lcom/android/server/wifi/WifiService$TdlsTaskParams;->remoteIpAddress:Ljava/lang/String;

    .line 1173
    iput-boolean p2, v0, Lcom/android/server/wifi/WifiService$TdlsTaskParams;->enable:Z

    .line 1174
    new-instance v1, Lcom/android/server/wifi/WifiService$TdlsTask;

    invoke-direct {v1, p0}, Lcom/android/server/wifi/WifiService$TdlsTask;-><init>(Lcom/android/server/wifi/WifiService;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/server/wifi/WifiService$TdlsTaskParams;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/server/wifi/WifiService$TdlsTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1175
    return-void
.end method

.method public enableTdlsWithMacAddress(Ljava/lang/String;Z)V
    .locals 1
    .parameter "remoteMacAddress"
    .parameter "enable"

    .prologue
    .line 1179
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->enableTdls(Ljava/lang/String;Z)V

    .line 1180
    return-void
.end method

.method enforceWakeSourcePermission(II)V
    .locals 3
    .parameter "uid"
    .parameter "pid"

    .prologue
    .line 1426
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    if-ne p1, v0, :cond_0

    .line 1431
    :goto_0
    return-void

    .line 1429
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, p2, p1, v2}, Landroid/content/Context;->enforcePermission(Ljava/lang/String;IILjava/lang/String;)V

    goto :goto_0
.end method

.method public getBatchedScanResults(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "callingPackage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/BatchedScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 478
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 479
    iget-boolean v5, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanSupported:Z

    if-nez v5, :cond_0

    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 492
    :goto_0
    return-object v5

    .line 480
    :cond_0
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 481
    .local v4, userId:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 482
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 484
    .local v1, ident:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_1

    .line 486
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 495
    :goto_1
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    .line 488
    :cond_1
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 489
    .local v0, currentUser:I
    if-eq v4, v0, :cond_2

    .line 490
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 495
    .end local v0           #currentUser:I
    :catchall_0
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 492
    .restart local v0       #currentUser:I
    :cond_2
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->syncGetBatchedScanResultsList()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    goto :goto_1
.end method

.method public getConfigFile()Ljava/lang/String;
    .locals 1

    .prologue
    .line 1203
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1204
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getConfigFile()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getConfiguredNetworks()Ljava/util/List;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/WifiConfiguration;",
            ">;"
        }
    .end annotation

    .prologue
    .line 775
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 776
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 777
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncGetConfiguredNetworks(Lcom/android/internal/util/AsyncChannel;)Ljava/util/List;

    move-result-object v0

    .line 780
    :goto_0
    return-object v0

    .line 779
    :cond_0
    const-string v0, "WIFI:FRAMEWORK:WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 780
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getConnectionInfo()Landroid/net/wifi/WifiInfo;
    .locals 1

    .prologue
    .line 862
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 867
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncRequestConnectionInfo()Landroid/net/wifi/WifiInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDhcpInfo()Landroid/net/DhcpInfo;
    .locals 12

    .prologue
    .line 997
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 998
    iget-object v11, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v11}, Landroid/net/wifi/WifiStateMachine;->syncGetDhcpResults()Landroid/net/DhcpResults;

    move-result-object v2

    .line 999
    .local v2, dhcpResults:Landroid/net/DhcpResults;
    iget-object v11, v2, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    if-nez v11, :cond_0

    const/4 v7, 0x0

    .line 1040
    :goto_0
    return-object v7

    .line 1001
    :cond_0
    new-instance v7, Landroid/net/DhcpInfo;

    invoke-direct {v7}, Landroid/net/DhcpInfo;-><init>()V

    .line 1002
    .local v7, info:Landroid/net/DhcpInfo;
    iget-object v11, v2, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->getLinkAddresses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    .local v6, i$:Ljava/util/Iterator;
    :cond_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_2

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/LinkAddress;

    .line 1003
    .local v8, la:Landroid/net/LinkAddress;
    invoke-virtual {v8}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v0

    .line 1004
    .local v0, addr:Ljava/net/InetAddress;
    instance-of v11, v0, Ljava/net/Inet4Address;

    if-eqz v11, :cond_1

    .line 1005
    check-cast v0, Ljava/net/Inet4Address;

    .end local v0           #addr:Ljava/net/InetAddress;
    invoke-static {v0}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->ipAddress:I

    .line 1009
    .end local v8           #la:Landroid/net/LinkAddress;
    :cond_2
    iget-object v11, v2, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->getRoutes()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_3
    :goto_1
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_5

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/net/RouteInfo;

    .line 1010
    .local v9, r:Landroid/net/RouteInfo;
    invoke-virtual {v9}, Landroid/net/RouteInfo;->isDefaultRoute()Z

    move-result v11

    if-eqz v11, :cond_4

    .line 1011
    invoke-virtual {v9}, Landroid/net/RouteInfo;->getGateway()Ljava/net/InetAddress;

    move-result-object v5

    .line 1012
    .local v5, gateway:Ljava/net/InetAddress;
    instance-of v11, v5, Ljava/net/Inet4Address;

    if-eqz v11, :cond_3

    .line 1013
    check-cast v5, Ljava/net/Inet4Address;

    .end local v5           #gateway:Ljava/net/InetAddress;
    invoke-static {v5}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->gateway:I

    goto :goto_1

    .line 1015
    :cond_4
    invoke-virtual {v9}, Landroid/net/RouteInfo;->hasGateway()Z

    move-result v11

    if-nez v11, :cond_3

    .line 1016
    invoke-virtual {v9}, Landroid/net/RouteInfo;->getDestination()Landroid/net/LinkAddress;

    move-result-object v1

    .line 1017
    .local v1, dest:Landroid/net/LinkAddress;
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getAddress()Ljava/net/InetAddress;

    move-result-object v11

    instance-of v11, v11, Ljava/net/Inet4Address;

    if-eqz v11, :cond_3

    .line 1018
    invoke-virtual {v1}, Landroid/net/LinkAddress;->getNetworkPrefixLength()I

    move-result v11

    invoke-static {v11}, Landroid/net/NetworkUtils;->prefixLengthToNetmaskInt(I)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->netmask:I

    goto :goto_1

    .line 1023
    .end local v1           #dest:Landroid/net/LinkAddress;
    .end local v9           #r:Landroid/net/RouteInfo;
    :cond_5
    const/4 v4, 0x0

    .line 1024
    .local v4, dnsFound:I
    iget-object v11, v2, Landroid/net/DhcpResults;->linkProperties:Landroid/net/LinkProperties;

    invoke-virtual {v11}, Landroid/net/LinkProperties;->getDnses()Ljava/util/Collection;

    move-result-object v11

    invoke-interface {v11}, Ljava/util/Collection;->iterator()Ljava/util/Iterator;

    move-result-object v6

    :cond_6
    invoke-interface {v6}, Ljava/util/Iterator;->hasNext()Z

    move-result v11

    if-eqz v11, :cond_7

    invoke-interface {v6}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/net/InetAddress;

    .line 1025
    .local v3, dns:Ljava/net/InetAddress;
    instance-of v11, v3, Ljava/net/Inet4Address;

    if-eqz v11, :cond_6

    .line 1026
    if-nez v4, :cond_9

    .line 1027
    check-cast v3, Ljava/net/Inet4Address;

    .end local v3           #dns:Ljava/net/InetAddress;
    invoke-static {v3}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->dns1:I

    .line 1031
    :goto_2
    add-int/lit8 v4, v4, 0x1

    const/4 v11, 0x1

    if-le v4, v11, :cond_6

    .line 1034
    :cond_7
    iget-object v10, v2, Landroid/net/DhcpResults;->serverAddress:Ljava/net/InetAddress;

    .line 1035
    .local v10, serverAddress:Ljava/net/InetAddress;
    instance-of v11, v10, Ljava/net/Inet4Address;

    if-eqz v11, :cond_8

    .line 1036
    check-cast v10, Ljava/net/Inet4Address;

    .end local v10           #serverAddress:Ljava/net/InetAddress;
    invoke-static {v10}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->serverAddress:I

    .line 1038
    :cond_8
    iget v11, v2, Landroid/net/DhcpResults;->leaseDuration:I

    iput v11, v7, Landroid/net/DhcpInfo;->leaseDuration:I

    goto/16 :goto_0

    .line 1029
    .restart local v3       #dns:Ljava/net/InetAddress;
    :cond_9
    check-cast v3, Ljava/net/Inet4Address;

    .end local v3           #dns:Ljava/net/InetAddress;
    invoke-static {v3}, Landroid/net/NetworkUtils;->inetAddressToInt(Ljava/net/Inet4Address;)I

    move-result v11

    iput v11, v7, Landroid/net/DhcpInfo;->dns2:I

    goto :goto_2
.end method

.method public getFrequencyBand()I
    .locals 1

    .prologue
    .line 961
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 962
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getFrequencyBand()I

    move-result v0

    return v0
.end method

.method public getHostapPara(I)Ljava/lang/String;
    .locals 1
    .parameter "hostapParaType"

    .prologue
    .line 972
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->getHostapPara(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;
    .locals 1

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mPPPOEService:Lcom/android/server/PPPOEService;

    invoke-virtual {v0}, Lcom/android/server/PPPOEService;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;

    move-result-object v0

    return-object v0
.end method

.method public getScanResults(Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .parameter "callingPackage"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/net/wifi/ScanResult;",
            ">;"
        }
    .end annotation

    .prologue
    .line 876
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 877
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v4

    .line 878
    .local v4, userId:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 879
    .local v3, uid:I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v1

    .line 881
    .local v1, ident:J
    :try_start_0
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mAppOps:Landroid/app/AppOpsManager;

    const/16 v6, 0xa

    invoke-virtual {v5, v6, v3, p1}, Landroid/app/AppOpsManager;->noteOp(IILjava/lang/String;)I

    move-result v5

    if-eqz v5, :cond_0

    .line 883
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 892
    :goto_0
    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 889
    return-object v5

    .line 885
    :cond_0
    :try_start_1
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v0

    .line 886
    .local v0, currentUser:I
    if-eq v4, v0, :cond_1

    .line 887
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 892
    .end local v0           #currentUser:I
    :catchall_0
    move-exception v5

    invoke-static {v1, v2}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v5

    .line 889
    .restart local v0       #currentUser:I
    :cond_1
    :try_start_2
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v5}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v5

    goto :goto_0
.end method

.method public getWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;
    .locals 1

    .prologue
    .line 717
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 718
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApConfiguration()Landroid/net/wifi/WifiConfiguration;

    move-result-object v0

    return-object v0
.end method

.method public getWifiApEnabledState()I
    .locals 1

    .prologue
    .line 708
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 709
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v0

    return v0
.end method

.method public getWifiEnabledState()I
    .locals 1

    .prologue
    .line 677
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 678
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v0

    return v0
.end method

.method public getWifiServiceMessenger()Landroid/os/Messenger;
    .locals 2

    .prologue
    .line 1187
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1188
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1189
    new-instance v0, Landroid/os/Messenger;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mClientHandler:Lcom/android/server/wifi/WifiService$ClientHandler;

    invoke-direct {v0, v1}, Landroid/os/Messenger;-><init>(Landroid/os/Handler;)V

    return-object v0
.end method

.method public getWifiStateMachineMessenger()Landroid/os/Messenger;
    .locals 1

    .prologue
    .line 1194
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1195
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 1196
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->getMessenger()Landroid/os/Messenger;

    move-result-object v0

    return-object v0
.end method

.method public initializeMulticastFiltering()V
    .locals 2

    .prologue
    .line 1624
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceMulticastChangePermission()V

    .line 1626
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 1628
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 1629
    monitor-exit v1

    .line 1634
    :goto_0
    return-void

    .line 1631
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->startFilteringMulticastV4Packets()V

    .line 1633
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isBatchedScanSupported()Z
    .locals 1

    .prologue
    .line 445
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanSupported:Z

    return v0
.end method

.method public isDualBandSupported()Z
    .locals 2

    .prologue
    .line 982
    const/4 v0, 0x1

    invoke-static {}, Lcom/zte/config/zteConfig;->getVersionType()I

    move-result v1

    if-ne v0, v1, :cond_0

    .line 983
    const/4 v0, 0x0

    .line 986
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110017

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    goto :goto_0
.end method

.method public isMulticastEnabled()Z
    .locals 2

    .prologue
    .line 1696
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 1698
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v1

    .line 1699
    :try_start_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    monitor-exit v1

    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0

    .line 1700
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isScanAlwaysAvailable()Z
    .locals 1

    .prologue
    .line 742
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 743
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v0}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v0

    return v0
.end method

.method public pingSupplicant()Z
    .locals 2

    .prologue
    .line 392
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceAccessPermission()V

    .line 393
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 394
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->syncPingSupplicant(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v0

    .line 397
    :goto_0
    return v0

    .line 396
    :cond_0
    const-string v0, "WIFI:FRAMEWORK:WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public pollBatchedScan()V
    .locals 1

    .prologue
    .line 449
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 450
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanSupported:Z

    if-nez v0, :cond_0

    .line 452
    :goto_0
    return-void

    .line 451
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->requestBatchedScanPoll()V

    goto :goto_0
.end method

.method public reassociate()V
    .locals 1

    .prologue
    .line 766
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 767
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reassociateCommand()V

    .line 768
    return-void
.end method

.method public reconnect()V
    .locals 1

    .prologue
    .line 758
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 759
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    .line 760
    return-void
.end method

.method public releaseMulticastLock()V
    .locals 6

    .prologue
    .line 1660
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceMulticastChangePermission()V

    .line 1662
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 1663
    .local v3, uid:I
    iget-object v5, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    monitor-enter v5

    .line 1664
    :try_start_0
    iget v4, p0, Lcom/android/server/wifi/WifiService;->mMulticastDisabled:I

    add-int/lit8 v4, v4, 0x1

    iput v4, p0, Lcom/android/server/wifi/WifiService;->mMulticastDisabled:I

    .line 1665
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v2

    .line 1666
    .local v2, size:I
    add-int/lit8 v0, v2, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 1667
    iget-object v4, p0, Lcom/android/server/wifi/WifiService;->mMulticasters:Ljava/util/List;

    invoke-interface {v4, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/server/wifi/WifiService$Multicaster;

    .line 1668
    .local v1, m:Lcom/android/server/wifi/WifiService$Multicaster;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/server/wifi/WifiService$Multicaster;->getUid()I

    move-result v4

    if-ne v4, v3, :cond_0

    .line 1669
    invoke-direct {p0, v0, v3}, Lcom/android/server/wifi/WifiService;->removeMulticasterLocked(II)V

    .line 1666
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1672
    .end local v1           #m:Lcom/android/server/wifi/WifiService$Multicaster;
    :cond_1
    monitor-exit v5

    .line 1673
    return-void

    .line 1672
    .end local v0           #i:I
    .end local v2           #size:I
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method

.method public releaseWifiLock(Landroid/os/IBinder;)Z
    .locals 3
    .parameter "lock"

    .prologue
    .line 1534
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;

    const-string v1, "android.permission.WAKE_LOCK"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 1535
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    monitor-enter v1

    .line 1536
    :try_start_0
    invoke-direct {p0, p1}, Lcom/android/server/wifi/WifiService;->releaseWifiLockLocked(Landroid/os/IBinder;)Z

    move-result v0

    monitor-exit v1

    return v0

    .line 1537
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public removeNetwork(I)Z
    .locals 2
    .parameter "netId"

    .prologue
    .line 814
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 815
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v0, :cond_0

    .line 816
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->syncRemoveNetwork(Lcom/android/internal/util/AsyncChannel;I)Z

    move-result v0

    .line 819
    :goto_0
    return v0

    .line 818
    :cond_0
    const-string v0, "WIFI:FRAMEWORK:WifiService"

    const-string v1, "mWifiStateMachineChannel is not initialized"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 819
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public requestBatchedScan(Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)Z
    .locals 4
    .parameter "requested"
    .parameter "binder"
    .parameter "workSource"

    .prologue
    const/4 v2, 0x0

    .line 459
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 460
    if-eqz p3, :cond_0

    .line 461
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceWorkSourcePermission()V

    .line 464
    invoke-virtual {p3}, Landroid/os/WorkSource;->clearNames()V

    .line 466
    :cond_0
    iget-boolean v3, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanSupported:Z

    if-nez v3, :cond_1

    .line 474
    :goto_0
    return v2

    .line 467
    :cond_1
    new-instance v1, Landroid/net/wifi/BatchedScanSettings;

    invoke-direct {v1, p1}, Landroid/net/wifi/BatchedScanSettings;-><init>(Landroid/net/wifi/BatchedScanSettings;)V

    .line 468
    .end local p1
    .local v1, requested:Landroid/net/wifi/BatchedScanSettings;
    invoke-virtual {v1}, Landroid/net/wifi/BatchedScanSettings;->isInvalid()Z

    move-result v3

    if-eqz v3, :cond_2

    move-object p1, v1

    .end local v1           #requested:Landroid/net/wifi/BatchedScanSettings;
    .restart local p1
    goto :goto_0

    .line 469
    .end local p1
    .restart local v1       #requested:Landroid/net/wifi/BatchedScanSettings;
    :cond_2
    new-instance v0, Lcom/android/server/wifi/WifiService$BatchedScanRequest;

    invoke-direct {v0, p0, v1, p2, p3}, Lcom/android/server/wifi/WifiService$BatchedScanRequest;-><init>(Lcom/android/server/wifi/WifiService;Landroid/net/wifi/BatchedScanSettings;Landroid/os/IBinder;Landroid/os/WorkSource;)V

    .line 470
    .local v0, r:Lcom/android/server/wifi/WifiService$BatchedScanRequest;
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    monitor-enter v3

    .line 471
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanners:Ljava/util/List;

    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 472
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->resolveBatchedScannersLocked()V

    .line 473
    monitor-exit v3

    .line 474
    const/4 v2, 0x1

    move-object p1, v1

    .end local v1           #requested:Landroid/net/wifi/BatchedScanSettings;
    .restart local p1
    goto :goto_0

    .line 473
    .end local p1
    .restart local v1       #requested:Landroid/net/wifi/BatchedScanSettings;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2
.end method

.method public saveConfiguration()Z
    .locals 3

    .prologue
    .line 903
    const/4 v0, 0x1

    .line 904
    .local v0, result:Z
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 905
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    if-eqz v1, :cond_0

    .line 906
    iget-object v1, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachineChannel:Lcom/android/internal/util/AsyncChannel;

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiStateMachine;->syncSaveConfig(Lcom/android/internal/util/AsyncChannel;)Z

    move-result v1

    .line 909
    :goto_0
    return v1

    .line 908
    :cond_0
    const-string v1, "WIFI:FRAMEWORK:WifiService"

    const-string v2, "mWifiStateMachineChannel is not initialized"

    invoke-static {v1, v2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 909
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public setCountryCode(Ljava/lang/String;Z)V
    .locals 5
    .parameter "countryCode"
    .parameter "persist"

    .prologue
    .line 923
    const-string v2, "WIFI:FRAMEWORK:WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiService trying to set country code to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with persist set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 925
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 926
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 928
    .local v0, token:J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setCountryCode(Ljava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 930
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 932
    return-void

    .line 930
    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setFrequencyBand(IZ)V
    .locals 5
    .parameter "band"
    .parameter "persist"

    .prologue
    .line 944
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 945
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->isDualBandSupported()Z

    move-result v2

    if-nez v2, :cond_0

    .line 954
    :goto_0
    return-void

    .line 946
    :cond_0
    const-string v2, "WIFI:FRAMEWORK:WifiService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "WifiService trying to set frequency band to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " with persist set to "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 948
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 950
    .local v0, token:J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setFrequencyBand(IZ)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 952
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    goto :goto_0

    :catchall_0
    move-exception v2

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v2
.end method

.method public setHostapPara(ILjava/lang/String;)Z
    .locals 1
    .parameter "hostapParaType"
    .parameter "mParameter"

    .prologue
    .line 968
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2}, Landroid/net/wifi/WifiStateMachine;->setHostapPara(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V
    .locals 2
    .parameter "wifiConfig"

    .prologue
    .line 726
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 727
    if-nez p1, :cond_0

    .line 734
    :goto_0
    return-void

    .line 729
    :cond_0
    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 730
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1}, Landroid/net/wifi/WifiStateMachine;->setWifiApConfiguration(Landroid/net/wifi/WifiConfiguration;)V

    goto :goto_0

    .line 732
    :cond_1
    const-string v0, "WIFI:FRAMEWORK:WifiService"

    const-string v1, "Invalid WifiConfiguration"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public setWifiApEnabled(Landroid/net/wifi/WifiConfiguration;Z)V
    .locals 4
    .parameter "wifiConfig"
    .parameter "enabled"

    .prologue
    const/4 v1, 0x0

    .line 688
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 689
    const-string v0, "WIFI:FRAMEWORK:WifiService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "setWifiApEnabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", uid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 692
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/net/wifi/WifiConfiguration;->isValid()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 693
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v3, 0x2600a

    if-eqz p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v2, v3, v0, v1, p1}, Lcom/android/server/wifi/WifiController;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 697
    :goto_1
    return-void

    :cond_1
    move v0, v1

    .line 693
    goto :goto_0

    .line 695
    :cond_2
    const-string v0, "WIFI:FRAMEWORK:WifiService"

    const-string v1, "Invalid WifiConfiguration"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public declared-synchronized setWifiEnabled(Z)Z
    .locals 7
    .parameter "enable"

    .prologue
    const/4 v6, 0x1

    .line 638
    monitor-enter p0

    :try_start_0
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 639
    const-string v3, "WIFI:FRAMEWORK:WifiService"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "setWifiEnabled: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", uid="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    move-result-wide v0

    .line 649
    .local v0, ident:J
    if-nez p1, :cond_0

    .line 650
    :try_start_1
    invoke-virtual {p0}, Lcom/android/server/wifi/WifiService;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;

    move-result-object v2

    .line 651
    .local v2, pppoeInfo:Landroid/net/wifi/PPPOEInfo;
    iget-object v3, v2, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    sget-object v4, Landroid/net/wifi/PPPOEInfo$Status;->OFFLINE:Landroid/net/wifi/PPPOEInfo$Status;

    if-eq v3, v4, :cond_0

    .line 652
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mPPPOEService:Lcom/android/server/PPPOEService;

    invoke-virtual {v3}, Lcom/android/server/PPPOEService;->stopPPPOE()V

    .line 656
    .end local v2           #pppoeInfo:Landroid/net/wifi/PPPOEInfo;
    :cond_0
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3, p1}, Lcom/android/server/wifi/WifiSettingsStore;->handleWifiToggled(Z)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v3

    if-nez v3, :cond_1

    .line 661
    :try_start_2
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    .line 665
    :goto_0
    monitor-exit p0

    return v6

    .line 661
    :catchall_0
    move-exception v3

    :try_start_3
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v3
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 638
    .end local v0           #ident:J
    :catchall_1
    move-exception v3

    monitor-exit p0

    throw v3

    .line 661
    .restart local v0       #ident:J
    :cond_1
    :try_start_4
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 664
    iget-object v3, p0, Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;

    const v4, 0x26008

    invoke-virtual {v3, v4}, Lcom/android/server/wifi/WifiController;->sendMessage(I)V
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    goto :goto_0
.end method

.method public startPPPOE(Landroid/net/wifi/PPPOEConfig;)V
    .locals 1
    .parameter "config"

    .prologue
    .line 1208
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mPPPOEService:Lcom/android/server/PPPOEService;

    invoke-virtual {v0, p1}, Lcom/android/server/PPPOEService;->startPPPOE(Landroid/net/wifi/PPPOEConfig;)V

    .line 1209
    return-void
.end method

.method public startScan(Landroid/os/WorkSource;)V
    .locals 2
    .parameter "workSource"

    .prologue
    .line 407
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 408
    if-eqz p1, :cond_0

    .line 409
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceWorkSourcePermission()V

    .line 412
    invoke-virtual {p1}, Landroid/os/WorkSource;->clearNames()V

    .line 414
    :cond_0
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v1

    invoke-virtual {v0, v1, p1}, Landroid/net/wifi/WifiStateMachine;->startScan(ILandroid/os/WorkSource;)V

    .line 415
    return-void
.end method

.method public startWifi()V
    .locals 2

    .prologue
    .line 1048
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceConnectivityInternalPermission()V

    .line 1054
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(Z)V

    .line 1055
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine;->reconnectCommand()V

    .line 1056
    return-void
.end method

.method public startWpsServer(ILjava/lang/String;Ljava/lang/String;)V
    .locals 1
    .parameter "wpsMethod"
    .parameter "wpsBssid"
    .parameter "wpsPin"

    .prologue
    .line 976
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v0, p1, p2, p3}, Landroid/net/wifi/WifiStateMachine;->startWpsServer(ILjava/lang/String;Ljava/lang/String;)V

    .line 977
    return-void
.end method

.method public stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;)V
    .locals 2
    .parameter "settings"

    .prologue
    .line 501
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceChangePermission()V

    .line 502
    iget-boolean v0, p0, Lcom/android/server/wifi/WifiService;->mBatchedScanSupported:Z

    if-nez v0, :cond_0

    .line 504
    :goto_0
    return-void

    .line 503
    :cond_0
    invoke-static {}, Lcom/android/server/wifi/WifiService;->getCallingUid()I

    move-result v0

    invoke-static {}, Lcom/android/server/wifi/WifiService;->getCallingPid()I

    move-result v1

    invoke-direct {p0, p1, v0, v1}, Lcom/android/server/wifi/WifiService;->stopBatchedScan(Landroid/net/wifi/BatchedScanSettings;II)V

    goto :goto_0
.end method

.method public stopPPPOE()V
    .locals 1

    .prologue
    .line 1211
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mPPPOEService:Lcom/android/server/PPPOEService;

    invoke-virtual {v0}, Lcom/android/server/PPPOEService;->stopPPPOE()V

    .line 1212
    return-void
.end method

.method public stopWifi()V
    .locals 2

    .prologue
    .line 1068
    invoke-direct {p0}, Lcom/android/server/wifi/WifiService;->enforceConnectivityInternalPermission()V

    .line 1073
    iget-object v0, p0, Lcom/android/server/wifi/WifiService;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setDriverStart(Z)V

    .line 1074
    return-void
.end method

.method public updateWifiLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;)V
    .locals 9
    .parameter "lock"
    .parameter "ws"

    .prologue
    .line 1507
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    .line 1508
    .local v4, uid:I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 1509
    .local v3, pid:I
    if-eqz p2, :cond_0

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v6

    if-nez v6, :cond_0

    .line 1510
    const/4 p2, 0x0

    .line 1512
    :cond_0
    if-eqz p2, :cond_1

    .line 1513
    invoke-virtual {p0, v4, v3}, Lcom/android/server/wifi/WifiService;->enforceWakeSourcePermission(II)V

    .line 1515
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 1517
    .local v0, ident:J
    :try_start_0
    iget-object v7, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    monitor-enter v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1518
    :try_start_1
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    #calls: Lcom/android/server/wifi/WifiService$LockList;->findLockByBinder(Landroid/os/IBinder;)I
    invoke-static {v6, p1}, Lcom/android/server/wifi/WifiService$LockList;->access$1300(Lcom/android/server/wifi/WifiService$LockList;Landroid/os/IBinder;)I

    move-result v2

    .line 1519
    .local v2, index:I
    if-gez v2, :cond_2

    .line 1520
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string v8, "Wifi lock not active"

    invoke-direct {v6, v8}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1526
    .end local v2           #index:I
    :catchall_0
    move-exception v6

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    throw v6
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0

    .line 1527
    :catch_0
    move-exception v6

    .line 1529
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 1531
    return-void

    .line 1522
    .restart local v2       #index:I
    :cond_2
    :try_start_3
    iget-object v6, p0, Lcom/android/server/wifi/WifiService;->mLocks:Lcom/android/server/wifi/WifiService$LockList;

    #getter for: Lcom/android/server/wifi/WifiService$LockList;->mList:Ljava/util/List;
    invoke-static {v6}, Lcom/android/server/wifi/WifiService$LockList;->access$1400(Lcom/android/server/wifi/WifiService$LockList;)Ljava/util/List;

    move-result-object v6

    invoke-interface {v6, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/server/wifi/WifiService$WifiLock;

    .line 1523
    .local v5, wl:Lcom/android/server/wifi/WifiService$WifiLock;
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiService;->noteReleaseWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V

    .line 1524
    if-eqz p2, :cond_3

    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, p2}, Landroid/os/WorkSource;-><init>(Landroid/os/WorkSource;)V

    :goto_1
    iput-object v6, v5, Lcom/android/server/wifi/WifiService$WifiLock;->mWorkSource:Landroid/os/WorkSource;

    .line 1525
    invoke-direct {p0, v5}, Lcom/android/server/wifi/WifiService;->noteAcquireWifiLock(Lcom/android/server/wifi/WifiService$WifiLock;)V

    .line 1526
    monitor-exit v7

    goto :goto_0

    .line 1524
    :cond_3
    new-instance v6, Landroid/os/WorkSource;

    invoke-direct {v6, v4}, Landroid/os/WorkSource;-><init>(I)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    goto :goto_1

    .line 1529
    .end local v2           #index:I
    .end local v5           #wl:Lcom/android/server/wifi/WifiService$WifiLock;
    :catchall_1
    move-exception v6

    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    throw v6
.end method
