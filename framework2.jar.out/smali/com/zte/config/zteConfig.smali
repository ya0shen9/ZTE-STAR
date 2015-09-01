.class public Lcom/zte/config/zteConfig;
.super Ljava/lang/Object;
.source "zteConfig.java"


# static fields
.field public static final CMCC_TEST_VER:I = 0x2

.field public static final NETWORK_VER:I = 0x1

.field public static final NORMAL_VER:I

.field public static productName:Ljava/lang/String;

.field public static versionTypeName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 6
    sput-object v0, Lcom/zte/config/zteConfig;->productName:Ljava/lang/String;

    .line 7
    sput-object v0, Lcom/zte/config/zteConfig;->versionTypeName:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 5
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static getProductName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 14
    sget-object v0, Lcom/zte/config/zteConfig;->productName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 15
    sget-object v0, Lcom/zte/config/zteConfig;->productName:Ljava/lang/String;

    .line 17
    :goto_0
    return-object v0

    .line 16
    :cond_0
    const-string v0, "ro.product.name"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/config/zteConfig;->productName:Ljava/lang/String;

    .line 17
    sget-object v0, Lcom/zte/config/zteConfig;->productName:Ljava/lang/String;

    goto :goto_0
.end method

.method public static getVersionType()I
    .locals 2

    .prologue
    .line 28
    invoke-static {}, Lcom/zte/config/zteConfig;->getVersionTypeName()Ljava/lang/String;

    move-result-object v0

    .line 29
    .local v0, type:Ljava/lang/String;
    const-string v1, "NETWORK_VER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 30
    const/4 v1, 0x1

    .line 34
    :goto_0
    return v1

    .line 31
    :cond_0
    const-string v1, "CMCC_TEST_VER"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 32
    const/4 v1, 0x2

    goto :goto_0

    .line 34
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getVersionTypeName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 21
    sget-object v0, Lcom/zte/config/zteConfig;->versionTypeName:Ljava/lang/String;

    if-eqz v0, :cond_0

    .line 22
    sget-object v0, Lcom/zte/config/zteConfig;->versionTypeName:Ljava/lang/String;

    .line 24
    :goto_0
    return-object v0

    .line 23
    :cond_0
    const-string v0, "ro.product.versiontype"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/zte/config/zteConfig;->versionTypeName:Ljava/lang/String;

    .line 24
    sget-object v0, Lcom/zte/config/zteConfig;->versionTypeName:Ljava/lang/String;

    goto :goto_0
.end method
