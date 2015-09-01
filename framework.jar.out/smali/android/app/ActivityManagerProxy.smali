.class Landroid/app/ActivityManagerProxy;
.super Ljava/lang/Object;
.source "ActivityManagerNative.java"

# interfaces
.implements Landroid/app/IActivityManager;


# instance fields
.field private mRemote:Landroid/os/IBinder;


# direct methods
.method public constructor <init>(Landroid/os/IBinder;)V
    .locals 0
    .parameter "remote"

    .prologue
    .line 2060
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2061
    iput-object p1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    .line 2062
    return-void
.end method


# virtual methods
.method public activityDestroyed(Landroid/os/IBinder;)V
    .locals 5
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2504
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2505
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2506
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2507
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2508
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3e

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2509
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2510
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2511
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2512
    return-void
.end method

.method public activityIdle(Landroid/os/IBinder;Landroid/content/res/Configuration;Z)V
    .locals 8
    .parameter "token"
    .parameter "config"
    .parameter "stopProfiling"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 2431
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timeline: Activity_idle id: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2434
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2435
    .local v1, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2436
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2437
    if-eqz p2, :cond_1

    .line 2438
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2439
    invoke-virtual {p2, v0, v2}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2443
    :goto_0
    if-eqz p3, :cond_0

    move v2, v3

    :cond_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2444
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x12

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2445
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2446
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2447
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2448
    return-void

    .line 2441
    :cond_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public activityPaused(Landroid/os/IBinder;)V
    .locals 5
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2463
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2464
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2465
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2466
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x13

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2467
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2468
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2469
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2470
    return-void
.end method

.method public activityResumed(Landroid/os/IBinder;)V
    .locals 5
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2451
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2452
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2453
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2454
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2455
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x27

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2456
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2458
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2459
    return-void
.end method

.method public activitySlept(Landroid/os/IBinder;)V
    .locals 5
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2493
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2494
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2495
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2496
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2497
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7b

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2498
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2501
    return-void
.end method

