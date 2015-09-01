.class public Landroid/util/NtpTrustedTime;
.super Ljava/lang/Object;
.source "NtpTrustedTime.java"

# interfaces
.implements Landroid/util/TrustedTime;


# static fields
.field private static final LOGD:Z = true

.field private static final TAG:Ljava/lang/String; = "NtpTrustedTime"

.field private static mContext:Landroid/content/Context;

.field private static sSingleton:Landroid/util/NtpTrustedTime;


# instance fields
.field private mCachedNtpCertainty:J

.field private mCachedNtpElapsedRealtime:J

.field private mCachedNtpTime:J

.field private mHasCache:Z

.field private final mServer:Ljava/lang/String;

.field private final mServers:[Ljava/lang/CharSequence;

.field private final mTimeout:J


# direct methods
.method private constructor <init>(Ljava/lang/String;J)V
    .locals 2
    .parameter "server"
    .parameter "timeout"

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    .line 56
    iput-wide p2, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    .line 59
    sget-object v0, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x20b0004

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getTextArray(I)[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Landroid/util/NtpTrustedTime;->mServers:[Ljava/lang/CharSequence;

    .line 69
    return-void
.end method

.method public static declared-synchronized getInstance(Landroid/content/Context;)Landroid/util/NtpTrustedTime;
    .locals 9
    .parameter "context"

    .prologue
    .line 72
    const-class v8, Landroid/util/NtpTrustedTime;

    monitor-enter v8

    :try_start_0
    sget-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    if-nez v7, :cond_0

    .line 75
    sput-object p0, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 78
    .local v2, res:Landroid/content/res/Resources;
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 84
    .local v3, resolver:Landroid/content/ContentResolver;
    const v7, 0x10e0040

    invoke-virtual {v2, v7}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v7

    int-to-long v0, v7

    .line 87
    .local v0, defaultTimeout:J
    const-string/jumbo v7, "ntp_server"

    invoke-static {v3, v7}, Landroid/provider/Settings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 89
    .local v4, secureServer:Ljava/lang/String;
    const-string/jumbo v7, "ntp_timeout"

    invoke-static {v3, v7, v0, v1}, Landroid/provider/Settings$Global;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v5

    .line 94
    .local v5, timeout:J
    new-instance v7, Landroid/util/NtpTrustedTime;

    invoke-direct {v7, v4, v5, v6}, Landroid/util/NtpTrustedTime;-><init>(Ljava/lang/String;J)V

    sput-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;

    .line 97
    .end local v0           #defaultTimeout:J
    .end local v2           #res:Landroid/content/res/Resources;
    .end local v3           #resolver:Landroid/content/ContentResolver;
    .end local v4           #secureServer:Ljava/lang/String;
    .end local v5           #timeout:J
    :cond_0
    sget-object v7, Landroid/util/NtpTrustedTime;->sSingleton:Landroid/util/NtpTrustedTime;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v8

    return-object v7

    .line 72
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7
.end method


# virtual methods
.method public currentTimeMillis()J
    .locals 4

    .prologue
    .line 216
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-nez v0, :cond_0

    .line 217
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Missing authoritative time source"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 219
    :cond_0
    const-string v0, "NtpTrustedTime"

    const-string v1, "currentTimeMillis() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    invoke-virtual {p0}, Landroid/util/NtpTrustedTime;->getCacheAge()J

    move-result-wide v2

    add-long/2addr v0, v2

    return-wide v0
.end method

.method public forceRefresh()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 102
    const-string v7, "NtpTrustedTime"

    const-string v8, "forceRefresh() from cache miss"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    new-instance v2, Landroid/net/SntpClient;

    invoke-direct {v2}, Landroid/net/SntpClient;-><init>()V

    .line 105
    .local v2, client:Landroid/net/SntpClient;
    iget-object v7, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v8, v8

    invoke-virtual {v2, v7, v8}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 107
    iput-boolean v5, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 108
    invoke-virtual {v2}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 109
    invoke-virtual {v2}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 110
    invoke-virtual {v2}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v6

    div-long/2addr v6, v10

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 112
    const-string v6, "NtpTrustedTime"

    const-string v7, "forceRefresh() SUCCESS!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    sget-object v6, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.NTP_TIME_SYNCED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 142
    :goto_0
    return v5

    .line 118
    :cond_0
    iget-object v7, p0, Landroid/util/NtpTrustedTime;->mServers:[Ljava/lang/CharSequence;

    array-length v7, v7

    if-gtz v7, :cond_1

    .line 120
    const-string v5, "NtpTrustedTime"

    const-string v7, "forceRefresh():there is no server"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 121
    goto :goto_0

    .line 124
    :cond_1
    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mServers:[Ljava/lang/CharSequence;

    .local v1, arr$:[Ljava/lang/CharSequence;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 126
    .local v0, Server:Ljava/lang/CharSequence;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v8, v8

    invoke-virtual {v2, v7, v8}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 128
    iput-boolean v5, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 129
    invoke-virtual {v2}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 130
    invoke-virtual {v2}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 131
    invoke-virtual {v2}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v6

    div-long/2addr v6, v10

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 133
    const-string v6, "NtpTrustedTime"

    const-string v7, "forceRefresh() SUCCESS!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    sget-object v6, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.NTP_TIME_SYNCED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 124
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 141
    .end local v0           #Server:Ljava/lang/CharSequence;
    :cond_3
    const-string v5, "NtpTrustedTime"

    const-string v7, "forceRefresh() fail "

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 142
    goto :goto_0
.end method

.method public forceRefreshNoIntent()Z
    .locals 12

    .prologue
    const-wide/16 v10, 0x2

    const/4 v6, 0x0

    const/4 v5, 0x1

    .line 148
    const-string v7, "NtpTrustedTime"

    const-string v8, "forceRefreshNoIntent() from cache miss"

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 149
    new-instance v2, Landroid/net/SntpClient;

    invoke-direct {v2}, Landroid/net/SntpClient;-><init>()V

    .line 151
    .local v2, client:Landroid/net/SntpClient;
    iget-object v7, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Landroid/util/NtpTrustedTime;->mServer:Ljava/lang/String;

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v8, v8

    invoke-virtual {v2, v7, v8}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 153
    iput-boolean v5, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 154
    invoke-virtual {v2}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 155
    invoke-virtual {v2}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 156
    invoke-virtual {v2}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v6

    div-long/2addr v6, v10

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 158
    const-string v6, "NtpTrustedTime"

    const-string v7, "forceRefreshNoIntent() SUCCESS!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_0
    return v5

    .line 163
    :cond_0
    iget-object v7, p0, Landroid/util/NtpTrustedTime;->mServers:[Ljava/lang/CharSequence;

    array-length v7, v7

    if-gtz v7, :cond_1

    .line 165
    const-string v5, "NtpTrustedTime"

    const-string v7, "forceRefreshNoIntent():there is no server"

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 166
    goto :goto_0

    .line 169
    :cond_1
    iget-object v1, p0, Landroid/util/NtpTrustedTime;->mServers:[Ljava/lang/CharSequence;

    .local v1, arr$:[Ljava/lang/CharSequence;
    array-length v4, v1

    .local v4, len$:I
    const/4 v3, 0x0

    .local v3, i$:I
    :goto_1
    if-ge v3, v4, :cond_3

    aget-object v0, v1, v3

    .line 171
    .local v0, Server:Ljava/lang/CharSequence;
    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_2

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    iget-wide v8, p0, Landroid/util/NtpTrustedTime;->mTimeout:J

    long-to-int v8, v8

    invoke-virtual {v2, v7, v8}, Landroid/net/SntpClient;->requestTime(Ljava/lang/String;I)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 173
    iput-boolean v5, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    .line 174
    invoke-virtual {v2}, Landroid/net/SntpClient;->getNtpTime()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    .line 175
    invoke-virtual {v2}, Landroid/net/SntpClient;->getNtpTimeReference()J

    move-result-wide v6

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    .line 176
    invoke-virtual {v2}, Landroid/net/SntpClient;->getRoundTripTime()J

    move-result-wide v6

    div-long/2addr v6, v10

    iput-wide v6, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 178
    const-string v6, "NtpTrustedTime"

    const-string v7, "forceRefreshNoIntent() SUCCESS!!"

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 180
    sget-object v6, Landroid/util/NtpTrustedTime;->mContext:Landroid/content/Context;

    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.intent.action.NTP_TIME_SYNCED"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v6, v7}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    goto :goto_0

    .line 169
    :cond_2
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 186
    .end local v0           #Server:Ljava/lang/CharSequence;
    :cond_3
    const-string v5, "NtpTrustedTime"

    const-string v7, "forceRefreshNoIntent() fail "

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v5, v6

    .line 187
    goto :goto_0
.end method

.method public getCacheAge()J
    .locals 4

    .prologue
    .line 198
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 199
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v0

    iget-wide v2, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    sub-long/2addr v0, v2

    .line 201
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCacheCertainty()J
    .locals 2

    .prologue
    .line 207
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    if-eqz v0, :cond_0

    .line 208
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpCertainty:J

    .line 210
    :goto_0
    return-wide v0

    :cond_0
    const-wide v0, 0x7fffffffffffffffL

    goto :goto_0
.end method

.method public getCachedNtpTime()J
    .locals 2

    .prologue
    .line 227
    const-string v0, "NtpTrustedTime"

    const-string v1, "getCachedNtpTime() cache hit"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpTime:J

    return-wide v0
.end method

.method public getCachedNtpTimeReference()J
    .locals 2

    .prologue
    .line 232
    iget-wide v0, p0, Landroid/util/NtpTrustedTime;->mCachedNtpElapsedRealtime:J

    return-wide v0
.end method

.method public hasCache()Z
    .locals 1

    .prologue
    .line 193
    iget-boolean v0, p0, Landroid/util/NtpTrustedTime;->mHasCache:Z

    return v0
.end method
