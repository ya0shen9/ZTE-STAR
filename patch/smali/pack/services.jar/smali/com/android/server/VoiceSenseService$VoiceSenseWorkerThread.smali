.class Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;
.super Ljava/lang/Thread;
.source "VoiceSenseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VoiceSenseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceSenseWorkerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VoiceSenseService;


# direct methods
.method public constructor <init>(Lcom/android/server/VoiceSenseService;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 434
    iput-object p1, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    .line 435
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 436
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 438
    invoke-static {}, Landroid/os/Looper;->prepare()V

    .line 439
    iget-object v2, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    new-instance v3, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;

    iget-object v4, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    const/4 v5, 0x0

    invoke-direct {v3, v4, v5}, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;-><init>(Lcom/android/server/VoiceSenseService;Lcom/android/server/VoiceSenseService$1;)V

    # setter for: Lcom/android/server/VoiceSenseService;->mHandler:Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;
    invoke-static {v2, v3}, Lcom/android/server/VoiceSenseService;->access$1402(Lcom/android/server/VoiceSenseService;Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;)Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;

    .line 440
    iget-object v2, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    new-instance v3, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;

    iget-object v4, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    iget-object v5, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    # getter for: Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;
    invoke-static {v5}, Lcom/android/server/VoiceSenseService;->access$1000(Lcom/android/server/VoiceSenseService;)Landroid/content/Context;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;-><init>(Lcom/android/server/VoiceSenseService;Landroid/content/Context;)V

    # setter for: Lcom/android/server/VoiceSenseService;->vsObserver:Lcom/android/server/VoiceSenseService$VoiseSenseObserver;
    invoke-static {v2, v3}, Lcom/android/server/VoiceSenseService;->access$1602(Lcom/android/server/VoiceSenseService;Lcom/android/server/VoiceSenseService$VoiseSenseObserver;)Lcom/android/server/VoiceSenseService$VoiseSenseObserver;

    .line 443
    const-string v2, "persist.sys.silent_powerOn"

    const/4 v3, 0x0

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 444
    .local v0, "silentPowerOn":Z
    iget-object v2, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    # invokes: Lcom/android/server/VoiceSenseService;->isVoiceSenseToggled()Z
    invoke-static {v2}, Lcom/android/server/VoiceSenseService;->access$100(Lcom/android/server/VoiceSenseService;)Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->this$0:Lcom/android/server/VoiceSenseService;

    # getter for: Lcom/android/server/VoiceSenseService;->mIsVsOpen:Z
    invoke-static {v2}, Lcom/android/server/VoiceSenseService;->access$1700(Lcom/android/server/VoiceSenseService;)Z

    move-result v2

    if-nez v2, :cond_0

    if-eqz v0, :cond_0

    .line 446
    new-instance v1, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread$1;

    invoke-direct {v1, p0}, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread$1;-><init>(Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;)V

    .line 478
    .local v1, "t":Ljava/lang/Thread;
    invoke-virtual {v1}, Ljava/lang/Thread;->start()V

    .line 482
    .end local v1    # "t":Ljava/lang/Thread;
    :cond_0
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 483
    return-void
.end method