.method public activityStopped(Landroid/os/IBinder;Landroid/os/Bundle;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "token"
    .parameter "state"
    .parameter "thumbnail"
    .parameter "description"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2474
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2475
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2476
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2477
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2478
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2479
    if-eqz p3, :cond_0

    .line 2480
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2481
    invoke-virtual {p3, v0, v3}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2485
    :goto_0
    invoke-static {p4, v0, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 2486
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x14

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2487
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2488
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2489
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2490
    return-void

    .line 2483
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public appNotRespondingViaProvider(Landroid/os/IBinder;)V
    .locals 5
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2930
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2931
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2932
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2933
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2934
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb7

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2935
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2936
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2937
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2938
    return-void
.end method

.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 2066
    iget-object v0, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    return-object v0
.end method

.method public attachApplication(Landroid/app/IApplicationThread;)V
    .locals 5
    .parameter "app"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2419
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2420
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2421
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2422
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2423
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x11

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2424
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2425
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2426
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2427
    return-void
.end method

.method public backupAgentCreated(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .parameter "packageName"
    .parameter "agent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3164
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3165
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3166
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3167
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3168
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3169
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3170
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3171
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3172
    return-void
.end method

.method public bindBackupAgent(Landroid/content/pm/ApplicationInfo;I)Z
    .locals 5
    .parameter "app"
    .parameter "backupRestoreMode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3141
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3142
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3143
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3144
    invoke-virtual {p1, v0, v2}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3145
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3146
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3147
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3148
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3149
    .local v2, success:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3150
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3151
    return v2
.end method

.method public bindService(Landroid/app/IApplicationThread;Landroid/os/IBinder;Landroid/content/Intent;Ljava/lang/String;Landroid/app/IServiceConnection;II)I
    .locals 6
    .parameter "caller"
    .parameter "token"
    .parameter "service"
    .parameter "resolvedType"
    .parameter "connection"
    .parameter "flags"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3051
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3052
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3053
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3054
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3055
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3056
    invoke-virtual {p3, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3057
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3058
    invoke-interface {p5}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3059
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3060
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3061
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x24

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3062
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3063
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3064
    .local v2, res:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3065
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3066
    return v2

    .line 3054
    .end local v2           #res:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public broadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;Landroid/content/IIntentReceiver;ILjava/lang/String;Landroid/os/Bundle;Ljava/lang/String;IZZI)I
    .locals 7
    .parameter "caller"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "resultTo"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "map"
    .parameter "requiredPermission"
    .parameter "appOp"
    .parameter "serialized"
    .parameter "sticky"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2366
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2367
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2368
    .local v2, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2369
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2370
    const/4 v4, 0x0

    invoke-virtual {p2, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2371
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2372
    if-eqz p4, :cond_1

    invoke-interface {p4}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2373
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 2374
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2375
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2376
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2377
    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2378
    if-eqz p10, :cond_2

    const/4 v4, 0x1

    :goto_2
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2379
    if-eqz p11, :cond_3

    const/4 v4, 0x1

    :goto_3
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2380
    move/from16 v0, p12

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2381
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xe

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2382
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2383
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2384
    .local v3, res:I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2385
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2386
    return v3

    .line 2369
    .end local v3           #res:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2372
    :cond_1
    const/4 v4, 0x0

    goto :goto_1

    .line 2378
    :cond_2
    const/4 v4, 0x0

    goto :goto_2

    .line 2379
    :cond_3
    const/4 v4, 0x0

    goto :goto_3
.end method

.method public cancelIntentSender(Landroid/content/IIntentSender;)V
    .locals 5
    .parameter "sender"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3328
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3329
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3330
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3331
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3332
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x40

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3333
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3334
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3335
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3336
    return-void
.end method

.method public checkGrantUriPermission(ILjava/lang/String;Landroid/net/Uri;I)I
    .locals 6
    .parameter "callingUid"
    .parameter "targetPkg"
    .parameter "uri"
    .parameter "modeFlags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4130
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4131
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4132
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4133
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4134
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4135
    invoke-virtual {p3, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4136
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4137
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x77

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4138
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4139
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4140
    .local v2, res:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4141
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4142
    return v2
.end method

.method public checkPermission(Ljava/lang/String;II)I
    .locals 6
    .parameter "permission"
    .parameter "pid"
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3418
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3419
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3420
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3421
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3422
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3423
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3424
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x35

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3425
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3426
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3427
    .local v2, res:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3428
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3429
    return v2
.end method

.method public checkUriPermission(Landroid/net/Uri;III)I
    .locals 6
    .parameter "uri"
    .parameter "pid"
    .parameter "uid"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3448
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3449
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3450
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3451
    invoke-virtual {p1, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3452
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3453
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3454
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3455
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x36

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3456
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3457
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3458
    .local v2, res:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3459
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3460
    return v2
.end method

.method public clearApplicationUserData(Ljava/lang/String;Landroid/content/pm/IPackageDataObserver;I)Z
    .locals 5
    .parameter "packageName"
    .parameter "observer"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3433
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3434
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3435
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3436
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3437
    if-eqz p2, :cond_1

    invoke-interface {p2}, Landroid/content/pm/IPackageDataObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3438
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3439
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4e

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3440
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3441
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3442
    .local v2, res:Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3443
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3444
    return v2

    .line 3437
    .end local v2           #res:Z
    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public clearPendingBackup()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3155
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3156
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3157
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3158
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3159
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3160
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3161
    return-void
.end method

.method public closeSystemDialogs(Ljava/lang/String;)V
    .locals 5
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3898
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3899
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3900
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3901
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3902
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x61

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3903
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3904
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3905
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3906
    return-void
.end method

.method public convertFromTranslucent(Landroid/os/IBinder;)Z
    .locals 5
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3984
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3985
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3986
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3987
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3988
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xae

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3989
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3990
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3991
    .local v2, res:Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3992
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3993
    return v2
.end method

.method public convertToTranslucent(Landroid/os/IBinder;)Z
    .locals 5
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3998
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3999
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4000
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4001
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4002
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xaf

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4003
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4004
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4005
    .local v2, res:Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4006
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4007
    return v2
.end method

.method public crashApplication(IILjava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "uid"
    .parameter "initialPid"
    .parameter "packageName"
    .parameter "message"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4052
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4053
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4054
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4055
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4056
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4057
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4058
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4059
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x72

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4060
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4061
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4062
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4063
    return-void
.end method

.method public createStack(IIIF)I
    .locals 6
    .parameter "taskId"
    .parameter "relativeStackBoxId"
    .parameter "position"
    .parameter "weight"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2732
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2733
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2734
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2735
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2736
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2737
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2738
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2739
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa8

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2740
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2741
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2742
    .local v2, res:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2743
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2744
    return v2
.end method

.method public dismissKeyguardOnNextActivity()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4462
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4463
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4464
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4465
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4466
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4467
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4468
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4469
    return-void
.end method

.method public dumpHeap(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;)Z
    .locals 7
    .parameter "process"
    .parameter "userId"
    .parameter "managed"
    .parameter "path"
    .parameter "fd"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4147
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4148
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4149
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4150
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4151
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4152
    if-eqz p3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4153
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4154
    if-eqz p5, :cond_1

    .line 4155
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4156
    invoke-virtual {p5, v0, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4160
    :goto_1
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x78

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4161
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4162
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v2, v4

    .line 4163
    .local v2, res:Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4164
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4165
    return v2

    .end local v2           #res:Z
    :cond_0
    move v3, v5

    .line 4152
    goto :goto_0

    .line 4158
    :cond_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    move v2, v5

    .line 4162
    goto :goto_2
.end method

.method public enterSafeMode()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3649
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3650
    .local v0, data:Landroid/os/Parcel;
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3651
    iget-object v1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x42

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3652
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3653
    return-void
.end method

.method public finishActivity(Landroid/os/IBinder;ILandroid/content/Intent;)Z
    .locals 6
    .parameter "token"
    .parameter "resultCode"
    .parameter "resultData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 2270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2271
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2272
    .local v1, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2273
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2274
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2275
    if-eqz p3, :cond_0

    .line 2276
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2277
    invoke-virtual {p3, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2281
    :goto_0
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xb

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2282
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2283
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 2284
    .local v2, res:Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2285
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2286
    return v2

    .line 2279
    .end local v2           #res:Z
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 2283
    goto :goto_1
.end method

.method public finishActivityAffinity(Landroid/os/IBinder;)Z
    .locals 5
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2302
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2303
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2304
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2305
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2306
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x95

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2307
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2308
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2309
    .local v2, res:Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2310
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2311
    return v2
.end method

.method public finishHeavyWeightApp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3973
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3974
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3975
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3976
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3977
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3978
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3979
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3980
    return-void
.end method

.method public finishInstrumentation(Landroid/app/IApplicationThread;ILandroid/os/Bundle;)V
    .locals 5
    .parameter "target"
    .parameter "resultCode"
    .parameter "results"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3208
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3209
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3210
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3211
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3212
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3213
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3214
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3215
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3216
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3217
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3218
    return-void

    .line 3211
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public finishReceiver(Landroid/os/IBinder;ILjava/lang/String;Landroid/os/Bundle;Z)V
    .locals 5
    .parameter "who"
    .parameter "resultCode"
    .parameter "resultData"
    .parameter "map"
    .parameter "abortBroadcast"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 2404
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2405
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2406
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2407
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2408
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2409
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2410
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 2411
    if-eqz p5, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2412
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x10

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2413
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2414
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2415
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2416
    return-void

    .line 2411
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public finishSubActivity(Landroid/os/IBinder;Ljava/lang/String;I)V
    .locals 5
    .parameter "token"
    .parameter "resultWho"
    .parameter "requestCode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2290
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2291
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2292
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2293
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2294
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2295
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2296
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x20

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2297
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2298
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2299
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2300
    return-void
.end method

.method public forceStopPackage(Ljava/lang/String;I)V
    .locals 5
    .parameter "packageName"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3787
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3788
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3789
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3790
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3791
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3792
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3793
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3794
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3795
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3796
    return-void
.end method

.method public getActivityClassForToken(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 6
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3268
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3269
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3270
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3271
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3272
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x31

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3273
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3274
    invoke-static {v1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v2

    .line 3275
    .local v2, res:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3276
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3277
    return-object v2
.end method

.method public getAssistContextExtras(I)Landroid/os/Bundle;
    .locals 6
    .parameter "requestType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4583
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4584
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4585
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4586
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4587
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa2

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4588
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4589
    invoke-virtual {v1}, Landroid/os/Parcel;->readBundle()Landroid/os/Bundle;

    move-result-object v2

    .line 4590
    .local v2, res:Landroid/os/Bundle;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4591
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4592
    return-object v2
.end method

.method public getCallingActivity(Landroid/os/IBinder;)Landroid/content/ComponentName;
    .locals 6
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2528
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2529
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2530
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2531
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2532
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x16

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2533
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2534
    invoke-static {v1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v2

    .line 2535
    .local v2, res:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2536
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2537
    return-object v2
.end method

.method public getCallingPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 6
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2515
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2516
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2517
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2518
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2519
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x15

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2520
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2521
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 2522
    .local v2, res:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2523
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2524
    return-object v2
.end method

.method public getConfiguration()Landroid/content/res/Configuration;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3221
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3222
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3223
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3224
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3225
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3226
    sget-object v3, Landroid/content/res/Configuration;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/res/Configuration;

    .line 3227
    .local v2, res:Landroid/content/res/Configuration;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3228
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3229
    return-object v2
.end method

.method public getContentProvider(Landroid/app/IApplicationThread;Ljava/lang/String;IZ)Landroid/app/IActivityManager$ContentProviderHolder;
    .locals 7
    .parameter "caller"
    .parameter "name"
    .parameter "userId"
    .parameter "stable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2851
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2852
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2853
    .local v2, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2854
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2855
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2856
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2857
    if-eqz p4, :cond_2

    const/4 v4, 0x1

    :goto_1
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2858
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x1d

    invoke-interface {v4, v6, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2859
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2860
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2861
    .local v3, res:I
    const/4 v0, 0x0

    .line 2862
    .local v0, cph:Landroid/app/IActivityManager$ContentProviderHolder;
    if-eqz v3, :cond_0

    .line 2863
    sget-object v4, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    check-cast v0, Landroid/app/IActivityManager$ContentProviderHolder;

    .line 2865
    .restart local v0       #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2866
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2867
    return-object v0

    .line 2854
    .end local v0           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    .end local v3           #res:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    :cond_2
    move v4, v5

    .line 2857
    goto :goto_1
.end method

.method public getContentProviderExternal(Ljava/lang/String;ILandroid/os/IBinder;)Landroid/app/IActivityManager$ContentProviderHolder;
    .locals 7
    .parameter "name"
    .parameter "userId"
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2871
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2872
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2873
    .local v2, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2874
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2875
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2876
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2877
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x8d

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2878
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2879
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2880
    .local v3, res:I
    const/4 v0, 0x0

    .line 2881
    .local v0, cph:Landroid/app/IActivityManager$ContentProviderHolder;
    if-eqz v3, :cond_0

    .line 2882
    sget-object v4, Landroid/app/IActivityManager$ContentProviderHolder;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    check-cast v0, Landroid/app/IActivityManager$ContentProviderHolder;

    .line 2884
    .restart local v0       #cph:Landroid/app/IActivityManager$ContentProviderHolder;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2885
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2886
    return-object v0
.end method

.method public getCurrentUser()Landroid/content/pm/UserInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4297
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4298
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4299
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4300
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x91

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4301
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4302
    sget-object v3, Landroid/content/pm/UserInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/UserInfo;

    .line 4303
    .local v2, userInfo:Landroid/content/pm/UserInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4304
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4305
    return-object v2
.end method

.method public getDeviceConfigurationInfo()Landroid/content/pm/ConfigurationInfo;
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3813
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3814
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3815
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3816
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x54

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3817
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3818
    sget-object v3, Landroid/content/pm/ConfigurationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/content/pm/ConfigurationInfo;

    .line 3819
    .local v2, res:Landroid/content/pm/ConfigurationInfo;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3820
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3821
    return-object v2
.end method

.method public getFrontActivityScreenCompatMode()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4195
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4196
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4197
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4198
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4199
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4200
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4201
    .local v1, mode:I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4203
    return v1
.end method

.method public getIntentForIntentSender(Landroid/content/IIntentSender;)Landroid/content/Intent;
    .locals 6
    .parameter "sender"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4411
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4412
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4413
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4414
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4415
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa1

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4416
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4417
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    sget-object v3, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/Intent;

    move-object v2, v3

    .line 4419
    .local v2, res:Landroid/content/Intent;
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4420
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4421
    return-object v2

    .line 4417
    .end local v2           #res:Landroid/content/Intent;
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public getIntentSender(ILjava/lang/String;Landroid/os/IBinder;Ljava/lang/String;I[Landroid/content/Intent;[Ljava/lang/String;ILandroid/os/Bundle;I)Landroid/content/IIntentSender;
    .locals 7
    .parameter "type"
    .parameter "packageName"
    .parameter "token"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "intents"
    .parameter "resolvedTypes"
    .parameter "flags"
    .parameter "options"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3296
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3297
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3298
    .local v2, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3299
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3300
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3301
    invoke-virtual {v1, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3302
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3303
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 3304
    if-eqz p6, :cond_0

    .line 3305
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3306
    const/4 v4, 0x0

    invoke-virtual {v1, p6, v4}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 3307
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 3311
    :goto_0
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 3312
    if-eqz p9, :cond_1

    .line 3313
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3314
    const/4 v4, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3318
    :goto_1
    move/from16 v0, p10

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 3319
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x3f

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3320
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3321
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v4

    invoke-static {v4}, Landroid/content/IIntentSender$Stub;->asInterface(Landroid/os/IBinder;)Landroid/content/IIntentSender;

    move-result-object v3

    .line 3323
    .local v3, res:Landroid/content/IIntentSender;
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3324
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3325
    return-object v3

    .line 3309
    .end local v3           #res:Landroid/content/IIntentSender;
    :cond_0
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 3316
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public getLaunchedFromPackage(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 6
    .parameter "activityToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4522
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4523
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4524
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4525
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4526
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa4

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4527
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4528
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4529
    .local v2, result:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4530
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4531
    return-object v2
.end method

.method public getLaunchedFromUid(Landroid/os/IBinder;)I
    .locals 6
    .parameter "activityToken"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4509
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4510
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4511
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4512
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4513
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x96

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4514
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4515
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4516
    .local v2, result:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4517
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4518
    return v2
.end method

.method public getMemoryInfo(Landroid/app/ActivityManager$MemoryInfo;)V
    .locals 5
    .parameter "outInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3547
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3548
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3549
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x4c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3550
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3551
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager$MemoryInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 3552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3554
    return-void
.end method

.method public getMyMemoryState(Landroid/app/ActivityManager$RunningAppProcessInfo;)V
    .locals 5
    .parameter "outInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3801
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3802
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3803
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3804
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3805
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3806
    invoke-virtual {p1, v1}, Landroid/app/ActivityManager$RunningAppProcessInfo;->readFromParcel(Landroid/os/Parcel;)V

    .line 3807
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3808
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3809
    return-void
.end method

.method public getPackageAskScreenCompat(Ljava/lang/String;)Z
    .locals 5
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 4244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4245
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4246
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4247
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4248
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x80

    invoke-interface {v3, v4, v1, v2, v0}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4249
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4250
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v0, 0x1

    .line 4251
    .local v0, ask:Z
    :cond_0
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4253
    return v0
.end method

.method public getPackageForIntentSender(Landroid/content/IIntentSender;)Ljava/lang/String;
    .locals 6
    .parameter "sender"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3338
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3339
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3340
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3341
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3342
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x41

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3343
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3344
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3345
    .local v2, res:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3346
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3347
    return-object v2
.end method

.method public getPackageForToken(Landroid/os/IBinder;)Ljava/lang/String;
    .locals 6
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3281
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3282
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3283
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3284
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3285
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x32

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3286
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3287
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 3288
    .local v2, res:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3289
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3290
    return-object v2
.end method

.method public getPackageScreenCompatMode(Ljava/lang/String;)I
    .locals 6
    .parameter "packageName"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4219
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 4220
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4221
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4222
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x7e

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4223
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 4224
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 4225
    .local v1, mode:I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 4226
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4227
    return v1
.end method

.method public getPersistedUriPermissions(Ljava/lang/String;Z)Landroid/content/pm/ParceledListSlice;
    .locals 6
    .parameter "packageName"
    .parameter "incoming"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Z)",
            "Landroid/content/pm/ParceledListSlice",
            "<",
            "Landroid/content/UriPermission;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3519
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3520
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3521
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3522
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3523
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3524
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xb6

    invoke-interface {v3, v5, v0, v2, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3525
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3526
    sget-object v3, Landroid/content/pm/ParceledListSlice;->CREATOR:Landroid/os/Parcelable$ClassLoaderCreator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$ClassLoaderCreator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ParceledListSlice;

    .line 3528
    .local v1, perms:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3529
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3530
    return-object v1

    .end local v1           #perms:Landroid/content/pm/ParceledListSlice;,"Landroid/content/pm/ParceledListSlice<Landroid/content/UriPermission;>;"
    :cond_0
    move v3, v4

    .line 3523
    goto :goto_0
.end method

.method public getProcessLimit()I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3393
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3394
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3395
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3396
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x34

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3397
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3398
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3399
    .local v2, res:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3400
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3401
    return v2
.end method

.method public getProcessMemoryInfo([I)[Landroid/os/Debug$MemoryInfo;
    .locals 6
    .parameter "pids"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3910
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3911
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3912
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3913
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3914
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x62

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3915
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3916
    sget-object v3, Landroid/os/Debug$MemoryInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->createTypedArray(Landroid/os/Parcelable$Creator;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [Landroid/os/Debug$MemoryInfo;

    .line 3917
    .local v2, res:[Landroid/os/Debug$MemoryInfo;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3918
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3919
    return-object v2
.end method

.method public getProcessPss([I)[J
    .locals 6
    .parameter "pids"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4437
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4438
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4439
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4440
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 4441
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x89

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4442
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4443
    invoke-virtual {v1}, Landroid/os/Parcel;->createLongArray()[J

    move-result-object v2

    .line 4444
    .local v2, res:[J
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4445
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4446
    return-object v2
.end method

.method public getProcessesInErrorState()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$ProcessErrorStateInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2637
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2638
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2639
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2640
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2641
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2642
    sget-object v3, Landroid/app/ActivityManager$ProcessErrorStateInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2644
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$ProcessErrorStateInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2645
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2646
    return-object v1
.end method

.method public getProviderMimeType(Landroid/net/Uri;I)Ljava/lang/String;
    .locals 6
    .parameter "uri"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4066
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4067
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4068
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4069
    invoke-virtual {p1, v0, v5}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4070
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4071
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x73

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4072
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4073
    invoke-virtual {v1}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 4074
    .local v2, res:Ljava/lang/String;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4075
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4076
    return-object v2
.end method

.method public getRecentTasks(III)Ljava/util/List;
    .locals 6
    .parameter "maxNum"
    .parameter "flags"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(III)",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RecentTaskInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2568
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2569
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2570
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2571
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2572
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2573
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2574
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2575
    sget-object v3, Landroid/app/ActivityManager$RecentTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2577
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RecentTaskInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2578
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2579
    return-object v1
.end method

.method public getRequestedOrientation(Landroid/os/IBinder;)I
    .locals 6
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3255
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3256
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3257
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3258
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3259
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x47

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3260
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3261
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3262
    .local v2, res:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3263
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3264
    return v2
.end method

.method public getRunningAppProcesses()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$RunningAppProcessInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2650
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2651
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2652
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2653
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x53

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2654
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2655
    sget-object v3, Landroid/app/ActivityManager$RunningAppProcessInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2657
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$RunningAppProcessInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2658
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2659
    return-object v1
.end method

.method public getRunningExternalApplications()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2663
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2664
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2665
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2666
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6c

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2667
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2668
    sget-object v3, Landroid/content/pm/ApplicationInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2670
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2671
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2672
    return-object v1
.end method

.method public getRunningServiceControlPanel(Landroid/content/ComponentName;)Landroid/app/PendingIntent;
    .locals 6
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2967
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2968
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2969
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2970
    invoke-virtual {p1, v0, v5}, Landroid/content/ComponentName;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2971
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x21

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2972
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2973
    invoke-static {v1}, Landroid/app/PendingIntent;->readPendingIntentOrNullFromParcel(Landroid/os/Parcel;)Landroid/app/PendingIntent;

    move-result-object v2

    .line 2974
    .local v2, res:Landroid/app/PendingIntent;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2975
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2976
    return-object v2
.end method

.method public getRunningUserIds()[I
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4323
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4324
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4325
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4326
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4327
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4328
    invoke-virtual {v1}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v2

    .line 4329
    .local v2, result:[I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4330
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4331
    return-object v2
.end method

.method public getServices(II)Ljava/util/List;
    .locals 8
    .parameter "maxNum"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2612
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2613
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2614
    .local v4, reply:Landroid/os/Parcel;
    const-string v5, "android.app.IActivityManager"

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2615
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2616
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2617
    iget-object v5, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x51

    const/4 v7, 0x0

    invoke-interface {v5, v6, v1, v4, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2618
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 2619
    const/4 v3, 0x0

    .line 2620
    .local v3, list:Ljava/util/ArrayList;
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2621
    .local v0, N:I
    if-ltz v0, :cond_0

    .line 2622
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #list:Ljava/util/ArrayList;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2623
    .restart local v3       #list:Ljava/util/ArrayList;
    :goto_0
    if-lez v0, :cond_0

    .line 2624
    sget-object v5, Landroid/app/ActivityManager$RunningServiceInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningServiceInfo;

    .line 2627
    .local v2, info:Landroid/app/ActivityManager$RunningServiceInfo;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2628
    add-int/lit8 v0, v0, -0x1

    .line 2629
    goto :goto_0

    .line 2631
    .end local v2           #info:Landroid/app/ActivityManager$RunningServiceInfo;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2632
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2633
    return-object v3
.end method

.method public getStackBoxInfo(I)Landroid/app/ActivityManager$StackBoxInfo;
    .locals 7
    .parameter "stackBoxId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2789
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2790
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2791
    .local v2, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2792
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2793
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xad

    const/4 v6, 0x0

    invoke-interface {v4, v5, v0, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2794
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2795
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2796
    .local v3, res:I
    const/4 v1, 0x0

    .line 2797
    .local v1, info:Landroid/app/ActivityManager$StackBoxInfo;
    if-eqz v3, :cond_0

    .line 2798
    sget-object v4, Landroid/app/ActivityManager$StackBoxInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #info:Landroid/app/ActivityManager$StackBoxInfo;
    check-cast v1, Landroid/app/ActivityManager$StackBoxInfo;

    .line 2800
    .restart local v1       #info:Landroid/app/ActivityManager$StackBoxInfo;
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2801
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2802
    return-object v1
.end method

.method public getStackBoxes()Ljava/util/List;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/app/ActivityManager$StackBoxInfo;",
            ">;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2776
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2777
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2778
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2779
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xab

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2780
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2781
    sget-object v3, Landroid/app/ActivityManager$StackBoxInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-virtual {v2, v3}, Landroid/os/Parcel;->createTypedArrayList(Landroid/os/Parcelable$Creator;)Ljava/util/ArrayList;

    move-result-object v1

    .line 2782
    .local v1, list:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/ActivityManager$StackBoxInfo;>;"
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2783
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2784
    return-object v1
.end method

.method public getTaskForActivity(Landroid/os/IBinder;Z)I
    .locals 6
    .parameter "token"
    .parameter "onlyRoot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2818
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2819
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2820
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2821
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2822
    if-eqz p2, :cond_0

    const/4 v3, 0x1

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2823
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x1b

    invoke-interface {v3, v5, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2824
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2825
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2826
    .local v2, res:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2827
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2828
    return v2

    .end local v2           #res:I
    :cond_0
    move v3, v4

    .line 2822
    goto :goto_0
.end method

.method public getTaskThumbnails(I)Landroid/app/ActivityManager$TaskThumbnails;
    .locals 6
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2583
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2584
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2585
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2586
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x52

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2587
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2588
    const/4 v0, 0x0

    .line 2589
    .local v0, bm:Landroid/app/ActivityManager$TaskThumbnails;
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2590
    sget-object v3, Landroid/app/ActivityManager$TaskThumbnails;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bm:Landroid/app/ActivityManager$TaskThumbnails;
    check-cast v0, Landroid/app/ActivityManager$TaskThumbnails;

    .line 2592
    .restart local v0       #bm:Landroid/app/ActivityManager$TaskThumbnails;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2593
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2594
    return-object v0
.end method

.method public getTaskTopThumbnail(I)Landroid/graphics/Bitmap;
    .locals 6
    .parameter "id"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2598
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2599
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2600
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2601
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5f

    const/4 v5, 0x0

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2602
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2603
    const/4 v0, 0x0

    .line 2604
    .local v0, bm:Landroid/graphics/Bitmap;
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 2605
    sget-object v3, Landroid/graphics/Bitmap;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #bm:Landroid/graphics/Bitmap;
    check-cast v0, Landroid/graphics/Bitmap;

    .line 2607
    .restart local v0       #bm:Landroid/graphics/Bitmap;
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2608
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2609
    return-object v0
.end method

.method public getTasks(IILandroid/app/IThumbnailReceiver;)Ljava/util/List;
    .locals 8
    .parameter "maxNum"
    .parameter "flags"
    .parameter "receiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2541
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2542
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v4

    .line 2543
    .local v4, reply:Landroid/os/Parcel;
    const-string v5, "android.app.IActivityManager"

    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2544
    invoke-virtual {v1, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2545
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2546
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/app/IThumbnailReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :goto_0
    invoke-virtual {v1, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2547
    iget-object v5, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x17

    const/4 v7, 0x0

    invoke-interface {v5, v6, v1, v4, v7}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2548
    invoke-virtual {v4}, Landroid/os/Parcel;->readException()V

    .line 2549
    const/4 v3, 0x0

    .line 2550
    .local v3, list:Ljava/util/ArrayList;
    invoke-virtual {v4}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 2551
    .local v0, N:I
    if-ltz v0, :cond_1

    .line 2552
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #list:Ljava/util/ArrayList;
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 2553
    .restart local v3       #list:Ljava/util/ArrayList;
    :goto_1
    if-lez v0, :cond_1

    .line 2554
    sget-object v5, Landroid/app/ActivityManager$RunningTaskInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v5, v4}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActivityManager$RunningTaskInfo;

    .line 2557
    .local v2, info:Landroid/app/ActivityManager$RunningTaskInfo;
    invoke-virtual {v3, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 2558
    add-int/lit8 v0, v0, -0x1

    .line 2559
    goto :goto_1

    .line 2546
    .end local v0           #N:I
    .end local v2           #info:Landroid/app/ActivityManager$RunningTaskInfo;
    .end local v3           #list:Ljava/util/ArrayList;
    :cond_0
    const/4 v5, 0x0

    goto :goto_0

    .line 2561
    .restart local v0       #N:I
    .restart local v3       #list:Ljava/util/ArrayList;
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2562
    invoke-virtual {v4}, Landroid/os/Parcel;->recycle()V

    .line 2563
    return-object v3
.end method

.method public getUidForIntentSender(Landroid/content/IIntentSender;)I
    .locals 6
    .parameter "sender"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3350
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3351
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3352
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3353
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3354
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5d

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3355
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3356
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3357
    .local v2, res:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3359
    return v2
.end method

.method public goingToSleep()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3582
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3583
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3584
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3585
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x28

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3586
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3587
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3588
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3589
    return-void
.end method

.method public grantUriPermission(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/net/Uri;I)V
    .locals 5
    .parameter "caller"
    .parameter "targetPkg"
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3464
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3465
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3466
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3467
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3468
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3469
    invoke-virtual {p3, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3470
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3471
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3472
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3473
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3474
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3475
    return-void
.end method

.method public grantUriPermissionFromOwner(Landroid/os/IBinder;ILjava/lang/String;Landroid/net/Uri;I)V
    .locals 5
    .parameter "owner"
    .parameter "fromUid"
    .parameter "targetPkg"
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4095
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4096
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4097
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4098
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4099
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4100
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4101
    invoke-virtual {p4, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4102
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeInt(I)V

    .line 4103
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x37

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4104
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4105
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4106
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4107
    return-void
.end method

.method public handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    .locals 5
    .parameter "app"
    .parameter "crashInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3709
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3710
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3711
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3712
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3713
    invoke-virtual {p2, v0, v4}, Landroid/app/ApplicationErrorReport$CrashInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3714
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x2

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3715
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3716
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3717
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3718
    return-void
.end method

.method public handleApplicationStrictModeViolation(Landroid/os/IBinder;ILandroid/os/StrictMode$ViolationInfo;)V
    .locals 5
    .parameter "app"
    .parameter "violationMask"
    .parameter "info"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3741
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3742
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3743
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3744
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3745
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3746
    invoke-virtual {p3, v0, v4}, Landroid/os/StrictMode$ViolationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3747
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x6e

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3748
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3749
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3750
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3751
    return-void
.end method

.method public handleApplicationWtf(Landroid/os/IBinder;Ljava/lang/String;Landroid/app/ApplicationErrorReport$CrashInfo;)Z
    .locals 5
    .parameter "app"
    .parameter "tag"
    .parameter "crashInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3723
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3724
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3725
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3726
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3727
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3728
    invoke-virtual {p3, v0, v2}, Landroid/app/ApplicationErrorReport$CrashInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3729
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x66

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3730
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3731
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3732
    .local v2, res:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3733
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3734
    return v2
.end method

.method public handleIncomingUser(IIIZZLjava/lang/String;Ljava/lang/String;)I
    .locals 6
    .parameter "callingPid"
    .parameter "callingUid"
    .parameter "userId"
    .parameter "allowAll"
    .parameter "requireFull"
    .parameter "name"
    .parameter "callerPackage"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3364
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3365
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3366
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3367
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3368
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3369
    if-eqz p4, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3370
    if-eqz p5, :cond_1

    :goto_1
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3371
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3372
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3373
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x5e

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3374
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3375
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3376
    .local v2, res:I
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3377
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3378
    return v2

    .end local v2           #res:I
    :cond_0
    move v3, v5

    .line 3369
    goto :goto_0

    :cond_1
    move v4, v5

    .line 3370
    goto :goto_1
.end method

.method public hang(Landroid/os/IBinder;Z)V
    .locals 5
    .parameter "who"
    .parameter "allowRestart"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4621
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4622
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4623
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4624
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4625
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4626
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa7

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4627
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4628
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4629
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4630
    return-void

    :cond_0
    move v2, v3

    .line 4625
    goto :goto_0
.end method

.method public inputDispatchingTimedOut(IZLjava/lang/String;)J
    .locals 7
    .parameter "pid"
    .parameter "aboveSystem"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4568
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4569
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4570
    .local v1, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4571
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4572
    if-eqz p2, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 4573
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4574
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x9f

    invoke-interface {v4, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4575
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4576
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    int-to-long v2, v4

    .line 4577
    .local v2, res:J
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4578
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4579
    return-wide v2

    .end local v2           #res:J
    :cond_0
    move v4, v5

    .line 4572
    goto :goto_0
.end method

.method public isImmersive(Landroid/os/IBinder;)Z
    .locals 6
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4025
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4026
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4027
    .local v1, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4028
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4029
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x6f

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4030
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4031
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 4032
    .local v2, res:Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4033
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4034
    return v2

    .end local v2           #res:Z
    :cond_0
    move v2, v3

    .line 4031
    goto :goto_0
.end method

.method public isIntentSenderAnActivity(Landroid/content/IIntentSender;)Z
    .locals 5
    .parameter "sender"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4398
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4399
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4400
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4401
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4402
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x98

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4403
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4404
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4405
    .local v2, res:Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4406
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4407
    return v2
.end method

.method public isIntentSenderTargetedToPackage(Landroid/content/IIntentSender;)Z
    .locals 5
    .parameter "sender"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4385
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4386
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4387
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4388
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4389
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x87

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4390
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4391
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4392
    .local v2, res:Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4393
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4394
    return v2
.end method

.method public isTopActivityImmersive()Z
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4039
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4040
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4041
    .local v1, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4042
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x71

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4043
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4044
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-ne v4, v2, :cond_0

    .line 4045
    .local v2, res:Z
    :goto_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4047
    return v2

    .end local v2           #res:Z
    :cond_0
    move v2, v3

    .line 4044
    goto :goto_0
.end method

.method public isUserAMonkey()Z
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3950
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3951
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3952
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3953
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x68

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3954
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3955
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3956
    .local v2, res:Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3957
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3958
    return v2
.end method

.method public isUserRunning(IZ)Z
    .locals 7
    .parameter "userid"
    .parameter "orStopping"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 4309
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4310
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4311
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4312
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4313
    if-eqz p2, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4314
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x7a

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4315
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4316
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 4317
    .local v2, result:Z
    :goto_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4318
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4319
    return v2

    .end local v2           #result:Z
    :cond_0
    move v3, v5

    .line 4313
    goto :goto_0

    :cond_1
    move v2, v5

    .line 4316
    goto :goto_1
.end method

.method public killAllBackgroundProcesses()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3777
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3778
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3779
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3780
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3781
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3782
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3783
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3784
    return-void
.end method

.method public killApplicationProcess(Ljava/lang/String;I)V
    .locals 5
    .parameter "processName"
    .parameter "uid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3923
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3924
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3925
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3926
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3927
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3928
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x63

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3929
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3930
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3931
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3932
    return-void
.end method

.method public killApplicationWithAppId(Ljava/lang/String;ILjava/lang/String;)V
    .locals 5
    .parameter "pkg"
    .parameter "appid"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3885
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3886
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3887
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3888
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3889
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3890
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3891
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x60

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3892
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3893
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3894
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3895
    return-void
.end method

.method public killBackgroundProcesses(Ljava/lang/String;I)V
    .locals 5
    .parameter "packageName"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3765
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3766
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3767
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3768
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3769
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3770
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x67

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3771
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3772
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3773
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3774
    return-void
.end method

.method public killPids([ILjava/lang/String;Z)Z
    .locals 7
    .parameter "pids"
    .parameter "reason"
    .parameter "secure"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3662
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3663
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3664
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3665
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 3666
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3667
    if-eqz p3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3668
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x50

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3669
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3670
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 3671
    .local v2, res:Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3672
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3673
    return v2

    .end local v2           #res:Z
    :cond_0
    move v3, v5

    .line 3667
    goto :goto_0

    :cond_1
    move v2, v5

    .line 3670
    goto :goto_1
.end method

.method public killProcessesBelowForeground(Ljava/lang/String;)Z
    .locals 5
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3677
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3678
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3679
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3680
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3681
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x90

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3682
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3683
    .local v2, res:Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3684
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3685
    return v2
.end method

.method public killUid(ILjava/lang/String;)V
    .locals 5
    .parameter "uid"
    .parameter "reason"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4609
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4610
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4611
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4612
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4613
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4614
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa5

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4615
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4616
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4617
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4618
    return-void
.end method

.method public moveActivityTaskToBack(Landroid/os/IBinder;Z)Z
    .locals 7
    .parameter "token"
    .parameter "nonRoot"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 2705
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2706
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2707
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2708
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2709
    if-eqz p2, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2710
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x4b

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2711
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2712
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    move v2, v4

    .line 2713
    .local v2, res:Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2714
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2715
    return v2

    .end local v2           #res:Z
    :cond_0
    move v3, v5

    .line 2709
    goto :goto_0

    :cond_1
    move v2, v5

    .line 2712
    goto :goto_1
.end method

.method public moveTaskBackwards(I)V
    .locals 5
    .parameter "task"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2719
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2720
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2721
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2722
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2723
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1a

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2724
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2725
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2726
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2727
    return-void
.end method

.method public moveTaskToBack(I)V
    .locals 5
    .parameter "task"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2694
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2695
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2696
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2697
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2698
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x19

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2699
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2700
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2701
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2702
    return-void
.end method

.method public moveTaskToFront(IILandroid/os/Bundle;)V
    .locals 5
    .parameter "task"
    .parameter "flags"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2676
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2677
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2678
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2679
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2680
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2681
    if-eqz p3, :cond_0

    .line 2682
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2683
    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2687
    :goto_0
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x18

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2688
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2689
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2690
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2691
    return-void

    .line 2685
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public moveTaskToStack(IIZ)V
    .locals 5
    .parameter "taskId"
    .parameter "stackId"
    .parameter "toTop"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2749
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2750
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2751
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2752
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2753
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2754
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2755
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa9

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2756
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2757
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2758
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2759
    return-void

    :cond_0
    move v2, v3

    .line 2754
    goto :goto_0
.end method

.method public navigateUpTo(Landroid/os/IBinder;Landroid/content/Intent;ILandroid/content/Intent;)Z
    .locals 6
    .parameter "token"
    .parameter "target"
    .parameter "resultCode"
    .parameter "resultData"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 4488
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4489
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4490
    .local v1, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4491
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4492
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4493
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4494
    if-eqz p4, :cond_0

    .line 4495
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4496
    invoke-virtual {p4, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4500
    :goto_0
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x93

    invoke-interface {v4, v5, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4501
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4502
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v4

    if-eqz v4, :cond_1

    .line 4503
    .local v2, result:Z
    :goto_1
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4504
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4505
    return v2

    .line 4498
    .end local v2           #result:Z
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 4502
    goto :goto_1
.end method

.method public newUriPermissionOwner(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 6
    .parameter "name"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4081
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4082
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4083
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4084
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4085
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x74

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4086
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4087
    invoke-virtual {v1}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v2

    .line 4088
    .local v2, res:Landroid/os/IBinder;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4089
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4090
    return-object v2
.end method

.method public noteWakeupAlarm(Landroid/content/IIntentSender;)V
    .locals 5
    .parameter "sender"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3655
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3656
    .local v0, data:Landroid/os/Parcel;
    invoke-interface {p1}, Landroid/content/IIntentSender;->asBinder()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3657
    const-string v1, "android.app.IActivityManager"

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3658
    iget-object v1, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v2, 0x44

    const/4 v3, 0x0

    const/4 v4, 0x0

    invoke-interface {v1, v2, v0, v3, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3659
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3660
    return-void
.end method

.method public notifyActivityDrawn(Landroid/os/IBinder;)V
    .locals 5
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4644
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4645
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4646
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4647
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4648
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb0

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4649
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4650
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4651
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4652
    return-void
.end method

.method public openContentUri(Landroid/net/Uri;)Landroid/os/ParcelFileDescriptor;
    .locals 6
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3567
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3568
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3569
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3570
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v4, 0x5

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3571
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3572
    const/4 v1, 0x0

    .line 3573
    .local v1, pfd:Landroid/os/ParcelFileDescriptor;
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    .line 3574
    sget-object v3, Landroid/os/ParcelFileDescriptor;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v3, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #pfd:Landroid/os/ParcelFileDescriptor;
    check-cast v1, Landroid/os/ParcelFileDescriptor;

    .line 3576
    .restart local v1       #pfd:Landroid/os/ParcelFileDescriptor;
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3577
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3578
    return-object v1
.end method

.method public overridePendingTransition(Landroid/os/IBinder;Ljava/lang/String;II)V
    .locals 5
    .parameter "token"
    .parameter "packageName"
    .parameter "enterAnim"
    .parameter "exitAnim"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3936
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3937
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3938
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3939
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3940
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3941
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3942
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3943
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x65

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3944
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3945
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3946
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3947
    return-void
.end method

.method public peekService(Landroid/content/Intent;Ljava/lang/String;)Landroid/os/IBinder;
    .locals 6
    .parameter "service"
    .parameter "resolvedType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 3126
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3127
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 3128
    .local v2, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v1, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3129
    invoke-virtual {p1, v1, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3130
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3131
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x55

    invoke-interface {v3, v4, v1, v2, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3132
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 3133
    invoke-virtual {v2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v0

    .line 3134
    .local v0, binder:Landroid/os/IBinder;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 3135
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3136
    return-object v0
.end method

.method public performIdleMaintenance()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4665
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4666
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4667
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4668
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4669
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4670
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4671
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4672
    return-void
.end method

.method public profileControl(Ljava/lang/String;IZLjava/lang/String;Landroid/os/ParcelFileDescriptor;I)Z
    .locals 7
    .parameter "process"
    .parameter "userId"
    .parameter "start"
    .parameter "path"
    .parameter "fd"
    .parameter "profileType"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 3827
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3828
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3829
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3830
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3831
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3832
    if-eqz p3, :cond_0

    move v3, v4

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3833
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 3834
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3835
    if-eqz p5, :cond_1

    .line 3836
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3837
    invoke-virtual {p5, v0, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3841
    :goto_1
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x56

    invoke-interface {v3, v6, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3842
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3843
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_2

    move v2, v4

    .line 3844
    .local v2, res:Z
    :goto_2
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3845
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3846
    return v2

    .end local v2           #res:Z
    :cond_0
    move v3, v5

    .line 3832
    goto :goto_0

    .line 3839
    :cond_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    :cond_2
    move v2, v5

    .line 3843
    goto :goto_2
.end method

.method public publishContentProviders(Landroid/app/IApplicationThread;Ljava/util/List;)V
    .locals 5
    .parameter "caller"
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/app/IApplicationThread;",
            "Ljava/util/List",
            "<",
            "Landroid/app/IActivityManager$ContentProviderHolder;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2891
    .local p2, providers:Ljava/util/List;,"Ljava/util/List<Landroid/app/IActivityManager$ContentProviderHolder;>;"
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2892
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2893
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2894
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2895
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 2896
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2897
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2898
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2899
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2900
    return-void

    .line 2894
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public publishService(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/IBinder;)V
    .locals 5
    .parameter "token"
    .parameter "intent"
    .parameter "service"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3084
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3085
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3086
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3087
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3088
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3089
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3090
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x26

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3091
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3092
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3093
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3094
    return-void
.end method

.method public refContentProvider(Landroid/os/IBinder;II)Z
    .locals 5
    .parameter "connection"
    .parameter "stable"
    .parameter "unstable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2903
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2904
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2905
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2906
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2907
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2908
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2909
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x1f

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2910
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2911
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2912
    .local v2, res:Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2913
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2914
    return v2
.end method

.method public registerProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 5
    .parameter "observer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4363
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4364
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4365
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4366
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IProcessObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4367
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x85

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4368
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4369
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4370
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4371
    return-void

    .line 4366
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public registerReceiver(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/IIntentReceiver;Landroid/content/IntentFilter;Ljava/lang/String;I)Landroid/content/Intent;
    .locals 7
    .parameter "caller"
    .parameter "packageName"
    .parameter "receiver"
    .parameter "filter"
    .parameter "perm"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v6, 0x0

    .line 2329
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2330
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v3

    .line 2331
    .local v3, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2332
    if-eqz p1, :cond_2

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2333
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2334
    if-eqz p3, :cond_0

    invoke-interface {p3}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v5

    :cond_0
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2335
    invoke-virtual {p4, v0, v6}, Landroid/content/IntentFilter;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2336
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2337
    invoke-virtual {v0, p6}, Landroid/os/Parcel;->writeInt(I)V

    .line 2338
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0xc

    invoke-interface {v4, v5, v0, v3, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2339
    invoke-virtual {v3}, Landroid/os/Parcel;->readException()V

    .line 2340
    const/4 v2, 0x0

    .line 2341
    .local v2, intent:Landroid/content/Intent;
    invoke-virtual {v3}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 2342
    .local v1, haveIntent:I
    if-eqz v1, :cond_1

    .line 2343
    sget-object v4, Landroid/content/Intent;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v3}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .end local v2           #intent:Landroid/content/Intent;
    check-cast v2, Landroid/content/Intent;

    .line 2345
    .restart local v2       #intent:Landroid/content/Intent;
    :cond_1
    invoke-virtual {v3}, Landroid/os/Parcel;->recycle()V

    .line 2346
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2347
    return-object v2

    .end local v1           #haveIntent:I
    .end local v2           #intent:Landroid/content/Intent;
    :cond_2
    move-object v4, v5

    .line 2332
    goto :goto_0
.end method

.method public registerUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .locals 5
    .parameter "observer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4535
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4536
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4537
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4538
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IUserSwitchObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4539
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4540
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4541
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4542
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4543
    return-void

    .line 4538
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public releasePersistableUriPermission(Landroid/net/Uri;I)V
    .locals 5
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3505
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3506
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3507
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3508
    invoke-virtual {p1, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3509
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3510
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb5

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3511
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3512
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3513
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3514
    return-void
.end method

.method public removeContentProvider(Landroid/os/IBinder;Z)V
    .locals 5
    .parameter "connection"
    .parameter "stable"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 2941
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2942
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2943
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2944
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2945
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 2946
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x45

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2947
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2948
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2949
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2950
    return-void

    :cond_0
    move v2, v3

    .line 2945
    goto :goto_0
.end method

.method public removeContentProviderExternal(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 5
    .parameter "name"
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2953
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2954
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2955
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2956
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2957
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2958
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x8e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2959
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2960
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2961
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2962
    return-void
.end method

.method public removeSubTask(II)Z
    .locals 5
    .parameter "taskId"
    .parameter "subTaskIndex"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4335
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4336
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4337
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4338
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4339
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4340
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x83

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4341
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4342
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4343
    .local v2, result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4344
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4345
    return v2
.end method

.method public removeTask(II)Z
    .locals 5
    .parameter "taskId"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4349
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4350
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4351
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4352
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4353
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4354
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x84

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4355
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4356
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4357
    .local v2, result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4358
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4359
    return v2
.end method

.method public reportActivityFullyDrawn(Landroid/os/IBinder;)V
    .locals 5
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4633
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4634
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4635
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4636
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4637
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4638
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4639
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4640
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4641
    return-void
.end method

.method public reportAssistContextExtras(Landroid/os/IBinder;Landroid/os/Bundle;)V
    .locals 5
    .parameter "token"
    .parameter "extras"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4597
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4598
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4599
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4600
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4601
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 4602
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xa3

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4603
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4604
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4605
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4606
    return-void
.end method

.method public reportThumbnail(Landroid/os/IBinder;Landroid/graphics/Bitmap;Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "token"
    .parameter "thumbnail"
    .parameter "description"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 2833
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2834
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2835
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2836
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2837
    if-eqz p2, :cond_0

    .line 2838
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2839
    invoke-virtual {p2, v0, v3}, Landroid/graphics/Bitmap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2843
    :goto_0
    invoke-static {p3, v0, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 2844
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x1c

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2845
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2846
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2847
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2848
    return-void

    .line 2841
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public requestBugReport()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4558
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4559
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4560
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9e

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4561
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4564
    return-void
.end method

.method public resizeStackBox(IF)V
    .locals 5
    .parameter "stackBoxId"
    .parameter "weight"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2763
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2764
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2765
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2766
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2767
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeFloat(F)V

    .line 2768
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xaa

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2769
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2770
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2771
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2772
    return-void
.end method

.method public restart()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4655
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4656
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4657
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4658
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb2

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4659
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4660
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4661
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4662
    return-void
.end method

.method public resumeAppSwitches()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3874
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3875
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3876
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3877
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x59

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3878
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3879
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3880
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3881
    return-void
.end method

.method public revokeUriPermission(Landroid/app/IApplicationThread;Landroid/net/Uri;I)V
    .locals 5
    .parameter "caller"
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3478
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3479
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3480
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3481
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3482
    invoke-virtual {p2, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3483
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3484
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3485
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3486
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3487
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3488
    return-void
.end method

.method public revokeUriPermissionFromOwner(Landroid/os/IBinder;Landroid/net/Uri;I)V
    .locals 5
    .parameter "owner"
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4111
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4112
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4113
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4114
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4115
    if-eqz p2, :cond_0

    .line 4116
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4117
    invoke-virtual {p2, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4121
    :goto_0
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4122
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x38

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4123
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4124
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4125
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4126
    return-void

    .line 4119
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0
.end method

.method public serviceDoneExecuting(Landroid/os/IBinder;III)V
    .locals 5
    .parameter "token"
    .parameter "type"
    .parameter "startId"
    .parameter "res"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3112
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3113
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3114
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3115
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3116
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3117
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3118
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3119
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3d

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3120
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3121
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3122
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3123
    return-void
.end method

.method public setActivityController(Landroid/app/IActivityController;)V
    .locals 5
    .parameter "watcher"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3639
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3640
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3641
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3642
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IActivityController;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3643
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x39

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3644
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3645
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3646
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3647
    return-void

    .line 3642
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public setAlwaysFinish(Z)V
    .locals 5
    .parameter "enabled"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3628
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3629
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3630
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3631
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3632
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2b

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3633
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3634
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3635
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3636
    return-void

    :cond_0
    move v2, v3

    .line 3631
    goto :goto_0
.end method

.method public setDebugApp(Ljava/lang/String;ZZ)V
    .locals 5
    .parameter "packageName"
    .parameter "waitForDebugger"
    .parameter "persistent"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 3615
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3616
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3617
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3618
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3619
    if-eqz p2, :cond_0

    move v2, v3

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3620
    if-eqz p3, :cond_1

    :goto_1
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3621
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2a

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3622
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3623
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3624
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3625
    return-void

    :cond_0
    move v2, v4

    .line 3619
    goto :goto_0

    :cond_1
    move v3, v4

    .line 3620
    goto :goto_1
.end method

.method public setFocusedStack(I)V
    .locals 5
    .parameter "stackId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2807
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2808
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2809
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2810
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 2811
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xac

    const/4 v4, 0x1

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2812
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2813
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2814
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2815
    return-void
.end method

.method public setFrontActivityScreenCompatMode(I)V
    .locals 5
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4207
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4208
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4209
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4210
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4211
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7d

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4212
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4213
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4214
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4215
    return-void
.end method

.method public setImmersive(Landroid/os/IBinder;Z)V
    .locals 5
    .parameter "token"
    .parameter "immersive"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4012
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4013
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4014
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4015
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4016
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4017
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x70

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4018
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4019
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4020
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4021
    return-void

    :cond_0
    move v2, v3

    .line 4016
    goto :goto_0
.end method

.method public setLockScreenShown(Z)V
    .locals 5
    .parameter "shown"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3602
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3603
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3604
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3605
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3606
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x94

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3607
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3608
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3609
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3610
    return-void

    :cond_0
    move v2, v3

    .line 3605
    goto :goto_0
.end method

.method public setPackageAskScreenCompat(Ljava/lang/String;Z)V
    .locals 5
    .parameter "packageName"
    .parameter "ask"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4258
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4259
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4260
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4261
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4262
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4263
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x81

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4264
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4265
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4266
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4267
    return-void

    :cond_0
    move v2, v3

    .line 4262
    goto :goto_0
.end method

.method public setPackageScreenCompatMode(Ljava/lang/String;I)V
    .locals 5
    .parameter "packageName"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4232
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4233
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4234
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4235
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4236
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4237
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x7f

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4238
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4239
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4240
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4241
    return-void
.end method

.method public setProcessForeground(Landroid/os/IBinder;IZ)V
    .locals 5
    .parameter "token"
    .parameter "pid"
    .parameter "isForeground"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3405
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3406
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3407
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3408
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3409
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3410
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3411
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x49

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3412
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3413
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3414
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3415
    return-void

    :cond_0
    move v2, v3

    .line 3410
    goto :goto_0
.end method

.method public setProcessLimit(I)V
    .locals 5
    .parameter "max"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3382
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3383
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3384
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3385
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3386
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x33

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3387
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3388
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3389
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3390
    return-void
.end method

.method public setRequestedOrientation(Landroid/os/IBinder;I)V
    .locals 5
    .parameter "token"
    .parameter "requestedOrientation"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3244
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3245
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3246
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3247
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3248
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3249
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x46

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3250
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3251
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3252
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3253
    return-void
.end method

.method public setServiceForeground(Landroid/content/ComponentName;Landroid/os/IBinder;ILandroid/app/Notification;Z)V
    .locals 5
    .parameter "className"
    .parameter "token"
    .parameter "id"
    .parameter "notification"
    .parameter "removeNotification"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 3030
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3031
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3032
    .local v1, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3033
    invoke-static {p1, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 3034
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3035
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3036
    if-eqz p4, :cond_0

    .line 3037
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3038
    invoke-virtual {p4, v0, v3}, Landroid/app/Notification;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3042
    :goto_0
    if-eqz p5, :cond_1

    :goto_1
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3043
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x4a

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3044
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3045
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3046
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3047
    return-void

    .line 3040
    :cond_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    :cond_1
    move v2, v3

    .line 3042
    goto :goto_1
.end method

.method public setUserIsMonkey(Z)V
    .locals 5
    .parameter "monkey"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3962
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3963
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3964
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3965
    if-eqz p1, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3966
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0xa6

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3967
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3968
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3969
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3970
    return-void

    :cond_0
    move v2, v3

    .line 3965
    goto :goto_0
.end method

.method public showBootMessage(Ljava/lang/CharSequence;Z)V
    .locals 5
    .parameter "msg"
    .parameter "always"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 4450
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4451
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4452
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4453
    invoke-static {p1, v0, v3}, Landroid/text/TextUtils;->writeToParcel(Ljava/lang/CharSequence;Landroid/os/Parcel;I)V

    .line 4454
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 4455
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x8a

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4456
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4457
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4458
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4459
    return-void

    :cond_0
    move v2, v3

    .line 4454
    goto :goto_0
.end method

.method public showWaitingForDebugger(Landroid/app/IApplicationThread;Z)V
    .locals 5
    .parameter "who"
    .parameter "waiting"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3535
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3536
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3537
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3538
    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3539
    if-eqz p2, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3540
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x3a

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3541
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3542
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3543
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3544
    return-void

    :cond_0
    move v2, v3

    .line 3539
    goto :goto_0
.end method

.method public shutdown(I)Z
    .locals 5
    .parameter "timeout"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3851
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3852
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3853
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3854
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3855
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x57

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3856
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3857
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3858
    .local v2, res:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3859
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3860
    return v2
.end method

.method public signalPersistentProcesses(I)V
    .locals 5
    .parameter "sig"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3754
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3755
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3756
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3757
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 3758
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x3b

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3759
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3760
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3761
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3762
    return-void
.end method

.method public startActivities(Landroid/app/IApplicationThread;Ljava/lang/String;[Landroid/content/Intent;[Ljava/lang/String;Landroid/os/IBinder;Landroid/os/Bundle;I)I
    .locals 6
    .parameter "caller"
    .parameter "callingPackage"
    .parameter "intents"
    .parameter "resolvedTypes"
    .parameter "resultTo"
    .parameter "options"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 4171
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4172
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4173
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4174
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4175
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4176
    invoke-virtual {v0, p3, v5}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 4177
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 4178
    invoke-virtual {v0, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4179
    if-eqz p6, :cond_1

    .line 4180
    const/4 v3, 0x1

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 4181
    invoke-virtual {p6, v0, v5}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4185
    :goto_1
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 4186
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x79

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4187
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4188
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4189
    .local v2, result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4190
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4191
    return v2

    .line 4174
    .end local v2           #result:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0

    .line 4183
    :cond_1
    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public startActivity(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;)I
    .locals 8
    .parameter "caller"
    .parameter "callingPackage"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "startFlags"
    .parameter "profileFile"
    .parameter "profileFd"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2073
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2074
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2076
    .local v2, reply:Landroid/os/Parcel;
    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v4

    if-eqz v4, :cond_0

    .line 2077
    const-string v4, "ActivityManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Timeline: Activity_launch_request id:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p3}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " time:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v6

    invoke-virtual {v5, v6, v7}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2082
    :cond_0
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2083
    if-eqz p1, :cond_1

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2084
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2085
    const/4 v4, 0x0

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2086
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2087
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2088
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2089
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2090
    move/from16 v0, p8

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2091
    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2092
    if-eqz p10, :cond_2

    .line 2093
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2094
    const/4 v4, 0x1

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2098
    :goto_1
    if-eqz p11, :cond_3

    .line 2099
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2100
    const/4 v4, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2104
    :goto_2
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2105
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2106
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2107
    .local v3, result:I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2108
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2109
    return v3

    .line 2083
    .end local v3           #result:I
    :cond_1
    const/4 v4, 0x0

    goto :goto_0

    .line 2096
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 2102
    :cond_3
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method

.method public startActivityAndWait(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)Landroid/app/IActivityManager$WaitResult;
    .locals 7
    .parameter "caller"
    .parameter "callingPackage"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "startFlags"
    .parameter "profileFile"
    .parameter "profileFd"
    .parameter "options"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2152
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2153
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2154
    .local v2, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2155
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2156
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2157
    const/4 v4, 0x0

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2158
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2159
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2160
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2161
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2162
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2163
    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2164
    if-eqz p10, :cond_1

    .line 2165
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2166
    const/4 v4, 0x1

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2170
    :goto_1
    if-eqz p11, :cond_2

    .line 2171
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2172
    const/4 v4, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2176
    :goto_2
    move/from16 v0, p12

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2177
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x69

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2178
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2179
    sget-object v4, Landroid/app/IActivityManager$WaitResult;->CREATOR:Landroid/os/Parcelable$Creator;

    invoke-interface {v4, v2}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/app/IActivityManager$WaitResult;

    .line 2180
    .local v3, result:Landroid/app/IActivityManager$WaitResult;
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2182
    return-object v3

    .line 2155
    .end local v3           #result:Landroid/app/IActivityManager$WaitResult;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2168
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 2174
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method

.method public startActivityAsUser(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILjava/lang/String;Landroid/os/ParcelFileDescriptor;Landroid/os/Bundle;I)I
    .locals 7
    .parameter "caller"
    .parameter "callingPackage"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "startFlags"
    .parameter "profileFile"
    .parameter "profileFd"
    .parameter "options"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2116
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2117
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2118
    .local v2, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2119
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2120
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2121
    const/4 v4, 0x0

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2122
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2123
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2124
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2125
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2126
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2127
    move-object/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2128
    if-eqz p10, :cond_1

    .line 2129
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2130
    const/4 v4, 0x1

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v4}, Landroid/os/ParcelFileDescriptor;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2134
    :goto_1
    if-eqz p11, :cond_2

    .line 2135
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2136
    const/4 v4, 0x0

    move-object/from16 v0, p11

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2140
    :goto_2
    move/from16 v0, p12

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2141
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x99

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2142
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2143
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2144
    .local v3, result:I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2145
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2146
    return v3

    .line 2119
    .end local v3           #result:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2132
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 2138
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method

.method public startActivityIntentSender(Landroid/app/IApplicationThread;Landroid/content/IntentSender;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IIILandroid/os/Bundle;)I
    .locals 7
    .parameter "caller"
    .parameter "intent"
    .parameter "fillInIntent"
    .parameter "resolvedType"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "flagsMask"
    .parameter "flagsValues"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2218
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2219
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2220
    .local v2, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2221
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2222
    const/4 v4, 0x0

    invoke-virtual {p2, v1, v4}, Landroid/content/IntentSender;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2223
    if-eqz p3, :cond_1

    .line 2224
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2225
    const/4 v4, 0x0

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2229
    :goto_1
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2230
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2231
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2232
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2233
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2234
    move/from16 v0, p9

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2235
    if-eqz p10, :cond_2

    .line 2236
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2237
    const/4 v4, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2241
    :goto_2
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v5, 0x64

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2242
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2243
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2244
    .local v3, result:I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2245
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2246
    return v3

    .line 2221
    .end local v3           #result:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2227
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1

    .line 2239
    :cond_2
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_2
.end method

.method public startActivityWithConfig(Landroid/app/IApplicationThread;Ljava/lang/String;Landroid/content/Intent;Ljava/lang/String;Landroid/os/IBinder;Ljava/lang/String;IILandroid/content/res/Configuration;Landroid/os/Bundle;I)I
    .locals 7
    .parameter "caller"
    .parameter "callingPackage"
    .parameter "intent"
    .parameter "resolvedType"
    .parameter "resultTo"
    .parameter "resultWho"
    .parameter "requestCode"
    .parameter "startFlags"
    .parameter "config"
    .parameter "options"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2189
    .local v1, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v2

    .line 2190
    .local v2, reply:Landroid/os/Parcel;
    const-string v4, "android.app.IActivityManager"

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2191
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :goto_0
    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2192
    invoke-virtual {v1, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2193
    const/4 v4, 0x0

    invoke-virtual {p3, v1, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2194
    invoke-virtual {v1, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2195
    invoke-virtual {v1, p5}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2196
    invoke-virtual {v1, p6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2197
    invoke-virtual {v1, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 2198
    invoke-virtual {v1, p8}, Landroid/os/Parcel;->writeInt(I)V

    .line 2199
    const/4 v4, 0x0

    move-object/from16 v0, p9

    invoke-virtual {v0, v1, v4}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2200
    if-eqz p10, :cond_1

    .line 2201
    const/4 v4, 0x1

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2202
    const/4 v4, 0x0

    move-object/from16 v0, p10

    invoke-virtual {v0, v1, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2206
    :goto_1
    move/from16 v0, p11

    invoke-virtual {v1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 2207
    iget-object v4, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v5, 0x3

    const/4 v6, 0x0

    invoke-interface {v4, v5, v1, v2, v6}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2208
    invoke-virtual {v2}, Landroid/os/Parcel;->readException()V

    .line 2209
    invoke-virtual {v2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 2210
    .local v3, result:I
    invoke-virtual {v2}, Landroid/os/Parcel;->recycle()V

    .line 2211
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2212
    return v3

    .line 2191
    .end local v3           #result:I
    :cond_0
    const/4 v4, 0x0

    goto :goto_0

    .line 2204
    :cond_1
    const/4 v4, 0x0

    invoke-virtual {v1, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_1
.end method

.method public startInstrumentation(Landroid/content/ComponentName;Ljava/lang/String;ILandroid/os/Bundle;Landroid/app/IInstrumentationWatcher;Landroid/app/IUiAutomationConnection;I)Z
    .locals 5
    .parameter "className"
    .parameter "profileFile"
    .parameter "flags"
    .parameter "arguments"
    .parameter "watcher"
    .parameter "connection"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 3188
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3189
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3190
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3191
    invoke-static {p1, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 3192
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3193
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3194
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeBundle(Landroid/os/Bundle;)V

    .line 3195
    if-eqz p5, :cond_2

    invoke-interface {p5}, Landroid/app/IInstrumentationWatcher;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3196
    if-eqz p6, :cond_0

    invoke-interface {p6}, Landroid/app/IUiAutomationConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v4

    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3197
    invoke-virtual {v0, p7}, Landroid/os/Parcel;->writeInt(I)V

    .line 3198
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x2c

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3199
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3200
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_1

    const/4 v2, 0x1

    .line 3201
    .local v2, res:Z
    :cond_1
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3202
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3203
    return v2

    .end local v2           #res:Z
    :cond_2
    move-object v3, v4

    .line 3195
    goto :goto_0
.end method

.method public startNextMatchingActivity(Landroid/os/IBinder;Landroid/content/Intent;Landroid/os/Bundle;)Z
    .locals 7
    .parameter "callingActivity"
    .parameter "intent"
    .parameter "options"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2250
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2251
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2252
    .local v1, reply:Landroid/os/Parcel;
    const-string v5, "android.app.IActivityManager"

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2253
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2254
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2255
    if-eqz p3, :cond_0

    .line 2256
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2257
    invoke-virtual {p3, v0, v4}, Landroid/os/Bundle;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2261
    :goto_0
    iget-object v5, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v6, 0x43

    invoke-interface {v5, v6, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2262
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2263
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 2264
    .local v2, result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2265
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2266
    if-eqz v2, :cond_1

    :goto_1
    return v3

    .line 2259
    .end local v2           #result:I
    :cond_0
    invoke-virtual {v0, v4}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .restart local v2       #result:I
    :cond_1
    move v3, v4

    .line 2266
    goto :goto_1
.end method

.method public startRunning(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "pkg"
    .parameter "cls"
    .parameter "action"
    .parameter "indata"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3689
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3690
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3691
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3692
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3693
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3694
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3695
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3696
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3697
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3698
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3699
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3700
    return-void
.end method

.method public startService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/ComponentName;
    .locals 6
    .parameter "caller"
    .parameter "service"
    .parameter "resolvedType"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2982
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2983
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2984
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2985
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2986
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2987
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 2988
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 2989
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x22

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2990
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2991
    invoke-static {v1}, Landroid/content/ComponentName;->readFromParcel(Landroid/os/Parcel;)Landroid/content/ComponentName;

    move-result-object v2

    .line 2992
    .local v2, res:Landroid/content/ComponentName;
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2993
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2994
    return-object v2

    .line 2985
    .end local v2           #res:Landroid/content/ComponentName;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public stopAppSwitches()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3864
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3865
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3866
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3867
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x58

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3868
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3869
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3870
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3871
    return-void
.end method

.method public stopService(Landroid/app/IApplicationThread;Landroid/content/Intent;Ljava/lang/String;I)I
    .locals 6
    .parameter "caller"
    .parameter "service"
    .parameter "resolvedType"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x0

    .line 2999
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3000
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3001
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3002
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    :goto_0
    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3003
    invoke-virtual {p2, v0, v5}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3004
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 3005
    invoke-virtual {v0, p4}, Landroid/os/Parcel;->writeInt(I)V

    .line 3006
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x23

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3007
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3008
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 3009
    .local v2, res:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3010
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3011
    return v2

    .line 3002
    .end local v2           #res:I
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public stopServiceToken(Landroid/content/ComponentName;Landroid/os/IBinder;I)Z
    .locals 5
    .parameter "className"
    .parameter "token"
    .parameter "startId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3015
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3016
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3017
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3018
    invoke-static {p1, v0}, Landroid/content/ComponentName;->writeToParcel(Landroid/content/ComponentName;Landroid/os/Parcel;)V

    .line 3019
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3020
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 3021
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x30

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3022
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3023
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3024
    .local v2, res:Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3025
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3026
    return v2
.end method

.method public stopUser(ILandroid/app/IStopUserCallback;)I
    .locals 6
    .parameter "userid"
    .parameter "callback"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4283
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4284
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4285
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4286
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4287
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeStrongInterface(Landroid/os/IInterface;)V

    .line 4288
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x9a

    const/4 v5, 0x0

    invoke-interface {v3, v4, v0, v1, v5}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4289
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4290
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 4291
    .local v2, result:I
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4292
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4293
    return v2
.end method

.method public switchUser(I)Z
    .locals 5
    .parameter "userid"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4270
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4271
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4272
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4273
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeInt(I)V

    .line 4274
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x82

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4275
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4276
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4277
    .local v2, result:Z
    :cond_0
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4278
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4279
    return v2
.end method

.method public takePersistableUriPermission(Landroid/net/Uri;I)V
    .locals 5
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3492
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3493
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3494
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3495
    invoke-virtual {p1, v0, v4}, Landroid/net/Uri;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3496
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3497
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xb4

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3498
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3499
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3500
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3501
    return-void
.end method

.method public targetTaskAffinityMatchesActivity(Landroid/os/IBinder;Ljava/lang/String;)Z
    .locals 5
    .parameter "token"
    .parameter "destAffinity"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 4473
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4474
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4475
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4476
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4477
    invoke-virtual {v0, p2}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 4478
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x92

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4479
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4480
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 4481
    .local v2, result:Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4482
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4483
    return v2
.end method

.method public testIsSystemReady()Z
    .locals 1

    .prologue
    .line 3704
    const/4 v0, 0x1

    return v0
.end method

.method public unbindBackupAgent(Landroid/content/pm/ApplicationInfo;)V
    .locals 5
    .parameter "app"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3175
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3176
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3177
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3178
    invoke-virtual {p1, v0, v4}, Landroid/content/pm/ApplicationInfo;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3179
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x5c

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3180
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3181
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3182
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3183
    return-void
.end method

.method public unbindFinished(Landroid/os/IBinder;Landroid/content/Intent;Z)V
    .locals 5
    .parameter "token"
    .parameter "intent"
    .parameter "doRebind"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 3098
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3099
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3100
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3101
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3102
    invoke-virtual {p2, v0, v3}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3103
    if-eqz p3, :cond_0

    const/4 v2, 0x1

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 3104
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x48

    invoke-interface {v2, v4, v0, v1, v3}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3105
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3106
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3107
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3108
    return-void

    :cond_0
    move v2, v3

    .line 3103
    goto :goto_0
.end method

.method public unbindService(Landroid/app/IServiceConnection;)Z
    .locals 5
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 3070
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3071
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3072
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3073
    invoke-interface {p1}, Landroid/app/IServiceConnection;->asBinder()Landroid/os/IBinder;

    move-result-object v3

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 3074
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x25

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3075
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3076
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 3077
    .local v2, res:Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3078
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3079
    return v2
.end method

.method public unbroadcastIntent(Landroid/app/IApplicationThread;Landroid/content/Intent;I)V
    .locals 5
    .parameter "caller"
    .parameter "intent"
    .parameter "userId"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 2391
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2392
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2393
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2394
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IApplicationThread;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2395
    invoke-virtual {p2, v0, v4}, Landroid/content/Intent;->writeToParcel(Landroid/os/Parcel;I)V

    .line 2396
    invoke-virtual {v0, p3}, Landroid/os/Parcel;->writeInt(I)V

    .line 2397
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xf

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2398
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2399
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2400
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2401
    return-void

    .line 2394
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unhandledBack()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3557
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3558
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3559
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3560
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/4 v3, 0x4

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3561
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3562
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3563
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3564
    return-void
.end method

.method public unregisterProcessObserver(Landroid/app/IProcessObserver;)V
    .locals 5
    .parameter "observer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4374
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4375
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4376
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4377
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IProcessObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4378
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x86

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4379
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4380
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4381
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4382
    return-void

    .line 4377
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unregisterReceiver(Landroid/content/IIntentReceiver;)V
    .locals 5
    .parameter "receiver"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2351
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2352
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2353
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2354
    invoke-interface {p1}, Landroid/content/IIntentReceiver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2355
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0xd

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2356
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2357
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2358
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2359
    return-void
.end method

.method public unregisterUserSwitchObserver(Landroid/app/IUserSwitchObserver;)V
    .locals 5
    .parameter "observer"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 4546
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4547
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4548
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4549
    if-eqz p1, :cond_0

    invoke-interface {p1}, Landroid/app/IUserSwitchObserver;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    :goto_0
    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 4550
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x9c

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4551
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4552
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4553
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4554
    return-void

    .line 4549
    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public unstableProviderDied(Landroid/os/IBinder;)V
    .locals 5
    .parameter "connection"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 2918
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2919
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2920
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2921
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2922
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x97

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2923
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2924
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2925
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2926
    return-void
.end method

.method public updateConfiguration(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 3233
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3234
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3235
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3236
    invoke-virtual {p1, v0, v4}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 3237
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x2f

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3238
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3239
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3240
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3241
    return-void
.end method

.method public updatePersistentConfiguration(Landroid/content/res/Configuration;)V
    .locals 5
    .parameter "values"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 4426
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 4427
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 4428
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 4429
    invoke-virtual {p1, v0, v4}, Landroid/content/res/Configuration;->writeToParcel(Landroid/os/Parcel;I)V

    .line 4430
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x88

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 4431
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 4432
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 4433
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 4434
    return-void
.end method

.method public wakingUp()V
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 3592
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 3593
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 3594
    .local v1, reply:Landroid/os/Parcel;
    const-string v2, "android.app.IActivityManager"

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 3595
    iget-object v2, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v3, 0x29

    const/4 v4, 0x0

    invoke-interface {v2, v3, v0, v1, v4}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 3596
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 3597
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 3598
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 3599
    return-void
.end method

.method public willActivityBeVisible(Landroid/os/IBinder;)Z
    .locals 5
    .parameter "token"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 2314
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v0

    .line 2315
    .local v0, data:Landroid/os/Parcel;
    invoke-static {}, Landroid/os/Parcel;->obtain()Landroid/os/Parcel;

    move-result-object v1

    .line 2316
    .local v1, reply:Landroid/os/Parcel;
    const-string v3, "android.app.IActivityManager"

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInterfaceToken(Ljava/lang/String;)V

    .line 2317
    invoke-virtual {v0, p1}, Landroid/os/Parcel;->writeStrongBinder(Landroid/os/IBinder;)V

    .line 2318
    iget-object v3, p0, Landroid/app/ActivityManagerProxy;->mRemote:Landroid/os/IBinder;

    const/16 v4, 0x6a

    invoke-interface {v3, v4, v0, v1, v2}, Landroid/os/IBinder;->transact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    .line 2319
    invoke-virtual {v1}, Landroid/os/Parcel;->readException()V

    .line 2320
    invoke-virtual {v1}, Landroid/os/Parcel;->readInt()I

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    .line 2321
    .local v2, res:Z
    :cond_0
    invoke-virtual {v0}, Landroid/os/Parcel;->recycle()V

    .line 2322
    invoke-virtual {v1}, Landroid/os/Parcel;->recycle()V

    .line 2323
    return v2
.end method
