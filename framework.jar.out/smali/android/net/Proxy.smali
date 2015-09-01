.class public final Landroid/net/Proxy;
.super Ljava/lang/Object;
.source "Proxy.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/Proxy$DefaultHttpRequestCheckHandler;,
        Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final EXCLLIST_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final EXCLLIST_REGEXP:Ljava/lang/String; = "$|^(.?[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*)+(,(.?[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*))*$"

.field public static final EXTRA_PROXY_INFO:Ljava/lang/String; = "proxy"

.field private static final HOSTNAME_PATTERN:Ljava/util/regex/Pattern; = null

.field private static final HOSTNAME_REGEXP:Ljava/lang/String; = "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

.field private static final NAME_IP_REGEX:Ljava/lang/String; = "[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*"

.field public static final PROXY_CHANGE_ACTION:Ljava/lang/String; = "android.intent.action.PROXY_CHANGE"

.field private static final TAG:Ljava/lang/String; = "Proxy"

.field private static sConnectivityManager:Landroid/net/ConnectivityManager;

.field private static final sDefaultProxySelector:Ljava/net/ProxySelector;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 76
    const/4 v0, 0x0

    sput-object v0, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    .line 93
    const-string v0, "^$|^[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/Proxy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    .line 94
    const-string v0, "$|^(.?[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*)+(,(.?[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*(\\.[a-zA-Z0-9]+(\\-[a-zA-Z0-9]+)*)*))*$"

    invoke-static {v0}, Ljava/util/regex/Pattern;->compile(Ljava/lang/String;)Ljava/util/regex/Pattern;

    move-result-object v0

    sput-object v0, Landroid/net/Proxy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    .line 95
    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v0

    sput-object v0, Landroid/net/Proxy;->sDefaultProxySelector:Ljava/net/ProxySelector;

    .line 96
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 51
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 375
    return-void
.end method

.method public static final getAndroidProxySelectorRoutePlanner(Landroid/content/Context;)Lorg/apache/http/conn/routing/HttpRoutePlanner;
    .locals 3
    .parameter "context"

    .prologue
    .line 315
    new-instance v0, Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;

    new-instance v1, Lorg/apache/http/conn/scheme/SchemeRegistry;

    invoke-direct {v1}, Lorg/apache/http/conn/scheme/SchemeRegistry;-><init>()V

    invoke-static {}, Ljava/net/ProxySelector;->getDefault()Ljava/net/ProxySelector;

    move-result-object v2

    invoke-direct {v0, v1, v2, p0}, Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;-><init>(Lorg/apache/http/conn/scheme/SchemeRegistry;Ljava/net/ProxySelector;Landroid/content/Context;)V

    .line 317
    .local v0, ret:Landroid/net/Proxy$AndroidProxySelectorRoutePlanner;
    return-object v0
.end method

.method public static final getDefaultHost()Ljava/lang/String;
    .locals 2

    .prologue
    .line 178
    const-string v1, "http.proxyHost"

    invoke-static {v1}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 179
    .local v0, host:Ljava/lang/String;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    const/4 v0, 0x0

    .line 180
    .end local v0           #host:Ljava/lang/String;
    :cond_0
    return-object v0
.end method

.method public static final getDefaultPort()I
    .locals 3

    .prologue
    const/4 v1, -0x1

    .line 192
    invoke-static {}, Landroid/net/Proxy;->getDefaultHost()Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_0

    .line 196
    .local v0, e:Ljava/lang/NumberFormatException;
    :goto_0
    return v1

    .line 194
    .end local v0           #e:Ljava/lang/NumberFormatException;
    :cond_0
    :try_start_0
    const-string v2, "http.proxyPort"

    invoke-static {v2}, Ljava/lang/System;->getProperty(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    goto :goto_0

    .line 195
    :catch_0
    move-exception v0

    .line 196
    .restart local v0       #e:Ljava/lang/NumberFormatException;
    goto :goto_0
.end method

.method public static final getHost(Landroid/content/Context;)Ljava/lang/String;
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, 0x0

    .line 143
    invoke-static {p0, v3}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v1

    .line 144
    .local v1, proxy:Ljava/net/Proxy;
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v1, v2, :cond_0

    move-object v2, v3

    .line 148
    :goto_0
    return-object v2

    .line 146
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 147
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move-object v2, v3

    .line 148
    goto :goto_0
.end method

.method public static final getPort(Landroid/content/Context;)I
    .locals 4
    .parameter "ctx"

    .prologue
    const/4 v3, -0x1

    .line 160
    const/4 v2, 0x0

    invoke-static {p0, v2}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v1

    .line 161
    .local v1, proxy:Ljava/net/Proxy;
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    if-ne v1, v2, :cond_0

    move v2, v3

    .line 165
    :goto_0
    return v2

    .line 163
    :cond_0
    :try_start_0
    invoke-virtual {v1}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v2

    check-cast v2, Ljava/net/InetSocketAddress;

    check-cast v2, Ljava/net/InetSocketAddress;

    invoke-virtual {v2}, Ljava/net/InetSocketAddress;->getPort()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    goto :goto_0

    .line 164
    :catch_0
    move-exception v0

    .local v0, e:Ljava/lang/Exception;
    move v2, v3

    .line 165
    goto :goto_0
.end method

.method public static final getPreferredHttpHost(Landroid/content/Context;Ljava/lang/String;)Lorg/apache/http/HttpHost;
    .locals 6
    .parameter "context"
    .parameter "url"

    .prologue
    .line 215
    invoke-static {p0, p1}, Landroid/net/Proxy;->getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;

    move-result-object v0

    .line 216
    .local v0, prefProxy:Ljava/net/Proxy;
    sget-object v2, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    invoke-virtual {v0, v2}, Ljava/net/Proxy;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 217
    const/4 v2, 0x0

    .line 220
    :goto_0
    return-object v2

    .line 219
    :cond_0
    invoke-virtual {v0}, Ljava/net/Proxy;->address()Ljava/net/SocketAddress;

    move-result-object v1

    check-cast v1, Ljava/net/InetSocketAddress;

    .line 220
    .local v1, sa:Ljava/net/InetSocketAddress;
    new-instance v2, Lorg/apache/http/HttpHost;

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getHostName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1}, Ljava/net/InetSocketAddress;->getPort()I

    move-result v4

    const-string v5, "http"

    invoke-direct {v2, v3, v4, v5}, Lorg/apache/http/HttpHost;-><init>(Ljava/lang/String;ILjava/lang/String;)V

    goto :goto_0
