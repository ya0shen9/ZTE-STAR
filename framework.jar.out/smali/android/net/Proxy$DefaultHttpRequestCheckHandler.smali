.class Landroid/net/Proxy$DefaultHttpRequestCheckHandler;
.super Ljava/lang/Object;
.source "Proxy.java"

# interfaces
.implements Lorg/apache/http/client/HttpRequestCheckHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/net/Proxy;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "DefaultHttpRequestCheckHandler"
.end annotation


# static fields
.field private static final ZTE_SEND_MMS:Ljava/lang/String; = "android.permission.ZTE_SEND_MMS"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 379
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 380
    return-void
.end method

.method private ZTECheckMMSPermission()Z
    .locals 5

    .prologue
    .line 383
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 384
    .local v0, callingUid:I
    const-string v2, "Proxy"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "ZTECheckMMSPermission calling uid is: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v2, "android.permission.ZTE_SEND_MMS"

    invoke-static {v2, v0}, Lcom/zte/security/ZTESecurityUtils;->ZTECheckCallingPermission(Ljava/lang/String;I)I

    move-result v1

    .line 386
    .local v1, checkRes:I
    if-eqz v1, :cond_0

    .line 387
    const/4 v2, 0x0

    .line 389
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x1

    goto :goto_0
.end method


# virtual methods
.method public checkRequest(Lorg/apache/http/HttpRequest;)Z
    .locals 2
    .parameter "request"

    .prologue
    .line 393
    const-string v0, "Proxy"

    const-string v1, "checkMMSCtaPermission"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 394
    invoke-direct {p0}, Landroid/net/Proxy$DefaultHttpRequestCheckHandler;->ZTECheckMMSPermission()Z

    move-result v0

    return v0
.end method
