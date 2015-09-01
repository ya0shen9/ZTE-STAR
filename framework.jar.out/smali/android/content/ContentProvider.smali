.class public abstract Landroid/content/ContentProvider;
.super Ljava/lang/Object;
.source "ContentProvider.java"

# interfaces
.implements Landroid/content/ComponentCallbacks2;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/content/ContentProvider$PipeDataWriter;,
        Landroid/content/ContentProvider$Transport;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ContentProvider"


# instance fields
.field private final mCallingPackage:Ljava/lang/ThreadLocal;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/lang/ThreadLocal",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mContext:Landroid/content/Context;

.field private mExported:Z

.field private mMyUid:I

.field private mNoPerms:Z

.field private mPathPermissions:[Landroid/content/pm/PathPermission;

.field private mReadPermission:Ljava/lang/String;

.field private mTransport:Landroid/content/ContentProvider$Transport;

.field private mWritePermission:Ljava/lang/String;

.field private mZTETransport:Landroid/content/IContentProvider;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 131
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 108
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    .line 110
    new-instance v0, Landroid/content/ContentProvider$Transport;

    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    .line 113
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    invoke-virtual {v0}, Landroid/content/ContentProvider$Transport;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/security/ZTESecurityUtils;->getZTETransport(Landroid/content/ContentProvider;Landroid/os/IBinder;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProvider;->mZTETransport:Landroid/content/IContentProvider;

    .line 132
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Ljava/lang/String;Ljava/lang/String;[Landroid/content/pm/PathPermission;)V
    .locals 1
    .parameter "context"
    .parameter "readPermission"
    .parameter "writePermission"
    .parameter "pathPermissions"

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 100
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 108
    new-instance v0, Ljava/lang/ThreadLocal;

    invoke-direct {v0}, Ljava/lang/ThreadLocal;-><init>()V

    iput-object v0, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    .line 110
    new-instance v0, Landroid/content/ContentProvider$Transport;

    invoke-direct {v0, p0}, Landroid/content/ContentProvider$Transport;-><init>(Landroid/content/ContentProvider;)V

    iput-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    .line 113
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    invoke-virtual {v0}, Landroid/content/ContentProvider$Transport;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-static {p0, v0}, Lcom/zte/security/ZTESecurityUtils;->getZTETransport(Landroid/content/ContentProvider;Landroid/os/IBinder;)Landroid/content/IContentProvider;

    move-result-object v0

    iput-object v0, p0, Landroid/content/ContentProvider;->mZTETransport:Landroid/content/IContentProvider;

    .line 152
    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 153
    iput-object p2, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    .line 154
    iput-object p3, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    .line 155
    iput-object p4, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    .line 156
    return-void
.end method

.method static synthetic access$000(Landroid/content/ContentProvider;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/content/ContentProvider;->setCallingPackage(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V
    .locals 2
    .parameter "context"
    .parameter "info"
    .parameter "testing"

    .prologue
    .line 1589
    invoke-static {}, Landroid/os/AsyncTask;->init()V

    .line 1591
    iput-boolean p3, p0, Landroid/content/ContentProvider;->mNoPerms:Z

    .line 1597
    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    if-nez v0, :cond_2

    .line 1598
    iput-object p1, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    .line 1599
    if-eqz p1, :cond_0

    .line 1600
    iget-object v1, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    const-string v0, "appops"

    invoke-virtual {p1, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/AppOpsManager;

    iput-object v0, v1, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    .line 1603
    :cond_0
    invoke-static {}, Landroid/os/Process;->myUid()I

    move-result v0

    iput v0, p0, Landroid/content/ContentProvider;->mMyUid:I

    .line 1604
    if-eqz p2, :cond_1

    .line 1605
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->readPermission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setReadPermission(Ljava/lang/String;)V

    .line 1606
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->writePermission:Ljava/lang/String;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setWritePermission(Ljava/lang/String;)V

    .line 1607
    iget-object v0, p2, Landroid/content/pm/ProviderInfo;->pathPermissions:[Landroid/content/pm/PathPermission;

    invoke-virtual {p0, v0}, Landroid/content/ContentProvider;->setPathPermissions([Landroid/content/pm/PathPermission;)V

    .line 1608
    iget-boolean v0, p2, Landroid/content/pm/ProviderInfo;->exported:Z

    iput-boolean v0, p0, Landroid/content/ContentProvider;->mExported:Z

    .line 1610
    :cond_1
    invoke-virtual {p0}, Landroid/content/ContentProvider;->onCreate()Z

    .line 1612
    :cond_2
    return-void
.end method

.method public static coerceToLocalContentProvider(Landroid/content/IContentProvider;)Landroid/content/ContentProvider;
    .locals 2
    .parameter "abstractInterface"

    .prologue
    .line 173
    instance-of v1, p0, Landroid/content/ContentProvider$Transport;

    if-eqz v1, :cond_0

    .line 174
    check-cast p0, Landroid/content/ContentProvider$Transport;

    .end local p0
    invoke-virtual {p0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v1

    .line 182
    .local v0, origTransport:Landroid/content/ContentProvider$Transport;
    .restart local p0
    :goto_0
    return-object v1

    .line 177
    .end local v0           #origTransport:Landroid/content/ContentProvider$Transport;
    :cond_0
    invoke-static {p0}, Lcom/zte/security/ZTESecurityUtils;->getOrigTransport(Landroid/content/IContentProvider;)Landroid/content/IContentProvider;

    move-result-object v0

    check-cast v0, Landroid/content/ContentProvider$Transport;

    .line 178
    .restart local v0       #origTransport:Landroid/content/ContentProvider$Transport;
    instance-of v1, v0, Landroid/content/ContentProvider$Transport;

    if-eqz v1, :cond_1

    .line 179
    invoke-virtual {v0}, Landroid/content/ContentProvider$Transport;->getContentProvider()Landroid/content/ContentProvider;

    move-result-object v1

    goto :goto_0

    .line 182
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private setCallingPackage(Ljava/lang/String;)Ljava/lang/String;
    .locals 2
    .parameter "callingPackage"

    .prologue
    .line 562
    iget-object v1, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 563
    .local v0, original:Ljava/lang/String;
    iget-object v1, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1, p1}, Ljava/lang/ThreadLocal;->set(Ljava/lang/Object;)V

    .line 564
    return-object v0
.end method


# virtual methods
.method public applyBatch(Ljava/util/ArrayList;)[Landroid/content/ContentProviderResult;
    .locals 4
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/content/ContentProviderOperation;",
            ">;)[",
            "Landroid/content/ContentProviderResult;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/content/OperationApplicationException;
        }
    .end annotation

    .prologue
    .line 1633
    .local p1, operations:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/content/ContentProviderOperation;>;"
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 1634
    .local v1, numOperations:I
    new-array v2, v1, [Landroid/content/ContentProviderResult;

    .line 1635
    .local v2, results:[Landroid/content/ContentProviderResult;
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1636
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/ContentProviderOperation;

    invoke-virtual {v3, p0, v2, v0}, Landroid/content/ContentProviderOperation;->apply(Landroid/content/ContentProvider;[Landroid/content/ContentProviderResult;I)Landroid/content/ContentProviderResult;

    move-result-object v3

    aput-object v3, v2, v0

    .line 1635
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1638
    :cond_0
    return-object v2
.end method

.method public attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1
    .parameter "context"
    .parameter "info"

    .prologue
    .line 1581
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V

    .line 1582
    return-void
.end method

.method public attachInfoForTesting(Landroid/content/Context;Landroid/content/pm/ProviderInfo;)V
    .locals 1
    .parameter "context"
    .parameter "info"

    .prologue
    .line 1570
    const/4 v0, 0x1

    invoke-direct {p0, p1, p2, v0}, Landroid/content/ContentProvider;->attachInfo(Landroid/content/Context;Landroid/content/pm/ProviderInfo;Z)V

    .line 1571
    return-void
.end method

.method public bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I
    .locals 3
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 993
    array-length v1, p2

    .line 994
    .local v1, numValues:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 995
    aget-object v2, p2, v0

    invoke-virtual {p0, p1, v2}, Landroid/content/ContentProvider;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;

    .line 994
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 997
    :cond_0
    return v1
.end method

.method public call(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)Landroid/os/Bundle;
    .locals 1
    .parameter "method"
    .parameter "arg"
    .parameter "extras"

    .prologue
    .line 1660
    const/4 v0, 0x0

    return-object v0
.end method

.method public canonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 1
    .parameter "url"

    .prologue
    .line 925
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 1
    .parameter "fd"
    .parameter "writer"
    .parameter "args"

    .prologue
    .line 1700
    const-string/jumbo v0, "nothing to dump"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1701
    return-void
.end method

.method protected enforceReadPermissionInner(Landroid/net/Uri;)V
    .locals 19
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 426
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 427
    .local v5, context:Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 428
    .local v12, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 429
    .local v15, uid:I
    const/4 v9, 0x0

    .line 431
    .local v9, missingPerm:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/ContentProvider;->mMyUid:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 475
    :cond_0
    return-void

    .line 435
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/ContentProvider;->mExported:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 436
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getReadPermission()Ljava/lang/String;

    move-result-object v4

    .line 437
    .local v4, componentPerm:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 438
    invoke-virtual {v5, v4, v12, v15}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v16

    if-eqz v16, :cond_0

    .line 441
    move-object v9, v4

    .line 447
    :cond_2
    if-nez v4, :cond_4

    const/4 v2, 0x1

    .line 449
    .local v2, allowDefaultRead:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v14

    .line 450
    .local v14, pps:[Landroid/content/pm/PathPermission;
    if-eqz v14, :cond_5

    .line 451
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 452
    .local v10, path:Ljava/lang/String;
    move-object v3, v14

    .local v3, arr$:[Landroid/content/pm/PathPermission;
    array-length v8, v3

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_5

    aget-object v13, v3, v7

    .line 453
    .local v13, pp:Landroid/content/pm/PathPermission;
    invoke-virtual {v13}, Landroid/content/pm/PathPermission;->getReadPermission()Ljava/lang/String;

    move-result-object v11

    .line 454
    .local v11, pathPerm:Ljava/lang/String;
    if-eqz v11, :cond_3

    invoke-virtual {v13, v10}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 455
    invoke-virtual {v5, v11, v12, v15}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v16

    if-eqz v16, :cond_0

    .line 460
    const/4 v2, 0x0

    .line 461
    move-object v9, v11

    .line 452
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 447
    .end local v2           #allowDefaultRead:Z
    .end local v3           #arr$:[Landroid/content/pm/PathPermission;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #pathPerm:Ljava/lang/String;
    .end local v13           #pp:Landroid/content/pm/PathPermission;
    .end local v14           #pps:[Landroid/content/pm/PathPermission;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 469
    .restart local v2       #allowDefaultRead:Z
    .restart local v14       #pps:[Landroid/content/pm/PathPermission;
    :cond_5
    if-nez v2, :cond_0

    .line 473
    .end local v2           #allowDefaultRead:Z
    .end local v4           #componentPerm:Ljava/lang/String;
    .end local v14           #pps:[Landroid/content/pm/PathPermission;
    :cond_6
    const/16 v16, 0x1

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v5, v0, v12, v15, v1}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v16

    if-eqz v16, :cond_0

    .line 478
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/ContentProvider;->mExported:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " requires "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", or grantUriPermission()"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 481
    .local v6, failReason:Ljava/lang/String;
    :goto_2
    new-instance v16, Ljava/lang/SecurityException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Permission Denial: reading "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " uri "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " from pid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", uid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 478
    .end local v6           #failReason:Ljava/lang/String;
    :cond_7
    const-string v6, " requires the provider be exported, or grantUriPermission()"

    goto :goto_2
.end method

.method protected enforceWritePermissionInner(Landroid/net/Uri;)V
    .locals 19
    .parameter "uri"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/SecurityException;
        }
    .end annotation

    .prologue
    .line 488
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getContext()Landroid/content/Context;

    move-result-object v5

    .line 489
    .local v5, context:Landroid/content/Context;
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v12

    .line 490
    .local v12, pid:I
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v15

    .line 491
    .local v15, uid:I
    const/4 v9, 0x0

    .line 493
    .local v9, missingPerm:Ljava/lang/String;
    move-object/from16 v0, p0

    iget v0, v0, Landroid/content/ContentProvider;->mMyUid:I

    move/from16 v16, v0

    invoke-static/range {v15 .. v16}, Landroid/os/UserHandle;->isSameApp(II)Z

    move-result v16

    if-eqz v16, :cond_1

    .line 537
    :cond_0
    return-void

    .line 497
    :cond_1
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/ContentProvider;->mExported:Z

    move/from16 v16, v0

    if-eqz v16, :cond_6

    .line 498
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getWritePermission()Ljava/lang/String;

    move-result-object v4

    .line 499
    .local v4, componentPerm:Ljava/lang/String;
    if-eqz v4, :cond_2

    .line 500
    invoke-virtual {v5, v4, v12, v15}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v16

    if-eqz v16, :cond_0

    .line 503
    move-object v9, v4

    .line 509
    :cond_2
    if-nez v4, :cond_4

    const/4 v2, 0x1

    .line 511
    .local v2, allowDefaultWrite:Z
    :goto_0
    invoke-virtual/range {p0 .. p0}, Landroid/content/ContentProvider;->getPathPermissions()[Landroid/content/pm/PathPermission;

    move-result-object v14

    .line 512
    .local v14, pps:[Landroid/content/pm/PathPermission;
    if-eqz v14, :cond_5

    .line 513
    invoke-virtual/range {p1 .. p1}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v10

    .line 514
    .local v10, path:Ljava/lang/String;
    move-object v3, v14

    .local v3, arr$:[Landroid/content/pm/PathPermission;
    array-length v8, v3

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_1
    if-ge v7, v8, :cond_5

    aget-object v13, v3, v7

    .line 515
    .local v13, pp:Landroid/content/pm/PathPermission;
    invoke-virtual {v13}, Landroid/content/pm/PathPermission;->getWritePermission()Ljava/lang/String;

    move-result-object v11

    .line 516
    .local v11, pathPerm:Ljava/lang/String;
    if-eqz v11, :cond_3

    invoke-virtual {v13, v10}, Landroid/content/pm/PathPermission;->match(Ljava/lang/String;)Z

    move-result v16

    if-eqz v16, :cond_3

    .line 517
    invoke-virtual {v5, v11, v12, v15}, Landroid/content/Context;->checkPermission(Ljava/lang/String;II)I

    move-result v16

    if-eqz v16, :cond_0

    .line 522
    const/4 v2, 0x0

    .line 523
    move-object v9, v11

    .line 514
    :cond_3
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 509
    .end local v2           #allowDefaultWrite:Z
    .end local v3           #arr$:[Landroid/content/pm/PathPermission;
    .end local v7           #i$:I
    .end local v8           #len$:I
    .end local v10           #path:Ljava/lang/String;
    .end local v11           #pathPerm:Ljava/lang/String;
    .end local v13           #pp:Landroid/content/pm/PathPermission;
    .end local v14           #pps:[Landroid/content/pm/PathPermission;
    :cond_4
    const/4 v2, 0x0

    goto :goto_0

    .line 531
    .restart local v2       #allowDefaultWrite:Z
    .restart local v14       #pps:[Landroid/content/pm/PathPermission;
    :cond_5
    if-nez v2, :cond_0

    .line 535
    .end local v2           #allowDefaultWrite:Z
    .end local v4           #componentPerm:Ljava/lang/String;
    .end local v14           #pps:[Landroid/content/pm/PathPermission;
    :cond_6
    const/16 v16, 0x2

    move-object/from16 v0, p1

    move/from16 v1, v16

    invoke-virtual {v5, v0, v12, v15, v1}, Landroid/content/Context;->checkUriPermission(Landroid/net/Uri;III)I

    move-result v16

    if-eqz v16, :cond_0

    .line 540
    move-object/from16 v0, p0

    iget-boolean v0, v0, Landroid/content/ContentProvider;->mExported:Z

    move/from16 v16, v0

    if-eqz v16, :cond_7

    new-instance v16, Ljava/lang/StringBuilder;

    invoke-direct/range {v16 .. v16}, Ljava/lang/StringBuilder;-><init>()V

    const-string v17, " requires "

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    const-string v17, ", or grantUriPermission()"

    invoke-virtual/range {v16 .. v17}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 543
    .local v6, failReason:Ljava/lang/String;
    :goto_2
    new-instance v16, Ljava/lang/SecurityException;

    new-instance v17, Ljava/lang/StringBuilder;

    invoke-direct/range {v17 .. v17}, Ljava/lang/StringBuilder;-><init>()V

    const-string v18, "Permission Denial: writing "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {p0 .. p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " uri "

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, " from pid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    const-string v18, ", uid="

    invoke-virtual/range {v17 .. v18}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v17

    move-object/from16 v0, v17

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v17

    invoke-virtual/range {v17 .. v17}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v17

    invoke-direct/range {v16 .. v17}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v16

    .line 540
    .end local v6           #failReason:Ljava/lang/String;
    :cond_7
    const-string v6, " requires the provider be exported, or grantUriPermission()"

    goto :goto_2
.end method

.method public getAppOpsManager()Landroid/app/AppOpsManager;
    .locals 1

    .prologue
    .line 665
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v0, v0, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    return-object v0
.end method

.method public final getCallingPackage()Ljava/lang/String;
    .locals 3

    .prologue
    .line 582
    iget-object v1, p0, Landroid/content/ContentProvider;->mCallingPackage:Ljava/lang/ThreadLocal;

    invoke-virtual {v1}, Ljava/lang/ThreadLocal;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 583
    .local v0, pkg:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 584
    iget-object v1, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iget-object v1, v1, Landroid/content/ContentProvider$Transport;->mAppOpsManager:Landroid/app/AppOpsManager;

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    invoke-virtual {v1, v2, v0}, Landroid/app/AppOpsManager;->checkPackage(ILjava/lang/String;)V

    .line 586
    :cond_0
    return-object v0
.end method

.method public final getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 554
    iget-object v0, p0, Landroid/content/ContentProvider;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method public getIContentProvider()Landroid/content/IContentProvider;
    .locals 1

    .prologue
    .line 1557
    iget-object v0, p0, Landroid/content/ContentProvider;->mZTETransport:Landroid/content/IContentProvider;

    if-eqz v0, :cond_0

    .line 1558
    iget-object v0, p0, Landroid/content/ContentProvider;->mZTETransport:Landroid/content/IContentProvider;

    .line 1561
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    goto :goto_0
.end method

.method public final getPathPermissions()[Landroid/content/pm/PathPermission;
    .locals 1

    .prologue
    .line 652
    iget-object v0, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    return-object v0
.end method

.method public final getReadPermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 608
    iget-object v0, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    return-object v0
.end method

.method public getStreamTypes(Landroid/net/Uri;Ljava/lang/String;)[Ljava/lang/String;
    .locals 1
    .parameter "uri"
    .parameter "mimeTypeFilter"

    .prologue
    .line 1355
    const/4 v0, 0x0

    return-object v0
.end method

.method public abstract getType(Landroid/net/Uri;)Ljava/lang/String;
.end method

.method public final getWritePermission()Ljava/lang/String;
    .locals 1

    .prologue
    .line 630
    iget-object v0, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    return-object v0
.end method

.method public abstract insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
.end method

.method protected isTemporary()Z
    .locals 1

    .prologue
    .line 1546
    const/4 v0, 0x0

    return v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 0
    .parameter "newConfig"

    .prologue
    .line 706
    return-void
.end method

.method public abstract onCreate()Z
.end method

.method public onLowMemory()V
    .locals 0

    .prologue
    .line 717
    return-void
.end method

.method public onTrimMemory(I)V
    .locals 0
    .parameter "level"

    .prologue
    .line 720
    return-void
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;
    .locals 6
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1227
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v1

    .line 1228
    .local v1, fd:Landroid/os/ParcelFileDescriptor;
    if-eqz v1, :cond_0

    new-instance v0, Landroid/content/res/AssetFileDescriptor;

    const-wide/16 v2, 0x0

    const-wide/16 v4, -0x1

    invoke-direct/range {v0 .. v5}, Landroid/content/res/AssetFileDescriptor;-><init>(Landroid/os/ParcelFileDescriptor;JJ)V

    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public openAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter "uri"
    .parameter "mode"
    .parameter "signal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1290
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 3
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1101
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No files supported by provider at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public openFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/os/ParcelFileDescriptor;
    .locals 1
    .parameter "uri"
    .parameter "mode"
    .parameter "signal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1171
    invoke-virtual {p0, p1, p2}, Landroid/content/ContentProvider;->openFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method protected final openFileHelper(Landroid/net/Uri;Ljava/lang/String;)Landroid/os/ParcelFileDescriptor;
    .locals 12
    .parameter "uri"
    .parameter "mode"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    const/4 v11, 0x1

    const/4 v7, 0x0

    const/4 v3, 0x0

    .line 1309
    new-array v2, v11, [Ljava/lang/String;

    const-string v0, "_data"

    aput-object v0, v2, v7

    move-object v0, p0

    move-object v1, p1

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 1310
    .local v6, c:Landroid/database/Cursor;
    if-eqz v6, :cond_0

    invoke-interface {v6}, Landroid/database/Cursor;->getCount()I

    move-result v7

    .line 1311
    .local v7, count:I
    :cond_0
    if-eq v7, v11, :cond_3

    .line 1314
    if-eqz v6, :cond_1

    .line 1315
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1317
    :cond_1
    if-nez v7, :cond_2

    .line 1318
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "No entry for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1320
    :cond_2
    new-instance v0, Ljava/io/FileNotFoundException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Multiple items at "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1323
    :cond_3
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 1324
    const-string v0, "_data"

    invoke-interface {v6, v0}, Landroid/database/Cursor;->getColumnIndex(Ljava/lang/String;)I

    move-result v8

    .line 1325
    .local v8, i:I
    if-ltz v8, :cond_4

    invoke-interface {v6, v8}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v10

    .line 1326
    .local v10, path:Ljava/lang/String;
    :goto_0
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 1327
    if-nez v10, :cond_5

    .line 1328
    new-instance v0, Ljava/io/FileNotFoundException;

    const-string v1, "Column _data not found."

    invoke-direct {v0, v1}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v0

    .end local v10           #path:Ljava/lang/String;
    :cond_4
    move-object v10, v3

    .line 1325
    goto :goto_0

    .line 1331
    .restart local v10       #path:Ljava/lang/String;
    :cond_5
    invoke-static {p2}, Landroid/os/ParcelFileDescriptor;->parseMode(Ljava/lang/String;)I

    move-result v9

    .line 1332
    .local v9, modeBits:I
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v9}, Landroid/os/ParcelFileDescriptor;->open(Ljava/io/File;I)Landroid/os/ParcelFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public openPipeHelper(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;Landroid/content/ContentProvider$PipeDataWriter;)Landroid/os/ParcelFileDescriptor;
    .locals 9
    .parameter "uri"
    .parameter "mimeType"
    .parameter "opts"
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<T:",
            "Ljava/lang/Object;",
            ">(",
            "Landroid/net/Uri;",
            "Ljava/lang/String;",
            "Landroid/os/Bundle;",
            "TT;",
            "Landroid/content/ContentProvider$PipeDataWriter",
            "<TT;>;)",
            "Landroid/os/ParcelFileDescriptor;"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1519
    .local p4, args:Ljava/lang/Object;,"TT;"
    .local p5, func:Landroid/content/ContentProvider$PipeDataWriter;,"Landroid/content/ContentProvider$PipeDataWriter<TT;>;"
    :try_start_0
    invoke-static {}, Landroid/os/ParcelFileDescriptor;->createPipe()[Landroid/os/ParcelFileDescriptor;

    move-result-object v3

    .line 1521
    .local v3, fds:[Landroid/os/ParcelFileDescriptor;
    new-instance v0, Landroid/content/ContentProvider$1;

    move-object v1, p0

    move-object v2, p5

    move-object v4, p1

    move-object v5, p2

    move-object v6, p3

    move-object v7, p4

    invoke-direct/range {v0 .. v7}, Landroid/content/ContentProvider$1;-><init>(Landroid/content/ContentProvider;Landroid/content/ContentProvider$PipeDataWriter;[Landroid/os/ParcelFileDescriptor;Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Ljava/lang/Object;)V

    .line 1533
    .local v0, task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    sget-object v2, Landroid/os/AsyncTask;->THREAD_POOL_EXECUTOR:Ljava/util/concurrent/Executor;

    const/4 v1, 0x0

    check-cast v1, [Ljava/lang/Object;

    invoke-virtual {v0, v2, v1}, Landroid/os/AsyncTask;->executeOnExecutor(Ljava/util/concurrent/Executor;[Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 1535
    const/4 v1, 0x0

    aget-object v1, v3, v1
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v1

    .line 1536
    .end local v0           #task:Landroid/os/AsyncTask;,"Landroid/os/AsyncTask<Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Object;>;"
    .end local v3           #fds:[Landroid/os/ParcelFileDescriptor;
    :catch_0
    move-exception v8

    .line 1537
    .local v8, e:Ljava/io/IOException;
    new-instance v1, Ljava/io/FileNotFoundException;

    const-string v2, "failure making pipe"

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;
    .locals 4
    .parameter "uri"
    .parameter "mimeTypeFilter"
    .parameter "opts"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1405
    const-string v1, "*/*"

    invoke-virtual {v1, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1407
    const-string/jumbo v1, "r"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    .line 1413
    :goto_0
    return-object v1

    .line 1409
    :cond_0
    invoke-virtual {p0, p1}, Landroid/content/ContentProvider;->getType(Landroid/net/Uri;)Ljava/lang/String;

    move-result-object v0

    .line 1410
    .local v0, baseType:Ljava/lang/String;
    if-eqz v0, :cond_1

    invoke-static {v0, p2}, Landroid/content/ClipDescription;->compareMimeTypes(Ljava/lang/String;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1413
    const-string/jumbo v1, "r"

    invoke-virtual {p0, p1, v1}, Landroid/content/ContentProvider;->openAssetFile(Landroid/net/Uri;Ljava/lang/String;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v1

    goto :goto_0

    .line 1415
    :cond_1
    new-instance v1, Ljava/io/FileNotFoundException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Can\'t open "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " as type "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/io/FileNotFoundException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;Landroid/os/CancellationSignal;)Landroid/content/res/AssetFileDescriptor;
    .locals 1
    .parameter "uri"
    .parameter "mimeTypeFilter"
    .parameter "opts"
    .parameter "signal"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/FileNotFoundException;
        }
    .end annotation

    .prologue
    .line 1473
    invoke-virtual {p0, p1, p2, p3}, Landroid/content/ContentProvider;->openTypedAssetFile(Landroid/net/Uri;Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/res/AssetFileDescriptor;

    move-result-object v0

    return-object v0
.end method

.method public abstract query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
.end method

.method public query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 1
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "cancellationSignal"

    .prologue
    .line 871
    invoke-virtual/range {p0 .. p5}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0
.end method

.method public rejectInsert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 2
    .parameter "uri"
    .parameter "values"

    .prologue
    .line 960
    invoke-virtual {p1}, Landroid/net/Uri;->buildUpon()Landroid/net/Uri$Builder;

    move-result-object v0

    const-string v1, "0"

    invoke-virtual {v0, v1}, Landroid/net/Uri$Builder;->appendPath(Ljava/lang/String;)Landroid/net/Uri$Builder;

    move-result-object v0

    invoke-virtual {v0}, Landroid/net/Uri$Builder;->build()Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public rejectQuery(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;
    .locals 2
    .parameter "uri"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sortOrder"
    .parameter "cancellationSignal"

    .prologue
    .line 739
    if-eqz p3, :cond_0

    invoke-virtual {p3}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 740
    :cond_0
    const-string p3, "\'A\' = \'B\'"

    .line 744
    :goto_0
    invoke-virtual/range {p0 .. p6}, Landroid/content/ContentProvider;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Landroid/os/CancellationSignal;)Landroid/database/Cursor;

    move-result-object v0

    return-object v0

    .line 742
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "\'A\' = \'B\' AND ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    goto :goto_0
.end method

.method public final setAppOps(II)V
    .locals 1
    .parameter "readOp"
    .parameter "writeOp"

    .prologue
    .line 657
    iget-boolean v0, p0, Landroid/content/ContentProvider;->mNoPerms:Z

    if-nez v0, :cond_0

    .line 658
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput p1, v0, Landroid/content/ContentProvider$Transport;->mReadOp:I

    .line 659
    iget-object v0, p0, Landroid/content/ContentProvider;->mTransport:Landroid/content/ContentProvider$Transport;

    iput p2, v0, Landroid/content/ContentProvider$Transport;->mWriteOp:I

    .line 661
    :cond_0
    return-void
.end method

.method protected final setPathPermissions([Landroid/content/pm/PathPermission;)V
    .locals 0
    .parameter "permissions"

    .prologue
    .line 641
    iput-object p1, p0, Landroid/content/ContentProvider;->mPathPermissions:[Landroid/content/pm/PathPermission;

    .line 642
    return-void
.end method

.method protected final setReadPermission(Ljava/lang/String;)V
    .locals 0
    .parameter "permission"

    .prologue
    .line 597
    iput-object p1, p0, Landroid/content/ContentProvider;->mReadPermission:Ljava/lang/String;

    .line 598
    return-void
.end method

.method protected final setWritePermission(Ljava/lang/String;)V
    .locals 0
    .parameter "permission"

    .prologue
    .line 619
    iput-object p1, p0, Landroid/content/ContentProvider;->mWritePermission:Ljava/lang/String;

    .line 620
    return-void
.end method

.method public shutdown()V
    .locals 2

    .prologue
    .line 1686
    const-string v0, "ContentProvider"

    const-string v1, "implement ContentProvider shutdown() to make sure all database connections are gracefully shutdown"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 1688
    return-void
.end method

.method public uncanonicalize(Landroid/net/Uri;)Landroid/net/Uri;
    .locals 0
    .parameter "url"

    .prologue
    .line 943
    return-object p1
.end method

.method public abstract update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
.end method
