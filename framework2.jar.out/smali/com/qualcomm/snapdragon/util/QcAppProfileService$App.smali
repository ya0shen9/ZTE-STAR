.class Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;
.super Ljava/lang/Object;
.source "QcAppProfileService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/qualcomm/snapdragon/util/QcAppProfileService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "App"
.end annotation


# instance fields
.field public final cpuBias:I

.field public final packageName:Ljava/lang/String;

.field public final powerMode:I

.field public final tskinValue:I


# direct methods
.method constructor <init>(Ljava/lang/String;III)V
    .locals 0
    .parameter "_packageName"
    .parameter "_cpuBias"
    .parameter "_powerMode"
    .parameter "_tskinValue"

    .prologue
    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 60
    iput-object p1, p0, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;->packageName:Ljava/lang/String;

    .line 61
    iput p2, p0, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;->cpuBias:I

    .line 62
    iput p3, p0, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;->powerMode:I

    .line 63
    iput p4, p0, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;->tskinValue:I

    .line 64
    return-void
.end method
