.class Lcom/android/server/power/DisplayPowerController$8;
.super Ljava/lang/Object;
.source "DisplayPowerController.java"

# interfaces
.implements Landroid/hardware/SensorEventListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/power/DisplayPowerController;)V
    .locals 0
    .parameter

    .prologue
    .line 1526
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onAccuracyChanged(Landroid/hardware/Sensor;I)V
    .locals 0
    .parameter "sensor"
    .parameter "accuracy"

    .prologue
    .line 1545
    return-void
.end method

.method public onSensorChanged(Landroid/hardware/SensorEvent;)V
    .locals 5
    .parameter "event"

    .prologue
    .line 1529
    invoke-static {}, Lcom/zte/config/zteConfig;->getProductName()Ljava/lang/String;

    move-result-object v3

    const-string v4, "P892S10"

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1530
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$1000()I

    move-result v3

    const/16 v4, 0x14

    if-gt v3, v4, :cond_1

    .line 1531
    invoke-static {}, Lcom/android/server/power/DisplayPowerController;->access$1008()I

    .line 1540
    :cond_0
    :goto_0
    return-void

    .line 1535
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    #getter for: Lcom/android/server/power/DisplayPowerController;->mLightSensorEnabled:Z
    invoke-static {v3}, Lcom/android/server/power/DisplayPowerController;->access$1100(Lcom/android/server/power/DisplayPowerController;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 1536
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v1

    .line 1537
    .local v1, time:J
    iget-object v3, p1, Landroid/hardware/SensorEvent;->values:[F

    const/4 v4, 0x0

    aget v0, v3, v4

    .line 1538
    .local v0, lux:F
    iget-object v3, p0, Lcom/android/server/power/DisplayPowerController$8;->this$0:Lcom/android/server/power/DisplayPowerController;

    #calls: Lcom/android/server/power/DisplayPowerController;->handleLightSensorEvent(JF)V
    invoke-static {v3, v1, v2, v0}, Lcom/android/server/power/DisplayPowerController;->access$1200(Lcom/android/server/power/DisplayPowerController;JF)V

    goto :goto_0
.end method
