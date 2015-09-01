.class public Lzte/contact/ZteIccProvider;
.super Landroid/content/ContentProvider;
.source "ZteIccProvider.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/contact/ZteIccProvider$AdnComparator;
    }
.end annotation


# static fields
.field protected static final ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String; = null

.field private static final ADN:I = 0x1

.field private static final DBG:Z = true

.field private static final FDN:I = 0x2

.field private static final SDN:I = 0x3

.field protected static final STR_EMAILS:Ljava/lang/String; = "emails"

.field protected static final STR_NUMBER:Ljava/lang/String; = "number"

.field protected static final STR_NUMBER2:Ljava/lang/String; = "number2"

.field protected static final STR_PIN2:Ljava/lang/String; = "pin2"

.field protected static final STR_SRECID:Ljava/lang/String; = "srecid"

.field protected static final STR_TAG:Ljava/lang/String; = "tag"

.field private static final TAG:Ljava/lang/String; = "RIL_IccProvider"

.field private static final URL_MATCHER:Landroid/content/UriMatcher;


# instance fields
.field private mAdnComparator:Lzte/contact/ZteIccProvider$AdnComparator;

.field protected phone:Lcom/android/internal/telephony/PhoneBase;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 42
    const/4 v0, 0x6

    new-array v0, v0, [Ljava/lang/String;

    const/4 v1, 0x0

    const-string v2, "name"

    aput-object v2, v0, v1

    const-string v1, "number"

    aput-object v1, v0, v3

    const-string v1, "emails"

    aput-object v1, v0, v4

    const-string v1, "number2"

    aput-object v1, v0, v5

    const/4 v1, 0x4

    const-string v2, "srecid"

    aput-object v2, v0, v1

    const/4 v1, 0x5

    const-string v2, "_id"

    aput-object v2, v0, v1

    sput-object v0, Lzte/contact/ZteIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    .line 62
    new-instance v0, Landroid/content/UriMatcher;

    const/4 v1, -0x1

    invoke-direct {v0, v1}, Landroid/content/UriMatcher;-><init>(I)V

    sput-object v0, Lzte/contact/ZteIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    .line 66
    sget-object v0, Lzte/contact/ZteIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "adn"

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 67
    sget-object v0, Lzte/contact/ZteIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "fdn"

    invoke-virtual {v0, v1, v2, v4}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 68
    sget-object v0, Lzte/contact/ZteIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    const-string v1, "icc"

    const-string v2, "sdn"

    invoke-virtual {v0, v1, v2, v5}, Landroid/content/UriMatcher;->addURI(Ljava/lang/String;Ljava/lang/String;I)V

    .line 69
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 34
    invoke-direct {p0}, Landroid/content/ContentProvider;-><init>()V

    .line 80
    new-instance v0, Lzte/contact/ZteIccProvider$AdnComparator;

    invoke-direct {v0}, Lzte/contact/ZteIccProvider$AdnComparator;-><init>()V

    iput-object v0, p0, Lzte/contact/ZteIccProvider;->mAdnComparator:Lzte/contact/ZteIccProvider$AdnComparator;

    return-void
.end method

.method private addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 15
    .parameter "efType"
    .parameter "srecid"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "pin2"

    .prologue
    .line 503
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIccRecordToEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",num2"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 511
    const-string v14, ""

    .line 513
    .local v14, newsrecid:Ljava/lang/String;
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 515
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 519
    const-string v3, ""

    const-string v4, ""

    const-string v5, ""

    const-string v6, ""

    const/4 v2, 0x0

    aget-object v9, p5, v2

    move/from16 v2, p1

    move-object/from16 v7, p3

    move-object/from16 v8, p4

    move-object/from16 v10, p6

    move-object/from16 v11, p2

    move-object/from16 v12, p7

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/IIccPhoneBook;->updatepbRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 530
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "addIccRecordToEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 531
    return-object v14

    .line 526
    :catch_0
    move-exception v13

    .line 527
    .local v13, ex:Ljava/lang/SecurityException;
    invoke-virtual {v13}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 524
    .end local v13           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .parameter "efType"
    .parameter "srecid"
    .parameter "name"
    .parameter "number"
    .parameter "emails"
    .parameter "anr"
    .parameter "pin2"

    .prologue
    .line 567
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", name="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", number="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", emails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p5

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", pin2="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 570
    const/4 v15, 0x0

    .line 571
    .local v15, success:Z
    const-string v14, ""

    .line 573
    .local v14, newsrecid:Ljava/lang/String;
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 575
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 577
    const/4 v2, 0x0

    aget-object v5, p5, v2

    const-string v7, ""

    const-string v8, ""

    const-string v9, ""

    const-string v10, ""

    move/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v11, p2

    move-object/from16 v12, p7

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/IIccPhoneBook;->updatepbRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 587
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    const-string v2, ""

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v15, 0x1

    .line 588
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "deleteIccRecordFromEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 589
    return v15

    .line 584
    :catch_0
    move-exception v13

    .line 585
    .local v13, ex:Ljava/lang/SecurityException;
    invoke-virtual {v13}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 582
    .end local v13           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method

.method private loadFromEf(I)Landroid/database/MatrixCursor;
    .locals 9
    .parameter "efType"

    .prologue
    .line 463
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadFromEf: efType="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 465
    const/4 v1, 0x0

    .line 467
    .local v1, adnRecords:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :try_start_0
    const-string v7, "simphonebook"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v7

    invoke-static {v7}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v5

    .line 469
    .local v5, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v5, :cond_0

    .line 470
    invoke-interface {v5, p1}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsInEf(I)Ljava/util/List;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 478
    .end local v5           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    if-eqz v1, :cond_3

    .line 480
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v0

    .line 482
    .local v0, N:I
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v7, Lzte/contact/ZteIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v7, v0}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;I)V

    .line 483
    .local v2, cursor:Landroid/database/MatrixCursor;
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "adnRecords.size="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 485
    const/4 v4, 0x0

    .local v4, i:I
    :goto_1
    if-ge v4, v0, :cond_4

    .line 486
    invoke-interface {v1, v4}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 487
    .local v6, record:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v7

    if-nez v7, :cond_2

    .line 488
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_1

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "loadFromEf i ="

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 489
    :cond_1
    invoke-virtual {p0, v6, v2, v4}, Lzte/contact/ZteIccProvider;->loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V

    .line 485
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 474
    .end local v0           #N:I
    .end local v2           #cursor:Landroid/database/MatrixCursor;
    .end local v4           #i:I
    .end local v6           #record:Lcom/android/internal/telephony/uicc/AdnRecord;
    :catch_0
    move-exception v3

    .line 475
    .local v3, ex:Ljava/lang/SecurityException;
    invoke-virtual {v3}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {p0, v7}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 496
    .end local v3           #ex:Ljava/lang/SecurityException;
    :cond_3
    const-string v7, "RIL_IccProvider"

    const-string v8, "Cannot load ADN records"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 497
    new-instance v2, Landroid/database/MatrixCursor;

    sget-object v7, Lzte/contact/ZteIccProvider;->ADDRESS_BOOK_COLUMN_NAMES:[Ljava/lang/String;

    invoke-direct {v2, v7}, Landroid/database/MatrixCursor;-><init>([Ljava/lang/String;)V

    :cond_4
    return-object v2

    .line 472
    :catch_1
    move-exception v7

    goto :goto_0
.end method

.method private updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 16
    .parameter "efType"
    .parameter "srecid"
    .parameter "oldName"
    .parameter "oldNumber"
    .parameter "oldEmails"
    .parameter "oldAnr"
    .parameter "newName"
    .parameter "newNumber"
    .parameter "emails"
    .parameter "anr"
    .parameter "pin2"

    .prologue
    .line 537
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEf: efType="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p1

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p3

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldEmails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p5, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", oldAnr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newname="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p7

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newnumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",  newEmails="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x0

    aget-object v3, p9, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ", newAnr="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p10

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 541
    const/4 v15, 0x0

    .line 542
    .local v15, success:Z
    const-string v14, ""

    .line 545
    .local v14, newsrecid:Ljava/lang/String;
    :try_start_0
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v1

    .line 547
    .local v1, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v1, :cond_0

    .line 549
    const/4 v2, 0x0

    aget-object v5, p5, v2

    const/4 v2, 0x0

    aget-object v9, p9, v2

    move/from16 v2, p1

    move-object/from16 v3, p3

    move-object/from16 v4, p4

    move-object/from16 v6, p6

    move-object/from16 v7, p7

    move-object/from16 v8, p8

    move-object/from16 v10, p10

    move-object/from16 v11, p2

    move-object/from16 v12, p11

    invoke-interface/range {v1 .. v12}, Lcom/android/internal/telephony/IIccPhoneBook;->updatepbRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v14

    .line 559
    .end local v1           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    :cond_0
    :goto_0
    const-string v2, ""

    invoke-virtual {v14, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_1

    const/4 v15, 0x1

    .line 560
    :cond_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "updateIccRecordInEf: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v15}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 561
    return v15

    .line 556
    :catch_0
    move-exception v13

    .line 557
    .local v13, ex:Ljava/lang/SecurityException;
    invoke-virtual {v13}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 554
    .end local v13           #ex:Ljava/lang/SecurityException;
    :catch_1
    move-exception v2

    goto :goto_0
.end method


# virtual methods
.method public declared-synchronized delete(Landroid/net/Uri;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 25
    .parameter "url"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 276
    monitor-enter p0

    :try_start_0
    const-string v2, "delete"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 278
    sget-object v2, Lzte/contact/ZteIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v14

    .line 279
    .local v14, match:I
    packed-switch v14, :pswitch_data_0

    .line 289
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    const-string v24, "Cannot insert into URL: "

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    move-object/from16 v0, v23

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 276
    .end local v14           #match:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 281
    .restart local v14       #match:I
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 294
    .local v3, efType:I
    :goto_0
    :try_start_1
    const-string v5, ""

    .line 295
    .local v5, tag:Ljava/lang/String;
    const-string v6, ""

    .line 296
    .local v6, number:Ljava/lang/String;
    const/4 v7, 0x0

    .line 298
    .local v7, emails:[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    .line 299
    const/4 v2, 0x0

    const-string v23, ""

    aput-object v23, v7, v2

    .line 300
    const-string v8, ""

    .line 301
    .local v8, anr:Ljava/lang/String;
    const-string v4, ""

    .line 303
    .local v4, srecid:Ljava/lang/String;
    const/4 v9, 0x0

    .line 305
    .local v9, pin2:Ljava/lang/String;
    const-string v2, "AND"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v21

    .line 306
    .local v21, tokens:[Ljava/lang/String;
    move-object/from16 v0, v21

    array-length v15, v0

    .line 308
    .local v15, n:I
    :cond_0
    :goto_1
    add-int/lit8 v15, v15, -0x1

    if-ltz v15, :cond_13

    .line 309
    aget-object v17, v21, v15

    .line 310
    .local v17, param:Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "parsing \'"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v17

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v23, "\'"

    move-object/from16 v0, v23

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 312
    const/4 v13, 0x0

    .line 313
    .local v13, mPair:I
    const/4 v2, 0x2

    new-array v0, v2, [Ljava/lang/String;

    move-object/from16 v16, v0

    .line 314
    .local v16, pair:[Ljava/lang/String;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    .line 315
    .local v18, param1:Ljava/lang/StringBuilder;
    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    .line 316
    .local v19, param2:Ljava/lang/StringBuilder;
    const/4 v11, 0x0

    .local v11, i:I
    :goto_2
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v11, v2, :cond_1

    .line 317
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v2

    const/16 v23, 0x3d

    move/from16 v0, v23

    if-ne v2, v0, :cond_2

    .line 318
    move v13, v11

    .line 322
    :cond_1
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v13, :cond_3

    .line 323
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 324
    .local v10, c:C
    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 322
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 285
    .end local v3           #efType:I
    .end local v4           #srecid:Ljava/lang/String;
    .end local v5           #tag:Ljava/lang/String;
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #emails:[Ljava/lang/String;
    .end local v8           #anr:Ljava/lang/String;
    .end local v9           #pin2:Ljava/lang/String;
    .end local v10           #c:C
    .end local v11           #i:I
    .end local v13           #mPair:I
    .end local v15           #n:I
    .end local v16           #pair:[Ljava/lang/String;
    .end local v17           #param:Ljava/lang/String;
    .end local v18           #param1:Ljava/lang/StringBuilder;
    .end local v19           #param2:Ljava/lang/StringBuilder;
    .end local v21           #tokens:[Ljava/lang/String;
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 286
    .restart local v3       #efType:I
    goto :goto_0

    .line 316
    .restart local v4       #srecid:Ljava/lang/String;
    .restart local v5       #tag:Ljava/lang/String;
    .restart local v6       #number:Ljava/lang/String;
    .restart local v7       #emails:[Ljava/lang/String;
    .restart local v8       #anr:Ljava/lang/String;
    .restart local v9       #pin2:Ljava/lang/String;
    .restart local v11       #i:I
    .restart local v13       #mPair:I
    .restart local v15       #n:I
    .restart local v16       #pair:[Ljava/lang/String;
    .restart local v17       #param:Ljava/lang/String;
    .restart local v18       #param1:Ljava/lang/StringBuilder;
    .restart local v19       #param2:Ljava/lang/StringBuilder;
    .restart local v21       #tokens:[Ljava/lang/String;
    :cond_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 326
    :cond_3
    const/4 v2, 0x0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v16, v2

    .line 327
    add-int/lit8 v11, v13, 0x1

    :goto_4
    invoke-virtual/range {v17 .. v17}, Ljava/lang/String;->length()I

    move-result v2

    if-ge v11, v2, :cond_4

    .line 328
    move-object/from16 v0, v17

    invoke-virtual {v0, v11}, Ljava/lang/String;->charAt(I)C

    move-result v10

    .line 329
    .restart local v10       #c:C
    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 327
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 331
    .end local v10           #c:C
    :cond_4
    const/4 v2, 0x1

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    aput-object v23, v16, v2

    .line 333
    const/4 v2, 0x0

    aget-object v2, v16, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v12

    .line 334
    .local v12, key:Ljava/lang/String;
    const-string v22, ""

    .line 335
    .local v22, val:Ljava/lang/String;
    move-object/from16 v0, v16

    array-length v2, v0

    const/16 v23, 0x2

    move/from16 v0, v23

    if-ne v2, v0, :cond_5

    .line 336
    const/4 v2, 0x2

    if-ne v14, v2, :cond_6

    .line 337
    const/4 v2, 0x1

    aget-object v2, v16, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    .line 346
    :cond_5
    :goto_5
    const-string v2, "tag"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_9

    .line 347
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 348
    const/4 v2, 0x2

    if-ne v14, v2, :cond_8

    .line 349
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lzte/contact/ZteIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_1

    .line 339
    :cond_6
    const/4 v2, 0x1

    if-ne v14, v2, :cond_7

    .line 340
    const/4 v2, 0x1

    aget-object v22, v16, v2

    goto :goto_5

    .line 343
    :cond_7
    const/4 v2, 0x1

    aget-object v2, v16, v2

    invoke-virtual {v2}, Ljava/lang/String;->trim()Ljava/lang/String;

    move-result-object v22

    goto :goto_5

    .line 351
    :cond_8
    move-object/from16 v5, v22

    goto/16 :goto_1

    .line 352
    :cond_9
    const-string v2, "number"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_b

    .line 353
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 354
    const/4 v2, 0x2

    if-ne v14, v2, :cond_a

    .line 355
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lzte/contact/ZteIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    goto/16 :goto_1

    .line 357
    :cond_a
    move-object/from16 v6, v22

    goto/16 :goto_1

    .line 358
    :cond_b
    const-string v2, "emails"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_d

    .line 360
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 361
    const/4 v2, 0x2

    if-ne v14, v2, :cond_c

    .line 362
    const/4 v2, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lzte/contact/ZteIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v23

    aput-object v23, v7, v2

    goto/16 :goto_1

    .line 364
    :cond_c
    const/4 v2, 0x0

    aput-object v22, v7, v2

    goto/16 :goto_1

    .line 365
    :cond_d
    const-string v2, "number2"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_f

    .line 366
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 367
    const/4 v2, 0x2

    if-ne v14, v2, :cond_e

    .line 368
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lzte/contact/ZteIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    goto/16 :goto_1

    .line 370
    :cond_e
    move-object/from16 v8, v22

    goto/16 :goto_1

    .line 371
    :cond_f
    const-string v2, "srecid"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_11

    .line 372
    const-string v2, ""

    move-object/from16 v0, v22

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 373
    const/4 v2, 0x2

    if-ne v14, v2, :cond_10

    .line 374
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lzte/contact/ZteIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    goto/16 :goto_1

    .line 376
    :cond_10
    move-object/from16 v4, v22

    goto/16 :goto_1

    .line 377
    :cond_11
    const-string v2, "pin2"

    invoke-virtual {v2, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 378
    const/4 v2, 0x2

    if-ne v14, v2, :cond_12

    .line 379
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Lzte/contact/ZteIccProvider;->normalizeValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    goto/16 :goto_1

    .line 381
    :cond_12
    move-object/from16 v9, v22

    goto/16 :goto_1

    .line 391
    .end local v11           #i:I
    .end local v12           #key:Ljava/lang/String;
    .end local v13           #mPair:I
    .end local v16           #pair:[Ljava/lang/String;
    .end local v17           #param:Ljava/lang/String;
    .end local v18           #param1:Ljava/lang/StringBuilder;
    .end local v19           #param2:Ljava/lang/StringBuilder;
    .end local v22           #val:Ljava/lang/String;
    :cond_13
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_14

    invoke-static {v9}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_14

    .line 392
    const/4 v2, 0x0

    .line 402
    :goto_6
    monitor-exit p0

    return v2

    :cond_14
    move-object/from16 v2, p0

    .line 396
    :try_start_2
    invoke-direct/range {v2 .. v9}, Lzte/contact/ZteIccProvider;->deleteIccRecordFromEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v20

    .line 397
    .local v20, success:Z
    if-nez v20, :cond_15

    .line 398
    const/4 v2, 0x0

    goto :goto_6

    .line 401
    :cond_15
    invoke-virtual/range {p0 .. p0}, Lzte/contact/ZteIccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v23, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v23

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 402
    const/4 v2, 0x1

    goto :goto_6

    .line 279
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getType(Landroid/net/Uri;)Ljava/lang/String;
    .locals 3
    .parameter "url"

    .prologue
    .line 110
    sget-object v0, Lzte/contact/ZteIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 117
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 114
    :pswitch_0
    const-string v0, "vnd.android.cursor.dir/sim-contact"

    return-object v0

    .line 110
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public declared-synchronized insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    .locals 22
    .parameter "url"
    .parameter "initialValues"

    .prologue
    .line 125
    monitor-enter p0

    const/4 v9, 0x0

    .line 127
    .local v9, pin2:Ljava/lang/String;
    :try_start_0
    const-string v2, "insert"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 129
    sget-object v2, Lzte/contact/ZteIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 130
    .local v15, match:I
    packed-switch v15, :pswitch_data_0

    .line 144
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "Cannot insert into URL: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 125
    .end local v15           #match:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 133
    .restart local v15       #match:I
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 134
    .local v3, efType:I
    :try_start_1
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 148
    :goto_0
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 149
    .local v5, tag:Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 151
    .local v6, number:Ljava/lang/String;
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 152
    .local v11, email:Ljava/lang/String;
    const-string v2, "number2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 153
    .local v8, anr:Ljava/lang/String;
    const-string v2, "srecid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, srecid:Ljava/lang/String;
    const/4 v7, 0x0

    .line 155
    .local v7, emails:[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    .line 156
    const/4 v2, 0x0

    aput-object v11, v7, v2

    move-object/from16 v2, p0

    .line 159
    invoke-direct/range {v2 .. v9}, Lzte/contact/ZteIccProvider;->addIccRecordToEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 160
    .local v16, newrsrecid:Ljava/lang/String;
    if-nez v16, :cond_0

    const-string v16, ""

    .line 161
    :cond_0
    const-string v2, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v2

    if-eqz v2, :cond_5

    .line 164
    :try_start_2
    const-string v2, "simphonebook"

    invoke-static {v2}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v2

    invoke-static {v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v14

    .line 166
    .local v14, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-eqz v14, :cond_4

    .line 170
    const/4 v2, 0x3

    new-array v13, v2, [I

    .line 171
    .local v13, ext1recordSize:[I
    const/4 v2, 0x3

    new-array v0, v2, [I

    move-object/from16 v17, v0

    .line 172
    .local v17, recordSize:[I
    const/16 v2, 0x6f3a

    if-ne v3, v2, :cond_3

    .line 173
    const/16 v2, 0x6f3a

    invoke-interface {v14, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v17

    .line 174
    if-eqz v17, :cond_3

    .line 175
    const/16 v2, 0x6f3a

    invoke-interface {v14, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getSimSize(I)I

    move-result v2

    const/16 v20, 0x2

    aget v20, v17, v20

    move/from16 v0, v20

    if-lt v2, v0, :cond_1

    const/4 v2, 0x2

    aget v2, v17, v2

    if-nez v2, :cond_2

    :cond_1
    const/16 v2, 0x6f3a

    invoke-interface {v14, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimAdnRecordsSize(I)I

    move-result v2

    const/16 v20, 0x6f3a

    move/from16 v0, v20

    invoke-interface {v14, v0}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimSize(I)I

    move-result v20

    move/from16 v0, v20

    if-lt v2, v0, :cond_3

    const/16 v2, 0x6f3a

    invoke-interface {v14, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getUsimSize(I)I

    move-result v2

    if-eqz v2, :cond_3

    .line 178
    :cond_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/Full/"

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 179
    .local v10, buf:Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_2 .. :try_end_2} :catch_0

    move-result-object v18

    .local v18, resultUri:Landroid/net/Uri;
    move-object/from16 v19, v18

    .line 254
    .end local v13           #ext1recordSize:[I
    .end local v14           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v17           #recordSize:[I
    .end local v18           #resultUri:Landroid/net/Uri;
    .local v19, resultUri:Landroid/net/Uri;
    :goto_1
    monitor-exit p0

    return-object v19

    .line 139
    .end local v3           #efType:I
    .end local v4           #srecid:Ljava/lang/String;
    .end local v5           #tag:Ljava/lang/String;
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #emails:[Ljava/lang/String;
    .end local v8           #anr:Ljava/lang/String;
    .end local v10           #buf:Ljava/lang/StringBuilder;
    .end local v11           #email:Ljava/lang/String;
    .end local v16           #newrsrecid:Ljava/lang/String;
    .end local v19           #resultUri:Landroid/net/Uri;
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 140
    .restart local v3       #efType:I
    :try_start_3
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    move-result-object v9

    .line 141
    goto/16 :goto_0

    .line 198
    .restart local v4       #srecid:Ljava/lang/String;
    .restart local v5       #tag:Ljava/lang/String;
    .restart local v6       #number:Ljava/lang/String;
    .restart local v7       #emails:[Ljava/lang/String;
    .restart local v8       #anr:Ljava/lang/String;
    .restart local v11       #email:Ljava/lang/String;
    .restart local v13       #ext1recordSize:[I
    .restart local v14       #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .restart local v16       #newrsrecid:Ljava/lang/String;
    .restart local v17       #recordSize:[I
    :cond_3
    const/16 v2, 0x6f3b

    if-ne v3, v2, :cond_4

    .line 199
    const/16 v2, 0x6f3b

    :try_start_4
    invoke-interface {v14, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v17

    .line 200
    if-eqz v17, :cond_4

    .line 201
    const/16 v2, 0x6f3b

    invoke-interface {v14, v2}, Lcom/android/internal/telephony/IIccPhoneBook;->getSimSize(I)I

    move-result v2

    const/16 v20, 0x2

    aget v20, v17, v20

    move/from16 v0, v20

    if-lt v2, v0, :cond_4

    .line 202
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/Full/"

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 203
    .restart local v10       #buf:Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Landroid/os/RemoteException; {:try_start_4 .. :try_end_4} :catch_1
    .catch Ljava/lang/SecurityException; {:try_start_4 .. :try_end_4} :catch_0

    move-result-object v18

    .restart local v18       #resultUri:Landroid/net/Uri;
    move-object/from16 v19, v18

    .line 204
    .end local v18           #resultUri:Landroid/net/Uri;
    .restart local v19       #resultUri:Landroid/net/Uri;
    goto :goto_1

    .line 223
    .end local v10           #buf:Ljava/lang/StringBuilder;
    .end local v13           #ext1recordSize:[I
    .end local v14           #iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    .end local v17           #recordSize:[I
    .end local v19           #resultUri:Landroid/net/Uri;
    :catch_0
    move-exception v12

    .line 224
    .local v12, ex:Ljava/lang/SecurityException;
    :try_start_5
    invoke-virtual {v12}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 226
    .end local v12           #ex:Ljava/lang/SecurityException;
    :cond_4
    :goto_2
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/Error/"

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 227
    .restart local v10       #buf:Ljava/lang/StringBuilder;
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .restart local v18       #resultUri:Landroid/net/Uri;
    move-object/from16 v19, v18

    .line 228
    .end local v18           #resultUri:Landroid/net/Uri;
    .restart local v19       #resultUri:Landroid/net/Uri;
    goto :goto_1

    .line 231
    .end local v10           #buf:Ljava/lang/StringBuilder;
    .end local v19           #resultUri:Landroid/net/Uri;
    :cond_5
    new-instance v10, Ljava/lang/StringBuilder;

    const-string v2, "content://icc/"

    invoke-direct {v10, v2}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 232
    .restart local v10       #buf:Ljava/lang/StringBuilder;
    packed-switch v15, :pswitch_data_1

    .line 243
    :goto_3
    const/4 v2, 0x0

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 245
    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v2}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v18

    .line 247
    .restart local v18       #resultUri:Landroid/net/Uri;
    invoke-virtual/range {p0 .. p0}, Lzte/contact/ZteIccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v20, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v20

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V

    move-object/from16 v19, v18

    .line 254
    .end local v18           #resultUri:Landroid/net/Uri;
    .restart local v19       #resultUri:Landroid/net/Uri;
    goto :goto_1

    .line 234
    .end local v19           #resultUri:Landroid/net/Uri;
    :pswitch_2
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "adn/"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v20, "/"

    move-object/from16 v0, v20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    goto :goto_3

    .line 238
    :pswitch_3
    const-string v2, "fdn/"

    invoke-virtual {v10, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_3

    .line 221
    .end local v10           #buf:Ljava/lang/StringBuilder;
    :catch_1
    move-exception v2

    goto :goto_2

    .line 130
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch

    .line 232
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method protected loadRecord(Lcom/android/internal/telephony/uicc/AdnRecord;Landroid/database/MatrixCursor;I)V
    .locals 13
    .parameter "record"
    .parameter "cursor"
    .parameter "id"

    .prologue
    .line 599
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v11

    if-nez v11, :cond_1

    .line 600
    const/4 v11, 0x6

    new-array v3, v11, [Ljava/lang/Object;

    .line 601
    .local v3, contact:[Ljava/lang/Object;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 602
    .local v0, alphaTag:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v9

    .line 604
    .local v9, number:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v1

    .line 605
    .local v1, anr:Ljava/lang/String;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecid()Ljava/lang/String;

    move-result-object v10

    .line 606
    .local v10, srecid:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadRecord: srecid = "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 608
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "loadRecord: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ", "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, ","

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 609
    const/4 v11, 0x0

    aput-object v0, v3, v11

    .line 610
    const/4 v11, 0x1

    aput-object v9, v3, v11

    .line 612
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v6

    .line 613
    .local v6, emails:[Ljava/lang/String;
    if-eqz v6, :cond_2

    .line 614
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    .line 615
    .local v5, emailString:Ljava/lang/StringBuilder;
    move-object v2, v6

    .local v2, arr$:[Ljava/lang/String;
    array-length v8, v2

    .local v8, len$:I
    const/4 v7, 0x0

    .local v7, i$:I
    :goto_0
    if-ge v7, v8, :cond_0

    aget-object v4, v2, v7

    .line 616
    .local v4, email:Ljava/lang/String;
    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Adding email:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p0, v11}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 617
    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 618
    const-string v11, ","

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 615
    add-int/lit8 v7, v7, 0x1

    goto :goto_0

    .line 620
    .end local v4           #email:Ljava/lang/String;
    :cond_0
    const/4 v11, 0x2

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    aput-object v12, v3, v11

    .line 626
    .end local v2           #arr$:[Ljava/lang/String;
    .end local v5           #emailString:Ljava/lang/StringBuilder;
    .end local v7           #i$:I
    .end local v8           #len$:I
    :goto_1
    const/4 v11, 0x3

    aput-object v1, v3, v11

    .line 627
    const/4 v11, 0x4

    aput-object v10, v3, v11

    .line 628
    const/4 v11, 0x5

    invoke-static/range {p3 .. p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    aput-object v12, v3, v11

    .line 630
    invoke-virtual {p2, v3}, Landroid/database/MatrixCursor;->addRow([Ljava/lang/Object;)V

    .line 632
    .end local v0           #alphaTag:Ljava/lang/String;
    .end local v1           #anr:Ljava/lang/String;
    .end local v3           #contact:[Ljava/lang/Object;
    .end local v6           #emails:[Ljava/lang/String;
    .end local v9           #number:Ljava/lang/String;
    .end local v10           #srecid:Ljava/lang/String;
    :cond_1
    return-void

    .line 623
    .restart local v0       #alphaTag:Ljava/lang/String;
    .restart local v1       #anr:Ljava/lang/String;
    .restart local v3       #contact:[Ljava/lang/Object;
    .restart local v6       #emails:[Ljava/lang/String;
    .restart local v9       #number:Ljava/lang/String;
    .restart local v10       #srecid:Ljava/lang/String;
    :cond_2
    const/4 v11, 0x2

    const/4 v12, 0x0

    aput-object v12, v3, v11

    goto :goto_1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 635
    const-string v0, "RIL_IccProvider"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[IccProvider] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 636
    return-void
.end method

.method protected normalizeValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .parameter "inVal"

    .prologue
    const/16 v3, 0x27

    .line 258
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 259
    .local v0, len:I
    if-nez v0, :cond_0

    .line 268
    .end local p1
    :goto_0
    return-object p1

    .line 262
    .restart local p1
    :cond_0
    move-object v1, p1

    .line 264
    .local v1, retVal:Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    add-int/lit8 v2, v0, -0x1

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v2

    if-ne v2, v3, :cond_1

    .line 265
    const/4 v2, 0x1

    add-int/lit8 v3, v0, -0x1

    invoke-virtual {p1, v2, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    :cond_1
    move-object p1, v1

    .line 268
    goto :goto_0
.end method

.method public onCreate()Z
    .locals 1

    .prologue
    .line 85
    const/4 v0, 0x1

    return v0
.end method

.method public declared-synchronized query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;
    .locals 3
    .parameter "url"
    .parameter "projection"
    .parameter "selection"
    .parameter "selectionArgs"
    .parameter "sort"

    .prologue
    .line 93
    monitor-enter p0

    :try_start_0
    sget-object v0, Lzte/contact/ZteIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    invoke-virtual {v0, p1}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 104
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Unknown URL "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 93
    :catchall_0
    move-exception v0

    monitor-exit p0

    throw v0

    .line 95
    :pswitch_0
    const/16 v0, 0x6f3a

    :try_start_1
    invoke-direct {p0, v0}, Lzte/contact/ZteIccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result-object v0

    .line 101
    :goto_0
    monitor-exit p0

    return-object v0

    .line 98
    :pswitch_1
    const/16 v0, 0x6f3b

    :try_start_2
    invoke-direct {p0, v0}, Lzte/contact/ZteIccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;

    move-result-object v0

    goto :goto_0

    .line 101
    :pswitch_2
    const/16 v0, 0x6f49

    invoke-direct {p0, v0}, Lzte/contact/ZteIccProvider;->loadFromEf(I)Landroid/database/MatrixCursor;
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    move-result-object v0

    goto :goto_0

    .line 93
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public declared-synchronized update(Landroid/net/Uri;Landroid/content/ContentValues;Ljava/lang/String;[Ljava/lang/String;)I
    .locals 20
    .parameter "url"
    .parameter "values"
    .parameter "where"
    .parameter "whereArgs"

    .prologue
    .line 408
    monitor-enter p0

    const/4 v13, 0x0

    .line 411
    .local v13, pin2:Ljava/lang/String;
    :try_start_0
    const-string v2, "update"

    move-object/from16 v0, p0

    invoke-virtual {v0, v2}, Lzte/contact/ZteIccProvider;->log(Ljava/lang/String;)V

    .line 413
    sget-object v2, Lzte/contact/ZteIccProvider;->URL_MATCHER:Landroid/content/UriMatcher;

    move-object/from16 v0, p1

    invoke-virtual {v2, v0}, Landroid/content/UriMatcher;->match(Landroid/net/Uri;)I

    move-result v15

    .line 414
    .local v15, match:I
    packed-switch v15, :pswitch_data_0

    .line 428
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "Cannot insert into URL: "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-direct {v2, v0}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 408
    .end local v15           #match:I
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2

    .line 417
    .restart local v15       #match:I
    :pswitch_0
    const/16 v3, 0x6f3a

    .line 418
    .local v3, efType:I
    :try_start_1
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 432
    :goto_0
    const-string v2, "tag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 433
    .local v5, tag:Ljava/lang/String;
    const-string v2, "number"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v6

    .line 434
    .local v6, number:Ljava/lang/String;
    const-string v2, "newTag"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    .line 435
    .local v9, newTag:Ljava/lang/String;
    const-string v2, "newNumber"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 437
    .local v10, newNumber:Ljava/lang/String;
    const-string v2, "emails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v14

    .line 438
    .local v14, email:Ljava/lang/String;
    const-string v2, "number2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    .line 439
    .local v8, anr:Ljava/lang/String;
    const-string v2, "newEmails"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v16

    .line 440
    .local v16, newEmail:Ljava/lang/String;
    const-string v2, "newNumber2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v12

    .line 441
    .local v12, newAnr:Ljava/lang/String;
    const-string v2, "srecid"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 442
    .local v4, srecid:Ljava/lang/String;
    const/4 v7, 0x0

    .line 443
    .local v7, oldEmails:[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v7, v2, [Ljava/lang/String;

    .line 444
    const/4 v2, 0x0

    aput-object v14, v7, v2

    .line 445
    const/4 v11, 0x0

    .line 446
    .local v11, newEmails:[Ljava/lang/String;
    const/4 v2, 0x1

    new-array v11, v2, [Ljava/lang/String;

    .line 447
    const/4 v2, 0x0

    aput-object v16, v11, v2

    move-object/from16 v2, p0

    .line 450
    invoke-direct/range {v2 .. v13}, Lzte/contact/ZteIccProvider;->updateIccRecordInEf(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v17

    .line 454
    .local v17, success:Z
    if-nez v17, :cond_0

    .line 455
    const/4 v2, 0x0

    .line 459
    :goto_1
    monitor-exit p0

    return v2

    .line 423
    .end local v3           #efType:I
    .end local v4           #srecid:Ljava/lang/String;
    .end local v5           #tag:Ljava/lang/String;
    .end local v6           #number:Ljava/lang/String;
    .end local v7           #oldEmails:[Ljava/lang/String;
    .end local v8           #anr:Ljava/lang/String;
    .end local v9           #newTag:Ljava/lang/String;
    .end local v10           #newNumber:Ljava/lang/String;
    .end local v11           #newEmails:[Ljava/lang/String;
    .end local v12           #newAnr:Ljava/lang/String;
    .end local v14           #email:Ljava/lang/String;
    .end local v16           #newEmail:Ljava/lang/String;
    .end local v17           #success:Z
    :pswitch_1
    const/16 v3, 0x6f3b

    .line 424
    .restart local v3       #efType:I
    :try_start_2
    const-string v2, "pin2"

    move-object/from16 v0, p2

    invoke-virtual {v0, v2}, Landroid/content/ContentValues;->getAsString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 425
    goto :goto_0

    .line 458
    .restart local v4       #srecid:Ljava/lang/String;
    .restart local v5       #tag:Ljava/lang/String;
    .restart local v6       #number:Ljava/lang/String;
    .restart local v7       #oldEmails:[Ljava/lang/String;
    .restart local v8       #anr:Ljava/lang/String;
    .restart local v9       #newTag:Ljava/lang/String;
    .restart local v10       #newNumber:Ljava/lang/String;
    .restart local v11       #newEmails:[Ljava/lang/String;
    .restart local v12       #newAnr:Ljava/lang/String;
    .restart local v14       #email:Ljava/lang/String;
    .restart local v16       #newEmail:Ljava/lang/String;
    .restart local v17       #success:Z
    :cond_0
    invoke-virtual/range {p0 .. p0}, Lzte/contact/ZteIccProvider;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, v18

    invoke-virtual {v2, v0, v1}, Landroid/content/ContentResolver;->notifyChange(Landroid/net/Uri;Landroid/database/ContentObserver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 459
    const/4 v2, 0x1

    goto :goto_1

    .line 414
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method
