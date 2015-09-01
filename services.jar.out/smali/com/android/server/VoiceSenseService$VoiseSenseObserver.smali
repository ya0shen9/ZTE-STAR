.class Lcom/android/server/VoiceSenseService$VoiseSenseObserver;
.super Landroid/os/UEventObserver;
.source "VoiceSenseService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/VoiceSenseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "VoiseSenseObserver"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VoiceSenseService$VoiseSenseObserver$BootCompletedReceiver;
    }
.end annotation


# instance fields
.field private final mContext:Landroid/content/Context;

.field private final mFullWakeLock:Landroid/os/PowerManager$WakeLock;

.field final synthetic this$0:Lcom/android/server/VoiceSenseService;

.field private final voiceSenseUevent:[Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/android/server/VoiceSenseService;Landroid/content/Context;)V
    .locals 5
    .parameter
    .parameter "context"

    .prologue
    const/4 v4, 0x0

    .line 515
    iput-object p1, p0, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;->this$0:Lcom/android/server/VoiceSenseService;

    invoke-direct {p0}, Landroid/os/UEventObserver;-><init>()V

    .line 510
    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/String;

    const/4 v2, 0x0

    const-string v3, "DEVPATH=/devices/fe12f000.slim/es705-codec-gen0"

    aput-object v3, v1, v2

    iput-object v1, p0, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;->voiceSenseUevent:[Ljava/lang/String;

    .line 516
    iput-object p2, p0, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;->mContext:Landroid/content/Context;

    .line 517
    const-string v1, "power"

    invoke-virtual {p2, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/os/PowerManager;

    .line 518
    .local v0, pm:Landroid/os/PowerManager;
    const v1, 0x3000001a

    const-string v2, "VSObserverFullWL"

    invoke-virtual {v0, v1, v2}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;->mFullWakeLock:Landroid/os/PowerManager$WakeLock;

    .line 522
    new-instance v1, Lcom/android/server/VoiceSenseService$VoiseSenseObserver$BootCompletedReceiver;

    invoke-direct {v1, p0, v4}, Lcom/android/server/VoiceSenseService$VoiseSenseObserver$BootCompletedReceiver;-><init>(Lcom/android/server/VoiceSenseService$VoiseSenseObserver;Lcom/android/server/VoiceSenseService$1;)V

    new-instance v2, Landroid/content/IntentFilter;

    const-string v3, "android.intent.action.BOOT_COMPLETED"

    invoke-direct {v2, v3}, Landroid/content/IntentFilter;-><init>(Ljava/lang/String;)V

    invoke-virtual {p2, v1, v2, v4, v4}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;Ljava/lang/String;Landroid/os/Handler;)Landroid/content/Intent;

    .line 524
    return-void
.end method

.method static synthetic access$1800(Lcom/android/server/VoiceSenseService$VoiseSenseObserver;)[Ljava/lang/String;
    .locals 1
    .parameter "x0"

    .prologue
    .line 498
    iget-object v0, p0, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;->voiceSenseUevent:[Ljava/lang/String;

    return-object v0
.end method


# virtual methods
.method public onUEvent(Landroid/os/UEventObserver$UEvent;)V
    .locals 8
    .parameter "event"

    .prologue
    const/4 v7, 0x0

    .line 537
    const-string v4, "VoiceSense-Service"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "### VoiceSense UEvent: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {p1}, Landroid/os/UEventObserver$UEvent;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " ###"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 539
    const-string v4, "persist.sys.quickboot"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v3

    .line 540
    .local v3, quickboolVal:I
    const-string v4, "service.quickboot.state"

    invoke-static {v4, v7}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 541
    .local v2, quickboolState:I
    const/4 v4, 0x1

    if-ne v3, v4, :cond_0

    if-eqz v2, :cond_0

    .line 544
    const-string v4, "VoiceSense-Service"

    const-string v5, "should not wakeup while quick shutdown"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    :goto_0
    return-void

    .line 558
    :cond_0
    iget-object v4, p0, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;->this$0:Lcom/android/server/VoiceSenseService;

    #calls: Lcom/android/server/VoiceSenseService;->isAudioActive()Z
    invoke-static {v4}, Lcom/android/server/VoiceSenseService;->access$1100(Lcom/android/server/VoiceSenseService;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 559
    const-string v4, "VoiceSense-Service"

    const-string v5, "should not be waked up while audio active"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 564
    :cond_1
    iget-object v4, p0, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;->this$0:Lcom/android/server/VoiceSenseService;

    const-string v5, "Preset"

    const-string v6, "1201"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/VoiceSenseService;->setValue(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    iget-object v4, p0, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;->this$0:Lcom/android/server/VoiceSenseService;

    const-string v5, "Preset"

    const-string v6, "606"

    invoke-virtual {v4, v5, v6}, Lcom/android/server/VoiceSenseService;->setValue(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    const-string v0, "VoiceSenseUevent"

    .line 568
    .local v0, CUSTOM_INTENT:Ljava/lang/String;
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    .line 569
    .local v1, i:Landroid/content/Intent;
    const-string v4, "VoiceSenseUevent"

    invoke-virtual {v1, v4}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 570
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 571
    iget-object v4, p0, Lcom/android/server/VoiceSenseService$VoiseSenseObserver;->mContext:Landroid/content/Context;

    invoke-virtual {v4, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0
.end method
