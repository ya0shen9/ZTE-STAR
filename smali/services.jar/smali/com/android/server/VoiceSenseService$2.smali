.class Lcom/android/server/VoiceSenseService$2;
.super Landroid/content/BroadcastReceiver;
.source "VoiceSenseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VoiceSenseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/VoiceSenseService;


# direct methods
.method constructor <init>(Lcom/android/server/VoiceSenseService;)V
    .locals 0

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/server/VoiceSenseService$2;->this$0:Lcom/android/server/VoiceSenseService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v3, 0x0

    .line 156
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 157
    .local v0, "action":Ljava/lang/String;
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "receive action ==="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    # invokes: Lcom/android/server/VoiceSenseService;->log(Ljava/lang/String;)V
    invoke-static {v1}, Lcom/android/server/VoiceSenseService;->access$000(Ljava/lang/String;)V

    .line 158
    const-string v1, "android.server.VOICE_WAKEUP_ENABLED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 159
    iget-object v1, p0, Lcom/android/server/VoiceSenseService$2;->this$0:Lcom/android/server/VoiceSenseService;

    const/4 v2, 0x3

    # invokes: Lcom/android/server/VoiceSenseService;->setVoiceStateState(I)V
    invoke-static {v1, v2}, Lcom/android/server/VoiceSenseService;->access$700(Lcom/android/server/VoiceSenseService;I)V

    .line 160
    iget-object v1, p0, Lcom/android/server/VoiceSenseService$2;->this$0:Lcom/android/server/VoiceSenseService;

    # getter for: Lcom/android/server/VoiceSenseService;->isRegisted:Z
    invoke-static {v1}, Lcom/android/server/VoiceSenseService;->access$800(Lcom/android/server/VoiceSenseService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 161
    iget-object v1, p0, Lcom/android/server/VoiceSenseService$2;->this$0:Lcom/android/server/VoiceSenseService;

    # getter for: Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;
    invoke-static {v1}, Lcom/android/server/VoiceSenseService;->access$1000(Lcom/android/server/VoiceSenseService;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lcom/android/server/VoiceSenseService$2;->this$0:Lcom/android/server/VoiceSenseService;

    # getter for: Lcom/android/server/VoiceSenseService;->mReceiverWhileEnabling:Landroid/content/BroadcastReceiver;
    invoke-static {v2}, Lcom/android/server/VoiceSenseService;->access$900(Lcom/android/server/VoiceSenseService;)Landroid/content/BroadcastReceiver;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 162
    iget-object v1, p0, Lcom/android/server/VoiceSenseService$2;->this$0:Lcom/android/server/VoiceSenseService;

    # setter for: Lcom/android/server/VoiceSenseService;->isRegisted:Z
    invoke-static {v1, v3}, Lcom/android/server/VoiceSenseService;->access$802(Lcom/android/server/VoiceSenseService;Z)Z

    .line 167
    :cond_0
    :goto_0
    return-void

    .line 164
    :cond_1
    const-string v1, "android.server.VOICE_WAKEUP_FAILED_ACTION"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    iget-object v1, p0, Lcom/android/server/VoiceSenseService$2;->this$0:Lcom/android/server/VoiceSenseService;

    invoke-virtual {v1, v3}, Lcom/android/server/VoiceSenseService;->setVoiceSenseEnabled(Z)Z

    goto :goto_0
.end method
