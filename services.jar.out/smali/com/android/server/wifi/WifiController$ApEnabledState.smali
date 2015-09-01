.class Lcom/android/server/wifi/WifiController$ApEnabledState;
.super Lcom/android/internal/util/State;
.source "WifiController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/wifi/WifiController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ApEnabledState"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiController;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiController;)V
    .locals 0
    .parameter

    .prologue
    .line 615
    iput-object p1, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method


# virtual methods
.method public processMessage(Landroid/os/Message;)Z
    .locals 5
    .parameter "msg"

    .prologue
    const/4 v4, 0x0

    const/4 v2, 0x0

    .line 618
    iget v3, p1, Landroid/os/Message;->what:I

    packed-switch v3, :pswitch_data_0

    .line 650
    :goto_0
    :pswitch_0
    return v2

    .line 620
    :pswitch_1
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v3}, Lcom/android/server/wifi/WifiSettingsStore;->isAirplaneModeOn()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 621
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v4, v2}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 622
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$2500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v3

    #calls: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->access$4200(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    .line 650
    :cond_0
    :goto_1
    const/4 v2, 0x1

    goto :goto_0

    .line 626
    :pswitch_2
    iget v3, p1, Landroid/os/Message;->arg1:I

    if-nez v3, :cond_0

    .line 627
    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, v3, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v3, v4, v2}, Landroid/net/wifi/WifiStateMachine;->setHostApRunning(Landroid/net/wifi/WifiConfiguration;Z)V

    .line 628
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$2500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v3

    #calls: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->access$4300(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 633
    :pswitch_3
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v3, "ApEnabledState should not enabled STA"

    #calls: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->access$4400(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 634
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v2, v2, Lcom/android/server/wifi/WifiController;->mWifiStateMachine:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v2}, Landroid/net/wifi/WifiStateMachine;->syncGetWifiState()I

    move-result v1

    .line 635
    .local v1, wifiState:I
    new-instance v0, Landroid/content/Intent;

    const-string v2, "android.net.wifi.WIFI_STATE_CHANGED"

    invoke-direct {v0, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 636
    .local v0, intent:Landroid/content/Intent;
    const/high16 v2, 0x400

    invoke-virtual {v0, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 637
    const-string v2, "wifi_state"

    invoke-virtual {v0, v2, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 638
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiController;->access$3100(Lcom/android/server/wifi/WifiController;)Landroid/content/Context;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v2, v0, v3}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    goto :goto_1

    .line 643
    .end local v0           #intent:Landroid/content/Intent;
    .end local v1           #wifiState:I
    :pswitch_4
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    const-string v3, "Ap Enabled failture"

    #calls: Lcom/android/server/wifi/WifiController;->log(Ljava/lang/String;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->access$4500(Lcom/android/server/wifi/WifiController;Ljava/lang/String;)V

    .line 644
    iget-object v2, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    iget-object v3, p0, Lcom/android/server/wifi/WifiController$ApEnabledState;->this$0:Lcom/android/server/wifi/WifiController;

    #getter for: Lcom/android/server/wifi/WifiController;->mApStaDisabledState:Lcom/android/server/wifi/WifiController$ApStaDisabledState;
    invoke-static {v3}, Lcom/android/server/wifi/WifiController;->access$2500(Lcom/android/server/wifi/WifiController;)Lcom/android/server/wifi/WifiController$ApStaDisabledState;

    move-result-object v3

    #calls: Lcom/android/server/wifi/WifiController;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v2, v3}, Lcom/android/server/wifi/WifiController;->access$4600(Lcom/android/server/wifi/WifiController;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 618
    :pswitch_data_0
    .packed-switch 0x26008
        :pswitch_3
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_0
        :pswitch_4
    .end packed-switch
.end method
