.class Lcom/android/server/power/DisplayPowerState$ButtonLightTimeoutTask;
.super Ljava/lang/Object;
.source "DisplayPowerState.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/DisplayPowerState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "ButtonLightTimeoutTask"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/DisplayPowerState;


# direct methods
.method private constructor <init>(Lcom/android/server/power/DisplayPowerState;)V
    .locals 0
    .parameter

    .prologue
    .line 153
    iput-object p1, p0, Lcom/android/server/power/DisplayPowerState$ButtonLightTimeoutTask;->this$0:Lcom/android/server/power/DisplayPowerState;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/DisplayPowerState;Lcom/android/server/power/DisplayPowerState$1;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 153
    invoke-direct {p0, p1}, Lcom/android/server/power/DisplayPowerState$ButtonLightTimeoutTask;-><init>(Lcom/android/server/power/DisplayPowerState;)V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 156
    iget-object v0, p0, Lcom/android/server/power/DisplayPowerState$ButtonLightTimeoutTask;->this$0:Lcom/android/server/power/DisplayPowerState;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/android/server/power/DisplayPowerState;->setButtonBrightnessInternal(I)V

    .line 157
    return-void
.end method
