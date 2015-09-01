.class public Lcom/android/server/BatteryService$ShutDownZeroChargerConnect;
.super Ljava/lang/Object;
.source "BatteryService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/BatteryService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ShutDownZeroChargerConnect"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/BatteryService;


# direct methods
.method public constructor <init>(Lcom/android/server/BatteryService;)V
    .locals 0
    .parameter

    .prologue
    .line 326
    iput-object p1, p0, Lcom/android/server/BatteryService$ShutDownZeroChargerConnect;->this$0:Lcom/android/server/BatteryService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 4

    .prologue
    .line 328
    :goto_0
    iget-object v1, p0, Lcom/android/server/BatteryService$ShutDownZeroChargerConnect;->this$0:Lcom/android/server/BatteryService;

    #getter for: Lcom/android/server/BatteryService;->mBatteryProps:Landroid/os/BatteryProperties;
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$200(Lcom/android/server/BatteryService;)Landroid/os/BatteryProperties;

    move-result-object v1

    iget v1, v1, Landroid/os/BatteryProperties;->batteryLevel:I

    if-nez v1, :cond_1

    .line 332
    :try_start_0
    iget-object v1, p0, Lcom/android/server/BatteryService$ShutDownZeroChargerConnect;->this$0:Lcom/android/server/BatteryService;

    const/4 v2, 0x7

    #calls: Lcom/android/server/BatteryService;->isPoweredLocked(I)Z
    invoke-static {v1, v2}, Lcom/android/server/BatteryService;->access$300(Lcom/android/server/BatteryService;I)Z

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/server/BatteryService$ShutDownZeroChargerConnect;->this$0:Lcom/android/server/BatteryService;

    #calls: Lcom/android/server/BatteryService;->isDischarging()Z
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$400(Lcom/android/server/BatteryService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 333
    invoke-static {}, Lcom/android/server/BatteryService;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "isDischarging is true\n"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 334
    iget-object v1, p0, Lcom/android/server/BatteryService$ShutDownZeroChargerConnect;->this$0:Lcom/android/server/BatteryService;

    #calls: Lcom/android/server/BatteryService;->initiateShutdown()V
    invoke-static {v1}, Lcom/android/server/BatteryService;->access$100(Lcom/android/server/BatteryService;)V

    .line 336
    :cond_0
    invoke-static {}, Lcom/android/server/BatteryService;->access$500()Ljava/lang/String;

    move-result-object v1

    const-string v2, "ShutDownZeroChargerConnect thread running\n"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    const-wide/16 v1, 0x4e20

    invoke-static {v1, v2}, Ljava/lang/Thread;->sleep(J)V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 338
    :catch_0
    move-exception v0

    .line 339
    .local v0, e:Ljava/lang/InterruptedException;
    invoke-virtual {v0}, Ljava/lang/InterruptedException;->printStackTrace()V

    goto :goto_0

    .line 342
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_1
    const/4 v1, 0x0

    invoke-static {v1}, Lcom/android/server/BatteryService;->access$602(Z)Z

    .line 343
    invoke-static {}, Lcom/android/server/BatteryService;->access$500()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ShutDownZeroChargerConnect thread exited:"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {}, Lcom/android/server/BatteryService;->access$600()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 344
    return-void
.end method