.end method

.method public static final getProxy(Landroid/content/Context;Ljava/lang/String;)Ljava/net/Proxy;
    .locals 4
    .parameter "ctx"
    .parameter "url"

    .prologue
    .line 108
    const-string v0, ""

    .line 109
    .local v0, host:Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 110
    invoke-static {p1}, Ljava/net/URI;->create(Ljava/lang/String;)Ljava/net/URI;

    move-result-object v2

    .line 111
    .local v2, uri:Ljava/net/URI;
    invoke-virtual {v2}, Ljava/net/URI;->getHost()Ljava/lang/String;

    move-result-object v0

    .line 114
    .end local v2           #uri:Ljava/net/URI;
    :cond_0
    invoke-static {v0}, Landroid/net/Proxy;->isLocalHost(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 115
    sget-object v3, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_1

    .line 116
    const-string v3, "connectivity"

    invoke-virtual {p0, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/net/ConnectivityManager;

    sput-object v3, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    .line 119
    :cond_1
    sget-object v3, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    if-nez v3, :cond_2

    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    .line 129
    :goto_0
    return-object v3

    .line 121
    :cond_2
    sget-object v3, Landroid/net/Proxy;->sConnectivityManager:Landroid/net/ConnectivityManager;

    invoke-virtual {v3}, Landroid/net/ConnectivityManager;->getProxy()Landroid/net/ProxyProperties;

    move-result-object v1

    .line 123
    .local v1, proxyProperties:Landroid/net/ProxyProperties;
    if-eqz v1, :cond_3

    .line 124
    invoke-virtual {v1, v0}, Landroid/net/ProxyProperties;->isExcluded(Ljava/lang/String;)Z

    move-result v3

    if-nez v3, :cond_3

    .line 125
    invoke-virtual {v1}, Landroid/net/ProxyProperties;->makeProxy()Ljava/net/Proxy;

    move-result-object v3

    goto :goto_0

    .line 129
    .end local v1           #proxyProperties:Landroid/net/ProxyProperties;
    :cond_3
    sget-object v3, Ljava/net/Proxy;->NO_PROXY:Ljava/net/Proxy;

    goto :goto_0
.end method

.method private static final isLocalHost(Ljava/lang/String;)Z
    .locals 3
    .parameter "host"

    .prologue
    const/4 v1, 0x1

    const/4 v0, 0x0

    .line 225
    if-nez p0, :cond_1

    .line 239
    :cond_0
    :goto_0
    return v0

    .line 229
    :cond_1
    if-eqz p0, :cond_0

    .line 230
    :try_start_0
    const-string v2, "localhost"

    invoke-virtual {p0, v2}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_2

    move v0, v1

    .line 231
    goto :goto_0

    .line 233
    :cond_2
    invoke-static {p0}, Landroid/net/NetworkUtils;->numericToInetAddress(Ljava/lang/String;)Ljava/net/InetAddress;

    move-result-object v2

    invoke-virtual {v2}, Ljava/net/InetAddress;->isLoopbackAddress()Z
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    if-eqz v2, :cond_0

    move v0, v1

    .line 234
    goto :goto_0

    .line 237
    :catch_0
    move-exception v1

    goto :goto_0
.end method

.method public static final setHttpProxySystemProperty(Landroid/net/ProxyProperties;)V
    .locals 5
    .parameter "p"

    .prologue
    .line 322
    const/4 v1, 0x0

    .line 323
    .local v1, host:Ljava/lang/String;
    const/4 v3, 0x0

    .line 324
    .local v3, port:Ljava/lang/String;
    const/4 v0, 0x0

    .line 325
    .local v0, exclList:Ljava/lang/String;
    const/4 v2, 0x0

    .line 326
    .local v2, pacFileUrl:Ljava/lang/String;
    if-eqz p0, :cond_0

    .line 327
    invoke-virtual {p0}, Landroid/net/ProxyProperties;->getHost()Ljava/lang/String;

    move-result-object v1

    .line 328
    invoke-virtual {p0}, Landroid/net/ProxyProperties;->getPort()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v3

    .line 329
    invoke-virtual {p0}, Landroid/net/ProxyProperties;->getExclusionList()Ljava/lang/String;

    move-result-object v0

    .line 330
    invoke-virtual {p0}, Landroid/net/ProxyProperties;->getPacFileUrl()Ljava/lang/String;

    move-result-object v2

    .line 332
    :cond_0
    invoke-static {v1, v3, v0, v2}, Landroid/net/Proxy;->setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 335
    new-instance v4, Landroid/net/Proxy$DefaultHttpRequestCheckHandler;

    invoke-direct {v4}, Landroid/net/Proxy$DefaultHttpRequestCheckHandler;-><init>()V

    invoke-static {v4}, Lorg/apache/http/impl/client/AbstractHttpClient;->setHttpRequestCheckHandler(Lorg/apache/http/client/HttpRequestCheckHandler;)V

    .line 337
    return-void
.end method

.method public static final setHttpProxySystemProperty(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 2
    .parameter "host"
    .parameter "port"
    .parameter "exclList"
    .parameter "pacFileUrl"

    .prologue
    .line 342
    if-eqz p2, :cond_0

    const-string v0, ","

    const-string/jumbo v1, "|"

    invoke-virtual {p2, v0, v1}, Ljava/lang/String;->replace(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Ljava/lang/String;

    move-result-object p2

    .line 344
    :cond_0
    if-eqz p0, :cond_1

    .line 345
    const-string v0, "http.proxyHost"

    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 346
    const-string v0, "https.proxyHost"

    invoke-static {v0, p0}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 351
    :goto_0
    if-eqz p1, :cond_2

    .line 352
    const-string v0, "http.proxyPort"

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 353
    const-string v0, "https.proxyPort"

    invoke-static {v0, p1}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 358
    :goto_1
    if-eqz p2, :cond_3

    .line 359
    const-string v0, "http.nonProxyHosts"

    invoke-static {v0, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 360
    const-string v0, "https.nonProxyHosts"

    invoke-static {v0, p2}, Ljava/lang/System;->setProperty(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    .line 365
    :goto_2
    invoke-static {p3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_4

    .line 366
    new-instance v0, Landroid/net/PacProxySelector;

    invoke-direct {v0}, Landroid/net/PacProxySelector;-><init>()V

    invoke-static {v0}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    .line 370
    :goto_3
    return-void

    .line 348
    :cond_1
    const-string v0, "http.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 349
    const-string v0, "https.proxyHost"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_0

    .line 355
    :cond_2
    const-string v0, "http.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 356
    const-string v0, "https.proxyPort"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_1

    .line 362
    :cond_3
    const-string v0, "http.nonProxyHosts"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    .line 363
    const-string v0, "https.nonProxyHosts"

    invoke-static {v0}, Ljava/lang/System;->clearProperty(Ljava/lang/String;)Ljava/lang/String;

    goto :goto_2

    .line 368
    :cond_4
    sget-object v0, Landroid/net/Proxy;->sDefaultProxySelector:Ljava/net/ProxySelector;

    invoke-static {v0}, Ljava/net/ProxySelector;->setDefault(Ljava/net/ProxySelector;)V

    goto :goto_3
.end method

.method public static validate(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V
    .locals 5
    .parameter "hostname"
    .parameter "port"
    .parameter "exclList"

    .prologue
    .line 247
    sget-object v4, Landroid/net/Proxy;->HOSTNAME_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p0}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v2

    .line 248
    .local v2, match:Ljava/util/regex/Matcher;
    sget-object v4, Landroid/net/Proxy;->EXCLLIST_PATTERN:Ljava/util/regex/Pattern;

    invoke-virtual {v4, p2}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 250
    .local v1, listMatch:Ljava/util/regex/Matcher;
    invoke-virtual {v2}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_0

    .line 251
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 254
    :cond_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->matches()Z

    move-result v4

    if-nez v4, :cond_1

    .line 255
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 258
    :cond_1
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_2

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_2

    .line 259
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 262
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    if-lez v4, :cond_5

    .line 263
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v4

    if-nez v4, :cond_3

    .line 264
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 266
    :cond_3
    const/4 v3, -0x1

    .line 268
    .local v3, portVal:I
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 272
    if-lez v3, :cond_4

    const v4, 0xffff

    if-le v3, v4, :cond_5

    .line 273
    :cond_4
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 269
    :catch_0
    move-exception v0

    .line 270
    .local v0, ex:Ljava/lang/NumberFormatException;
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 276
    .end local v0           #ex:Ljava/lang/NumberFormatException;
    .end local v3           #portVal:I
    :cond_5
    return-void
.end method
