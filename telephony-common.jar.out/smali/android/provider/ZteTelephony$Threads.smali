.class public final Landroid/provider/ZteTelephony$Threads;
.super Ljava/lang/Object;
.source "ZteTelephony.java"

# interfaces
.implements Landroid/provider/Telephony$ThreadsColumns;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/provider/ZteTelephony;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Threads"
.end annotation


# static fields
.field public static final BROADCAST_THREAD:I = 0x1

.field public static final COMMON_THREAD:I = 0x0

.field public static final CONTENT_URI:Landroid/net/Uri; = null

.field private static final ID_PROJECTION:[Ljava/lang/String; = null

.field public static final OBSOLETE_THREADS_URI:Landroid/net/Uri; = null

.field private static final STANDARD_ENCODING:Ljava/lang/String; = "UTF-8"

.field private static final THREAD_ID_CONTENT_URI:Landroid/net/Uri;


# direct methods
.method static constructor <clinit>()V
    .locals 3

    .prologue
    .line 28
    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Landroid/provider/ZteTelephony$Threads;->ID_PROJECTION:[Ljava/lang/String;

    .line 30
    const-string v0, "content://mms-sms/threadID"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ZteTelephony$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    .line 32
    sget-object v0, Landroid/provider/Telephony$MmsSms;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "conversations"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ZteTelephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    .line 34
    sget-object v0, Landroid/provider/ZteTelephony$Threads;->CONTENT_URI:Landroid/net/Uri;

    const-string v1, "obsolete"

    invoke-static {v0, v1}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Landroid/provider/ZteTelephony$Threads;->OBSOLETE_THREADS_URI:Landroid/net/Uri;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)J
    .locals 5
    .parameter "context"
    .parameter "recipient"
    .parameter "ccrecipient"
    .parameter "bccrecipient"

    .prologue
    .line 46
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 47
    .local v2, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 48
    .local v1, ccrecipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 49
    .local v0, bccrecipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 50
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 51
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 52
    invoke-static {p0, v2, v1, v0}, Landroid/provider/ZteTelephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)J

    move-result-wide v3

    return-wide v3
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;I)J
    .locals 5
    .parameter "context"
    .parameter "recipient"
    .parameter "ccrecipient"
    .parameter "bccrecipient"
    .parameter "modeId"

    .prologue
    .line 113
    new-instance v2, Ljava/util/HashSet;

    invoke-direct {v2}, Ljava/util/HashSet;-><init>()V

    .line 114
    .local v2, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    .line 115
    .local v1, ccrecipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    .line 116
    .local v0, bccrecipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    invoke-interface {v2, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 117
    invoke-interface {v1, p2}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 118
    invoke-interface {v0, p3}, Ljava/util/Set;->add(Ljava/lang/Object;)Z

    .line 119
    invoke-static {p0, v2, v1, v0, p4}, Landroid/provider/ZteTelephony$Threads;->getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;I)J

    move-result-wide v3

    return-wide v3
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;)J
    .locals 13
    .parameter "context"
    .parameter
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;)J"
        }
    .end annotation

    .prologue
    .line 57
    .local p1, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, ccrecipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, bccrecipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/ZteTelephony$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v12

    .line 59
    .local v12, uriBuilder:Landroid/net/Uri$Builder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 60
    .local v11, recipient:Ljava/lang/String;
    invoke-static {v11}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 61
    invoke-static {v11}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 64
    :cond_0
    const-string v0, "recipient"

    invoke-virtual {v12, v0, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 67
    .end local v11           #recipient:Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_3

    .line 69
    invoke-interface {p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 70
    .local v8, ccrecipient:Ljava/lang/String;
    invoke-static {v8}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 71
    invoke-static {v8}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 73
    :cond_2
    const-string v0, "ccrecipient"

    invoke-virtual {v12, v0, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 76
    .end local v8           #ccrecipient:Ljava/lang/String;
    :cond_3
    if-eqz p3, :cond_5

    .line 78
    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 79
    .local v7, bccrecipient:Ljava/lang/String;
    invoke-static {v7}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 80
    invoke-static {v7}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 82
    :cond_4
    const-string v0, "bccrecipient"

    invoke-virtual {v12, v0, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 86
    .end local v7           #bccrecipient:Ljava/lang/String;
    :cond_5
    invoke-virtual {v12}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 88
    .local v2, uri:Landroid/net/Uri;
    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrCreateThreadId uri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/ZteTelephony$Threads;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 93
    .local v9, cursor:Landroid/database/Cursor;
    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrCreateThreadId cursor cnt: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 95
    if-eqz v9, :cond_7

    .line 97
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 98
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 103
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 98
    return-wide v0

    .line 100
    :cond_6
    :try_start_1
    const-string v0, "Telephony"

    const-string v1, "getOrCreateThreadId returned no rows!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 103
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 106
    :cond_7
    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrCreateThreadId failed with uri "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to find or allocate a thread ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 103
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method

.method public static getOrCreateThreadId(Landroid/content/Context;Ljava/util/Set;Ljava/util/Set;Ljava/util/Set;I)J
    .locals 14
    .parameter "context"
    .parameter
    .parameter
    .parameter
    .parameter "modeId"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/Set",
            "<",
            "Ljava/lang/String;",
            ">;I)J"
        }
    .end annotation

    .prologue
    .line 124
    .local p1, recipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p2, ccrecipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    .local p3, bccrecipients:Ljava/util/Set;,"Ljava/util/Set<Ljava/lang/String;>;"
    sget-object v0, Landroid/provider/ZteTelephony$Threads;->THREAD_ID_CONTENT_URI:Landroid/net/Uri;

    invoke-virtual {v0}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v13

    .line 126
    .local v13, uriBuilder:Landroid/net/Uri$Builder;
    invoke-interface {p1}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 127
    .local v11, recipient:Ljava/lang/String;
    invoke-static {v11}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    invoke-static {v11}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 131
    :cond_0
    const-string v0, "recipient"

    invoke-virtual {v13, v0, v11}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_0

    .line 134
    .end local v11           #recipient:Ljava/lang/String;
    :cond_1
    if-eqz p2, :cond_3

    .line 136
    invoke-interface/range {p2 .. p2}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_1
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_3

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/lang/String;

    .line 137
    .local v8, ccrecipient:Ljava/lang/String;
    invoke-static {v8}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 138
    invoke-static {v8}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 140
    :cond_2
    const-string v0, "ccrecipient"

    invoke-virtual {v13, v0, v8}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_1

    .line 143
    .end local v8           #ccrecipient:Ljava/lang/String;
    :cond_3
    if-eqz p3, :cond_5

    .line 145
    invoke-interface/range {p3 .. p3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_5

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Ljava/lang/String;

    .line 146
    .local v7, bccrecipient:Ljava/lang/String;
    invoke-static {v7}, Landroid/provider/Telephony$Mms;->isEmailAddress(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_4

    .line 147
    invoke-static {v7}, Landroid/provider/Telephony$Mms;->extractAddrSpec(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 149
    :cond_4
    const-string v0, "bccrecipient"

    invoke-virtual {v13, v0, v7}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    goto :goto_2

    .line 152
    .end local v7           #bccrecipient:Ljava/lang/String;
    :cond_5
    invoke-static/range {p4 .. p4}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v12

    .line 153
    .local v12, s:Ljava/lang/String;
    const-string v0, "mode"

    invoke-virtual {v13, v0, v12}, Landroid/net/Uri$Builder;->appendQueryParameter(Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri$Builder;

    .line 155
    invoke-virtual {v13}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v2

    .line 157
    .local v2, uri:Landroid/net/Uri;
    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrCreateThreadId uri: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    sget-object v3, Landroid/provider/ZteTelephony$Threads;->ID_PROJECTION:[Ljava/lang/String;

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object v0, p0

    invoke-static/range {v0 .. v6}, Landroid/database/sqlite/SqliteWrapper;->query(Landroid/content/Context;Landroid/content/ContentResolver;Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v9

    .line 162
    .local v9, cursor:Landroid/database/Cursor;
    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrCreateThreadId cursor cnt: "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-interface {v9}, Landroid/database/Cursor;->getCount()I

    move-result v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    if-eqz v9, :cond_7

    .line 166
    :try_start_0
    invoke-interface {v9}, Landroid/database/Cursor;->moveToFirst()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 167
    const/4 v0, 0x0

    invoke-interface {v9, v0}, Landroid/database/Cursor;->getLong(I)J
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-wide v0

    .line 172
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 167
    return-wide v0

    .line 169
    :cond_6
    :try_start_1
    const-string v0, "Telephony"

    const-string v1, "getOrCreateThreadId returned no rows!"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 172
    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    .line 176
    :cond_7
    const-string v0, "Telephony"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getOrCreateThreadId failed with uri "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v2}, Landroid/net/Uri;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "Unable to find or allocate a thread ID."

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 172
    :catchall_0
    move-exception v0

    invoke-interface {v9}, Landroid/database/Cursor;->close()V

    throw v0
.end method
