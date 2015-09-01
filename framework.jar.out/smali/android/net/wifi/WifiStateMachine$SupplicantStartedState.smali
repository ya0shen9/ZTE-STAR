.class Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;
.super Lcom/android/internal/util/State;
.source "WifiStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SupplicantStartedState"
.end annotation


# instance fields
.field private mFirstScanResult:Z

.field final synthetic this$0:Landroid/net/wifi/WifiStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiStateMachine;)V
    .locals 1
    .parameter

    .prologue
    .line 3036
    iput-object p1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    .line 3038
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->mFirstScanResult:Z

    return-void
.end method


# virtual methods
.method public enter()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 3044
    iput-boolean v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->mFirstScanResult:Z

    .line 3048
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v1

    invoke-virtual {v1, v2}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 3050
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x10e000f

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    .line 3053
    .local v0, defaultInterval:I
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$400(Landroid/net/wifi/WifiStateMachine;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string/jumbo v3, "wifi_supplicant_scan_interval_ms"

    int-to-long v4, v0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v2

    #setter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v1, v2, v3}, Landroid/net/wifi/WifiStateMachine;->access$8102(Landroid/net/wifi/WifiStateMachine;J)J

    .line 3057
    iget-object v1, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v1}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v1

    iget-object v2, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantScanIntervalMs:J
    invoke-static {v2}, Landroid/net/wifi/WifiStateMachine;->access$8100(Landroid/net/wifi/WifiStateMachine;)J

    move-result-wide v2

    long-to-int v2, v2

    div-int/lit16 v2, v2, 0x3e8

    invoke-virtual {v1, v2}, Landroid/net/wifi/WifiNative;->setScanInterval(I)V

    .line 3058
    return-void
.end method

