.class public final Lcom/android/server/pm/HibernateThread;
.super Ljava/lang/Thread;
.source "HibernateThread.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/pm/HibernateThread$CloseDialogReceiver;
    }
.end annotation


# static fields
.field private static final MAX_BROADCAST_TIME:I = 0x7d0

.field private static final MAX_NUM_PHONE_STATE_READS:I = 0x10

.field private static final MAX_RADIO_WAIT_TIME:I = 0xbb8

.field private static final MAX_SHUTDOWN_WAIT_TIME:I = 0x1388

.field private static final PHONE_STATE_POLL_SLEEP_MSEC:I = 0x1f4

.field public static final REBOOT_SAFEMODE_PROPERTY:Ljava/lang/String; = "persist.sys.safemode"

.field public static final SHUTDOWN_ACTION_PROPERTY:Ljava/lang/String; = "sys.shutdown.requested"

.field private static final SHUTDOWN_VIBRATE_MS:I = 0x1f4

.field private static final TAG:Ljava/lang/String; = "HibernateThread"

.field private static isCharging:Z

.field private static mProcess:Ljava/lang/Process;

.field private static mStorageManager:Landroid/os/storage/StorageManager;

.field private static pd:Landroid/app/ProgressDialog;

.field private static sInstance:Lcom/android/server/pm/HibernateThread;

.field private static sIsStarted:Z

.field private static sIsStartedGuard:Ljava/lang/Object;


# instance fields
.field private DEBUG:Z

.field private mActionDone:Z

.field private final mActionDoneSync:Ljava/lang/Object;

.field private mChargerHandler:Landroid/os/Handler;

.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mPackageDontKillSet:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mPowerManager:Landroid/os/PowerManager;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 116
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Lcom/android/server/pm/HibernateThread;->sIsStartedGuard:Ljava/lang/Object;

    .line 117
    sput-boolean v1, Lcom/android/server/pm/HibernateThread;->sIsStarted:Z

    .line 132
    sput-boolean v1, Lcom/android/server/pm/HibernateThread;->isCharging:Z

    .line 136
    const/4 v0, 0x0

    sput-object v0, Lcom/android/server/pm/HibernateThread;->mProcess:Ljava/lang/Process;

    return-void
.end method

.method private constructor <init>()V
    .locals 1

    .prologue
    .line 140
    invoke-direct {p0}, Ljava/lang/Thread;-><init>()V

    .line 103
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/pm/HibernateThread;->DEBUG:Z

    .line 128
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/HibernateThread;->mActionDoneSync:Ljava/lang/Object;

    .line 133
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/HibernateThread;->mChargerHandler:Landroid/os/Handler;

    .line 137
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    iput-object v0, p0, Lcom/android/server/pm/HibernateThread;->mPackageDontKillSet:Ljava/util/HashSet;

    .line 141
    return-void
.end method

.method private Hibernate()V
    .locals 5

    .prologue
    .line 614
    iget-object v3, p0, Lcom/android/server/pm/HibernateThread;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/server/pm/HibernateThread;->forceKillActiveServices(Landroid/content/Context;)V

    .line 620
    iget-object v3, p0, Lcom/android/server/pm/HibernateThread;->mContext:Landroid/content/Context;

    const-string v4, "power"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/PowerManager;

    .line 622
    .local v1, pm:Landroid/os/PowerManager;
    const-string v3, "HibernateThread"

    const-string v4, "pm.gotoSleep.........."

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v3

    invoke-virtual {v1, v3, v4}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 627
    const-string v3, "service.quickboot.state"

    const-string v4, "1"

    invoke-static {v3, v4}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 629
    new-instance v2, Landroid/os/SystemVibrator;

    invoke-direct {v2}, Landroid/os/SystemVibrator;-><init>()V

    .line 631
    .local v2, vibrator:Landroid/os/Vibrator;
    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-virtual {v2, v3, v4}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 636
    :goto_0
    sget-object v3, Lcom/android/server/pm/HibernateThread;->pd:Landroid/app/ProgressDialog;

    if-eqz v3, :cond_0

    .line 637
    sget-object v3, Lcom/android/server/pm/HibernateThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v3}, Landroid/app/ProgressDialog;->dismiss()V

    .line 639
    :cond_0
    sget-object v3, Lcom/android/server/pm/HibernateThread;->mProcess:Ljava/lang/Process;

    if-eqz v3, :cond_1

    .line 640
    const-wide/16 v3, 0x3e8

    invoke-static {v3, v4}, Landroid/os/SystemClock;->sleep(J)V

    .line 641
    sget-object v3, Lcom/android/server/pm/HibernateThread;->mProcess:Ljava/lang/Process;

    invoke-virtual {v3}, Ljava/lang/Process;->destroy()V

    .line 642
    const/4 v3, 0x0

    sput-object v3, Lcom/android/server/pm/HibernateThread;->mProcess:Ljava/lang/Process;

    .line 644
    :cond_1
    return-void

    .line 632
    :catch_0
    move-exception v0

    .line 633
    .local v0, e:Ljava/lang/Exception;
    const-string v3, "HibernateThread"

    const-string v4, "Failed to vibrate during shutdown."

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static PowerShutdown()V
    .locals 0

    .prologue
    .line 776
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    .line 777
    return-void
