.class Lcom/android/internal/policy/impl/QuickBoot$2;
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
    .line 110
    iput-object p1, p0, Lcom/android/internal/policy/impl/QuickBoot$2;->this$0:Lcom/android/internal/policy/impl/QuickBoot;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 113
    const-string v0, "QuickBoot"

    const-string v1, "quickboot on: stopQuickbootAnim."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 114
    const-string v0, "service.bootanim.exit"

    const-string v1, "1"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 115
    iget-object v0, p0, Lcom/android/internal/policy/impl/QuickBoot$2;->this$0:Lcom/android/internal/policy/impl/QuickBoot;

    iget-object v0, v0, Lcom/android/internal/policy/impl/QuickBoot;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    const-string v1, "quick_boot_power_oning"

    const/4 v2, 0x0

    invoke-static {v0, v1, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 117
    iget-object v0, p0, Lcom/android/internal/policy/impl/QuickBoot$2;->this$0:Lcom/android/internal/policy/impl/QuickBoot;

    #calls: Lcom/android/internal/policy/impl/QuickBoot;->quickBootComplete()V
    invoke-static {v0}, Lcom/android/internal/policy/impl/QuickBoot;->access$200(Lcom/android/internal/policy/impl/QuickBoot;)V

    .line 118
    return-void
.end method