.method public exit()V
    .locals 2

    .prologue
    .line 3140
    iget-object v0, p0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mNetworkInfo:Landroid/net/NetworkInfo;
    invoke-static {v0}, Landroid/net/wifi/WifiStateMachine;->access$8000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/NetworkInfo;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/net/NetworkInfo;->setIsAvailable(Z)V

    .line 3141
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 16
    .parameter "message"

    .prologue
    .line 3061
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->what:I

    sparse-switch v10, :sswitch_data_0

    .line 3133
    const/4 v10, 0x0

    .line 3135
    :goto_0
    return v10

    .line 3063
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v10

    if-eqz v10, :cond_0

    .line 3064
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$8200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v11

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$8300(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 3135
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 3066
    :cond_0
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStoppingState:Lcom/android/internal/util/State;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$8400(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v11

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$8500(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_1

    .line 3070
    :sswitch_1
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v11, "Connection lost, restart supplicant"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$8600(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3071
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v11, 0x1

    #calls: Landroid/net/wifi/WifiStateMachine;->handleSupplicantConnectionLoss(Z)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$8700(Landroid/net/wifi/WifiStateMachine;Z)V

    .line 3072
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->handleNetworkDisconnect()V
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$8800(Landroid/net/wifi/WifiStateMachine;)V

    .line 3073
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mSupplicantStateTracker:Landroid/net/wifi/SupplicantStateTracker;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$6500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/SupplicantStateTracker;

    move-result-object v10

    const v11, 0x2006f

    invoke-virtual {v10, v11}, Landroid/net/wifi/SupplicantStateTracker;->sendMessage(I)V

    .line 3074
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mP2pSupported:Z
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$4200(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v10

    if-eqz v10, :cond_1

    .line 3075
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWaitForP2pDisableState:Lcom/android/internal/util/State;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$8200(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v11

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$8900(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    .line 3079
    :goto_2
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v11, 0x2000b

    const-wide/16 v12, 0x1388

    invoke-virtual {v10, v11, v12, v13}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(IJ)V

    goto :goto_1

    .line 3077
    :cond_1
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mInitialState:Lcom/android/internal/util/State;
    invoke-static {v11}, Landroid/net/wifi/WifiStateMachine;->access$7500(Landroid/net/wifi/WifiStateMachine;)Lcom/android/internal/util/State;

    move-result-object v11

    #calls: Landroid/net/wifi/WifiStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$9000(Landroid/net/wifi/WifiStateMachine;Lcom/android/internal/util/IState;)V

    goto :goto_2

    .line 3082
    :sswitch_2
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->setScanResults()V
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$9100(Landroid/net/wifi/WifiStateMachine;)V

    .line 3084
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mCheckScanResults:Z
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$3800(Landroid/net/wifi/WifiStateMachine;)Z

    move-result v10

    if-eqz v10, :cond_6

    .line 3085
    move-object/from16 v0, p0

    iget-boolean v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->mFirstScanResult:Z

    if-eqz v10, :cond_8

    .line 3086
    const/4 v1, 0x1

    .line 3087
    .local v1, allNotInRange:Z
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiConfigStore:Landroid/net/wifi/WifiConfigStore;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$7000(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiConfigStore;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiConfigStore;->getConfiguredNetworks()Ljava/util/List;

    move-result-object v2

    .line 3088
    .local v2, configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v10}, Landroid/net/wifi/WifiStateMachine;->syncGetScanResultsList()Ljava/util/List;

    move-result-object v9

    .line 3090
    .local v9, results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v4

    :cond_2
    invoke-interface {v4}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v4}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/net/wifi/WifiConfiguration;

    .line 3091
    .local v7, perConfig:Landroid/net/wifi/WifiConfiguration;
    const/4 v3, 0x0

    .line 3092
    .local v3, findAP:Z
    invoke-interface {v9}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v5

    .local v5, i$:Ljava/util/Iterator;
    :cond_3
    invoke-interface {v5}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_4

    invoke-interface {v5}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/net/wifi/ScanResult;

    .line 3094
    .local v8, result:Landroid/net/wifi/ScanResult;
    iget-object v10, v7, Landroid/net/wifi/WifiConfiguration;->SSID:Ljava/lang/String;

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, v8, Landroid/net/wifi/ScanResult;->SSID:Ljava/lang/String;

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 3095
    const/4 v3, 0x1

    .line 3099
    .end local v8           #result:Landroid/net/wifi/ScanResult;
    :cond_4
    if-eqz v3, :cond_2

    .line 3100
    const/4 v1, 0x0

    .line 3105
    .end local v3           #findAP:Z
    .end local v5           #i$:Ljava/util/Iterator;
    .end local v7           #perConfig:Landroid/net/wifi/WifiConfiguration;
    :cond_5
    if-eqz v1, :cond_7

    .line 3106
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v10}, Landroid/net/wifi/WifiStateMachine;->popupWifiSettingsFace()V

    .line 3111
    :goto_3
    const/4 v10, 0x0

    move-object/from16 v0, p0

    iput-boolean v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->mFirstScanResult:Z

    .line 3117
    .end local v1           #allNotInRange:Z
    .end local v2           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v9           #results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_6
    :goto_4
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #calls: Landroid/net/wifi/WifiStateMachine;->sendScanResultsAvailableBroadcast()V
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$9200(Landroid/net/wifi/WifiStateMachine;)V

    .line 3118
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/4 v11, 0x0

    #setter for: Landroid/net/wifi/WifiStateMachine;->mScanResultIsPending:Z
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$9302(Landroid/net/wifi/WifiStateMachine;Z)Z

    goto/16 :goto_1

    .line 3108
    .restart local v1       #allNotInRange:Z
    .restart local v2       #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .restart local v9       #results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_7
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const v13, 0x20047

    const/4 v14, -0x1

    const/4 v15, 0x0

    const/4 v10, 0x0

    check-cast v10, Landroid/os/WorkSource;

    invoke-virtual {v12, v13, v14, v15, v10}, Landroid/net/wifi/WifiStateMachine;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v10

    const-wide/16 v12, 0xbb8

    invoke-virtual {v11, v10, v12, v13}, Landroid/net/wifi/WifiStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_3

    .line 3113
    .end local v1           #allNotInRange:Z
    .end local v2           #configs:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/WifiConfiguration;>;"
    .end local v9           #results:Ljava/util/List;,"Ljava/util/List<Landroid/net/wifi/ScanResult;>;"
    :cond_8
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    invoke-virtual {v10}, Landroid/net/wifi/WifiStateMachine;->popupWifiSettingsFace()V

    goto :goto_4

    .line 3121
    :sswitch_3
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    #getter for: Landroid/net/wifi/WifiStateMachine;->mWifiNative:Landroid/net/wifi/WifiNative;
    invoke-static {v10}, Landroid/net/wifi/WifiStateMachine;->access$3500(Landroid/net/wifi/WifiStateMachine;)Landroid/net/wifi/WifiNative;

    move-result-object v10

    invoke-virtual {v10}, Landroid/net/wifi/WifiNative;->ping()Z

    move-result v6

    .line 3122
    .local v6, ok:Z
    move-object/from16 v0, p0

    iget-object v11, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v12, v0, Landroid/os/Message;->what:I

    if-eqz v6, :cond_9

    const/4 v10, 0x1

    :goto_5
    move-object/from16 v0, p1

    #calls: Landroid/net/wifi/WifiStateMachine;->replyToMessage(Landroid/os/Message;II)V
    invoke-static {v11, v0, v12, v10}, Landroid/net/wifi/WifiStateMachine;->access$1700(Landroid/net/wifi/WifiStateMachine;Landroid/os/Message;II)V

    goto/16 :goto_1

    :cond_9
    const/4 v10, -0x1

    goto :goto_5

    .line 3126
    .end local v6           #ok:Z
    :sswitch_4
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const-string v11, "Failed to start soft AP with a running supplicant"

    #calls: Landroid/net/wifi/WifiStateMachine;->loge(Ljava/lang/String;)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$9400(Landroid/net/wifi/WifiStateMachine;Ljava/lang/String;)V

    .line 3127
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    const/16 v11, 0xe

    #calls: Landroid/net/wifi/WifiStateMachine;->setWifiApState(I)V
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$5100(Landroid/net/wifi/WifiStateMachine;I)V

    goto/16 :goto_1

    .line 3130
    :sswitch_5
    move-object/from16 v0, p0

    iget-object v10, v0, Landroid/net/wifi/WifiStateMachine$SupplicantStartedState;->this$0:Landroid/net/wifi/WifiStateMachine;

    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    #setter for: Landroid/net/wifi/WifiStateMachine;->mOperationalMode:I
    invoke-static {v10, v11}, Landroid/net/wifi/WifiStateMachine;->access$9502(Landroid/net/wifi/WifiStateMachine;I)I

    goto/16 :goto_1

    .line 3061
    :sswitch_data_0
    .sparse-switch
        0x2000c -> :sswitch_0
        0x20015 -> :sswitch_4
        0x20033 -> :sswitch_3
        0x20048 -> :sswitch_5
        0x24002 -> :sswitch_1
        0x24005 -> :sswitch_2
    .end sparse-switch
.end method