.end method

.method static synthetic access$000(Landroid/content/Context;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 100
    invoke-static {p0}, Lcom/android/server/pm/HibernateThread;->beginShutdownSequence(Landroid/content/Context;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/pm/HibernateThread;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-object v0, p0, Lcom/android/server/pm/HibernateThread;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/server/pm/HibernateThread;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 100
    iget-boolean v0, p0, Lcom/android/server/pm/HibernateThread;->DEBUG:Z

    return v0
.end method

.method private static beWallpaperApk(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 6
    .parameter "context"
    .parameter "packageName"

    .prologue
    .line 648
    new-instance v1, Landroid/content/Intent;

    const-string v4, "android.service.wallpaper.WallpaperService"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 649
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    const/16 v5, 0x80

    invoke-virtual {v4, v1, v5}, Landroid/content/pm/PackageManager;->queryIntentServices(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v2

    .line 650
    .local v2, ris:Ljava/util/List;,"Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v4

    if-ge v0, v4, :cond_1

    .line 651
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/content/pm/ResolveInfo;

    iget-object v3, v4, Landroid/content/pm/ResolveInfo;->serviceInfo:Landroid/content/pm/ServiceInfo;

    .line 652
    .local v3, rsi:Landroid/content/pm/ServiceInfo;
    iget-object v4, v3, Landroid/content/pm/ServiceInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 653
    const/4 v4, 0x1

    .line 656
    .end local v3           #rsi:Landroid/content/pm/ServiceInfo;
    :goto_1
    return v4

    .line 650
    .restart local v3       #rsi:Landroid/content/pm/ServiceInfo;
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 656
    .end local v3           #rsi:Landroid/content/pm/ServiceInfo;
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private static beginShutdownSequence(Landroid/content/Context;)V
    .locals 10
    .parameter "context"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 218
    sget-object v7, Lcom/android/server/pm/HibernateThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v7

    .line 219
    :try_start_0
    sget-boolean v4, Lcom/android/server/pm/HibernateThread;->sIsStarted:Z

    if-eqz v4, :cond_0

    .line 220
    const-string v4, "HibernateThread"

    const-string v5, "Shutdown sequence already running, returning."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    monitor-exit v7

    .line 276
    :goto_0
    return-void

    .line 223
    :cond_0
    const/4 v4, 0x1

    sput-boolean v4, Lcom/android/server/pm/HibernateThread;->sIsStarted:Z

    .line 224
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 226
    new-instance v1, Landroid/content/Intent;

    const-string v4, "zte.com.cn.action.quickshutdown"

    invoke-direct {v1, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 227
    .local v1, intentshutdown:Landroid/content/Intent;
    invoke-virtual {p0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 229
    const-string v4, "storage"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/storage/StorageManager;

    sput-object v4, Lcom/android/server/pm/HibernateThread;->mStorageManager:Landroid/os/storage/StorageManager;

    .line 231
    const-string v4, "window"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/view/IWindowManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/view/IWindowManager;

    move-result-object v2

    .line 232
    .local v2, mWm:Landroid/view/IWindowManager;
    const-string v4, "window"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/WindowManager;

    .line 233
    .local v3, wm:Landroid/view/WindowManager;
    const-string v4, "HibernateThread"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "Shutdown getRotation() "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v8

    invoke-virtual {v8}, Landroid/view/Display;->getRotation()I

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 234
    invoke-interface {v3}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/Display;->getRotation()I

    move-result v4

    if-eqz v4, :cond_1

    .line 236
    const/4 v4, 0x0

    :try_start_1
    invoke-interface {v2, v4}, Landroid/view/IWindowManager;->freezeRotation(I)V

    .line 237
    const-string v4, "persist.sys.rotationconfig"

    const-string v7, "1"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    const-string v4, "HibernateThread"

    const-string v7, "Shutdown freezeRotation "

    invoke-static {v4, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 247
    :goto_1
    new-instance v4, Lcom/android/server/pm/HibernateThread;

    invoke-direct {v4}, Lcom/android/server/pm/HibernateThread;-><init>()V

    sput-object v4, Lcom/android/server/pm/HibernateThread;->sInstance:Lcom/android/server/pm/HibernateThread;

    .line 248
    new-instance v0, Ljava/io/File;

    const-string v4, "/system/media/shutdownanimation.zip"

    invoke-direct {v0, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 249
    .local v0, file:Ljava/io/File;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 251
    :try_start_2
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v4

    const/4 v7, 0x2

    new-array v7, v7, [Ljava/lang/String;

    const/4 v8, 0x0

    const-string v9, "/system/bin/bootanimation"

    aput-object v9, v7, v8

    const/4 v8, 0x1

    const-string v9, "-s"

    aput-object v9, v7, v8

    invoke-virtual {v4, v7}, Ljava/lang/Runtime;->exec([Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v4

    sput-object v4, Lcom/android/server/pm/HibernateThread;->mProcess:Ljava/lang/Process;
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    .line 267
    :goto_2
    sget-object v4, Lcom/android/server/pm/HibernateThread;->sInstance:Lcom/android/server/pm/HibernateThread;

    iput-object p0, v4, Lcom/android/server/pm/HibernateThread;->mContext:Landroid/content/Context;

    .line 268
    sget-object v7, Lcom/android/server/pm/HibernateThread;->sInstance:Lcom/android/server/pm/HibernateThread;

    const-string v4, "power"

    invoke-virtual {p0, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/os/PowerManager;

    iput-object v4, v7, Lcom/android/server/pm/HibernateThread;->mPowerManager:Landroid/os/PowerManager;

    .line 269
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    const-string v7, "plug_Type"

    invoke-static {v4, v7, v6}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-eqz v4, :cond_3

    move v4, v5

    :goto_3
    sput-boolean v4, Lcom/android/server/pm/HibernateThread;->isCharging:Z

    .line 273
    sget-object v4, Lcom/android/server/pm/HibernateThread;->sInstance:Lcom/android/server/pm/HibernateThread;

    new-instance v5, Lcom/android/server/pm/HibernateThread$2;

    invoke-direct {v5}, Lcom/android/server/pm/HibernateThread$2;-><init>()V

    iput-object v5, v4, Lcom/android/server/pm/HibernateThread;->mHandler:Landroid/os/Handler;

    .line 275
    sget-object v4, Lcom/android/server/pm/HibernateThread;->sInstance:Lcom/android/server/pm/HibernateThread;

    invoke-virtual {v4}, Lcom/android/server/pm/HibernateThread;->start()V

    goto/16 :goto_0

    .line 224
    .end local v0           #file:Ljava/io/File;
    .end local v1           #intentshutdown:Landroid/content/Intent;
    .end local v2           #mWm:Landroid/view/IWindowManager;
    .end local v3           #wm:Landroid/view/WindowManager;
    :catchall_0
    move-exception v4

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v4

    .line 244
    .restart local v1       #intentshutdown:Landroid/content/Intent;
    .restart local v2       #mWm:Landroid/view/IWindowManager;
    .restart local v3       #wm:Landroid/view/WindowManager;
    :cond_1
    const-string v4, "persist.sys.rotationconfig"

    const-string v7, "0"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_1

    .line 257
    .restart local v0       #file:Ljava/io/File;
    :cond_2
    new-instance v4, Landroid/app/ProgressDialog;

    invoke-direct {v4, p0}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    sput-object v4, Lcom/android/server/pm/HibernateThread;->pd:Landroid/app/ProgressDialog;

    .line 258
    sget-object v4, Lcom/android/server/pm/HibernateThread;->pd:Landroid/app/ProgressDialog;

    const v7, 0x10400bc

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setTitle(Ljava/lang/CharSequence;)V

    .line 259
    sget-object v4, Lcom/android/server/pm/HibernateThread;->pd:Landroid/app/ProgressDialog;

    const v7, 0x10400c0

    invoke-virtual {p0, v7}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v4, v7}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 260
    sget-object v4, Lcom/android/server/pm/HibernateThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v5}, Landroid/app/ProgressDialog;->setIndeterminate(Z)V

    .line 261
    sget-object v4, Lcom/android/server/pm/HibernateThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v4, v6}, Landroid/app/ProgressDialog;->setCancelable(Z)V

    .line 262
    sget-object v4, Lcom/android/server/pm/HibernateThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->getWindow()Landroid/view/Window;

    move-result-object v4

    const/16 v7, 0x7d9

    invoke-virtual {v4, v7}, Landroid/view/Window;->setType(I)V

    .line 264
    sget-object v4, Lcom/android/server/pm/HibernateThread;->pd:Landroid/app/ProgressDialog;

    invoke-virtual {v4}, Landroid/app/ProgressDialog;->show()V

    goto :goto_2

    :cond_3
    move v4, v6

    .line 269
    goto :goto_3

    .line 252
    :catch_0
    move-exception v4

    goto :goto_2

    .line 240
    .end local v0           #file:Ljava/io/File;
    :catch_1
    move-exception v4

    goto/16 :goto_1
.end method

.method private displayHomeScreen()V
    .locals 4

    .prologue
    .line 728
    const-string v2, "HibernateThread"

    const-string v3, "start homescreen activity"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    new-instance v1, Landroid/content/Intent;

    const-string v2, "android.intent.action.MAIN"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 730
    .local v1, intent:Landroid/content/Intent;
    const-string v2, "android.intent.category.HOME"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addCategory(Ljava/lang/String;)Landroid/content/Intent;

    .line 731
    const/high16 v2, 0x1000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 733
    :try_start_0
    iget-object v2, p0, Lcom/android/server/pm/HibernateThread;->mContext:Landroid/content/Context;

    invoke-virtual {v2, v1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 737
    :goto_0
    return-void

    .line 734
    :catch_0
    move-exception v0

    .line 735
    .local v0, e:Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private static forceKillActiveServices(Landroid/content/Context;)V
    .locals 13
    .parameter "context"

    .prologue
    .line 659
    const-string v10, "activity"

    invoke-virtual {p0, v10}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 660
    .local v0, am:Landroid/app/ActivityManager;
    invoke-virtual {p0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 661
    .local v7, pm:Landroid/content/pm/PackageManager;
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 662
    .local v5, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {v0}, Landroid/app/ActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v6

    .line 664
    .local v6, listRun:Ljava/util/List;,"Ljava/util/List<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-interface {v6}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    .local v4, i$:Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_7

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 665
    .local v9, ti:Landroid/app/ActivityManager$RunningAppProcessInfo;
    invoke-virtual {v5}, Ljava/util/ArrayList;->size()I

    move-result v8

    .line 666
    .local v8, size:I
    const/4 v2, 0x0

    .line 667
    .local v2, flag:I
    iget v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->flags:I

    and-int/lit8 v10, v10, 0x2

    if-eqz v10, :cond_1

    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "com.android.mms"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "zte.com.cn.driverMode"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 669
    const-string v10, "HibernateThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "QuickBoot DOWN do not kill persist process="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 672
    :cond_1
    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "com.android.launcher"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "com.android.inputmethod.latin"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "com.android.systemui"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "com.google.process.gapps"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "com.android.smspush"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "com.android.phone"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "com.google.android"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "android.process.media"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "com.android.wallpaper"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "com.qihoo360"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "zte.com.cn.alarmclock"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "com.quicinc.cne"

    invoke-virtual {v10, v11}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "com.android.providers.calendar"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "com.android.deskclock"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "com.android.voicedialer"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "com.android.qualcomm"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "com.qualcomm.wiper"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "com.android.nfc3"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "com.android.settings"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "com.zte.milauncher"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_2

    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    const-string v11, "system"

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 694
    :cond_2
    const-string v10, "HibernateThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "QuickBoot DOWN do not kill protect process="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 698
    :cond_3
    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-static {p0, v10}, Lcom/android/server/pm/HibernateThread;->beWallpaperApk(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 699
    const-string v10, "HibernateThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "QuickBoot DOWN do not kill wallpaper process="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 703
    :cond_4
    new-instance v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    iget v11, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    iget-object v12, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->pkgList:[Ljava/lang/String;

    invoke-direct {v1, v10, v11, v12}, Landroid/app/ActivityManager$RunningAppProcessInfo;-><init>(Ljava/lang/String;I[Ljava/lang/String;)V

    .line 704
    .local v1, dp:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v8, :cond_5

    .line 705
    iget-object v11, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v5, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/ActivityManager$RunningAppProcessInfo;

    iget-object v10, v10, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    if-ne v11, v10, :cond_6

    .line 706
    const/4 v2, 0x1

    .line 711
    :cond_5
    if-nez v2, :cond_0

    .line 712
    invoke-virtual {v5, v1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto/16 :goto_0

    .line 704
    :cond_6
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 717
    .end local v1           #dp:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2           #flag:I
    .end local v3           #i:I
    .end local v8           #size:I
    .end local v9           #ti:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_7
    invoke-virtual {v5}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :goto_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_8

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 718
    .restart local v9       #ti:Landroid/app/ActivityManager$RunningAppProcessInfo;
    const-string v10, "HibernateThread"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "QuickBoot DOWN quickShutKill Kill ti.processName="

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    iget-object v10, v9, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    invoke-virtual {v0, v10}, Landroid/app/ActivityManager;->forceStopPackage(Ljava/lang/String;)V

    goto :goto_2

    .line 721
    .end local v9           #ti:Landroid/app/ActivityManager$RunningAppProcessInfo;
    :cond_8
    return-void
.end method

.method public static rebootOrShutdown(ZLjava/lang/String;)V
    .locals 5
    .parameter "reboot"
    .parameter "reason"

    .prologue
    .line 747
    if-eqz p0, :cond_0

    .line 748
    const-string v2, "HibernateThread"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Rebooting, reason: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    :try_start_0
    invoke-static {p1}, Lcom/android/server/power/PowerManagerService;->lowLevelReboot(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 772
    :goto_0
    const-string v2, "HibernateThread"

    const-string v3, "Performing low-level shutdown..."

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 773
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    .line 774
    return-void

    .line 751
    :catch_0
    move-exception v0

    .line 752
    .local v0, e:Ljava/lang/Exception;
    const-string v2, "HibernateThread"

    const-string v3, "Reboot failed, will attempt shutdown instead"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 756
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    new-instance v1, Landroid/os/SystemVibrator;

    invoke-direct {v1}, Landroid/os/SystemVibrator;-><init>()V

    .line 758
    .local v1, vibrator:Landroid/os/Vibrator;
    const-wide/16 v2, 0x1f4

    :try_start_1
    invoke-virtual {v1, v2, v3}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_2

    .line 766
    :goto_1
    const-wide/16 v2, 0x1f4

    :try_start_2
    invoke-static {v2, v3}, Ljava/lang/Thread;->sleep(J)V
    :try_end_2
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 767
    :catch_1
    move-exception v2

    goto :goto_0

    .line 759
    :catch_2
    move-exception v0

    .line 761
    .restart local v0       #e:Ljava/lang/Exception;
    const-string v2, "HibernateThread"

    const-string v3, "Failed to vibrate during shutdown."

    invoke-static {v2, v3, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method private resetProperty()V
    .locals 2

    .prologue
    .line 780
    const-string v0, "sys.hibernate.state"

    const-string v1, "hibernating"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 781
    return-void
.end method

.method public static shutdown(Landroid/content/Context;Z)V
    .locals 8
    .parameter "context"
    .parameter "confirm"

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    const-string v6, "battery_level"

    const/16 v7, 0x32

    invoke-static {v5, v6, v7}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 154
    .local v0, batteryLevel:I
    const/4 v5, 0x5

    if-ge v0, v5, :cond_0

    .line 155
    invoke-static {}, Lcom/android/server/power/PowerManagerService;->lowLevelShutdown()V

    .line 194
    :goto_0
    return-void

    .line 161
    :cond_0
    sget-object v6, Lcom/android/server/pm/HibernateThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v6

    .line 162
    :try_start_0
    sget-boolean v5, Lcom/android/server/pm/HibernateThread;->sIsStarted:Z

    if-eqz v5, :cond_1

    .line 163
    const-string v5, "HibernateThread"

    const-string v7, "Request to shutdown already running, returning."

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    monitor-exit v6

    goto :goto_0

    .line 166
    :catchall_0
    move-exception v5

    monitor-exit v6
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v5

    :cond_1
    :try_start_1
    monitor-exit v6
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 167
    const-string v5, "HibernateThread"

    const-string v6, "quick boot power off...."

    invoke-static {v5, v6}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    if-eqz p1, :cond_3

    .line 169
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const v6, 0x10e001c

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v3

    .line 171
    .local v3, longPressBehavior:I
    const/4 v5, 0x2

    if-ne v3, v5, :cond_2

    const v4, 0x10400c2

    .line 174
    .local v4, resourceId:I
    :goto_1
    const-string v5, "HibernateThread"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Notifying thread to start shutdown longPressBehavior="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    new-instance v1, Lcom/android/server/pm/HibernateThread$CloseDialogReceiver;

    invoke-direct {v1, p0}, Lcom/android/server/pm/HibernateThread$CloseDialogReceiver;-><init>(Landroid/content/Context;)V

    .line 177
    .local v1, closer:Lcom/android/server/pm/HibernateThread$CloseDialogReceiver;
    new-instance v5, Landroid/app/AlertDialog$Builder;

    invoke-direct {v5, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    const v6, 0x10400bc

    invoke-virtual {v5, v6}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040013

    new-instance v7, Lcom/android/server/pm/HibernateThread$1;

    invoke-direct {v7, p0}, Lcom/android/server/pm/HibernateThread$1;-><init>(Landroid/content/Context;)V

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    const v6, 0x1040009

    const/4 v7, 0x0

    invoke-virtual {v5, v6, v7}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v2

    .line 187
    .local v2, dialog:Landroid/app/AlertDialog;
    iput-object v2, v1, Lcom/android/server/pm/HibernateThread$CloseDialogReceiver;->dialog:Landroid/app/Dialog;

    .line 188
    invoke-virtual {v2, v1}, Landroid/app/AlertDialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 189
    invoke-virtual {v2}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const/16 v6, 0x7d9

    invoke-virtual {v5, v6}, Landroid/view/Window;->setType(I)V

    .line 190
    invoke-virtual {v2}, Landroid/app/AlertDialog;->show()V

    goto/16 :goto_0

    .line 171
    .end local v1           #closer:Lcom/android/server/pm/HibernateThread$CloseDialogReceiver;
    .end local v2           #dialog:Landroid/app/AlertDialog;
    .end local v4           #resourceId:I
    :cond_2
    const v4, 0x10400c1

    goto :goto_1

    .line 192
    .end local v3           #longPressBehavior:I
    :cond_3
    invoke-static {p0}, Lcom/android/server/pm/HibernateThread;->beginShutdownSequence(Landroid/content/Context;)V

    goto/16 :goto_0
.end method

.method private shutdownRadios(I)V
    .locals 12
    .parameter "timeout"

    .prologue
    const/4 v11, 0x0

    .line 368
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v7

    int-to-long v9, p1

    add-long v1, v7, v9

    .line 369
    .local v1, endTime:J
    const/4 v7, 0x1

    new-array v0, v7, [Z

    .line 370
    .local v0, done:[Z
    new-instance v6, Lcom/android/server/pm/HibernateThread$5;

    invoke-direct {v6, p0, v1, v2, v0}, Lcom/android/server/pm/HibernateThread$5;-><init>(Lcom/android/server/pm/HibernateThread;J[Z)V

    .line 580
    .local v6, t:Ljava/lang/Thread;
    invoke-virtual {v6}, Ljava/lang/Thread;->start()V

    .line 582
    int-to-long v7, p1

    :try_start_0
    invoke-virtual {v6, v7, v8}, Ljava/lang/Thread;->join(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_1

    .line 585
    :goto_0
    aget-boolean v7, v0, v11

    if-nez v7, :cond_0

    .line 586
    const-string v7, "HibernateThread"

    const-string v8, "Timed out waiting for Bluetooth Radio and Wifi shutdown."

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 587
    const/4 v7, 0x0

    invoke-static {v11, v7}, Lcom/android/server/pm/HibernateThread;->rebootOrShutdown(ZLjava/lang/String;)V

    .line 610
    :goto_1
    return-void

    .line 589
    :cond_0
    sget-object v7, Lcom/android/server/pm/HibernateThread;->mProcess:Ljava/lang/Process;

    if-eqz v7, :cond_3

    .line 590
    const-string v7, "HibernateThread"

    const-string v8, "Waiting for shutdown animation..."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 591
    sget-object v7, Lcom/android/server/pm/HibernateThread;->mProcess:Ljava/lang/Process;

    invoke-virtual {v7}, Ljava/lang/Process;->getErrorStream()Ljava/io/InputStream;

    move-result-object v5

    .line 592
    .local v5, stream:Ljava/io/InputStream;
    if-eqz v5, :cond_2

    .line 594
    :try_start_1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    .line 595
    .local v3, now:J
    :goto_2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v7

    sub-long/2addr v7, v3

    const-wide/16 v9, 0x1388

    cmp-long v7, v7, v9

    if-gtz v7, :cond_1

    .line 596
    invoke-virtual {v5}, Ljava/io/InputStream;->available()I

    move-result v7

    if-lez v7, :cond_4

    .line 601
    :cond_1
    invoke-virtual {v5}, Ljava/io/InputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0

    .line 605
    .end local v3           #now:J
    :cond_2
    :goto_3
    const-string v7, "HibernateThread"

    const-string v8, "Shutdown animation completed."

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    .end local v5           #stream:Ljava/io/InputStream;
    :cond_3
    invoke-direct {p0}, Lcom/android/server/pm/HibernateThread;->Hibernate()V

    goto :goto_1

    .line 599
    .restart local v3       #now:J
    .restart local v5       #stream:Ljava/io/InputStream;
    :cond_4
    const-wide/16 v7, 0x1f4

    :try_start_2
    invoke-static {v7, v8}, Landroid/os/SystemClock;->sleep(J)V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_2

    .line 602
    .end local v3           #now:J
    :catch_0
    move-exception v7

    goto :goto_3

    .line 583
    .end local v5           #stream:Ljava/io/InputStream;
    :catch_1
    move-exception v7

    goto :goto_0
.end method


# virtual methods
.method actionDone()V
    .locals 2

    .prologue
    .line 279
    iget-object v1, p0, Lcom/android/server/pm/HibernateThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v1

    .line 280
    const/4 v0, 0x1

    :try_start_0
    iput-boolean v0, p0, Lcom/android/server/pm/HibernateThread;->mActionDone:Z

    .line 281
    iget-object v0, p0, Lcom/android/server/pm/HibernateThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->notifyAll()V

    .line 282
    monitor-exit v1

    .line 283
    return-void

    .line 282
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public run()V
    .locals 11

    .prologue
    const/4 v10, 0x1

    const/4 v7, 0x0

    .line 296
    invoke-direct {p0}, Lcom/android/server/pm/HibernateThread;->displayHomeScreen()V

    .line 298
    invoke-direct {p0}, Lcom/android/server/pm/HibernateThread;->resetProperty()V

    .line 300
    const-string v6, "persist.sys.hibernate.debug"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v6

    iput-boolean v6, p0, Lcom/android/server/pm/HibernateThread;->DEBUG:Z

    .line 302
    const-string v6, "persist.sys.usb.config"

    const-string v7, "mtp,adb"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 303
    .local v5, usbConfig:Ljava/lang/String;
    iget-object v6, p0, Lcom/android/server/pm/HibernateThread;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "persist_sys_usb_config"

    invoke-static {v6, v7, v5}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 304
    const-string v6, "mass_storage"

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 305
    sget-object v6, Lcom/android/server/pm/HibernateThread;->mStorageManager:Landroid/os/storage/StorageManager;

    invoke-virtual {v6}, Landroid/os/storage/StorageManager;->disableUsbMassStorage()V

    .line 308
    :cond_0
    const-string v6, "HibernateThread"

    const-string v7, "quick boot,set usb type to charge_only when power off"

    invoke-static {v6, v7}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const-string v6, "sys.usb.config"

    const-string v7, "charge_only"

    invoke-static {v6, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    new-instance v0, Lcom/android/server/pm/HibernateThread$3;

    invoke-direct {v0, p0}, Lcom/android/server/pm/HibernateThread$3;-><init>(Lcom/android/server/pm/HibernateThread;)V

    .line 318
    .local v0, br:Landroid/content/BroadcastReceiver;
    const-string v6, "HibernateThread"

    const-string v7, "Sending hibernate broadcast..."

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 320
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v6

    const-wide/16 v8, 0x7d0

    add-long v3, v6, v8

    .line 321
    .local v3, endTime:J
    iget-object v7, p0, Lcom/android/server/pm/HibernateThread;->mActionDoneSync:Ljava/lang/Object;

    monitor-enter v7

    .line 322
    :goto_0
    :try_start_0
    iget-boolean v6, p0, Lcom/android/server/pm/HibernateThread;->mActionDone:Z

    if-nez v6, :cond_1

    .line 323
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v8

    sub-long v1, v3, v8

    .line 324
    .local v1, delay:J
    const-wide/16 v8, 0x0

    cmp-long v6, v1, v8

    if-gtz v6, :cond_3

    .line 325
    const-string v6, "HibernateThread"

    const-string v8, "hibernate broadcast timed out"

    invoke-static {v6, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 333
    .end local v1           #delay:J
    :cond_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 336
    iget-object v6, p0, Lcom/android/server/pm/HibernateThread;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v6

    const-string v7, "persist.sys.quickboot.modereset"

    invoke-static {v6, v7, v10}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 339
    const/16 v6, 0xbb8

    invoke-direct {p0, v6}, Lcom/android/server/pm/HibernateThread;->shutdownRadios(I)V

    .line 341
    sget-boolean v6, Lcom/android/server/pm/HibernateThread;->isCharging:Z

    if-ne v6, v10, :cond_2

    .line 342
    iget-object v6, p0, Lcom/android/server/pm/HibernateThread;->mChargerHandler:Landroid/os/Handler;

    new-instance v7, Lcom/android/server/pm/HibernateThread$4;

    invoke-direct {v7, p0}, Lcom/android/server/pm/HibernateThread$4;-><init>(Lcom/android/server/pm/HibernateThread;)V

    const-wide/16 v8, 0x1770

    invoke-virtual {v6, v7, v8, v9}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 359
    :cond_2
    sget-object v7, Lcom/android/server/pm/HibernateThread;->sIsStartedGuard:Ljava/lang/Object;

    monitor-enter v7

    .line 360
    const/4 v6, 0x0

    :try_start_1
    sput-boolean v6, Lcom/android/server/pm/HibernateThread;->sIsStarted:Z

    .line 361
    const/4 v6, 0x0

    sput-object v6, Lcom/android/server/pm/HibernateThread;->sInstance:Lcom/android/server/pm/HibernateThread;

    .line 362
    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 363
    return-void

    .line 329
    .restart local v1       #delay:J
    :cond_3
    :try_start_2
    iget-object v6, p0, Lcom/android/server/pm/HibernateThread;->mActionDoneSync:Ljava/lang/Object;

    invoke-virtual {v6, v1, v2}, Ljava/lang/Object;->wait(J)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/InterruptedException; {:try_start_2 .. :try_end_2} :catch_0

    goto :goto_0

    .line 330
    :catch_0
    move-exception v6

    goto :goto_0

    .line 333
    .end local v1           #delay:J
    :catchall_0
    move-exception v6

    :try_start_3
    monitor-exit v7
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    throw v6

    .line 362
    :catchall_1
    move-exception v6

    :try_start_4
    monitor-exit v7
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_1

    throw v6
.end method
