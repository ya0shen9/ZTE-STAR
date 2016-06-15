.class Lcom/android/server/VoiceSenseService$1;
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
    .line 98
    iput-object p1, p0, Lcom/android/server/VoiceSenseService$1;->this$0:Lcom/android/server/VoiceSenseService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 101
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 102
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

    .line 103
    iget-object v1, p0, Lcom/android/server/VoiceSenseService$1;->this$0:Lcom/android/server/VoiceSenseService;

    # invokes: Lcom/android/server/VoiceSenseService;->isVoiceSenseToggled()Z
    invoke-static {v1}, Lcom/android/server/VoiceSenseService;->access$100(Lcom/android/server/VoiceSenseService;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 120
    :cond_0
    :goto_0
    return-void

    .line 106
    :cond_1
    const-string v1, "com.cn.zte.voiceassistant.service.crash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 107
    iget-object v1, p0, Lcom/android/server/VoiceSenseService$1;->this$0:Lcom/android/server/VoiceSenseService;

    # invokes: Lcom/android/server/VoiceSenseService;->enableVoiceAssit()V
    invoke-static {v1}, Lcom/android/server/VoiceSenseService;->access$200(Lcom/android/server/VoiceSenseService;)V

    goto :goto_0

    .line 109
    :cond_2
    const-string v1, "zte.com.cn.action.quickshutdown"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 110
    iget-object v1, p0, Lcom/android/server/VoiceSenseService$1;->this$0:Lcom/android/server/VoiceSenseService;

    # setter for: Lcom/android/server/VoiceSenseService;->isQuickShutDown:Z
    invoke-static {v1, v4}, Lcom/android/server/VoiceSenseService;->access$302(Lcom/android/server/VoiceSenseService;Z)Z

    .line 111
    iget-object v1, p0, Lcom/android/server/VoiceSenseService$1;->this$0:Lcom/android/server/VoiceSenseService;

    # invokes: Lcom/android/server/VoiceSenseService;->disableVoiceSense()V
    invoke-static {v1}, Lcom/android/server/VoiceSenseService;->access$400(Lcom/android/server/VoiceSenseService;)V

    goto :goto_0

    .line 113
    :cond_3
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    iget-object v1, p0, Lcom/android/server/VoiceSenseService$1;->this$0:Lcom/android/server/VoiceSenseService;

    # setter for: Lcom/android/server/VoiceSenseService;->isBootCompleted:Z
    invoke-static {v1, v4}, Lcom/android/server/VoiceSenseService;->access$502(Lcom/android/server/VoiceSenseService;Z)Z

    .line 115
    iget-object v1, p0, Lcom/android/server/VoiceSenseService$1;->this$0:Lcom/android/server/VoiceSenseService;

    # invokes: Lcom/android/server/VoiceSenseService;->enableVoiceSense()V
    invoke-static {v1}, Lcom/android/server/VoiceSenseService;->access$600(Lcom/android/server/VoiceSenseService;)V

    .line 116
    iget-object v1, p0, Lcom/android/server/VoiceSenseService$1;->this$0:Lcom/android/server/VoiceSenseService;

    # setter for: Lcom/android/server/VoiceSenseService;->isBootCompleted:Z
    invoke-static {v1, v3}, Lcom/android/server/VoiceSenseService;->access$502(Lcom/android/server/VoiceSenseService;Z)Z

    .line 117
    iget-object v1, p0, Lcom/android/server/VoiceSenseService$1;->this$0:Lcom/android/server/VoiceSenseService;

    # setter for: Lcom/android/server/VoiceSenseService;->isQuickShutDown:Z
    invoke-static {v1, v3}, Lcom/android/server/VoiceSenseService;->access$302(Lcom/android/server/VoiceSenseService;Z)Z

    goto :goto_0
.end method
