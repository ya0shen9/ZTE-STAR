.class Landroid/net/wifi/WifiStateMachine$TetheredState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "TetheredState"
.end annotation


# instance fields
.field final intent:Landroid/content/Intent;

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 2
    .parameter

    .prologue
    .line 4705
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 4708
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.net.wifi.WIFI_AP_STA_NOTIFICATION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->intent:Landroid/content/Intent;

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 3

    .prologue
    .line 4711
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Landroid/net/wifi/WifiStateMachine$TetheredState;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\n"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$27100(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4712
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->intent:Landroid/content/Intent;

    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 4713
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 7
    .parameter "message"

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 4717
    iget v5, p1, Landroid/os/Message;->what:I

    sparse-switch v5, :sswitch_data_0

    :goto_0
    move v3, v4

    .line 4764
    :cond_0
    :goto_1
    return v3

    .line 4719
    :sswitch_0
    iget-object v1, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    .line 4720
    .local v1, stateChange:Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v6, v1, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->active:Ljava/util/ArrayList;

    #calls: Landroid/net/wifi/WifiStateMachine;->isWifiTethered(Ljava/util/ArrayList;)Z
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$26400(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 4721
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v6, "Tethering reports wifi as untethered!, shut down soft Ap"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v5, v6}, Landroid/net/wifi/WifiStateMachine;->access$27200(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4722
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v6, 0x0

    invoke-virtual {v5, v6, v4}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    goto :goto_1

    .line 4727
    .end local v1           #stateChange:Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    :sswitch_1
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v5, "Untethering before stopping AP"

    #calls: Landroid/net/wifi/WifiStateMachine;->log(Ljava/lang/String;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$27300(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4728
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v5, 0xa

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$5100(Landroid/net/wifi/WifiStateMachine;I)V

    .line 4729
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->stopTethering()V
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$27400(Landroid/net/wifi/WifiStateMachine;)V

    .line 4730
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mUntetheringState:Lcom/android/internal/util/State;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$27500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v4, v5}, Landroid/net/wifi/WifiStateMachine;->access$27600(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 4736
    :sswitch_2
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$27708(Landroid/net/wifi/WifiStateMachine;)I

    .line 4737
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotSleepPolicyObserver:Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$25700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;->onChange(Z)V

    .line 4738
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->intent:Landroid/content/Intent;

    const-string/jumbo v5, "wifi_ap_sta_event"

    const/16 v6, 0x14

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4739
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->intent:Landroid/content/Intent;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 4742
    :sswitch_3
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$27710(Landroid/net/wifi/WifiStateMachine;)I

    .line 4743
    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotSleepPolicyObserver:Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;
    invoke-static {v5}, Landroid/net/wifi/WifiStateMachine;->access$25700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;->onChange(Z)V

    .line 4744
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->intent:Landroid/content/Intent;

    const-string/jumbo v5, "wifi_ap_sta_event"

    const/16 v6, 0x15

    invoke-virtual {v4, v5, v6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 4745
    iget-object v4, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v4}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v4

    iget-object v5, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->intent:Landroid/content/Intent;

    sget-object v6, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v4, v5, v6}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto/16 :goto_1

    .line 4749
    :sswitch_4
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/net/wifi/WpsInfo;

    .line 4751
    .local v2, wpsInfo:Landroid/net/wifi/WpsInfo;
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "WSM: setup is "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget v6, v2, Landroid/net/wifi/WpsInfo;->setup:I

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiStateMachine;->access$27800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4752
    iget v3, v2, Landroid/net/wifi/WpsInfo;->setup:I

    packed-switch v3, :pswitch_data_0

    .line 4757
    new-instance v0, Landroid/net/wifi/WpsResult;

    sget-object v3, Landroid/net/wifi/WpsResult$Status;->FAILURE:Landroid/net/wifi/WpsResult$Status;

    invoke-direct {v0, v3}, Landroid/net/wifi/WpsResult;-><init>(Landroid/net/wifi/WpsResult$Status;)V

    .line 4758
    .local v0, result:Landroid/net/wifi/WpsResult;
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v5, "WSM: Invalid setup for WPS server"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v3, v5}, Landroid/net/wifi/WifiStateMachine;->access$27900(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 4754
    .end local v0           #result:Landroid/net/wifi/WpsResult;
    :pswitch_0
    iget-object v3, p0, Landroid/net/wifi/WifiStateMachine$TetheredState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v3}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/net/wifi/WifiConfigStore;->startWpsServerPbc(Landroid/net/wifi/WpsInfo;)Landroid/net/wifi/WpsResult;

    move-result-object v0

    .line 4755
    .restart local v0       #result:Landroid/net/wifi/WpsResult;
    goto/16 :goto_0

    .line 4717
    :sswitch_data_0
    .sparse-switch
        0x20018 -> :sswitch_1
        0x2001d -> :sswitch_0
        0x24029 -> :sswitch_3
        0x2402a -> :sswitch_2
        0x25040 -> :sswitch_4
    .end sparse-switch

    .line 4752
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method
