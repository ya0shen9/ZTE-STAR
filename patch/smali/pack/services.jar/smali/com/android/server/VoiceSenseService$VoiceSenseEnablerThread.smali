.class Lcom/android/server/VoiceSenseService$VoiceSenseEnablerThread;
.super Ljava/lang/Thread;
.source "VoiceSenseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VoiceSenseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiceSenseEnablerThread"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VoiceSenseService;


# direct methods
.method public constructor <init>(Lcom/android/server/VoiceSenseService;Ljava/lang/String;)V
    .locals 0
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 388
    iput-object p1, p0, Lcom/android/server/VoiceSenseService$VoiceSenseEnablerThread;->this$0:Lcom/android/server/VoiceSenseService;

    .line 389
    invoke-direct {p0, p2}, Ljava/lang/Thread;-><init>(Ljava/lang/String;)V

    .line 390
    return-void
.end method


# virtual methods
.method public run()V
    .locals 6

    .prologue
    .line 392
    const-string v2, ""

    .line 394
    .local v2, "pwState":Ljava/lang/String;
    const/4 v1, 0x0

    .line 398
    .local v1, "i":I
    :cond_0
    const-wide/16 v3, 0x1f4

    :try_start_0
    invoke-static {v3, v4}, Lcom/android/server/VoiceSenseService$VoiceSenseEnablerThread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 403
    :goto_0
    iget-object v3, p0, Lcom/android/server/VoiceSenseService$VoiceSenseEnablerThread;->this$0:Lcom/android/server/VoiceSenseService;

    const-string v4, "ES705 Power State"

    invoke-virtual {v3, v4}, Lcom/android/server/VoiceSenseService;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 404
    const-string v3, "VoiceSense-Service"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "pwState = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 405
    const-string v3, "Normal"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    const-string v3, "Low_Power"

    invoke-virtual {v3, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 406
    :cond_1
    iget-object v3, p0, Lcom/android/server/VoiceSenseService$VoiceSenseEnablerThread;->this$0:Lcom/android/server/VoiceSenseService;

    # invokes: Lcom/android/server/VoiceSenseService;->notifyVoiceWakeupEnabled()V
    invoke-static {v3}, Lcom/android/server/VoiceSenseService;->access$1100(Lcom/android/server/VoiceSenseService;)V

    .line 418
    :goto_1
    return-void

    .line 399
    :catch_0
    move-exception v0

    .line 400
    .local v0, "e":Ljava/lang/Exception;
    invoke-virtual {v0}, Ljava/lang/Throwable;->printStackTrace()V

    goto :goto_0

    .line 410
    .end local v0    # "e":Ljava/lang/Exception;
    :cond_2
    add-int/lit8 v1, v1, 0x1

    .line 411
    const/4 v3, 0x4

    if-lt v1, v3, :cond_0

    .line 412
    iget-object v3, p0, Lcom/android/server/VoiceSenseService$VoiceSenseEnablerThread;->this$0:Lcom/android/server/VoiceSenseService;

    # invokes: Lcom/android/server/VoiceSenseService;->isAudioActive()Z
    invoke-static {v3}, Lcom/android/server/VoiceSenseService;->access$1200(Lcom/android/server/VoiceSenseService;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 413
    iget-object v3, p0, Lcom/android/server/VoiceSenseService$VoiceSenseEnablerThread;->this$0:Lcom/android/server/VoiceSenseService;

    # invokes: Lcom/android/server/VoiceSenseService;->notifyVoiceWakeupEnabled()V
    invoke-static {v3}, Lcom/android/server/VoiceSenseService;->access$1100(Lcom/android/server/VoiceSenseService;)V

    goto :goto_1

    .line 415
    :cond_3
    iget-object v3, p0, Lcom/android/server/VoiceSenseService$VoiceSenseEnablerThread;->this$0:Lcom/android/server/VoiceSenseService;

    # invokes: Lcom/android/server/VoiceSenseService;->notifyVoiceWakeupFailed()V
    invoke-static {v3}, Lcom/android/server/VoiceSenseService;->access$1300(Lcom/android/server/VoiceSenseService;)V

    goto :goto_1
.end method
