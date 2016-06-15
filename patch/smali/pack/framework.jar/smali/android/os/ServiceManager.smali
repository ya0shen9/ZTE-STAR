.class public final Landroid/os/ServiceManager;
.super Ljava/lang/Object;
.source "ServiceManager.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ServiceManager"

.field private static mCl:Ljava/lang/ClassLoader;

.field private static sCache:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;"
        }
    .end annotation
.end field

.field private static sServiceManager:Landroid/os/IServiceManager;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 34
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    .line 55
    const/4 v0, 0x0

    sput-object v0, Landroid/os/ServiceManager;->mCl:Ljava/lang/ClassLoader;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 30
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;

    .prologue
    .line 108
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-interface {v1, p0, p1, v2}, Landroid/os/IServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 112
    :goto_0
    return-void

    .line 109
    :catch_0
    move-exception v0

    .line 110
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in addService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    .locals 3
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "service"    # Landroid/os/IBinder;
    .param p2, "allowIsolated"    # Z

    .prologue
    .line 125
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v1

    invoke-interface {v1, p0, p1, p2}, Landroid/os/IServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 129
    :goto_0
    return-void

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in addService"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static checkService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 4
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 137
    :try_start_0
    sget-object v2, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v2, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 138
    .local v1, "service":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 145
    .end local v1    # "service":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 141
    .restart local v1    # "service":Landroid/os/IBinder;
    :cond_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v2

    invoke-interface {v2, p0}, Landroid/os/IServiceManager;->checkService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 143
    .end local v1    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 144
    .local v0, "e":Landroid/os/RemoteException;
    const-string v2, "ServiceManager"

    const-string v3, "error in checkService"

    invoke-static {v2, v3, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 145
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private static getIServiceManager()Landroid/os/IServiceManager;
    .locals 1

    .prologue
    .line 37
    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    if-eqz v0, :cond_0

    .line 38
    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    .line 43
    :goto_0
    return-object v0

    .line 42
    :cond_0
    invoke-static {}, Lcom/android/internal/os/BinderInternal;->getContextObject()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {v0}, Landroid/os/ServiceManagerNative;->asInterface(Landroid/os/IBinder;)Landroid/os/IServiceManager;

    move-result-object v0

    sput-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    .line 43
    sget-object v0, Landroid/os/ServiceManager;->sServiceManager:Landroid/os/IServiceManager;

    goto :goto_0
.end method

.method public static getService(Ljava/lang/String;)Landroid/os/IBinder;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 81
    const/4 v3, 0x1

    invoke-static {p0, v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;Z)Landroid/os/IBinder;

    move-result-object v1

    .line 82
    .local v1, "proxyService":Landroid/os/IBinder;
    if-eqz v1, :cond_0

    .line 96
    .end local v1    # "proxyService":Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 87
    .restart local v1    # "proxyService":Landroid/os/IBinder;
    :cond_0
    :try_start_0
    sget-object v3, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/IBinder;

    .line 88
    .local v2, "service":Landroid/os/IBinder;
    if-eqz v2, :cond_1

    move-object v1, v2

    .line 89
    goto :goto_0

    .line 91
    :cond_1
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v3

    invoke-interface {v3, p0}, Landroid/os/IServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    goto :goto_0

    .line 93
    .end local v2    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 94
    .local v0, "e":Landroid/os/RemoteException;
    const-string v3, "ServiceManager"

    const-string v4, "error in getService"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 96
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public static getService(Ljava/lang/String;Z)Landroid/os/IBinder;
    .locals 5
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "proxyFlag"    # Z

    .prologue
    .line 57
    sget-object v3, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v3, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/IBinder;

    .line 59
    .local v1, "service":Landroid/os/IBinder;
    if-nez v1, :cond_0

    .line 60
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v3

    invoke-interface {v3, p0}, Landroid/os/IServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 66
    :cond_0
    :goto_0
    if-nez p1, :cond_1

    move-object v2, v1

    .line 74
    .end local v1    # "service":Landroid/os/IBinder;
    .local v2, "service":Landroid/os/IBinder;
    :goto_1
    return-object v2

    .line 62
    .end local v2    # "service":Landroid/os/IBinder;
    .restart local v1    # "service":Landroid/os/IBinder;
    :catch_0
    move-exception v0

    .line 63
    .local v0, "ex":Landroid/os/RemoteException;
    const-string v3, "ServiceManager"

    const-string v4, "error in getService"

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 70
    .end local v0    # "ex":Landroid/os/RemoteException;
    :cond_1
    if-eqz v1, :cond_2

    .line 71
    invoke-static {p0, v1}, Lcom/zte/security/ZTESecurityUtils;->getZTEProxyService(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/IBinder;

    move-result-object v1

    :cond_2
    move-object v2, v1

    .line 74
    .end local v1    # "service":Landroid/os/IBinder;
    .restart local v2    # "service":Landroid/os/IBinder;
    goto :goto_1
.end method

.method public static initServiceCache(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "Landroid/os/IBinder;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 170
    .local p0, "cache":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;Landroid/os/IBinder;>;"
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0}, Ljava/util/HashMap;->size()I

    move-result v0

    if-eqz v0, :cond_0

    .line 171
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string/jumbo v1, "setServiceCache may only be called once"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 173
    :cond_0
    sget-object v0, Landroid/os/ServiceManager;->sCache:Ljava/util/HashMap;

    invoke-virtual {v0, p0}, Ljava/util/HashMap;->putAll(Ljava/util/Map;)V

    .line 174
    return-void
.end method

.method public static listServices()[Ljava/lang/String;
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 154
    :try_start_0
    invoke-static {}, Landroid/os/ServiceManager;->getIServiceManager()Landroid/os/IServiceManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/os/IServiceManager;->listServices()[Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 157
    .local v0, "e":Landroid/os/RemoteException;
    :goto_0
    return-object v1

    .line 155
    .end local v0    # "e":Landroid/os/RemoteException;
    :catch_0
    move-exception v0

    .line 156
    .restart local v0    # "e":Landroid/os/RemoteException;
    const-string v1, "ServiceManager"

    const-string v2, "error in listServices"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 157
    const/4 v1, 0x0

    goto :goto_0
.end method
