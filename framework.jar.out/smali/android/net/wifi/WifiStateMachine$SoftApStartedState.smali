.class Landroid/net/wifi/WifiStateMachine$SoftApStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SoftApStartedState"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 4609
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 4613
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v1, 0x1

    #setter for: Landroid/net/wifi/WifiStateMachine;->mHotspotshouldSleep:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$25602(Landroid/net/wifi/WifiStateMachine;Z)Z

    .line 4614
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v1, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    invoke-direct {v1, v2, v3}, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;-><init>(Landroid/net/wifi/WifiStateMachine;Landroid/os/Handler;)V

    #setter for: Landroid/net/wifi/WifiStateMachine;->mHotspotSleepPolicyObserver:Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;
    invoke-static {v0, v1}, Landroid/net/wifi/WifiStateMachine;->access$25702(Landroid/net/wifi/WifiStateMachine;Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;)Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;

    .line 4615
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mHotspotSleepPolicyObserver:Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$25700(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/wifi/WifiStateMachine$HotspotSleepPolicyObserver;->register()V

    .line 4617
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 3
    .parameter "message"

    .prologue
    .line 4620
    iget v1, p1, Landroid/os/Message;->what:I

    sparse-switch v1, :sswitch_data_0

    .line 4652
    const/4 v1, 0x0

    .line 4654
    :goto_0
    return v1

    .line 4641
    :sswitch_0
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v2, "Cannot start supplicant with a running soft AP"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$25800(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 4642
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->deferMessage(Landroid/os/Message;)V
    invoke-static {v1, p1}, Landroid/net/wifi/WifiStateMachine;->access$25900(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;)V

    .line 4654
    :cond_0
    :goto_1
    :sswitch_1
    const/4 v1, 0x1

    goto :goto_0

    .line 4646
    :sswitch_2
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/net/wifi/WifiStateMachine$TetherStateChange;

    .line 4647
    .local v0, stateChange:Landroid/net/wifi/WifiStateMachine$TetherStateChange;
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, v0, Landroid/net/wifi/WifiStateMachine$TetherStateChange;->available:Ljava/util/ArrayList;

    #calls: Landroid/net/wifi/WifiStateMachine;->startTethering(Ljava/util/ArrayList;)Z
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$26000(Landroid/net/wifi/WifiStateMachine;Ljava/util/ArrayList;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 4648
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SoftApStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mTetheringState:Lcom/android/internal/util/State;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$26100(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v1, v2}, Landroid/net/wifi/WifiStateMachine;->access$26200(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 4620
    nop

    :sswitch_data_0
    .sparse-switch
        0x2000b -> :sswitch_0
        0x20015 -> :sswitch_1
        0x20018 -> :sswitch_0
        0x2001d -> :sswitch_2
    .end sparse-switch
.end method
