.class public Lcom/qualcomm/snapdragon/util/QcAppProfileService;
.super Ljava/lang/Object;
.source "QcAppProfileService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;
    }
.end annotation


# static fields
.field private static final DEBUG_QC_APP_PROFILE:Z = false

.field private static final TAG:Ljava/lang/String; = "QcAppProfile"

.field private static final mAppList:[Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;


# instance fields
.field private enableAppProfiles:Z

.field private initAppProfiles:Z

.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 67
    const/16 v0, 0x22

    new-array v0, v0, [Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    new-instance v1, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v2, "com.antutu.ABenchMark"

    invoke-direct {v1, v2, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v5

    new-instance v1, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v2, "com.aurorasoftworks.quadrant.ui.standard"

    invoke-direct {v1, v2, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v1, v0, v4

    const/4 v1, 0x2

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.aurorasoftworks.quadrant.ui.advanced"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/4 v1, 0x3

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.aurorasoftworks.quadrant.ui.professional"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/4 v1, 0x4

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.zte.camera"

    invoke-direct {v2, v3, v5, v4, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/4 v1, 0x5

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.passmark.pt_mobile"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/4 v1, 0x6

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.ludashi.benchmark"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/4 v1, 0x7

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "org.zeroxlab.zeroxbenchmark"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x8

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "org.zeroxlab.benchmark"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x9

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "softweg.hw.performance"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0xa

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.qualcomm.qx.neocore"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0xb

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.glbenchmark.glbenchmark20"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0xc

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.glbenchmark.glbenchmark21"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0xd

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.glbenchmark.glbenchmark27"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0xe

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.smartbench.twelve"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0xf

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.futuremark.dmandroid.application:workload"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x10

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.futuremark.dmandroid.application"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x11

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.rightware.uimarkes1"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x12

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.rightware.tdmm2v10jnifree"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x13

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.rightware.tdmm2v10jni"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x14

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.rightware.basemarkgui"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x15

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.android.cts.stub"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x16

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.allego.windmill"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x17

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.threed.jpct.bench"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x18

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.nvidia.linpack"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x19

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "cn.opda.android.activity"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x1a

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "eu.chainfire.cfbench"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x1b

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.HOTICE.MobileTest"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x1c

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.greenecomputing.linpack"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x1d

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "gr.androiddev.BenchmarkPi"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x1e

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.qihoo360.mobilesafe.opti"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x1f

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.qihoo360.mobilesafe.bench"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x20

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.pctvtv.android.ttsx"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    const/16 v1, 0x21

    new-instance v2, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    const-string v3, "com.qqfriends.com.music"

    invoke-direct {v2, v3, v4, v5, v4}, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;-><init>(Ljava/lang/String;III)V

    aput-object v2, v0, v1

    sput-object v0, Lcom/qualcomm/snapdragon/util/QcAppProfileService;->mAppList:[Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    iput-object p1, p0, Lcom/qualcomm/snapdragon/util/QcAppProfileService;->mContext:Landroid/content/Context;

    .line 49
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/qualcomm/snapdragon/util/QcAppProfileService;->enableAppProfiles:Z

    .line 51
    return-void
.end method

.method public static getAppProfilePowerMode(Ljava/lang/String;)I
    .locals 4
    .parameter "packageName"

    .prologue
    .line 329
    const/4 v1, 0x0

    .line 330
    .local v1, value:I
    if-nez p0, :cond_0

    move v2, v1

    .line 351
    .end local v1           #value:I
    .local v2, value:I
    :goto_0
    return v2

    .line 339
    .end local v2           #value:I
    .restart local v1       #value:I
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v3, Lcom/qualcomm/snapdragon/util/QcAppProfileService;->mAppList:[Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 340
    sget-object v3, Lcom/qualcomm/snapdragon/util/QcAppProfileService;->mAppList:[Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;->powerMode:I

    if-gtz v3, :cond_2

    .line 339
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 343
    :cond_2
    sget-object v3, Lcom/qualcomm/snapdragon/util/QcAppProfileService;->mAppList:[Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 344
    sget-object v3, Lcom/qualcomm/snapdragon/util/QcAppProfileService;->mAppList:[Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    aget-object v3, v3, v0

    iget v1, v3, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;->powerMode:I

    move v2, v1

    .line 348
    .end local v1           #value:I
    .restart local v2       #value:I
    goto :goto_0

    .end local v2           #value:I
    .restart local v1       #value:I
    :cond_3
    move v2, v1

    .line 351
    .end local v1           #value:I
    .restart local v2       #value:I
    goto :goto_0
.end method

.method public static getAppProfileTskinValue(Ljava/lang/String;)I
    .locals 4
    .parameter "packageName"

    .prologue
    .line 227
    const/4 v1, 0x0

    .line 228
    .local v1, value:I
    if-nez p0, :cond_0

    move v2, v1

    .line 247
    .end local v1           #value:I
    .local v2, value:I
    :goto_0
    return v2

    .line 236
    .end local v2           #value:I
    .restart local v1       #value:I
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v3, Lcom/qualcomm/snapdragon/util/QcAppProfileService;->mAppList:[Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 237
    sget-object v3, Lcom/qualcomm/snapdragon/util/QcAppProfileService;->mAppList:[Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;->tskinValue:I

    if-gtz v3, :cond_2

    .line 236
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 239
    :cond_2
    sget-object v3, Lcom/qualcomm/snapdragon/util/QcAppProfileService;->mAppList:[Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 240
    sget-object v3, Lcom/qualcomm/snapdragon/util/QcAppProfileService;->mAppList:[Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    aget-object v3, v3, v0

    iget v1, v3, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;->tskinValue:I

    move v2, v1

    .line 244
    .end local v1           #value:I
    .restart local v2       #value:I
    goto :goto_0

    .end local v2           #value:I
    .restart local v1       #value:I
    :cond_3
    move v2, v1

    .line 247
    .end local v1           #value:I
    .restart local v2       #value:I
    goto :goto_0
.end method

.method public static getCpuPowersaveBias(Ljava/lang/String;)I
    .locals 4
    .parameter "packageName"

    .prologue
    .line 266
    const/4 v1, 0x0

    .line 267
    .local v1, rate:I
    if-nez p0, :cond_0

    move v2, v1

    .line 286
    .end local v1           #rate:I
    .local v2, rate:I
    :goto_0
    return v2

    .line 275
    .end local v2           #rate:I
    .restart local v1       #rate:I
    :cond_0
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    sget-object v3, Lcom/qualcomm/snapdragon/util/QcAppProfileService;->mAppList:[Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    array-length v3, v3

    if-ge v0, v3, :cond_3

    .line 276
    sget-object v3, Lcom/qualcomm/snapdragon/util/QcAppProfileService;->mAppList:[Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    aget-object v3, v3, v0

    iget v3, v3, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;->cpuBias:I

    if-gtz v3, :cond_2

    .line 275
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 278
    :cond_2
    sget-object v3, Lcom/qualcomm/snapdragon/util/QcAppProfileService;->mAppList:[Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    aget-object v3, v3, v0

    iget-object v3, v3, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;->packageName:Ljava/lang/String;

    invoke-virtual {v3, p0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 279
    sget-object v3, Lcom/qualcomm/snapdragon/util/QcAppProfileService;->mAppList:[Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;

    aget-object v3, v3, v0

    iget v1, v3, Lcom/qualcomm/snapdragon/util/QcAppProfileService$App;->cpuBias:I

    move v2, v1

    .line 283
    .end local v1           #rate:I
    .restart local v2       #rate:I
    goto :goto_0

    .end local v2           #rate:I
    .restart local v1       #rate:I
    :cond_3
    move v2, v1

    .line 286
    .end local v1           #rate:I
    .restart local v2       #rate:I
    goto :goto_0
.end method

.method public static setAppPowerSaveMode(I)V
    .locals 1
    .parameter "modeValue"

    .prologue
    .line 376
    if-nez p0, :cond_0

    .line 378
    const-string v0, "powerFullCore"

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 381
    :cond_0
    const/4 v0, 0x1

    if-ne v0, p0, :cond_1

    .line 383
    const-string v0, "powerSaveOneCore"

    invoke-static {v0}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 385
    :cond_1
    return-void
.end method

.method private setAppProfilePowerMode(Ljava/lang/String;I)V
    .locals 2
    .parameter "packageName"
    .parameter "mode"

    .prologue
    .line 356
    invoke-static {p1}, Lcom/qualcomm/snapdragon/util/QcAppProfileService;->getAppProfilePowerMode(Ljava/lang/String;)I

    move-result v0

    .line 358
    .local v0, iMode:I
    if-lez v0, :cond_0

    .line 360
    const-string v1, "powerFullCore"

    invoke-static {v1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 369
    :goto_0
    return-void

    .line 367
    :cond_0
    invoke-static {p2}, Lcom/qualcomm/snapdragon/util/QcAppProfileService;->setAppPowerSaveMode(I)V

    goto :goto_0
.end method

.method private setAppProfileTskin(Ljava/lang/String;)V
    .locals 2
    .parameter "packageName"

    .prologue
    .line 252
    invoke-static {p1}, Lcom/qualcomm/snapdragon/util/QcAppProfileService;->getAppProfileTskinValue(Ljava/lang/String;)I

    move-result v0

    .line 254
    .local v0, iValue:I
    if-lez v0, :cond_0

    .line 256
    const-string v1, "powerPerformance"

    invoke-static {v1}, Landroid/os/SystemService;->start(Ljava/lang/String;)V

    .line 262
    :cond_0
    return-void
.end method

.method private setCpuPowersaveBias(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 292
    invoke-static {p1}, Lcom/qualcomm/snapdragon/util/QcAppProfileService;->getCpuPowersaveBias(Ljava/lang/String;)I

    move-result v0

    .line 297
    .local v0, biasValue:I
    if-lez v0, :cond_0

    .line 299
    const-string v1, "/sys/devices/system/cpu/cpufreq/ondemand/powersave_bias"

    const/16 v2, -0x3e8

    invoke-static {v1, v2}, Lcom/qualcomm/snapdragon/util/QcAppProfileService;->writeSysFile(Ljava/lang/String;I)V

    .line 305
    :goto_0
    return-void

    .line 303
    :cond_0
    const-string v1, "/sys/devices/system/cpu/cpufreq/ondemand/powersave_bias"

    const/16 v2, 0x12c

    invoke-static {v1, v2}, Lcom/qualcomm/snapdragon/util/QcAppProfileService;->writeSysFile(Ljava/lang/String;I)V

    goto :goto_0
.end method

.method static writeSysFile(Ljava/lang/String;I)V
    .locals 5
    .parameter "filepath"
    .parameter "value"

    .prologue
    .line 208
    const/4 v2, 0x0

    .line 209
    .local v2, outStream:Ljava/io/PrintWriter;
    const/4 v0, 0x0

    .line 214
    .local v0, fos:Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v1, Ljava/io/FileOutputStream;

    invoke-direct {v1, p0}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 215
    .end local v0           #fos:Ljava/io/FileOutputStream;
    .local v1, fos:Ljava/io/FileOutputStream;
    :try_start_1
    new-instance v3, Ljava/io/PrintWriter;

    new-instance v4, Ljava/io/OutputStreamWriter;

    invoke-direct {v4, v1}, Ljava/io/OutputStreamWriter;-><init>(Ljava/io/OutputStream;)V

    invoke-direct {v3, v4}, Ljava/io/PrintWriter;-><init>(Ljava/io/Writer;)V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 216
    .end local v2           #outStream:Ljava/io/PrintWriter;
    .local v3, outStream:Ljava/io/PrintWriter;
    :try_start_2
    invoke-virtual {v3, p1}, Ljava/io/PrintWriter;->print(I)V

    .line 217
    invoke-virtual {v3}, Ljava/io/PrintWriter;->close()V
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_2

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    move-object v2, v3

    .line 223
    .end local v3           #outStream:Ljava/io/PrintWriter;
    .restart local v2       #outStream:Ljava/io/PrintWriter;
    :goto_0
    return-void

    .line 218
    :catch_0
    move-exception v4

    goto :goto_0

    .end local v0           #fos:Ljava/io/FileOutputStream;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v4

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    goto :goto_0

    .end local v0           #fos:Ljava/io/FileOutputStream;
    .end local v2           #outStream:Ljava/io/PrintWriter;
    .restart local v1       #fos:Ljava/io/FileOutputStream;
    .restart local v3       #outStream:Ljava/io/PrintWriter;
    :catch_2
    move-exception v4

    move-object v0, v1

    .end local v1           #fos:Ljava/io/FileOutputStream;
    .restart local v0       #fos:Ljava/io/FileOutputStream;
    move-object v2, v3

    .end local v3           #outStream:Ljava/io/PrintWriter;
    .restart local v2       #outStream:Ljava/io/PrintWriter;
    goto :goto_0
.end method


# virtual methods
.method public setAppProfile(Ljava/lang/String;)V
    .locals 3
    .parameter "packageName"

    .prologue
    .line 312
    const/4 v0, 0x0

    .line 317
    .local v0, retMode:I
    invoke-direct {p0, p1}, Lcom/qualcomm/snapdragon/util/QcAppProfileService;->setAppProfileTskin(Ljava/lang/String;)V

    .line 320
    const-string v1, "sys.zte.electricity.mode"

    const/4 v2, 0x0

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 321
    if-eqz v0, :cond_0

    .line 323
    invoke-direct {p0, p1, v0}, Lcom/qualcomm/snapdragon/util/QcAppProfileService;->setAppProfilePowerMode(Ljava/lang/String;I)V

    .line 325
    :cond_0
    return-void
.end method
