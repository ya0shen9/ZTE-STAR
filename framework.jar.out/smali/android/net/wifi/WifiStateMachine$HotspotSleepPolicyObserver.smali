.class Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;
.super Landroid/database/ContentObserver;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "HotspotSleepPolicyObserver"
.end annotation


# instance fields
.field private isAlarmSet:Z

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method public constructor <init>(Landroid/net/wifi/WifiStateMachine;Landroid/os/Handler;)V
    .locals 1
    .parameter
    .parameter "handler"

    .prologue
    .line 4932
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    .line 4933
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4930
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;->isAlarmSet:Z

    .line 4934
    return-void
.end method


# virtual methods
.method public onChange(Z)V
    .locals 8
    .parameter "selfChange"

    .prologue
    .line 4943
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 4945
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotSleepIntent:Landroid/app/PendingIntent;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$29000(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v2

    monitor-enter v2

    .line 4946
    :try_start_0
    iget-boolean v1, p0, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;->isAlarmSet:Z

    if-eqz v1, :cond_0

    .line 4947
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$14100(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v1

    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotSleepIntent:Landroid/app/PendingIntent;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$29000(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/app/AlarmManager;->cancel(Landroid/app/PendingIntent;)V

    .line 4948
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;->isAlarmSet:Z

    .line 4951
    :cond_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    const-string v3, "hotspot_sleep_policy"

    const/4 v4, 0x1

    invoke-static {v1, v3, v4}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    mul-int/lit8 v1, v1, 0xf

    mul-int/lit8 v1, v1, 0x3c

    mul-int/lit16 v0, v1, 0x3e8

    .line 4953
    .local v0, HotspotSleepPolicyMs:I
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "HotspotSleepPolicyMs= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHotspotConnStaCounter= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotConnStaCounter:I
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$27700(Landroid/net/wifi/WifiStateMachine;)I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, " mHotspotshouldSleep= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotshouldSleep:Z
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$25600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v1, v3}, Landroid/net/wifi/WifiStateMachine;->access$29100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4954
    if-lez v0, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotConnStaCounter:I
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$27700(Landroid/net/wifi/WifiStateMachine;)I

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotshouldSleep:Z
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$25600(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 4955
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mAlarmManager:Landroid/app/AlarmManager;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$14100(Landroid/net/wifi/WifiStateMachine;)Landroid/app/AlarmManager;

    move-result-object v1

    const/4 v3, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    int-to-long v6, v0

    add-long/2addr v4, v6

    iget-object v6, p0, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotSleepIntent:Landroid/app/PendingIntent;
    invoke-static {v6}, Landroid/net/wifi/WifiStateMachine;->access$29000(Landroid/net/wifi/WifiStateMachine;)Landroid/app/PendingIntent;

    move-result-object v6

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 4957
    const/4 v1, 0x1

    iput-boolean v1, p0, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;->isAlarmSet:Z

    .line 4959
    :cond_1
    monitor-exit v2

    .line 4960
    return-void

    .line 4959
    .end local v0           #HotspotSleepPolicyMs:I
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public register()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 4937
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;->this$0:Landroid/net/wifi/WifiStateMachine;

    #setter for: Landroid/net/wifi/WifiStateMachine;->mHotspotConnStaCounter:I
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$27702(Landroid/net/wifi/WifiStateMachine;I)I

    .line 4938
    invoke-virtual {p0, v1}, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;->onChange(Z)V

    .line 4939
    return-void
.end method
