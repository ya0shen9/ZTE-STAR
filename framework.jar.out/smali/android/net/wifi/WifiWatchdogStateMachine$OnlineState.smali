.class Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;
.super Lcom/android/internal/util/State;
.source "WifiWatchdogStateMachine.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/wifi/WifiWatchdogStateMachine;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "OnlineState"
.end annotation


# instance fields
.field private mCm:Landroid/net/ConnectivityManager;

.field private retry:I

.field final synthetic this$0:Landroid/net/wifi/WifiWatchdogStateMachine;


# direct methods
.method constructor <init>(Landroid/net/wifi/WifiWatchdogStateMachine;)V
    .locals 0
    .parameter

    .prologue
    .line 876
    iput-object p1, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-direct {p0}, Lcom/android/internal/util/State;-><init>()V

    return-void
.end method

.method private isWalledGardenConnection()Z
    .locals 8

    .prologue
    const/4 v5, 0x0

    .line 937
    const/4 v3, 0x0

    .line 939
    .local v3, urlConnection:Ljava/net/HttpURLConnection;
    :try_start_0
    new-instance v2, Ljava/net/URL;

    const-string v4, "http://www.baidu.com"

    invoke-direct {v2, v4}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    .line 940
    .local v2, url:Ljava/net/URL;
    invoke-virtual {v2}, Ljava/net/URL;->openConnection()Ljava/net/URLConnection;

    move-result-object v4

    move-object v0, v4

    check-cast v0, Ljava/net/HttpURLConnection;

    move-object v3, v0

    .line 941
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setInstanceFollowRedirects(Z)V

    .line 942
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setConnectTimeout(I)V

    .line 943
    const/16 v4, 0x2710

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setReadTimeout(I)V

    .line 944
    const/4 v4, 0x0

    invoke-virtual {v3, v4}, Ljava/net/HttpURLConnection;->setUseCaches(Z)V

    .line 945
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->getResponseCode()I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v4

    const/16 v6, 0xcc

    if-eq v4, v6, :cond_1

    const/4 v4, 0x1

    .line 952
    :goto_0
    if-eqz v3, :cond_0

    .line 953
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    .end local v2           #url:Ljava/net/URL;
    :cond_0
    :goto_1
    return v4

    .restart local v2       #url:Ljava/net/URL;
    :cond_1
    move v4, v5

    .line 945
    goto :goto_0

    .line 946
    .end local v2           #url:Ljava/net/URL;
    :catch_0
    move-exception v1

    .line 948
    .local v1, e:Ljava/io/IOException;
    :try_start_1
    iget-object v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Walled garden check - probably not a portal: exception "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v4, v6}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7400(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 952
    if-eqz v3, :cond_2

    .line 953
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_2
    move v4, v5

    goto :goto_1

    .line 952
    .end local v1           #e:Ljava/io/IOException;
    :catchall_0
    move-exception v4

    if-eqz v3, :cond_3

    .line 953
    invoke-virtual {v3}, Ljava/net/HttpURLConnection;->disconnect()V

    :cond_3
    throw v4
.end method


