.class public Lcom/zte/security/ZTESecurityUtils;
.super Ljava/lang/Object;
.source "ZTESecurityUtils.java"


# static fields
.field private static final SERVICE_MAP:Ljava/util/HashMap; = null
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

.field private static final TAG:Ljava/lang/String; = "ZTESecurityUtils"

.field private static ZTEPrivacyClass:Ljava/lang/String;

.field private static ZTESecurityClass:Ljava/lang/String;

.field private static ZTESecurityJar:Ljava/lang/String;

.field private static final controlledService:[Ljava/lang/String;

.field private static mLoader:Ljava/lang/ClassLoader;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 29
    const/4 v0, 0x0

    sput-object v0, Lcom/zte/security/ZTESecurityUtils;->mLoader:Ljava/lang/ClassLoader;

    .line 30
    const-string v0, "/system/framework/IZTESecurity.jar:/system/framework/com.zte.ZTESecurity.jar"

    sput-object v0, Lcom/zte/security/ZTESecurityUtils;->ZTESecurityJar:Ljava/lang/String;

    .line 31
    const-string v0, "com.zte.ZTESecurity.ZTESecurity"

    sput-object v0, Lcom/zte/security/ZTESecurityUtils;->ZTESecurityClass:Ljava/lang/String;

    .line 32
    const-string v0, "com.zte.privacy.ZTEPrivacyManagerService"

    sput-object v0, Lcom/zte/security/ZTESecurityUtils;->ZTEPrivacyClass:Ljava/lang/String;

    .line 34
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "iphonesubinfo"

    aput-object v2, v0, v1

    const/4 v1, 0x1

    const-string v2, "isms"

    aput-object v2, v0, v1

    const/4 v1, 0x2

    const-string v2, "location"

    aput-object v2, v0, v1

    const/4 v1, 0x3

    const-string v2, "package"

    aput-object v2, v0, v1

    const/4 v1, 0x4

    const-string v2, "phone"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "wifi"

    aput-object v2, v0, v1

    const/4 v1, 0x6

    const-string v2, "bluetooth"

    aput-object v2, v0, v1

    const/4 v1, 0x7

    const-string v2, "bluetooth_manager"

    aput-object v2, v0, v1

    const/16 v1, 0x8

    const-string v2, "connectivity"

    aput-object v2, v0, v1

    sput-object v0, Lcom/zte/security/ZTESecurityUtils;->controlledService:[Ljava/lang/String;

    .line 44
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    sput-object v0, Lcom/zte/security/ZTESecurityUtils;->SERVICE_MAP:Ljava/util/HashMap;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 25
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static ZTECheckCallingPermission(Ljava/lang/String;I)I
    .locals 9
    .parameter "permission"
    .parameter "uid"

    .prologue
    .line 75
    const/4 v3, 0x0

    .line 76
    .local v3, res:I
    if-nez p0, :cond_0

    move v4, v3

    .line 91
    .end local v3           #res:I
    .local v4, res:I
    :goto_0
    return v4

    .line 80
    .end local v4           #res:I
    .restart local v3       #res:I
    :cond_0
    invoke-static {}, Lcom/zte/security/ZTESecurityUtils;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 81
    .local v2, loader:Ljava/lang/ClassLoader;
    if-nez v2, :cond_1

    move v4, v3

    .line 82
    .end local v3           #res:I
    .restart local v4       #res:I
    goto :goto_0

    .line 85
    .end local v4           #res:I
    .restart local v3       #res:I
    :cond_1
    :try_start_0
    sget-object v5, Lcom/zte/security/ZTESecurityUtils;->ZTESecurityClass:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 86
    .local v1, cl:Ljava/lang/Class;
    const-string v5, "checkCallingPermission"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    sget-object v8, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v0

    .line 87
    .local v0, checkCallingPermission:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    invoke-virtual {v0, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/Integer;

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .end local v0           #checkCallingPermission:Ljava/lang/reflect/Method;
    .end local v1           #cl:Ljava/lang/Class;
    :goto_1
    move v4, v3

    .line 91
    .end local v3           #res:I
    .restart local v4       #res:I
    goto :goto_0

    .line 88
    .end local v4           #res:I
    .restart local v3       #res:I
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method private static getClassLoader()Ljava/lang/ClassLoader;
    .locals 4

    .prologue
    .line 67
    sget-object v0, Lcom/zte/security/ZTESecurityUtils;->mLoader:Ljava/lang/ClassLoader;

    if-nez v0, :cond_0

    .line 68
    new-instance v0, Ldalvik/system/PathClassLoader;

    sget-object v1, Lcom/zte/security/ZTESecurityUtils;->ZTESecurityJar:Ljava/lang/String;

    const-string v2, "/system/framework/"

    invoke-static {}, Ljava/lang/ClassLoader;->getSystemClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    invoke-direct {v0, v1, v2, v3}, Ldalvik/system/PathClassLoader;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/ClassLoader;)V

    sput-object v0, Lcom/zte/security/ZTESecurityUtils;->mLoader:Ljava/lang/ClassLoader;

    .line 71
    :cond_0
    sget-object v0, Lcom/zte/security/ZTESecurityUtils;->mLoader:Ljava/lang/ClassLoader;

    return-object v0
.end method

.method public static getOrigTransport(Landroid/content/IContentProvider;)Landroid/content/IContentProvider;
    .locals 9
    .parameter "mZTETransport"

    .prologue
    const/4 v5, 0x0

    .line 95
    const/4 v4, 0x0

    .line 97
    .local v4, origTransport:Landroid/content/IContentProvider;
    invoke-static {}, Lcom/zte/security/ZTESecurityUtils;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 98
    .local v2, loader:Ljava/lang/ClassLoader;
    if-nez v2, :cond_0

    .line 109
    :goto_0
    return-object v5

    .line 103
    :cond_0
    :try_start_0
    sget-object v5, Lcom/zte/security/ZTESecurityUtils;->ZTESecurityClass:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 104
    .local v1, cl:Ljava/lang/Class;
    const-string v5, "getOrigTransport"

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/IContentProvider;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 105
    .local v3, m:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x1

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/content/IContentProvider;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #cl:Ljava/lang/Class;
    .end local v3           #m:Ljava/lang/reflect/Method;
    :goto_1
    move-object v5, v4

    .line 109
    goto :goto_0

    .line 106
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static getZTEProxyService(Ljava/lang/String;Landroid/os/IBinder;)Landroid/os/IBinder;
    .locals 9
    .parameter "serviceName"
    .parameter "service"

    .prologue
    const/4 v5, 0x0

    .line 132
    const/4 v4, 0x0

    .line 134
    .local v4, proxyService:Landroid/os/IBinder;
    if-eqz p0, :cond_0

    if-eqz p1, :cond_0

    invoke-static {p0}, Lcom/zte/security/ZTESecurityUtils;->isControlledService(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_1

    .line 163
    :cond_0
    :goto_0
    return-object v5

    .line 140
    :cond_1
    invoke-static {p0}, Lcom/zte/security/ZTESecurityUtils;->isPhoneService(Ljava/lang/String;)Z

    move-result v6

    if-nez v6, :cond_2

    .line 141
    sget-object v6, Lcom/zte/security/ZTESecurityUtils;->SERVICE_MAP:Ljava/util/HashMap;

    invoke-virtual {v6, p0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    .end local v4           #proxyService:Landroid/os/IBinder;
    check-cast v4, Landroid/os/IBinder;

    .line 144
    .restart local v4       #proxyService:Landroid/os/IBinder;
    :cond_2
    if-nez v4, :cond_4

    .line 145
    invoke-static {}, Lcom/zte/security/ZTESecurityUtils;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v3

    .line 146
    .local v3, loader:Ljava/lang/ClassLoader;
    if-eqz v3, :cond_0

    .line 150
    :try_start_0
    sget-object v5, Lcom/zte/security/ZTESecurityUtils;->ZTESecurityClass:Ljava/lang/String;

    invoke-virtual {v3, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 151
    .local v1, cl:Ljava/lang/Class;
    const-string v5, "get"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 152
    .local v2, getProxyService:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v2, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/os/IBinder;

    move-object v4, v0

    .line 153
    if-eqz v4, :cond_4

    .line 154
    invoke-static {p0}, Lcom/zte/security/ZTESecurityUtils;->isPhoneService(Ljava/lang/String;)Z

    move-result v5

    if-nez v5, :cond_3

    .line 155
    sget-object v5, Lcom/zte/security/ZTESecurityUtils;->SERVICE_MAP:Ljava/util/HashMap;

    invoke-virtual {v5, p0, v4}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    :cond_3
    move-object v5, v4

    .line 156
    goto :goto_0

    .line 158
    .end local v1           #cl:Ljava/lang/Class;
    .end local v2           #getProxyService:Ljava/lang/reflect/Method;
    :catch_0
    move-exception v5

    .end local v3           #loader:Ljava/lang/ClassLoader;
    :cond_4
    move-object v5, v4

    .line 163
    goto :goto_0
.end method

.method public static getZTETransport(Landroid/content/ContentProvider;Landroid/os/IBinder;)Landroid/content/IContentProvider;
    .locals 9
    .parameter "provider"
    .parameter "mTransport"

    .prologue
    const/4 v5, 0x0

    .line 113
    const/4 v4, 0x0

    .line 115
    .local v4, targetTransport:Landroid/content/IContentProvider;
    invoke-static {}, Lcom/zte/security/ZTESecurityUtils;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v2

    .line 116
    .local v2, loader:Ljava/lang/ClassLoader;
    if-nez v2, :cond_0

    .line 128
    :goto_0
    return-object v5

    .line 121
    :cond_0
    :try_start_0
    sget-object v5, Lcom/zte/security/ZTESecurityUtils;->ZTESecurityClass:Ljava/lang/String;

    invoke-virtual {v2, v5}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v1

    .line 122
    .local v1, cl:Ljava/lang/Class;
    const-string v5, "getTransport"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Class;

    const/4 v7, 0x0

    const-class v8, Landroid/content/ContentProvider;

    aput-object v8, v6, v7

    const/4 v7, 0x1

    const-class v8, Landroid/os/IBinder;

    aput-object v8, v6, v7

    invoke-virtual {v1, v5, v6}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v3

    .line 123
    .local v3, m:Ljava/lang/reflect/Method;
    const/4 v5, 0x0

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p0, v6, v7

    const/4 v7, 0x1

    aput-object p1, v6, v7

    invoke-virtual {v3, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, Landroid/content/IContentProvider;

    move-object v4, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .end local v1           #cl:Ljava/lang/Class;
    .end local v3           #m:Ljava/lang/reflect/Method;
    :goto_1
    move-object v5, v4

    .line 128
    goto :goto_0

    .line 124
    :catch_0
    move-exception v5

    goto :goto_1
.end method

.method public static initZTEPrivacyService(Landroid/content/Context;)V
    .locals 7
    .parameter "mContext"

    .prologue
    .line 167
    invoke-static {}, Lcom/zte/security/ZTESecurityUtils;->getClassLoader()Ljava/lang/ClassLoader;

    move-result-object v1

    .line 168
    .local v1, loader:Ljava/lang/ClassLoader;
    if-nez v1, :cond_0

    .line 181
    :goto_0
    return-void

    .line 171
    :cond_0
    const-string v4, "ZTESecurityUtils"

    const-string v5, "init Privacy Manager Service"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :try_start_0
    sget-object v4, Lcom/zte/security/ZTESecurityUtils;->ZTEPrivacyClass:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/ClassLoader;->loadClass(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    .line 175
    .local v0, cl:Ljava/lang/Class;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const/4 v5, 0x0

    const-class v6, Landroid/content/Context;

    aput-object v6, v4, v5

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v2

    .line 176
    .local v2, mConstructor:Ljava/lang/reflect/Constructor;
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    const/4 v5, 0x0

    aput-object p0, v4, v5

    invoke-virtual {v2, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/os/IBinder;

    .line 177
    .local v3, privacy:Landroid/os/IBinder;
    const-string v4, "privacy"

    invoke-static {v4, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 178
    .end local v0           #cl:Ljava/lang/Class;
    .end local v2           #mConstructor:Ljava/lang/reflect/Constructor;
    .end local v3           #privacy:Landroid/os/IBinder;
    :catch_0
    move-exception v4

    goto :goto_0
.end method

.method private static isControlledService(Ljava/lang/String;)Z
    .locals 2
    .parameter "service"

    .prologue
    .line 58
    sget-object v1, Lcom/zte/security/ZTESecurityUtils;->controlledService:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, i:I
    :goto_0
    if-ltz v0, :cond_1

    .line 59
    sget-object v1, Lcom/zte/security/ZTESecurityUtils;->controlledService:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {p0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 60
    const/4 v1, 0x1

    .line 63
    :goto_1
    return v1

    .line 58
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 63
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private static isPhoneService(Ljava/lang/String;)Z
    .locals 1
    .parameter "service"

    .prologue
    .line 49
    const-string v0, "iphonesubinfo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "isms"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    const-string v0, "phone"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 52
    :cond_0
    const/4 v0, 0x1

    .line 54
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method
