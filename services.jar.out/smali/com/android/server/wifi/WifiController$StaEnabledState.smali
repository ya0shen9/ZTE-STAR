.class Lcom/android/server/wifi/WifiController$StaEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "StaEnabledState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .parameter

    .prologue
    .line 465
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 2

    .prologue
    .line 468
    iget-object v0, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v0, v0, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/net/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    .line 469
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "msg"

    .prologue
    const/4 v3, 0x1

    .line 472
    iget v4, p1, Landroid/os/Message;->what:I

    sparse-switch v4, :sswitch_data_0

    .line 522
    const/4 v3, 0x0

    .line 525
    :cond_0
    :goto_0
    return v3

    .line 474
    :sswitch_0
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    .line 475
    .local v1, mWifiState:I
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v4

    if-nez v4, :cond_1

    .line 476
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiSettingsStore;->isScanAlwaysAvailable()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 477
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mStaDisabledWithScanState:Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$1600(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$StaDisabledWithScanState;

    move-result-object v5

    #calls: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiController;->access$2400(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    .line 482
    :cond_1
    :goto_1
    const/4 v4, 0x2

    if-eq v1, v4, :cond_0

    const/4 v4, 0x3

    if-eq v1, v4, :cond_0

    .line 485
    const-string v4, "WIFI:FRAMEWORK:WifiController"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Mismatch in the state "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 487
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4, v3}, Landroid/net/wifi/WifiStateMachine;->setSupplicantRunning(Z)V

    goto :goto_0

    .line 479
    :cond_2
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$2500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v5

    #calls: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiController;->access$2600(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 494
    .end local v1           #mWifiState:I
    :sswitch_1
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v4}, Lcom/android/server/wifi/WifiSettingsStore;->isWifiToggleEnabled()Z

    move-result v4

    if-nez v4, :cond_0

    .line 495
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$2500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v5

    #calls: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiController;->access$2700(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 499
    :sswitch_2
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_3

    .line 500
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mEcmState:Lcom/android/server/wifi/WifiController$EcmState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$2800(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$EcmState;

    move-result-object v5

    #calls: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiController;->access$2900(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_0

    .line 505
    :cond_3
    :sswitch_3
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v5, "StaEnabledState should not enabled AP"

    #calls: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiController;->access$3000(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 506
    iget v4, p1, Landroid/os/Message;->arg1:I

    if-ne v4, v3, :cond_0

    .line 507
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v4, v4, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v4}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiApState()I

    move-result v2

    .line 508
    .local v2, wifiApState:I
    new-instance v0, Landroid/content/Intent;

    const-string v4, "android.net.wifi.WIFI_AP_STATE_CHANGED"

    invoke-direct {v0, v4}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 509
    .local v0, intent:Landroid/content/Intent;
    const/high16 v4, 0x400

    invoke-virtual {v0, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 510
    const-string v4, "wifi_state"

    invoke-virtual {v0, v4, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 511
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;
    invoke-static {v4}, Lcom/android/server/wifi/WifiController;->access$3100(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v4

    sget-object v5, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v0, v5}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_0

    .line 517
    .end local v0           #intent:Landroid/content/Intent;
    .end local v2           #wifiApState:I
    :sswitch_4
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v5, "Sta Enabled failture"

    #calls: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiController;->access$3200(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 518
    iget-object v4, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v5, p0, Lcom/android/server/wifi/WifiController$StaEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v5}, Lcom/android/server/wifi/WifiController;->access$2500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v5

    #calls: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Lcom/android/server/wifi/WifiController;->access$3300(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto/16 :goto_0

    .line 472
    :sswitch_data_0
    .sparse-switch
        0x26001 -> :sswitch_2
        0x26008 -> :sswitch_0
        0x26009 -> :sswitch_1
        0x2600a -> :sswitch_3
        0x2600d -> :sswitch_4
    .end sparse-switch
.end method
