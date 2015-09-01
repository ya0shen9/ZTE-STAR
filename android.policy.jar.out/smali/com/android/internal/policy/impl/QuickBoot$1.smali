.class Lcom/android/internal/policy/impl/QuickBoot$1;
.super Ljava/lang/Object;
.source "QuickBoot.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/QuickBoot;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/QuickBoot;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/QuickBoot;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Lcom/android/internal/policy/impl/QuickBoot$1;->this$0:Lcom/android/internal/policy/impl/QuickBoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 8

    .prologue
    .line 79
    const-string v4, "QuickBoot"

    const-string v5, "quickboot on:playQuickbootAnim"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    const-string v4, "service.bootanim.exit"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 81
    const-string v4, "ctl.start"

    const-string v5, "bootanim"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 84
    const-string v4, "init.svc.bootanim"

    const-string v5, "error"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 85
    .local v0, Temp:Ljava/lang/String;
    :goto_0
    const-string v4, "running"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 87
    const-string v4, "init.svc.bootanim"

    const-string v5, "error"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 88
    const-string v4, "QuickBoot"

    const-string v5, "QuickBoot UP Anim SystemProperties sleep."

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const-wide/16 v4, 0x32

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    goto :goto_0

    .line 92
    :cond_0
    const-string v4, "QuickBoot"

    const-string v5, "quickboot on:execute vibrator"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    new-instance v3, Landroid/os/SystemVibrator;

    invoke-direct {v3}, Landroid/os/SystemVibrator;-><init>()V

    .line 95
    .local v3, vibrator:Landroid/os/Vibrator;
    const-wide/16 v4, 0xc8

    :try_start_0
    invoke-virtual {v3, v4, v5}, Landroid/os/Vibrator;->vibrate(J)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 100
    :goto_1
    const-wide/16 v4, 0x320

    invoke-static {v4, v5}, Landroid/os/SystemClock;->sleep(J)V

    .line 101
    const-string v4, "service.quickboot.state"

    const-string v5, "0"

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 102
    iget-object v4, p0, Lcom/android/internal/policy/impl/QuickBoot$1;->this$0:Lcom/android/internal/policy/impl/QuickBoot;

    iget-object v4, v4, Lcom/android/internal/policy/impl/QuickBoot;->mHandler:Landroid/os/Handler;

    iget-object v5, p0, Lcom/android/internal/policy/impl/QuickBoot$1;->this$0:Lcom/android/internal/policy/impl/QuickBoot;

    #getter for: Lcom/android/internal/policy/impl/QuickBoot;->stopQuickbootAnim:Ljava/lang/Runnable;
    invoke-static {v5}, Lcom/android/internal/policy/impl/QuickBoot;->access$000(Lcom/android/internal/policy/impl/QuickBoot;)Ljava/lang/Runnable;

    move-result-object v5

    const-wide/16 v6, 0x1770

    invoke-virtual {v4, v5, v6, v7}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 103
    iget-object v4, p0, Lcom/android/internal/policy/impl/QuickBoot$1;->this$0:Lcom/android/internal/policy/impl/QuickBoot;

    #getter for: Lcom/android/internal/policy/impl/QuickBoot;->mPowerManager:Landroid/os/PowerManager;
    invoke-static {v4}, Lcom/android/internal/policy/impl/QuickBoot;->access$100(Lcom/android/internal/policy/impl/QuickBoot;)Landroid/os/PowerManager;

    move-result-object v4

    const v5, 0x3000001a

    const-string v6, "PhoneWindowManager.mQuitBootWakeLock"

    invoke-virtual {v4, v5, v6}, Landroid/os/PowerManager;->newWakeLock(ILjava/lang/String;)Landroid/os/PowerManager$WakeLock;

    move-result-object v2

    .line 105
    .local v2, mQuitBootWakeLock:Landroid/os/PowerManager$WakeLock;
    const-wide/16 v4, 0x2710

    invoke-virtual {v2, v4, v5}, Landroid/os/PowerManager$WakeLock;->acquire(J)V

    .line 106
    return-void

    .line 96
    .end local v2           #mQuitBootWakeLock:Landroid/os/PowerManager$WakeLock;
    :catch_0
    move-exception v1

    .line 97
    .local v1, e:Ljava/lang/Exception;
    const-string v4, "QuickBoot"

    const-string v5, "Failed to vibrate during shutdown."

    invoke-static {v4, v5, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method
