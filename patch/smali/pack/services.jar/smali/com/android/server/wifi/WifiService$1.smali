.class Lcom/android/server/wifi/WifiService$1;
.super Landroid/content/BroadcastReceiver;
.source "WifiService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/wifi/WifiService;-><init>(Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/wifi/WifiService;


# direct methods
.method constructor <init>(Lcom/android/server/wifi/WifiService;)V
    .locals 0

    .prologue
    .line 346
    iput-object p1, p0, Lcom/android/server/wifi/WifiService$1;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 349
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$1;->this$0:Lcom/android/server/wifi/WifiService;

    iget-object v2, v2, Lcom/android/server/wifi/WifiService;->mSettingsStore:Lcom/android/server/wifi/WifiSettingsStore;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiSettingsStore;->handleAirplaneModeToggled()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 350
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$1;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$200(Lcom/android/server/wifi/WifiService;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "airplane_mode_on"

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 351
    .local v0, "airplaneMode":I
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$1;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService;->getWifiEnabledState()I

    move-result v2

    const/4 v3, 0x3

    if-ne v2, v3, :cond_0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_0

    .line 352
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$1;->this$0:Lcom/android/server/wifi/WifiService;

    invoke-virtual {v2}, Lcom/android/server/wifi/WifiService;->getPPPOEInfo()Landroid/net/wifi/PPPOEInfo;

    move-result-object v1

    .line 353
    .local v1, "pppoeInfo":Landroid/net/wifi/PPPOEInfo;
    iget-object v2, v1, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    sget-object v3, Landroid/net/wifi/PPPOEInfo$Status;->OFFLINE:Landroid/net/wifi/PPPOEInfo$Status;

    if-eq v2, v3, :cond_0

    .line 354
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$1;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mPPPOEService:Lcom/android/server/PPPOEService;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$400(Lcom/android/server/wifi/WifiService;)Lcom/android/server/PPPOEService;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/PPPOEService;->stopPPPOE()V

    .line 357
    .end local v1    # "pppoeInfo":Landroid/net/wifi/PPPOEInfo;
    :cond_0
    iget-object v2, p0, Lcom/android/server/wifi/WifiService$1;->this$0:Lcom/android/server/wifi/WifiService;

    # getter for: Lcom/android/server/wifi/WifiService;->mWifiController:Lcom/android/server/wifi/WifiController;
    invoke-static {v2}, Lcom/android/server/wifi/WifiService;->access$500(Lcom/android/server/wifi/WifiService;)Lcom/android/server/wifi/WifiController;

    move-result-object v2

    const v3, 0x26009

    invoke-virtual {v2, v3}, Lcom/android/internal/util/StateMachine;->sendMessage(I)V

    .line 359
    .end local v0    # "airplaneMode":I
    :cond_1
    return-void
.end method