# virtual methods
.method public enter()V
    .locals 4

    .prologue
    .line 883
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-virtual {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->getName()Ljava/lang/String;

    move-result-object v1

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6300(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 885
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mContext:Landroid/content/Context;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6400(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/content/Context;

    move-result-object v0

    const-string v1, "connectivity"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/net/ConnectivityManager;

    iput-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->mCm:Landroid/net/ConnectivityManager;

    .line 886
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 887
    const/4 v0, 0x2

    iput v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->retry:I

    .line 888
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6508(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    .line 889
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v1, 0x21068

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenCheckToken:I
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6500(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v2

    const/4 v3, 0x0

    invoke-virtual {v0, v1, v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessage(III)V

    .line 890
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v1, "Walled garden check start"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6600(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 893
    :cond_0
    return-void
.end method

.method public processMessage(Landroid/os/Message;)Z
    .locals 6
    .parameter "msg"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 897
    iget v2, p1, Landroid/os/Message;->what:I

    sparse-switch v2, :sswitch_data_0

    .line 933
    :goto_0
    return v0

    .line 900
    :sswitch_0
    iget v2, p1, Landroid/os/Message;->arg1:I

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenCheckToken:I
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6500(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v3

    if-ne v2, v3, :cond_4

    .line 901
    invoke-direct {p0}, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->isWalledGardenConnection()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 902
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v2, "Walled garden check OK"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6700(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 918
    :cond_0
    :goto_1
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string v2, "Walled garden check stop"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7100(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    :cond_1
    :goto_2
    move v0, v1

    .line 933
    goto :goto_0

    .line 904
    :cond_2
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Walled garden check error, retry "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->retry:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v2, v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6800(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 905
    iget v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->retry:I

    add-int/lit8 v3, v2, -0x1

    iput v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->retry:I

    if-lez v2, :cond_3

    .line 906
    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const v4, 0x21068

    iget-object v5, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWalledGardenCheckToken:I
    invoke-static {v5}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6500(Landroid/net/wifi/WifiWatchdogStateMachine;)I

    move-result v5

    invoke-virtual {v3, v4, v5, v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->obtainMessage(III)Landroid/os/Message;

    move-result-object v0

    const-wide/16 v3, 0x7d0

    invoke-virtual {v2, v0, v3, v4}, Landroid/net/wifi/WifiWatchdogStateMachine;->sendMessageDelayed(Landroid/os/Message;J)V

    goto :goto_2

    .line 910
    :cond_3
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "mPoorNetworkDetectionEnabled= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$6900(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 911
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 912
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "disableNetwork ssid is  "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v3}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v3

    invoke-virtual {v3}, Landroid/net/wifi/WifiInfo;->getSSID()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7000(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    .line 913
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiManager:Landroid/net/wifi/WifiManager;
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2900(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiManager;

    move-result-object v0

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mWifiInfo:Landroid/net/wifi/WifiInfo;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$1800(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiInfo;

    move-result-object v2

    invoke-virtual {v2}, Landroid/net/wifi/WifiInfo;->getNetworkId()I

    move-result v2

    invoke-virtual {v0, v2}, Landroid/net/wifi/WifiManager;->disableNetwork(I)Z

    goto/16 :goto_1

    .line 921
    :cond_4
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    const-string/jumbo v2, "mWalledGardenCheckToken is not same"

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->logd(Ljava/lang/String;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7200(Landroid/net/wifi/WifiWatchdogStateMachine;Ljava/lang/String;)V

    goto/16 :goto_2

    .line 926
    :sswitch_1
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #setter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mIsScreenOn:Z
    invoke-static {v0, v1}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$502(Landroid/net/wifi/WifiWatchdogStateMachine;Z)Z

    .line 927
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mPoorNetworkDetectionEnabled:Z
    invoke-static {v0}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2100(Landroid/net/wifi/WifiWatchdogStateMachine;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 928
    iget-object v0, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    iget-object v2, p0, Landroid/net/wifi/WifiWatchdogStateMachine$OnlineState;->this$0:Landroid/net/wifi/WifiWatchdogStateMachine;

    #getter for: Landroid/net/wifi/WifiWatchdogStateMachine;->mOnlineWatchState:Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;
    invoke-static {v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$2600(Landroid/net/wifi/WifiWatchdogStateMachine;)Landroid/net/wifi/WifiWatchdogStateMachine$OnlineWatchState;

    move-result-object v2

    #calls: Landroid/net/wifi/WifiWatchdogStateMachine;->transitionTo(Lcom/android/internal/util/IState;)V
    invoke-static {v0, v2}, Landroid/net/wifi/WifiWatchdogStateMachine;->access$7300(Landroid/net/wifi/WifiWatchdogStateMachine;Lcom/android/internal/util/IState;)V

    goto/16 :goto_2

    .line 897
    :sswitch_data_0
    .sparse-switch
        0x21008 -> :sswitch_1
        0x21068 -> :sswitch_0
    .end sparse-switch
.end method
