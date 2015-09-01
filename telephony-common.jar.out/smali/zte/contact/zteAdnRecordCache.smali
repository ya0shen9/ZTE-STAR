.class public final Lzte/contact/zteAdnRecordCache;
.super Landroid/os/Handler;
.source "zteAdnRecordCache.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# static fields
.field static final EVENT_LOAD_ALL_ADN_LIKE_DONE:I = 0x1

.field static final EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE:I = 0x7

.field static final EVENT_UPDATE_ADN_DONE:I = 0x2

.field static final EVENT_UPDATE_ANR_DONE:I = 0x5

.field static final EVENT_UPDATE_EMAIL_DONE:I = 0x3

.field static final EVENT_UPDATE_IAP_DONE:I = 0x6

.field static final LOG_TAG:Ljava/lang/String; = "RIL_zteAdnRecordCache"


# instance fields
.field public final adnExt1_Index:I

.field public adnLikeFiles:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;>;"
        }
    .end annotation
.end field

.field adnLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field public final adn_Index:I

.field public final anrExt1_Index:I

.field anrLikeWaiters:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;>;"
        }
    .end annotation
.end field

.field public final anr_Index:I

.field public final email_Index:I

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mLock:Ljava/lang/Object;

.field public mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

.field pbrIndex:I

.field public final pbr_Index:I

.field protected recordSize:[I

.field userWriteResponse:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Message;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 2
    .parameter "fh"

    .prologue
    const/4 v1, 0x0

    .line 79
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 34
    iput v1, p0, Lzte/contact/zteAdnRecordCache;->pbrIndex:I

    .line 39
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lzte/contact/zteAdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    .line 43
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lzte/contact/zteAdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    .line 46
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lzte/contact/zteAdnRecordCache;->anrLikeWaiters:Landroid/util/SparseArray;

    .line 51
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0}, Landroid/util/SparseArray;-><init>()V

    iput-object v0, p0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    .line 64
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lzte/contact/zteAdnRecordCache;->mLock:Ljava/lang/Object;

    .line 67
    iput v1, p0, Lzte/contact/zteAdnRecordCache;->adn_Index:I

    .line 68
    const/4 v0, 0x1

    iput v0, p0, Lzte/contact/zteAdnRecordCache;->adnExt1_Index:I

    .line 69
    const/4 v0, 0x2

    iput v0, p0, Lzte/contact/zteAdnRecordCache;->anrExt1_Index:I

    .line 70
    const/4 v0, 0x3

    iput v0, p0, Lzte/contact/zteAdnRecordCache;->email_Index:I

    .line 71
    const/4 v0, 0x4

    iput v0, p0, Lzte/contact/zteAdnRecordCache;->anr_Index:I

    .line 72
    const/4 v0, 0x5

    iput v0, p0, Lzte/contact/zteAdnRecordCache;->pbr_Index:I

    .line 80
    iput-object p1, p0, Lzte/contact/zteAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 81
    new-instance v0, Lzte/contact/zteUsimPhoneBookManager;

    iget-object v1, p0, Lzte/contact/zteAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1, p0}, Lzte/contact/zteUsimPhoneBookManager;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lzte/contact/zteAdnRecordCache;)V

    iput-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    .line 82
    return-void
.end method

.method private clearUserWriters()V
    .locals 4

    .prologue
    .line 109
    iget-object v2, p0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->size()I

    move-result v1

    .line 110
    .local v1, size:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 111
    iget-object v2, p0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2, v0}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    const-string v3, "AdnCace reset"

    invoke-direct {p0, v2, v3}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 110
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 113
    :cond_0
    iget-object v2, p0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v2}, Landroid/util/SparseArray;->clear()V

    .line 114
    return-void
.end method

.method private clearWaiters()V
    .locals 7

    .prologue
    const/4 v6, 0x0

    .line 99
    iget-object v4, p0, Lzte/contact/zteAdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->size()I

    move-result v2

    .line 100
    .local v2, size:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 101
    iget-object v4, p0, Lzte/contact/zteAdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4, v1}, Landroid/util/SparseArray;->valueAt(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    .line 102
    .local v3, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    new-instance v0, Landroid/os/AsyncResult;

    new-instance v4, Ljava/lang/RuntimeException;

    const-string v5, "AdnCache reset"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    invoke-direct {v0, v6, v6, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 103
    .local v0, ar:Landroid/os/AsyncResult;
    invoke-direct {p0, v3, v0}, Lzte/contact/zteAdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    .line 100
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 105
    .end local v0           #ar:Landroid/os/AsyncResult;
    .end local v3           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :cond_0
    iget-object v4, p0, Lzte/contact/zteAdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 106
    return-void
.end method

.method private getEfFileRecordSizeAndWait(I)V
    .locals 6
    .parameter "fileId"

    .prologue
    .line 1089
    iget-object v3, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v3}, Lzte/contact/zteUsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v2

    .line 1090
    .local v2, recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const/4 v1, 0x0

    .line 1092
    .local v1, recordSize:[I
    const-string v3, "RIL_zteAdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " contact framework , in getEfFileRecordSizeAndWait, fileId = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    if-eqz v2, :cond_0

    if-nez p1, :cond_1

    .line 1095
    :cond_0
    const-string v3, "RIL_zteAdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " contact framework , in getEfFileRecordSizeAndWait, error, recordSizeMap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1113
    :goto_0
    return-void

    .line 1099
    :cond_1
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #recordSize:[I
    check-cast v1, [I

    .line 1100
    .restart local v1       #recordSize:[I
    if-eqz v1, :cond_2

    .line 1101
    const-string v3, "RIL_zteAdnRecordCache"

    const-string v4, " contact framework , in getEfFileRecordSizeAndWait, recordSize != null,means that the recordSize of this file has been loaded before"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1104
    :cond_2
    const-string v3, "RIL_zteAdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " contact framework ,in getEfFileRecordSizeAndWait,fileId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ",will mFh.getEFLinearRecordSize,EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1105
    iget-object v3, p0, Lzte/contact/zteAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v4, 0x7

    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Lzte/contact/zteAdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, p1, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 1107
    :try_start_0
    const-string v3, "RIL_zteAdnRecordCache"

    const-string v4, " contact framework ,in getEfFileRecordSizeAndWait,will mLock.wait()"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1108
    iget-object v3, p0, Lzte/contact/zteAdnRecordCache;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1109
    :catch_0
    move-exception v0

    .line 1110
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "RIL_zteAdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Interrupted Exception in getEfFileRecordSizeAndWait,fileId="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getpbrNumbers()I
    .locals 1

    .prologue
    .line 583
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v0}, Lzte/contact/zteUsimPhoneBookManager;->getpbrNumbers()I

    move-result v0

    return v0
.end method

.method private isANRSpaceFullInCurPhonebook(I)Z
    .locals 9
    .parameter "pbrIndex"

    .prologue
    .line 1614
    const/4 v5, 0x1

    .line 1615
    .local v5, isFull:Z
    const-string v6, "RIL_zteAdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isANRSpaceFullInCurPhonebook mUsimPhoneBookManager.isSupportANR() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v8, p1}, Lzte/contact/zteUsimPhoneBookManager;->isSupportANR(I)Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1616
    const-string v6, "RIL_zteAdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isANRSpaceFullInCurPhonebook mUsimPhoneBookManager.isANRTYP2() = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v8, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v8}, Lzte/contact/zteUsimPhoneBookManager;->isANRTYP2()Z

    move-result v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1617
    iget-object v6, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v6}, Lzte/contact/zteUsimPhoneBookManager;->isANRTYP2()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1619
    const/4 v2, 0x0

    .line 1620
    .local v2, anrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/4 v3, 0x0

    .line 1622
    .local v3, anrListSize:I
    iget-object v6, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v6, p1}, Lzte/contact/zteUsimPhoneBookManager;->getanrlist(I)Ljava/util/ArrayList;

    move-result-object v2

    .line 1623
    if-eqz v2, :cond_0

    .line 1625
    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v3

    .line 1627
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v3, :cond_2

    .line 1629
    invoke-virtual {v2, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1630
    .local v1, anrAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrIndex()I

    move-result v0

    .line 1631
    .local v0, adnAnrRecNum:I
    const/16 v6, 0xff

    if-eq v0, v6, :cond_1

    if-gtz v0, :cond_3

    .line 1633
    :cond_1
    const/4 v5, 0x0

    .line 1643
    .end local v0           #adnAnrRecNum:I
    .end local v1           #anrAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v2           #anrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v3           #anrListSize:I
    .end local v4           #i:I
    :cond_2
    :goto_1
    const-string v6, "RIL_zteAdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isANRSpaceFullInCurPhonebook isFull = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1644
    return v5

    .line 1627
    .restart local v0       #adnAnrRecNum:I
    .restart local v1       #anrAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v2       #anrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .restart local v3       #anrListSize:I
    .restart local v4       #i:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1640
    .end local v0           #adnAnrRecNum:I
    .end local v1           #anrAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v2           #anrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v3           #anrListSize:I
    .end local v4           #i:I
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private isAdnFileFull(Ljava/util/ArrayList;)Z
    .locals 6
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;)Z"
        }
    .end annotation

    .prologue
    .line 1597
    .local p1, adnlist:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/4 v1, 0x1

    .line 1599
    .local v1, isFull:Z
    if-eqz p1, :cond_0

    .line 1600
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_0

    .line 1601
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1602
    .local v2, rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmpty()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1604
    const/4 v1, 0x0

    .line 1609
    .end local v0           #i:I
    .end local v2           #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_0
    const-string v3, "RIL_zteAdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "isAdnFileFull, isFull = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1610
    return v1

    .line 1600
    .restart local v0       #i:I
    .restart local v2       #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private isEmailSpaceFullInCurPhonebook(I)Z
    .locals 9
    .parameter "pbrIndex"

    .prologue
    .line 1648
    const/4 v5, 0x1

    .line 1650
    .local v5, isFull:Z
    iget-object v6, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-static {}, Lzte/contact/zteUsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1652
    const/4 v1, 0x0

    .line 1653
    .local v1, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/4 v2, 0x0

    .line 1655
    .local v2, emailListSize:I
    iget-object v6, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v6, p1}, Lzte/contact/zteUsimPhoneBookManager;->getemaillist(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1656
    if-eqz v1, :cond_0

    .line 1658
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v2

    .line 1660
    :cond_0
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, v2, :cond_2

    .line 1662
    invoke-virtual {v1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1663
    .local v0, emailAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    const/4 v6, 0x1

    new-array v3, v6, [Ljava/lang/String;

    .line 1664
    .local v3, emails:[Ljava/lang/String;
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    .line 1665
    if-eqz v3, :cond_1

    const/4 v6, 0x0

    aget-object v6, v3, v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    if-nez v6, :cond_3

    .line 1667
    :cond_1
    const/4 v5, 0x0

    .line 1677
    .end local v0           #emailAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v1           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v2           #emailListSize:I
    .end local v3           #emails:[Ljava/lang/String;
    .end local v4           #i:I
    :cond_2
    :goto_1
    const-string v6, "RIL_zteAdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "isEmailSpaceFullInCurPhonebook isFull = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1678
    return v5

    .line 1660
    .restart local v0       #emailAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v1       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .restart local v2       #emailListSize:I
    .restart local v3       #emails:[Ljava/lang/String;
    .restart local v4       #i:I
    :cond_3
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1674
    .end local v0           #emailAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v1           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v2           #emailListSize:I
    .end local v3           #emails:[Ljava/lang/String;
    .end local v4           #i:I
    :cond_4
    const/4 v5, 0x0

    goto :goto_1
.end method

.method private notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V
    .locals 5
    .parameter
    .parameter "ar"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/os/Message;",
            ">;",
            "Landroid/os/AsyncResult;",
            ")V"
        }
    .end annotation

    .prologue
    .line 1185
    .local p1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-nez p1, :cond_1

    .line 1195
    :cond_0
    return-void

    .line 1189
    :cond_1
    const/4 v0, 0x0

    .local v0, i:I
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v1

    .local v1, s:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 1190
    invoke-virtual {p1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Message;

    .line 1192
    .local v2, waiter:Landroid/os/Message;
    iget-object v3, p2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v4, p2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v2, v3, v4}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1193
    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V

    .line 1189
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V
    .locals 2
    .parameter "response"
    .parameter "errString"

    .prologue
    .line 150
    if-eqz p1, :cond_0

    .line 151
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0, p2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 152
    .local v0, e:Ljava/lang/Exception;
    invoke-static {p1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 153
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 155
    .end local v0           #e:Ljava/lang/Exception;
    :cond_0
    return-void
.end method


# virtual methods
.method public GetAnriniap()I
    .locals 4

    .prologue
    .line 1031
    iget-object v1, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v1}, Lzte/contact/zteUsimPhoneBookManager;->getAnriniap()I

    move-result v0

    .line 1032
    .local v0, Anriniap:I
    const-string v1, "RIL_zteAdnRecordCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetAnriniap Anriniap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    return v0
.end method

.method public GetEmailiniap()I
    .locals 4

    .prologue
    .line 1004
    iget-object v1, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v1}, Lzte/contact/zteUsimPhoneBookManager;->getEmailiniap()I

    move-result v0

    .line 1005
    .local v0, Emailiniap:I
    const-string v1, "RIL_zteAdnRecordCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "GetEmailiniap Emailiniap="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1006
    return v0
.end method

.method public extensionEfForEf(I)I
    .locals 1
    .parameter "efid"

    .prologue
    const/16 v0, 0x6f4a

    .line 137
    sparse-switch p1, :sswitch_data_0

    .line 145
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v0}, Lzte/contact/zteUsimPhoneBookManager;->getEXT1efid()I

    move-result v0

    :goto_0
    :sswitch_0
    return v0

    .line 138
    :sswitch_1
    const/16 v0, 0x6fc8

    goto :goto_0

    .line 140
    :sswitch_2
    const/16 v0, 0x6f4c

    goto :goto_0

    .line 141
    :sswitch_3
    const/16 v0, 0x6f4b

    goto :goto_0

    .line 143
    :sswitch_4
    const/4 v0, 0x0

    goto :goto_0

    .line 137
    nop

    :sswitch_data_0
    .sparse-switch
        0x4f30 -> :sswitch_4
        0x6f3a -> :sswitch_0
        0x6f3b -> :sswitch_3
        0x6f40 -> :sswitch_0
        0x6f49 -> :sswitch_2
        0x6fc7 -> :sswitch_1
    .end sparse-switch
.end method

.method public getEfFileRecordSize(II)V
    .locals 4
    .parameter "fileId"
    .parameter "extFileId"

    .prologue
    .line 1079
    iget-object v1, p0, Lzte/contact/zteAdnRecordCache;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 1080
    :try_start_0
    const-string v0, "RIL_zteAdnRecordCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " contact framework , in getEfFileRecordSize, fileId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1081
    invoke-direct {p0, p1}, Lzte/contact/zteAdnRecordCache;->getEfFileRecordSizeAndWait(I)V

    .line 1082
    const-string v0, "RIL_zteAdnRecordCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, " contact framework , in getEfFileRecordSize, extFileId = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1083
    invoke-direct {p0, p2}, Lzte/contact/zteAdnRecordCache;->getEfFileRecordSizeAndWait(I)V

    .line 1084
    const-string v0, "RIL_zteAdnRecordCache"

    const-string v2, " contact framework , in getEfFileRecordSize, end"

    invoke-static {v0, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1085
    monitor-exit v1

    .line 1086
    return-void

    .line 1085
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getRecordsIfLoaded(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "efid"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 123
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    if-nez v0, :cond_0

    .line 124
    const/4 v0, 0x0

    .line 127
    :goto_0
    return-object v0

    :cond_0
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 26
    .parameter "msg"

    .prologue
    .line 1207
    :try_start_0
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_0

    .line 1390
    :cond_0
    :goto_0
    :pswitch_0
    return-void

    .line 1210
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1211
    .local v9, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v10, v0, Landroid/os/Message;->arg1:I

    .line 1213
    .local v10, efId:I
    const-string v23, "RIL_zteAdnRecordCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, " contact framework ,got EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE efId = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ",ar.exception = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1215
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    if-nez v23, :cond_1

    .line 1217
    :try_start_1
    iget-object v0, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [I

    move-object/from16 v0, v23

    check-cast v0, [I

    move-object/from16 v19, v0

    .line 1218
    .local v19, recordSize:[I
    const-string v23, "zteAdnRecordCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "got EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE,recordSize[0]="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x0

    aget v25, v19, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1219
    const-string v23, "zteAdnRecordCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "got EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE,recordSize[1]="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x1

    aget v25, v19, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const-string v23, "zteAdnRecordCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "got EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE,recordSize[2]="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    const/16 v25, 0x2

    aget v25, v19, v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Lzte/contact/zteUsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v20

    .line 1222
    .local v20, recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v23

    move-object/from16 v0, v20

    move-object/from16 v1, v23

    move-object/from16 v2, v19

    invoke-interface {v0, v1, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1227
    .end local v19           #recordSize:[I
    .end local v20           #recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    :cond_1
    :goto_1
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteAdnRecordCache;->mLock:Ljava/lang/Object;

    move-object/from16 v24, v0

    monitor-enter v24
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_0

    .line 1228
    :try_start_3
    const-string v23, "RIL_zteAdnRecordCache"

    const-string v25, " contact framework ,handle EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE, will mLock.notify()"

    move-object/from16 v0, v23

    move-object/from16 v1, v25

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1229
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteAdnRecordCache;->mLock:Ljava/lang/Object;

    move-object/from16 v23, v0

    invoke-virtual/range {v23 .. v23}, Ljava/lang/Object;->notify()V

    .line 1230
    monitor-exit v24

    goto/16 :goto_0

    :catchall_0
    move-exception v23

    monitor-exit v24
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :try_start_4
    throw v23
    :try_end_4
    .catch Ljava/lang/Exception; {:try_start_4 .. :try_end_4} :catch_0

    .line 1360
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v10           #efId:I
    :catch_0
    move-exception v14

    .line 1362
    .local v14, ex:Ljava/lang/Exception;
    const-string v23, "RIL_zteAdnRecordCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "adncache Exception,ex="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1363
    const-string v23, "RIL_zteAdnRecordCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "adncache Exception,msg.what="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1364
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v23, v0

    packed-switch v23, :pswitch_data_1

    :pswitch_2
    goto/16 :goto_0

    .line 1369
    :pswitch_3
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1370
    .local v11, efid:I
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1371
    .restart local v9       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .line 1372
    .local v5, REsponse:Landroid/os/Message;
    if-eqz v5, :cond_0

    .line 1373
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->delete(I)V

    .line 1374
    if-eqz v9, :cond_b

    .line 1375
    const/16 v23, 0x0

    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v5, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1379
    :goto_2
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1223
    .end local v5           #REsponse:Landroid/os/Message;
    .end local v11           #efid:I
    .end local v14           #ex:Ljava/lang/Exception;
    .restart local v10       #efId:I
    :catch_1
    move-exception v14

    .line 1224
    .restart local v14       #ex:Ljava/lang/Exception;
    :try_start_5
    const-string v23, "RIL_zteAdnRecordCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "got EVENT_LOAD_EF_FILE_RECORD_SIZE_DONE Exception  = "

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1236
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v10           #efId:I
    .end local v14           #ex:Ljava/lang/Exception;
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1237
    .restart local v9       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1240
    .restart local v11       #efid:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteAdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v22

    check-cast v22, Ljava/util/ArrayList;

    .line 1241
    .local v22, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteAdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->delete(I)V

    .line 1243
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-nez v23, :cond_2

    .line 1244
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteAdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    move-object/from16 v24, v0

    iget-object v0, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Ljava/util/ArrayList;

    move-object/from16 v0, v24

    move-object/from16 v1, v23

    invoke-virtual {v0, v11, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1246
    :cond_2
    move-object/from16 v0, p0

    move-object/from16 v1, v22

    invoke-direct {v0, v1, v9}, Lzte/contact/zteAdnRecordCache;->notifyWaiters(Ljava/util/ArrayList;Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1280
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v11           #efid:I
    .end local v22           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1281
    .restart local v9       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1282
    .restart local v11       #efid:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v18, v0

    .line 1283
    .local v18, index:I
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, v23

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v7, v0

    .line 1284
    .local v7, adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-nez v23, :cond_5

    .line 1286
    const/16 v23, 0x6f3a

    move/from16 v0, v23

    if-eq v11, v0, :cond_3

    const/16 v23, 0x6f3b

    move/from16 v0, v23

    if-ne v11, v0, :cond_6

    .line 1287
    :cond_3
    const/16 v23, 0x6f3b

    move/from16 v0, v23

    if-ne v11, v0, :cond_4

    .line 1288
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v23

    const-string v24, ""

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    if-ne v0, v1, :cond_4

    const/16 v23, 0x0

    move-object/from16 v0, v23

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 1290
    :cond_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteAdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Ljava/util/ArrayList;

    add-int/lit8 v24, v18, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1296
    :cond_5
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v21

    check-cast v21, Landroid/os/Message;

    .line 1297
    .local v21, response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->delete(I)V

    .line 1299
    const/16 v23, 0x0

    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1300
    invoke-virtual/range {v21 .. v21}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1292
    .end local v21           #response:Landroid/os/Message;
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteAdnRecordCache;->pbrIndex:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lzte/contact/zteUsimPhoneBookManager;->getadnlist(I)Ljava/util/ArrayList;

    move-result-object v23

    add-int/lit8 v24, v18, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1305
    .end local v7           #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v11           #efid:I
    .end local v18           #index:I
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1306
    .restart local v9       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1307
    .restart local v11       #efid:I
    move-object/from16 v0, p1

    iget v3, v0, Landroid/os/Message;->arg2:I

    .line 1308
    .local v3, Anrnumber:I
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, v23

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v8, v0

    .line 1309
    .local v8, anradn:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-nez v23, :cond_7

    .line 1310
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteAdnRecordCache;->pbrIndex:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lzte/contact/zteUsimPhoneBookManager;->getanrlist(I)Ljava/util/ArrayList;

    move-result-object v23

    add-int/lit8 v24, v3, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v8}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1312
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/os/Message;

    .line 1313
    .local v6, Response:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->delete(I)V

    .line 1315
    const/16 v23, 0x0

    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v6, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1316
    invoke-virtual {v6}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1320
    .end local v3           #Anrnumber:I
    .end local v6           #Response:Landroid/os/Message;
    .end local v8           #anradn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v11           #efid:I
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1321
    .restart local v9       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1322
    .restart local v11       #efid:I
    move-object/from16 v0, p1

    iget v4, v0, Landroid/os/Message;->arg2:I

    .line 1323
    .local v4, Emailrecnmber:I
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, v23

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v13, v0

    .line 1324
    .local v13, emailadn:Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string v23, "zteAdnRecordCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "got EVENT_UPDATE_EMAIL_DONE,ar="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ",Emailrecnmber="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1325
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-nez v23, :cond_9

    .line 1327
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteAdnRecordCache;->pbrIndex:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lzte/contact/zteUsimPhoneBookManager;->getemaillist(I)Ljava/util/ArrayList;

    move-result-object v12

    .line 1328
    .local v12, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const-string v23, "zteAdnRecordCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "handle EVENT_UPDATE_EMAIL_DONE,emailList="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, v24

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v24

    const-string v25, ",pbrIndex="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteAdnRecordCache;->pbrIndex:I

    move/from16 v25, v0

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1329
    if-eqz v12, :cond_8

    .line 1330
    const-string v23, "zteAdnRecordCache"

    new-instance v24, Ljava/lang/StringBuilder;

    invoke-direct/range {v24 .. v24}, Ljava/lang/StringBuilder;-><init>()V

    const-string v25, "handle EVENT_UPDATE_EMAIL_DONE,emailList.size()="

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual {v12}, Ljava/util/ArrayList;->size()I

    move-result v25

    invoke-virtual/range {v24 .. v25}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v24

    invoke-virtual/range {v24 .. v24}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v24

    invoke-static/range {v23 .. v24}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1333
    :cond_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteAdnRecordCache;->pbrIndex:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lzte/contact/zteUsimPhoneBookManager;->getemaillist(I)Ljava/util/ArrayList;

    move-result-object v23

    add-int/lit8 v24, v4, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1335
    .end local v12           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/os/Message;

    .line 1336
    .restart local v5       #REsponse:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->delete(I)V

    .line 1338
    const/16 v23, 0x0

    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v5, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1339
    invoke-virtual {v5}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1344
    .end local v4           #Emailrecnmber:I
    .end local v5           #REsponse:Landroid/os/Message;
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v11           #efid:I
    .end local v13           #emailadn:Lcom/android/internal/telephony/uicc/AdnRecord;
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v9, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v9, Landroid/os/AsyncResult;

    .line 1345
    .restart local v9       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v11, v0, Landroid/os/Message;->arg1:I

    .line 1346
    .restart local v11       #efid:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg2:I

    move/from16 v16, v0

    .line 1347
    .local v16, iaprecnmber:I
    iget-object v0, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v23, v0

    check-cast v23, [B

    move-object/from16 v0, v23

    check-cast v0, [B

    move-object v15, v0

    .line 1348
    .local v15, iap:[B
    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v23, v0

    if-nez v23, :cond_a

    .line 1349
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    move-object/from16 v23, v0

    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteAdnRecordCache;->pbrIndex:I

    move/from16 v24, v0

    invoke-virtual/range {v23 .. v24}, Lzte/contact/zteUsimPhoneBookManager;->getiaplist(I)Ljava/util/ArrayList;

    move-result-object v23

    add-int/lit8 v24, v16, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v24

    invoke-virtual {v0, v1, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 1351
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v17

    check-cast v17, Landroid/os/Message;

    .line 1352
    .local v17, iapresponse:Landroid/os/Message;
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v23, v0

    move-object/from16 v0, v23

    invoke-virtual {v0, v11}, Landroid/util/SparseArray;->delete(I)V

    .line 1354
    const/16 v23, 0x0

    iget-object v0, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v24, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v23

    move-object/from16 v2, v24

    invoke-static {v0, v1, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1355
    invoke-virtual/range {v17 .. v17}, Landroid/os/Message;->sendToTarget()V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_0

    goto/16 :goto_0

    .line 1377
    .end local v15           #iap:[B
    .end local v16           #iaprecnmber:I
    .end local v17           #iapresponse:Landroid/os/Message;
    .restart local v5       #REsponse:Landroid/os/Message;
    .restart local v14       #ex:Ljava/lang/Exception;
    :cond_b
    const/16 v23, 0x0

    const/16 v24, 0x0

    move-object/from16 v0, v23

    move-object/from16 v1, v24

    invoke-static {v5, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    goto/16 :goto_2

    .line 1207
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
        :pswitch_7
        :pswitch_0
        :pswitch_6
        :pswitch_8
        :pswitch_1
    .end packed-switch

    .line 1364
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_3
        :pswitch_3
        :pswitch_2
        :pswitch_3
        :pswitch_3
    .end packed-switch
.end method

.method public requestAdnSize(I)I
    .locals 6
    .parameter "efid"

    .prologue
    .line 1509
    const/4 v0, 0x0

    .line 1510
    .local v0, curSimSize:I
    iget-object v3, p0, Lzte/contact/zteAdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    if-eqz v3, :cond_2

    .line 1511
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v3, p0, Lzte/contact/zteAdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_2

    .line 1512
    iget-object v3, p0, Lzte/contact/zteAdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v3, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/util/ArrayList;

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1513
    .local v2, rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 1514
    :cond_0
    add-int/lit8 v0, v0, 0x1

    .line 1511
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1517
    .end local v1           #i:I
    .end local v2           #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_2
    const-string v3, "RIL_zteAdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestAdnSize cursimsize = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1518
    return v0
.end method

.method public requestAdnTotalSize(I)I
    .locals 4
    .parameter "efid"

    .prologue
    .line 1500
    const/4 v0, 0x0

    .line 1501
    .local v0, simTotalNumbers:I
    iget-object v1, p0, Lzte/contact/zteAdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1502
    iget-object v1, p0, Lzte/contact/zteAdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 1504
    :cond_0
    const-string v1, "RIL_zteAdnRecordCache"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "requestAdnTotalSize ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1505
    return v0
.end method

.method public requestEXT1Size(I)I
    .locals 6
    .parameter "efid"

    .prologue
    const/16 v4, 0xff

    .line 1481
    const/4 v2, 0x0

    .line 1482
    .local v2, temp:I
    const/4 v1, 0x0

    .line 1483
    .local v1, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/16 v3, 0x6f3a

    if-ne p1, v3, :cond_2

    .line 1484
    invoke-virtual {p0, p1}, Lzte/contact/zteAdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1488
    :goto_0
    if-eqz v1, :cond_3

    .line 1489
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v0, v3, :cond_3

    .line 1490
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v3

    if-eq v3, v4, :cond_0

    add-int/lit8 v2, v2, 0x1

    .line 1491
    :cond_0
    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v3

    if-eq v3, v4, :cond_1

    add-int/lit8 v2, v2, 0x1

    .line 1489
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1486
    .end local v0           #i:I
    :cond_2
    iget-object v3, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v3}, Lzte/contact/zteUsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v1

    goto :goto_0

    .line 1494
    :cond_3
    const-string v3, "RIL_zteAdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "requestEXT1Size ext1 current size ="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    return v2
.end method

.method public requestGetAdnFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1417
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lzte/contact/zteUsimPhoneBookManager;->getAdnFileld(I)I

    move-result v0

    return v0
.end method

.method public requestGetAllAdnFileld()[I
    .locals 1

    .prologue
    .line 1447
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v0}, Lzte/contact/zteUsimPhoneBookManager;->getAllAdnFileId()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAllAnrFileld()[I
    .locals 1

    .prologue
    .line 1472
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v0}, Lzte/contact/zteUsimPhoneBookManager;->getAllAnrFileId()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAllEmailFileld()[I
    .locals 1

    .prologue
    .line 1452
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v0}, Lzte/contact/zteUsimPhoneBookManager;->getAllEmailFileId()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAllExt1Fileld()[I
    .locals 1

    .prologue
    .line 1462
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v0}, Lzte/contact/zteUsimPhoneBookManager;->getAllExt1Fileld()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAllIapFileld()[I
    .locals 1

    .prologue
    .line 1457
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v0}, Lzte/contact/zteUsimPhoneBookManager;->getAllIapFileId()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAllSfiFileld()[I
    .locals 1

    .prologue
    .line 1467
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v0}, Lzte/contact/zteUsimPhoneBookManager;->getAllSfiFileId()[I

    move-result-object v0

    return-object v0
.end method

.method public requestGetAnrFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1432
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lzte/contact/zteUsimPhoneBookManager;->getAnrFileId(I)I

    move-result v0

    return v0
.end method

.method public requestGetEmailFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1422
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lzte/contact/zteUsimPhoneBookManager;->getEmailFileId(I)I

    move-result v0

    return v0
.end method

.method public requestGetExt1Fileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1437
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lzte/contact/zteUsimPhoneBookManager;->getExt1Fileld(I)I

    move-result v0

    return v0
.end method

.method public requestGetIapFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1427
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lzte/contact/zteUsimPhoneBookManager;->getIapFileId(I)I

    move-result v0

    return v0
.end method

.method public requestGetSfiFileld(I)I
    .locals 1
    .parameter "index"

    .prologue
    .line 1442
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lzte/contact/zteUsimPhoneBookManager;->getSfiFileld(I)I

    move-result v0

    return v0
.end method

.method public requestIsANRTYP2()Z
    .locals 1

    .prologue
    .line 1394
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v0}, Lzte/contact/zteUsimPhoneBookManager;->isANRTYP2()Z

    move-result v0

    return v0
.end method

.method public requestIsEMAILTYP2()Z
    .locals 1

    .prologue
    .line 1398
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-static {}, Lzte/contact/zteUsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v0

    return v0
.end method

.method public requestIsSupANR(I)Z
    .locals 1
    .parameter "pbrindex"

    .prologue
    .line 1404
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lzte/contact/zteUsimPhoneBookManager;->isSupportANR(I)Z

    move-result v0

    return v0
.end method

.method public requestIsSupEmail(I)Z
    .locals 1
    .parameter "pbrindex"

    .prologue
    .line 1408
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lzte/contact/zteUsimPhoneBookManager;->isSupportEmail(I)Z

    move-result v0

    return v0
.end method

.method public requestIsSupIAP(I)Z
    .locals 1
    .parameter "pbrindex"

    .prologue
    .line 1412
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v0, p1}, Lzte/contact/zteUsimPhoneBookManager;->isSupportIAP(I)Z

    move-result v0

    return v0
.end method

.method public requestLoadAllAdnLike(IILandroid/os/Message;)V
    .locals 6
    .parameter "efid"
    .parameter "extensionEf"
    .parameter "response"

    .prologue
    .line 1125
    const/16 v2, 0x4f30

    if-ne p1, v2, :cond_1

    .line 1126
    iget-object v2, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v2}, Lzte/contact/zteUsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v0

    .line 1132
    .local v0, result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_0
    if-eqz v0, :cond_2

    .line 1133
    if-eqz p3, :cond_0

    .line 1134
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    iput-object v0, v2, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 1135
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 1178
    :cond_0
    :goto_1
    return-void

    .line 1128
    .end local v0           #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_1
    invoke-virtual {p0, p1}, Lzte/contact/zteAdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v0

    .restart local v0       #result:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    goto :goto_0

    .line 1143
    :cond_2
    iget-object v2, p0, Lzte/contact/zteAdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/ArrayList;

    .line 1145
    .local v1, waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    if-eqz v1, :cond_3

    .line 1149
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1155
    :cond_3
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    .restart local v1       #waiters:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/os/Message;>;"
    invoke-virtual {v1, p3}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1158
    iget-object v2, p0, Lzte/contact/zteAdnRecordCache;->adnLikeWaiters:Landroid/util/SparseArray;

    invoke-virtual {v2, p1, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 1161
    if-gez p2, :cond_4

    .line 1164
    if-eqz p3, :cond_0

    .line 1165
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v2

    new-instance v3, Ljava/lang/RuntimeException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF is not known ADN-like EF:"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    iput-object v3, v2, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1167
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    goto :goto_1

    .line 1175
    :cond_4
    const-string v2, "RIL_zteAdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " contact framework ,in requestLoadAllAdnLike,will ZteAdnRecordLoader(mFh).loadAllFromEF,efid="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ",extensionEf="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1176
    new-instance v2, Lzte/contact/ZteAdnRecordLoader;

    iget-object v3, p0, Lzte/contact/zteAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v2, v3}, Lzte/contact/ZteAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {p0, v3, p1, v4}, Lzte/contact/zteAdnRecordCache;->obtainMessage(III)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v2, p1, p2, v3}, Lzte/contact/ZteAdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto :goto_1
.end method

.method public requestPbrFileld()I
    .locals 1

    .prologue
    .line 1476
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v0}, Lzte/contact/zteUsimPhoneBookManager;->getUsimRecordSize()I

    move-result v0

    return v0
.end method

.method public requestUsimAdnSize()I
    .locals 1

    .prologue
    .line 1522
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v0}, Lzte/contact/zteUsimPhoneBookManager;->loadUsimRecord()Ljava/util/ArrayList;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    .line 1523
    :goto_0
    return v0

    :cond_0
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v0}, Lzte/contact/zteUsimPhoneBookManager;->loadUsimRecord()Ljava/util/ArrayList;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    goto :goto_0
.end method

.method public reset()V
    .locals 1

    .prologue
    .line 90
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    invoke-virtual {v0}, Landroid/util/SparseArray;->clear()V

    .line 91
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v0}, Lzte/contact/zteUsimPhoneBookManager;->reset()V

    .line 93
    invoke-direct {p0}, Lzte/contact/zteAdnRecordCache;->clearWaiters()V

    .line 94
    invoke-direct {p0}, Lzte/contact/zteAdnRecordCache;->clearUserWriters()V

    .line 96
    return-void
.end method

.method public searchANRSpaceWithSrecid(Ljava/lang/String;)Z
    .locals 3
    .parameter "srecid"

    .prologue
    .line 1555
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1556
    .local v1, recid:[B
    const/4 v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v2, -0x1

    .line 1559
    .local v0, pbrIndex:I
    invoke-direct {p0, v0}, Lzte/contact/zteAdnRecordCache;->isANRSpaceFullInCurPhonebook(I)Z

    move-result v2

    return v2
.end method

.method public searchANRSpaceWithoutSrecid()Z
    .locals 5

    .prologue
    .line 1529
    const/4 v2, 0x0

    .line 1530
    .local v2, pbrIndex:I
    const/4 v3, -0x1

    .line 1531
    .local v3, pbrNumbers:I
    const/4 v0, -0x1

    .line 1532
    .local v0, adnEfid:I
    const/4 v1, 0x0

    .line 1535
    .local v1, adnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-direct {p0}, Lzte/contact/zteAdnRecordCache;->getpbrNumbers()I

    move-result v3

    .line 1536
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1537
    iget-object v4, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v4, v2}, Lzte/contact/zteUsimPhoneBookManager;->getadnlist(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1538
    invoke-direct {p0, v1}, Lzte/contact/zteAdnRecordCache;->isAdnFileFull(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1544
    :cond_0
    if-ne v2, v3, :cond_2

    .line 1546
    const/4 v4, 0x1

    .line 1550
    :goto_1
    return v4

    .line 1536
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1550
    :cond_2
    invoke-direct {p0, v2}, Lzte/contact/zteAdnRecordCache;->isANRSpaceFullInCurPhonebook(I)Z

    move-result v4

    goto :goto_1
.end method

.method public searchAdnIndex(ILcom/android/internal/telephony/uicc/AdnRecord;I)I
    .locals 10
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "pbrIndex"

    .prologue
    const/16 v9, 0x6f3b

    const/4 v6, -0x1

    .line 545
    const-string v5, "RIL_zteAdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "searchAdnIndex pbrIndex=  "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 547
    const/16 v5, 0x6f3a

    if-eq p1, v5, :cond_0

    if-ne p1, v9, :cond_2

    .line 548
    :cond_0
    invoke-virtual {p0, p1}, Lzte/contact/zteAdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 552
    .local v4, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_0
    if-nez v4, :cond_3

    .line 553
    const-string v5, "RIL_zteAdnRecordCache"

    const-string v7, "searchAdnIndex oldAdnList is null "

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 579
    :cond_1
    :goto_1
    return v1

    .line 550
    .end local v4           #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_2
    iget-object v5, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v5, p3}, Lzte/contact/zteUsimPhoneBookManager;->getadnlist(I)Ljava/util/ArrayList;

    move-result-object v4

    .restart local v4       #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    goto :goto_0

    .line 556
    :cond_3
    const/4 v1, -0x1

    .line 557
    .local v1, index:I
    const/4 v0, 0x1

    .line 558
    .local v0, count:I
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_2
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_4

    .line 559
    if-ne p1, v9, :cond_5

    .line 560
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->isFDNEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 561
    move v1, v0

    .line 574
    :cond_4
    :goto_3
    const-string v5, "RIL_zteAdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "searchAdnIndex index = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 575
    if-ne v1, v6, :cond_1

    .line 576
    const-string v5, "RIL_zteAdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "searchAdnIndex Adn record don\'t exist for oldAdn = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v5, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v6

    .line 577
    goto :goto_1

    .line 565
    :cond_5
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 567
    .local v3, itoldadn:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {p2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v5

    if-eqz v5, :cond_6

    .line 568
    move v1, v0

    .line 569
    goto :goto_3

    .line 572
    .end local v3           #itoldadn:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_6
    add-int/lit8 v0, v0, 0x1

    goto :goto_2
.end method

.method public searchEmailSpaceWithSrecid(Ljava/lang/String;)Z
    .locals 3
    .parameter "srecid"

    .prologue
    .line 1589
    invoke-static {p1}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v1

    .line 1590
    .local v1, recid:[B
    const/4 v2, 0x1

    aget-byte v2, v1, v2

    and-int/lit16 v2, v2, 0xff

    add-int/lit8 v0, v2, -0x1

    .line 1593
    .local v0, pbrIndex:I
    invoke-direct {p0, v0}, Lzte/contact/zteAdnRecordCache;->isEmailSpaceFullInCurPhonebook(I)Z

    move-result v2

    return v2
.end method

.method public searchEmailSpaceWithoutSrecid()Z
    .locals 5

    .prologue
    .line 1563
    const/4 v2, 0x0

    .line 1564
    .local v2, pbrIndex:I
    const/4 v3, -0x1

    .line 1565
    .local v3, pbrNumbers:I
    const/4 v0, -0x1

    .line 1566
    .local v0, adnEfid:I
    const/4 v1, 0x0

    .line 1569
    .local v1, adnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-direct {p0}, Lzte/contact/zteAdnRecordCache;->getpbrNumbers()I

    move-result v3

    .line 1570
    :goto_0
    if-ge v2, v3, :cond_0

    .line 1571
    iget-object v4, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v4, v2}, Lzte/contact/zteUsimPhoneBookManager;->getadnlist(I)Ljava/util/ArrayList;

    move-result-object v1

    .line 1572
    invoke-direct {p0, v1}, Lzte/contact/zteAdnRecordCache;->isAdnFileFull(Ljava/util/ArrayList;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 1578
    :cond_0
    if-ne v2, v3, :cond_2

    .line 1580
    const/4 v4, 0x1

    .line 1584
    :goto_1
    return v4

    .line 1570
    :cond_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1584
    :cond_2
    invoke-direct {p0, v2}, Lzte/contact/zteAdnRecordCache;->isEmailSpaceFullInCurPhonebook(I)Z

    move-result v4

    goto :goto_1
.end method

.method public searchExt1Index(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;[II)[I
    .locals 15
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "index"
    .parameter "extsize"

    .prologue
    .line 441
    const/4 v9, 0x0

    .line 442
    .local v9, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/4 v11, 0x0

    .line 444
    .local v11, oldAnrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual/range {p0 .. p1}, Lzte/contact/zteAdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    .line 446
    .local v4, extensionEF:I
    const/4 v3, 0x0

    .line 447
    .local v3, extCount:I
    const/4 v12, 0x1

    const/16 v13, 0xff

    aput v13, p4, v12

    .line 448
    const/4 v12, 0x2

    const/16 v13, 0xff

    aput v13, p4, v12

    .line 449
    const/4 v8, 0x0

    .line 450
    .local v8, oldAdnHasEXT1:Z
    const/4 v10, 0x0

    .line 451
    .local v10, oldAnrHasEXT1:Z
    const/4 v7, 0x0

    .line 452
    .local v7, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    if-gez v4, :cond_1

    .line 453
    const-string v12, "RIL_zteAdnRecordCache"

    const-string v13, "ext1 is not exist"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 541
    :cond_0
    :goto_0
    return-object p4

    .line 456
    :cond_1
    if-lez p5, :cond_0

    .line 457
    add-int/lit8 v3, p5, 0x1

    .line 458
    const-string v12, "RIL_zteAdnRecordCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "searchExt1Index extsize "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move/from16 v0, p5

    invoke-virtual {v13, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 459
    new-array v5, v3, [I

    .line 464
    .local v5, extnumber:[I
    const/16 v12, 0x6f3a

    move/from16 v0, p1

    if-ne v0, v12, :cond_2

    .line 465
    invoke-virtual/range {p0 .. p1}, Lzte/contact/zteAdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 472
    :goto_1
    if-nez v9, :cond_3

    .line 473
    const/4 v12, 0x1

    const/4 v13, -0x1

    aput v13, p4, v12

    goto :goto_0

    .line 467
    :cond_2
    iget-object v12, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    const/4 v13, 0x5

    aget v13, p4, v13

    invoke-virtual {v12, v13}, Lzte/contact/zteUsimPhoneBookManager;->getadnlist(I)Ljava/util/ArrayList;

    move-result-object v9

    .line 468
    iget-object v12, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    const/4 v13, 0x5

    aget v13, p4, v13

    invoke-virtual {v12, v13}, Lzte/contact/zteUsimPhoneBookManager;->getanrlist(I)Ljava/util/ArrayList;

    move-result-object v11

    goto :goto_1

    .line 476
    :cond_3
    const/4 v12, 0x4

    aget v12, p4, v12

    const/16 v13, 0xff

    if-eq v12, v13, :cond_4

    const/4 v12, 0x4

    aget v12, p4, v12

    if-lez v12, :cond_4

    if-nez v11, :cond_4

    .line 477
    const/4 v12, 0x1

    const/4 v13, -0x1

    aput v13, p4, v12

    goto :goto_0

    .line 481
    :cond_4
    const/4 v12, 0x0

    aget v12, p4, v12

    const/16 v13, 0xff

    if-eq v12, v13, :cond_5

    const/4 v12, 0x0

    aget v12, p4, v12

    if-lez v12, :cond_5

    const/4 v13, 0x1

    const/4 v12, 0x0

    aget v12, p4, v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v12

    aput v12, p4, v13

    .line 482
    :cond_5
    const/4 v12, 0x1

    aget v12, p4, v12

    const/16 v13, 0xff

    if-eq v12, v13, :cond_6

    const/4 v12, 0x1

    aget v12, p4, v12

    if-lez v12, :cond_6

    .line 483
    const-string v12, "RIL_zteAdnRecordCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "searchExt1Index adn update ext1 index[adnExt1_Index] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget v14, p4, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 484
    const/4 v8, 0x1

    .line 485
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x14

    if-ge v12, v13, :cond_6

    const/4 v12, 0x0

    aget v12, p4, v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v9, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->setExtNumber(I)V

    .line 488
    :cond_6
    const/4 v12, 0x4

    aget v12, p4, v12

    const/16 v13, 0xff

    if-eq v12, v13, :cond_7

    const/4 v12, 0x4

    aget v12, p4, v12

    if-lez v12, :cond_7

    if-eqz v11, :cond_7

    const/4 v13, 0x2

    const/4 v12, 0x4

    aget v12, p4, v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v12

    aput v12, p4, v13

    .line 490
    :cond_7
    const/4 v12, 0x2

    aget v12, p4, v12

    const/16 v13, 0xff

    if-eq v12, v13, :cond_8

    const/4 v12, 0x2

    aget v12, p4, v12

    if-lez v12, :cond_8

    .line 491
    const-string v12, "RIL_zteAdnRecordCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "searchExt1Index anr update ext1 index[anrExt1_Index] = "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    aget v14, p4, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 492
    const/4 v10, 0x1

    .line 493
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x14

    if-ge v12, v13, :cond_8

    const/4 v12, 0x4

    aget v12, p4, v12

    add-int/lit8 v12, v12, -0x1

    invoke-virtual {v11, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;

    const/16 v13, 0xff

    invoke-virtual {v12, v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnrExtNumber(I)V

    .line 496
    :cond_8
    if-nez v8, :cond_9

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x14

    if-gt v12, v13, :cond_a

    :cond_9
    if-nez v10, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x14

    if-le v12, v13, :cond_0

    .line 497
    :cond_a
    const-string v12, "RIL_zteAdnRecordCache"

    const-string v13, "searchExt1Index insert ext1"

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 498
    const/4 v6, 0x0

    .local v6, i:I
    :goto_2
    if-ge v6, v3, :cond_b

    const/16 v12, 0xff

    aput v12, v5, v6

    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 499
    :cond_b
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v9}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_d

    .line 500
    invoke-virtual {v9, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v1

    .line 501
    .local v1, adntemp:I
    const/16 v12, 0xff

    if-eq v1, v12, :cond_c

    const/4 v12, 0x1

    aput v12, v5, v1

    .line 499
    :cond_c
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 503
    .end local v1           #adntemp:I
    :cond_d
    if-eqz v11, :cond_f

    .line 504
    const/4 v6, 0x0

    :goto_4
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v12

    if-ge v6, v12, :cond_f

    .line 505
    invoke-virtual {v11, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v12}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v2

    .line 506
    .local v2, anrtemp:I
    const/16 v12, 0xff

    if-eq v2, v12, :cond_e

    const/4 v12, 0x1

    aput v12, v5, v2

    .line 504
    :cond_e
    add-int/lit8 v6, v6, 0x1

    goto :goto_4

    .line 509
    .end local v2           #anrtemp:I
    :cond_f
    if-nez v8, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x14

    if-le v12, v13, :cond_12

    .line 510
    const/4 v6, 0x1

    :goto_5
    if-ge v6, v3, :cond_10

    .line 511
    aget v12, v5, v6

    const/16 v13, 0xff

    if-ne v12, v13, :cond_11

    .line 512
    aput v6, v5, v6

    .line 513
    const/4 v12, 0x1

    aget v13, v5, v6

    aput v13, p4, v12

    .line 517
    :cond_10
    const-string v12, "RIL_zteAdnRecordCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "searchExt1Index insert adn ext1 index[adnExt1_Index] ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x1

    aget v14, p4, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 518
    const/4 v12, 0x1

    aget v12, p4, v12

    const/16 v13, 0xff

    if-ne v12, v13, :cond_12

    .line 519
    const/4 v12, 0x1

    const/4 v13, -0x1

    aput v13, p4, v12

    .line 520
    const-string v12, "RIL_zteAdnRecordCache"

    const-string v13, "adn ext1 is full"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 510
    :cond_11
    add-int/lit8 v6, v6, 0x1

    goto :goto_5

    .line 524
    :cond_12
    if-nez v10, :cond_0

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v12

    const/16 v13, 0x14

    if-le v12, v13, :cond_0

    .line 525
    const/4 v6, 0x1

    :goto_6
    if-ge v6, v3, :cond_13

    .line 526
    aget v12, v5, v6

    const/16 v13, 0xff

    if-ne v12, v13, :cond_14

    .line 527
    aput v6, v5, v6

    .line 528
    const/4 v12, 0x2

    aget v13, v5, v6

    aput v13, p4, v12

    .line 532
    :cond_13
    const-string v12, "RIL_zteAdnRecordCache"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string v14, "searchExt1Index insert adn ext1 index[anrExt1_Index] ="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const/4 v14, 0x2

    aget v14, p4, v14

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 533
    const/4 v12, 0x2

    aget v12, p4, v12

    const/16 v13, 0xff

    if-ne v12, v13, :cond_0

    .line 534
    const/4 v12, 0x2

    const/4 v13, -0x1

    aput v13, p4, v12

    .line 535
    const-string v12, "RIL_zteAdnRecordCache"

    const-string v13, "anr ext1 is full"

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 525
    :cond_14
    add-int/lit8 v6, v6, 0x1

    goto :goto_6
.end method

.method public searchIndex(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;)[I
    .locals 20
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "extsize"
    .parameter "srecid"

    .prologue
    .line 236
    const-string v3, "RIL_zteAdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex efid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " srecid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/4 v3, 0x6

    new-array v7, v3, [I

    .line 238
    .local v7, index:[I
    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v7, v3

    .line 239
    const/4 v3, 0x1

    const/4 v4, -0x1

    aput v4, v7, v3

    .line 240
    const/4 v3, 0x2

    const/4 v4, -0x1

    aput v4, v7, v3

    .line 241
    const/4 v3, 0x3

    const/4 v4, -0x1

    aput v4, v7, v3

    .line 242
    const/4 v3, 0x4

    const/4 v4, -0x1

    aput v4, v7, v3

    .line 243
    const/4 v3, 0x5

    const/4 v4, -0x1

    aput v4, v7, v3

    .line 244
    invoke-direct/range {p0 .. p0}, Lzte/contact/zteAdnRecordCache;->getpbrNumbers()I

    move-result v17

    .line 245
    .local v17, pbnumber:I
    if-nez p5, :cond_0

    const-string p5, ""

    .line 246
    :cond_0
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 247
    const/16 v3, 0x6f3a

    move/from16 v0, p1

    if-eq v0, v3, :cond_1

    const/16 v3, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v3, :cond_6

    .line 248
    :cond_1
    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v7, v3

    .line 249
    const-string v3, "RIL_zteAdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex  index[pbr_Index]  = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 250
    const/4 v3, 0x0

    const/4 v4, 0x5

    aget v4, v7, v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lzte/contact/zteAdnRecordCache;->searchAdnIndex(ILcom/android/internal/telephony/uicc/AdnRecord;I)I

    move-result v4

    aput v4, v7, v3

    .line 251
    const/4 v3, 0x0

    aget v3, v7, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_2

    move-object v14, v7

    .line 386
    .end local v7           #index:[I
    .local v14, index:[I
    :goto_0
    return-object v14

    .line 252
    .end local v14           #index:[I
    .restart local v7       #index:[I
    :cond_2
    const/16 v3, 0x6f3a

    move/from16 v0, p1

    if-ne v0, v3, :cond_3

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Lzte/contact/zteAdnRecordCache;->searchExt1Index(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;[II)[I

    move-result-object v7

    .line 253
    :cond_3
    const/16 v3, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    const/4 v3, 0x1

    const/16 v4, 0xff

    aput v4, v7, v3

    .line 254
    :cond_4
    const-string v3, "RIL_zteAdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex  index[adn_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    :cond_5
    :goto_1
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_18

    .line 310
    invoke-static/range {p5 .. p5}, Lcom/android/internal/telephony/uicc/IccUtils;->hexStringToBytes(Ljava/lang/String;)[B

    move-result-object v18

    .line 311
    .local v18, recid:[B
    const-string v3, "RIL_zteAdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex recid[0] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget-byte v5, v18, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "recid[1] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x1

    aget-byte v5, v18, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 312
    const/4 v3, 0x0

    const/4 v4, 0x0

    aget-byte v4, v18, v4

    and-int/lit16 v4, v4, 0xff

    aput v4, v7, v3

    .line 313
    const-string v3, "RIL_zteAdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex index[adn_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v3, 0x0

    aget v3, v7, v3

    if-gez v3, :cond_15

    .line 315
    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v7, v3

    move-object v14, v7

    .line 316
    .end local v7           #index:[I
    .restart local v14       #index:[I
    goto/16 :goto_0

    .line 256
    .end local v14           #index:[I
    .end local v18           #recid:[B
    .restart local v7       #index:[I
    :cond_6
    const-string v16, ""

    .line 257
    .local v16, oldemail:Ljava/lang/String;
    const-string v19, ""

    .line 258
    .local v19, tag:Ljava/lang/String;
    const-string v15, ""

    .line 259
    .local v15, number:Ljava/lang/String;
    const-string v9, ""

    .line 260
    .local v9, anr:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v16, v3, v4

    .line 261
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_8

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v19

    .line 262
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_9

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v15

    .line 263
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_a

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v9

    .line 265
    :cond_a
    const-string v3, ""

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, ""

    invoke-virtual {v15, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, ""

    move-object/from16 v0, v16

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_b

    const-string v3, ""

    invoke-virtual {v9, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_c

    .line 266
    :cond_b
    const-string v3, "RIL_zteAdnRecordCache"

    const-string v4, "searchIndex for update or delte and srecid is null  "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lzte/contact/zteAdnRecordCache;->searchsrecid(Lcom/android/internal/telephony/uicc/AdnRecord;)Ljava/lang/String;

    move-result-object p5

    .line 268
    const-string v3, ""

    move-object/from16 v0, p5

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 269
    const/4 v3, 0x0

    const/4 v4, -0x1

    aput v4, v7, v3

    move-object v14, v7

    .line 270
    .end local v7           #index:[I
    .restart local v14       #index:[I
    goto/16 :goto_0

    .line 273
    .end local v14           #index:[I
    .restart local v7       #index:[I
    :cond_c
    const-string v3, "RIL_zteAdnRecordCache"

    const-string v4, "searchIndex for insert "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 274
    const/4 v12, 0x0

    .local v12, i:I
    :goto_2
    move/from16 v0, v17

    if-ge v12, v0, :cond_d

    .line 275
    const/4 v3, 0x5

    aput v12, v7, v3

    .line 276
    const/4 v3, 0x0

    const/4 v4, 0x5

    aget v4, v7, v4

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p2

    invoke-virtual {v0, v1, v2, v4}, Lzte/contact/zteAdnRecordCache;->searchAdnIndex(ILcom/android/internal/telephony/uicc/AdnRecord;I)I

    move-result v4

    aput v4, v7, v3

    .line 277
    const-string v3, "RIL_zteAdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex index[adn_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x0

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 278
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_10

    .line 279
    const/4 v3, 0x5

    aget v3, v7, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lzte/contact/zteAdnRecordCache;->requestIsSupEmail(I)Z

    move-result v3

    if-eqz v3, :cond_f

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_f

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_f

    .line 280
    invoke-virtual/range {p0 .. p0}, Lzte/contact/zteAdnRecordCache;->requestIsEMAILTYP2()Z

    move-result v3

    if-eqz v3, :cond_e

    .line 281
    const/4 v3, 0x3

    const/4 v4, 0x5

    aget v4, v7, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lzte/contact/zteAdnRecordCache;->searchemailindex(ILcom/android/internal/telephony/uicc/AdnRecord;)I

    move-result v4

    aput v4, v7, v3

    .line 291
    :goto_3
    const-string v3, "RIL_zteAdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex index[email_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 292
    const/4 v3, 0x5

    aget v3, v7, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lzte/contact/zteAdnRecordCache;->requestIsSupANR(I)Z

    move-result v3

    if-eqz v3, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_12

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_12

    .line 293
    invoke-virtual/range {p0 .. p0}, Lzte/contact/zteAdnRecordCache;->requestIsANRTYP2()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 294
    const/4 v3, 0x4

    const/4 v4, 0x5

    aget v4, v7, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lzte/contact/zteAdnRecordCache;->searchanrindex(ILcom/android/internal/telephony/uicc/AdnRecord;)I

    move-result v4

    aput v4, v7, v3

    .line 301
    :goto_4
    const-string v3, "RIL_zteAdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex index[anr_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 302
    const/4 v3, 0x0

    aget v3, v7, v3

    if-lez v3, :cond_13

    const/4 v3, 0x3

    aget v3, v7, v3

    if-lez v3, :cond_13

    const/4 v3, 0x4

    aget v3, v7, v3

    if-lez v3, :cond_13

    .line 304
    :cond_d
    const/4 v3, 0x0

    aget v3, v7, v3

    const/4 v4, -0x1

    if-ne v3, v4, :cond_14

    move-object v14, v7

    .end local v7           #index:[I
    .restart local v14       #index:[I
    goto/16 :goto_0

    .line 283
    .end local v14           #index:[I
    .restart local v7       #index:[I
    :cond_e
    const/4 v3, 0x3

    const/4 v4, 0x0

    aget v4, v7, v4

    aput v4, v7, v3

    goto/16 :goto_3

    .line 286
    :cond_f
    const/4 v3, 0x3

    const/16 v4, 0xff

    aput v4, v7, v3

    goto/16 :goto_3

    .line 289
    :cond_10
    const/4 v3, 0x3

    const/16 v4, 0xff

    aput v4, v7, v3

    goto/16 :goto_3

    .line 296
    :cond_11
    const/4 v3, 0x4

    const/4 v4, 0x0

    aget v4, v7, v4

    aput v4, v7, v3

    goto :goto_4

    .line 299
    :cond_12
    const/4 v3, 0x4

    const/16 v4, 0xff

    aput v4, v7, v3

    goto :goto_4

    .line 274
    :cond_13
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_2

    :cond_14
    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v8, p4

    .line 305
    invoke-virtual/range {v3 .. v8}, Lzte/contact/zteAdnRecordCache;->searchExt1Index(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;[II)[I

    move-result-object v7

    goto/16 :goto_1

    .line 318
    .end local v9           #anr:Ljava/lang/String;
    .end local v12           #i:I
    .end local v15           #number:Ljava/lang/String;
    .end local v16           #oldemail:Ljava/lang/String;
    .end local v19           #tag:Ljava/lang/String;
    .restart local v18       #recid:[B
    :cond_15
    const/16 v3, 0x6f3a

    move/from16 v0, p1

    if-eq v0, v3, :cond_16

    const/16 v3, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v3, :cond_19

    .line 319
    :cond_16
    const/4 v3, 0x5

    const/4 v4, 0x0

    aput v4, v7, v3

    .line 320
    const/16 v3, 0x6f3a

    move/from16 v0, p1

    if-ne v0, v3, :cond_17

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v8, p4

    invoke-virtual/range {v3 .. v8}, Lzte/contact/zteAdnRecordCache;->searchExt1Index(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;[II)[I

    move-result-object v7

    .line 321
    :cond_17
    const/16 v3, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v3, :cond_18

    const/4 v3, 0x1

    const/16 v4, 0xff

    aput v4, v7, v3

    .end local v18           #recid:[B
    :cond_18
    :goto_5
    move-object v14, v7

    .line 386
    .end local v7           #index:[I
    .restart local v14       #index:[I
    goto/16 :goto_0

    .line 324
    .end local v14           #index:[I
    .restart local v7       #index:[I
    .restart local v18       #recid:[B
    :cond_19
    const/4 v3, 0x5

    const/4 v4, 0x1

    aget-byte v4, v18, v4

    and-int/lit16 v4, v4, 0xff

    add-int/lit8 v4, v4, -0x1

    aput v4, v7, v3

    .line 326
    const-string v3, "RIL_zteAdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex index[pbr_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x5

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 328
    const/4 v13, 0x0

    .line 329
    .local v13, iap:[B
    const/4 v3, 0x5

    aget v3, v7, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lzte/contact/zteAdnRecordCache;->requestIsSupIAP(I)Z

    move-result v3

    if-eqz v3, :cond_1a

    .line 331
    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    const/4 v4, 0x5

    aget v4, v7, v4

    invoke-virtual {v3, v4}, Lzte/contact/zteUsimPhoneBookManager;->getiaplist(I)Ljava/util/ArrayList;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v7, v4

    add-int/lit8 v4, v4, -0x1

    invoke-virtual {v3, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #iap:[B
    check-cast v13, [B

    .line 333
    .restart local v13       #iap:[B
    :cond_1a
    const/4 v3, 0x5

    aget v3, v7, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lzte/contact/zteAdnRecordCache;->requestIsSupEmail(I)Z

    move-result v3

    if-eqz v3, :cond_20

    .line 334
    invoke-virtual/range {p0 .. p0}, Lzte/contact/zteAdnRecordCache;->requestIsEMAILTYP2()Z

    move-result v3

    if-eqz v3, :cond_1e

    .line 335
    invoke-virtual/range {p0 .. p0}, Lzte/contact/zteAdnRecordCache;->GetEmailiniap()I

    move-result v11

    .line 336
    .local v11, emailiniap:I
    const-string v3, "RIL_zteAdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex emailiniap = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    if-nez v13, :cond_1d

    .line 338
    const-string v3, "RIL_zteAdnRecordCache"

    const-string v4, "searchIndex email type2 iap is null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 339
    const/4 v3, 0x3

    const/16 v4, 0xff

    aput v4, v7, v3

    .line 346
    .end local v11           #emailiniap:I
    :goto_6
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1b

    const/4 v3, 0x3

    aget v3, v7, v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_1b

    .line 347
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    if-eqz v3, :cond_1b

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    const/4 v4, 0x0

    aget-object v3, v3, v4

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1b

    .line 348
    invoke-virtual/range {p0 .. p0}, Lzte/contact/zteAdnRecordCache;->requestIsEMAILTYP2()Z

    move-result v3

    if-eqz v3, :cond_1f

    .line 349
    const/4 v3, 0x3

    const/4 v4, 0x5

    aget v4, v7, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lzte/contact/zteAdnRecordCache;->searchemailindex(ILcom/android/internal/telephony/uicc/AdnRecord;)I

    move-result v4

    aput v4, v7, v3

    .line 358
    :cond_1b
    :goto_7
    const-string v3, "RIL_zteAdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex index[email_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x3

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 359
    const/4 v3, 0x5

    aget v3, v7, v3

    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Lzte/contact/zteAdnRecordCache;->requestIsSupANR(I)Z

    move-result v3

    if-eqz v3, :cond_24

    .line 360
    invoke-virtual/range {p0 .. p0}, Lzte/contact/zteAdnRecordCache;->requestIsANRTYP2()Z

    move-result v3

    if-eqz v3, :cond_22

    .line 361
    invoke-virtual/range {p0 .. p0}, Lzte/contact/zteAdnRecordCache;->GetAnriniap()I

    move-result v10

    .line 362
    .local v10, anrliniap:I
    if-nez v13, :cond_21

    .line 363
    const-string v3, "RIL_zteAdnRecordCache"

    const-string v4, "searchIndex anr type2 iap is null "

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 364
    const/4 v3, 0x4

    const/16 v4, 0xff

    aput v4, v7, v3

    .line 371
    .end local v10           #anrliniap:I
    :goto_8
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_1c

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_1c

    const/4 v3, 0x4

    aget v3, v7, v3

    const/16 v4, 0xff

    if-ne v3, v4, :cond_1c

    .line 372
    invoke-virtual/range {p0 .. p0}, Lzte/contact/zteAdnRecordCache;->requestIsANRTYP2()Z

    move-result v3

    if-eqz v3, :cond_23

    .line 373
    const/4 v3, 0x4

    const/4 v4, 0x5

    aget v4, v7, v4

    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v4, v1}, Lzte/contact/zteAdnRecordCache;->searchanrindex(ILcom/android/internal/telephony/uicc/AdnRecord;)I

    move-result v4

    aput v4, v7, v3

    .line 382
    :cond_1c
    :goto_9
    const-string v3, "RIL_zteAdnRecordCache"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "searchIndex index[anr_Index] = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const/4 v5, 0x4

    aget v5, v7, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object/from16 v3, p0

    move/from16 v4, p1

    move-object/from16 v5, p2

    move-object/from16 v6, p3

    move/from16 v8, p4

    .line 383
    invoke-virtual/range {v3 .. v8}, Lzte/contact/zteAdnRecordCache;->searchExt1Index(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;[II)[I

    move-result-object v7

    goto/16 :goto_5

    .line 341
    .restart local v11       #emailiniap:I
    :cond_1d
    const/4 v3, 0x3

    aget-byte v4, v13, v11

    and-int/lit16 v4, v4, 0xff

    aput v4, v7, v3

    goto/16 :goto_6

    .line 344
    .end local v11           #emailiniap:I
    :cond_1e
    const/4 v3, 0x3

    const/4 v4, 0x0

    aget v4, v7, v4

    aput v4, v7, v3

    goto/16 :goto_6

    .line 351
    :cond_1f
    const/4 v3, 0x3

    const/4 v4, 0x0

    aget v4, v7, v4

    aput v4, v7, v3

    goto/16 :goto_7

    .line 356
    :cond_20
    const/4 v3, 0x3

    const/16 v4, 0xff

    aput v4, v7, v3

    goto/16 :goto_7

    .line 366
    .restart local v10       #anrliniap:I
    :cond_21
    const/4 v3, 0x4

    aget-byte v4, v13, v10

    and-int/lit16 v4, v4, 0xff

    aput v4, v7, v3

    goto :goto_8

    .line 369
    .end local v10           #anrliniap:I
    :cond_22
    const/4 v3, 0x4

    const/4 v4, 0x0

    aget v4, v7, v4

    aput v4, v7, v3

    goto/16 :goto_8

    .line 375
    :cond_23
    const/4 v3, 0x4

    const/4 v4, 0x0

    aget v4, v7, v4

    aput v4, v7, v3

    goto :goto_9

    .line 380
    :cond_24
    const/4 v3, 0x4

    const/16 v4, 0xff

    aput v4, v7, v3

    goto :goto_9
.end method

.method public searchanrindex(ILcom/android/internal/telephony/uicc/AdnRecord;)I
    .locals 8
    .parameter "pbrIndex"
    .parameter "oldAnr"

    .prologue
    .line 1010
    const-string v5, "RIL_zteAdnRecordCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MY searchanrindex pbrIndex = "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1011
    const/4 v2, 0x1

    .line 1012
    .local v2, count:I
    const/4 v0, -0x1

    .line 1014
    .local v0, anrIndex:I
    iget-object v5, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v5, p1}, Lzte/contact/zteUsimPhoneBookManager;->getanrlist(I)Ljava/util/ArrayList;

    move-result-object v4

    .line 1015
    .local v4, oldAnrList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    if-nez v4, :cond_0

    .line 1016
    const-string v5, "RIL_zteAdnRecordCache"

    const-string v6, "MY searchanrindex oldAnrList is null "

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1028
    .end local v0           #anrIndex:I
    .local v1, anrIndex:I
    :goto_0
    return v1

    .line 1019
    .end local v1           #anrIndex:I
    .restart local v0       #anrIndex:I
    :cond_0
    invoke-virtual {v4}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    .line 1020
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p2, v5}, Lcom/android/internal/telephony/uicc/AdnRecord;->isAnrEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 1022
    move v0, v2

    .line 1027
    :cond_1
    const-string v5, "RIL_zteAdnRecordCache"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "searchanrindex anrIndex="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move v1, v0

    .line 1028
    .end local v0           #anrIndex:I
    .restart local v1       #anrIndex:I
    goto :goto_0

    .line 1025
    .end local v1           #anrIndex:I
    .restart local v0       #anrIndex:I
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1
.end method

.method public searchemailindex(ILcom/android/internal/telephony/uicc/AdnRecord;)I
    .locals 7
    .parameter "pbrIndex"
    .parameter "oldEmail"

    .prologue
    .line 983
    const/4 v0, 0x1

    .line 984
    .local v0, count:I
    const/4 v1, -0x1

    .line 985
    .local v1, emailIndex:I
    const-string v4, "RIL_zteAdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY searchemailindex pbrIndex = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 987
    iget-object v4, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v4, p1}, Lzte/contact/zteUsimPhoneBookManager;->getemaillist(I)Ljava/util/ArrayList;

    move-result-object v3

    .line 988
    .local v3, oldEmailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    if-eqz v3, :cond_2

    .line 989
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 990
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p2, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEmailEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v4

    if-eqz v4, :cond_1

    .line 992
    move v1, v0

    .line 1000
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_0
    :goto_1
    const-string v4, "RIL_zteAdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "searchemailindex emailIndex="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1001
    return v1

    .line 995
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 998
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_2
    const-string v4, "RIL_zteAdnRecordCache"

    const-string v5, "searchemailindex oldEmailList is null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method public searchsrecid(Lcom/android/internal/telephony/uicc/AdnRecord;)Ljava/lang/String;
    .locals 9
    .parameter "oldAdn"

    .prologue
    .line 423
    const-string v4, ""

    .line 424
    .local v4, srecid:Ljava/lang/String;
    const/4 v1, -0x1

    .line 425
    .local v1, index:I
    const/4 v0, 0x0

    .line 426
    .local v0, count:I
    iget-object v6, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v6}, Lzte/contact/zteUsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v3

    .line 427
    .local v3, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 428
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->isUsimEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 429
    move v1, v0

    .line 434
    :cond_0
    const/4 v6, -0x1

    if-ne v1, v6, :cond_2

    move-object v5, v4

    .line 437
    .end local v4           #srecid:Ljava/lang/String;
    .local v5, srecid:Ljava/lang/String;
    :goto_1
    return-object v5

    .line 432
    .end local v5           #srecid:Ljava/lang/String;
    .restart local v4       #srecid:Ljava/lang/String;
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 435
    :cond_2
    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getRecid()Ljava/lang/String;

    move-result-object v4

    .line 436
    const-string v6, "RIL_zteAdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "searchsrecid srecid = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move-object v5, v4

    .line 437
    .end local v4           #srecid:Ljava/lang/String;
    .restart local v5       #srecid:Ljava/lang/String;
    goto :goto_1
.end method

.method public updateAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;)V
    .locals 8
    .parameter "efid"
    .parameter "adn"
    .parameter "recordIndex"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lzte/contact/zteAdnRecordCache;->extensionEfForEf(I)I

    move-result v3

    .line 171
    .local v3, extensionEF:I
    if-gez v3, :cond_0

    .line 172
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "EF is not known ADN-like EF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 187
    :goto_0
    return-void

    .line 176
    :cond_0
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/os/Message;

    .line 177
    .local v7, pendingResponse:Landroid/os/Message;
    if-eqz v7, :cond_1

    .line 178
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "Have pending update for EF:"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, p5, v0}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 182
    :cond_1
    iget-object v0, p0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v0, p1, p5}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 184
    new-instance v0, Lzte/contact/ZteAdnRecordLoader;

    iget-object v1, p0, Lzte/contact/zteAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v1}, Lzte/contact/ZteAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v1, 0x2

    invoke-virtual {p0, v1, p1, p3, p2}, Lzte/contact/zteAdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    move-object v1, p2

    move v2, p1

    move v4, p3

    move-object v5, p4

    invoke-virtual/range {v0 .. v6}, Lzte/contact/ZteAdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public updateAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;II)V
    .locals 12
    .parameter "efid"
    .parameter "adn"
    .parameter "recordIndex"
    .parameter "pin2"
    .parameter "response"
    .parameter "pbrIndex"
    .parameter "extensionIndex"

    .prologue
    .line 190
    move/from16 v0, p6

    iput v0, p0, Lzte/contact/zteAdnRecordCache;->pbrIndex:I

    .line 191
    invoke-virtual {p0, p1}, Lzte/contact/zteAdnRecordCache;->extensionEfForEf(I)I

    move-result v5

    .line 192
    .local v5, extensionEF:I
    if-gez v5, :cond_0

    .line 193
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EF is not known ADN-like EF:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 232
    :goto_0
    return-void

    .line 197
    :cond_0
    iget-object v1, p0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Message;

    .line 198
    .local v10, pendingResponse:Landroid/os/Message;
    if-eqz v10, :cond_1

    .line 199
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have pending update for EF:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 203
    :cond_1
    iget-object v1, p0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p5

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 206
    iget-object v1, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v1}, Lzte/contact/zteUsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v2

    .line 207
    .local v2, recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const/4 v11, 0x0

    .line 209
    .local v11, recordSize:[I
    const-string v1, "zteAdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateAdnByIndex, efid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 211
    if-eqz v2, :cond_2

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_3

    .line 212
    :cond_2
    const-string v1, "RIL_zteAdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateAdnByIndex, error, recordSizeMap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateAdnByIndex,recordSizeMap error, recordSizeMap ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 216
    :cond_3
    const-string v1, "RIL_zteAdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateAdnByIndex, recordSizeMap.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #recordSize:[I
    check-cast v11, [I

    .line 219
    .restart local v11       #recordSize:[I
    if-nez v11, :cond_4

    .line 220
    const-string v1, "RIL_zteAdnRecordCache"

    const-string v3, " in updateAdnByIndex, error, recordSize == null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 221
    const-string v1, "in updateAdnByIndex,recordSize error, recordSize == null"

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 225
    :cond_4
    const-string v1, "RIL_zteAdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateAdnByIndex, recordSize[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v11, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    const-string v1, "RIL_zteAdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateAdnByIndex, recordSize[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v11, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 227
    const-string v1, "RIL_zteAdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateAdnByIndex, recordSize[2] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget v4, v11, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    new-instance v1, Lzte/contact/ZteAdnRecordLoader;

    iget-object v3, p0, Lzte/contact/zteAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v3}, Lzte/contact/ZteAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v3, 0x2

    invoke-virtual {p0, v3, p1, p3, p2}, Lzte/contact/zteAdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object v3, p2

    move v4, p1

    move v6, p3

    move/from16 v7, p7

    move-object/from16 v8, p4

    invoke-virtual/range {v1 .. v9}, Lzte/contact/ZteAdnRecordLoader;->updateAdnEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public updateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 13
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 733
    invoke-virtual {p0, p1}, Lzte/contact/zteAdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    .line 735
    .local v4, extensionEF:I
    if-gez v4, :cond_0

    .line 736
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "EF is not known ADN-like EF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 791
    :goto_0
    return-void

    .line 742
    :cond_0
    const/16 v1, 0x4f30

    if-ne p1, v1, :cond_1

    .line 743
    iget-object v1, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v1}, Lzte/contact/zteUsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v11

    .line 748
    .local v11, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_1
    if-nez v11, :cond_2

    .line 749
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adn list not exist for EF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 745
    .end local v11           #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_1
    invoke-virtual {p0, p1}, Lzte/contact/zteAdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v11

    .restart local v11       #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    goto :goto_1

    .line 753
    :cond_2
    const/4 v5, -0x1

    .line 754
    .local v5, index:I
    const/4 v8, 0x1

    .line 755
    .local v8, count:I
    invoke-virtual {v11}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_2
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_3

    .line 756
    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 757
    move v5, v8

    .line 763
    :cond_3
    const/4 v1, -0x1

    if-ne v5, v1, :cond_5

    .line 764
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Adn record don\'t exist for "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 760
    :cond_4
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 768
    :cond_5
    const/16 v1, 0x4f30

    if-ne p1, v1, :cond_6

    .line 769
    add-int/lit8 v1, v5, -0x1

    invoke-virtual {v11, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 770
    .local v9, foundAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget p1, v9, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 771
    iget v4, v9, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 772
    iget v5, v9, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 774
    move-object/from16 v0, p3

    iput p1, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEfid:I

    .line 775
    move-object/from16 v0, p3

    iput v4, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 776
    move-object/from16 v0, p3

    iput v5, v0, Lcom/android/internal/telephony/uicc/AdnRecord;->mRecordNumber:I

    .line 779
    .end local v9           #foundAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_6
    iget-object v1, p0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 781
    .local v12, pendingResponse:Landroid/os/Message;
    if-eqz v12, :cond_7

    .line 782
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Have pending update for EF:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 786
    :cond_7
    iget-object v1, p0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p5

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 788
    new-instance v1, Lzte/contact/ZteAdnRecordLoader;

    iget-object v2, p0, Lzte/contact/zteAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v2}, Lzte/contact/ZteAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v2, 0x2

    move-object/from16 v0, p3

    invoke-virtual {p0, v2, p1, v5, v0}, Lzte/contact/zteAdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v7

    move-object/from16 v2, p3

    move v3, p1

    move-object/from16 v6, p4

    invoke-virtual/range {v1 .. v7}, Lzte/contact/ZteAdnRecordLoader;->updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public updateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;I)[I
    .locals 27
    .parameter "efid"
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "pin2"
    .parameter "response"
    .parameter "pbrIndex"

    .prologue
    .line 800
    const/16 v16, 0x0

    .line 801
    .local v16, extCount:I
    const/16 v20, 0x0

    .line 803
    .local v20, iccIpb:Lcom/android/internal/telephony/IIccPhoneBook;
    const/4 v3, 0x3

    new-array v0, v3, [I

    move-object/from16 v24, v0

    .line 804
    .local v24, recAndAnr:[I
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    .line 805
    const/4 v3, 0x1

    const/16 v5, 0xff

    aput v5, v24, v3

    .line 806
    const/4 v3, 0x2

    const/16 v5, 0xff

    aput v5, v24, v3

    .line 807
    invoke-virtual/range {p0 .. p1}, Lzte/contact/zteAdnRecordCache;->extensionEfForEf(I)I

    move-result v7

    .line 810
    .local v7, extensionEF:I
    :try_start_0
    const-string v3, "simphonebook"

    invoke-static {v3}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;

    move-result-object v20

    .line 812
    if-eqz v20, :cond_0

    .line 813
    move-object/from16 v0, v20

    invoke-interface {v0, v7}, Lcom/android/internal/telephony/IIccPhoneBook;->getAdnRecordsSize(I)[I

    move-result-object v3

    move-object/from16 v0, p0

    iput-object v3, v0, Lzte/contact/zteAdnRecordCache;->recordSize:[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 819
    :cond_0
    :goto_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/contact/zteAdnRecordCache;->recordSize:[I

    if-eqz v3, :cond_1

    .line 820
    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/contact/zteAdnRecordCache;->recordSize:[I

    const/4 v5, 0x2

    aget v3, v3, v5

    add-int/lit8 v16, v3, 0x1

    .line 821
    :cond_1
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY updateAdnBySearch extCount"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v16

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 822
    move/from16 v0, v16

    new-array v0, v0, [I

    move-object/from16 v17, v0

    .line 824
    .local v17, extIndex:[I
    if-gez v7, :cond_2

    .line 825
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF is not known ADN-like EF:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 826
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    .line 977
    :goto_1
    return-object v24

    .line 815
    .end local v17           #extIndex:[I
    :catch_0
    move-exception v15

    .line 816
    .local v15, e:Ljava/lang/Exception;
    const-string v3, "GSM"

    const-string v5, "ServiceManager.getService() exception"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 831
    .end local v15           #e:Ljava/lang/Exception;
    .restart local v17       #extIndex:[I
    :cond_2
    invoke-virtual/range {p0 .. p1}, Lzte/contact/zteAdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v22

    .line 834
    .local v22, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    const/16 v3, 0x6f3a

    move/from16 v0, p1

    if-eq v0, v3, :cond_3

    const/16 v3, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v3, :cond_4

    .line 835
    :cond_3
    invoke-virtual/range {p0 .. p1}, Lzte/contact/zteAdnRecordCache;->getRecordsIfLoaded(I)Ljava/util/ArrayList;

    move-result-object v22

    .line 841
    :goto_2
    if-nez v22, :cond_5

    .line 842
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adn list not exist for EF:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 843
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    goto :goto_1

    .line 837
    :cond_4
    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v3}, Lzte/contact/zteUsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v22

    goto :goto_2

    .line 848
    :cond_5
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    .line 849
    const/16 v9, 0xff

    .line 850
    .local v9, extRecId:I
    const/16 v13, 0xff

    .line 851
    .local v13, anrExtRecId:I
    const/16 v18, 0x0

    .line 852
    .local v18, hasAdnExt:Z
    const/4 v14, 0x1

    .line 853
    .local v14, count:I
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    .local v21, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_3
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_6

    .line 854
    const/16 v3, 0x6f3a

    move/from16 v0, p1

    if-ne v0, v3, :cond_c

    .line 855
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->isEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 856
    const/4 v3, 0x0

    aput v14, v24, v3

    .line 873
    :cond_6
    :goto_4
    const/4 v3, 0x0

    aget v3, v24, v3

    const/4 v5, -0x1

    if-eq v3, v5, :cond_16

    const/16 v3, 0x6f3b

    move/from16 v0, p1

    if-eq v0, v3, :cond_16

    .line 874
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_15

    .line 876
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-gt v3, v5, :cond_7

    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-le v3, v5, :cond_9

    .line 877
    :cond_7
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-le v3, v5, :cond_8

    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v3

    const/16 v5, 0xff

    if-eq v3, v5, :cond_8

    .line 878
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY  ---------update  adn..ext   recAndAnr[0]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v24, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "oldAdnList.get(recAndAnr[0]-1)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v24, v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 879
    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v5

    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v3

    aput v3, v17, v5

    .line 880
    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v3

    aget v9, v17, v3

    .line 881
    const/4 v3, 0x1

    aput v9, v24, v3

    .line 883
    :cond_8
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-le v3, v5, :cond_9

    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v3

    const/16 v5, 0xff

    if-eq v3, v5, :cond_9

    .line 884
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY  ---------update  anr..ext   recAndAnr[0]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v24, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "oldAdnList.get(recAndAnr[0]-1)="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v24, v6

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v5

    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v3

    aput v3, v17, v5

    .line 886
    const/4 v3, 0x0

    aget v3, v24, v3

    add-int/lit8 v3, v3, -0x1

    move-object/from16 v0, v22

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v3

    aget v13, v17, v3

    .line 887
    const/4 v3, 0x2

    aput v13, v24, v3

    .line 891
    :cond_9
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-gt v3, v5, :cond_a

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-gt v3, v5, :cond_b

    :cond_a
    invoke-virtual/range {p2 .. p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-gt v3, v5, :cond_13

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-le v3, v5, :cond_13

    .line 892
    :cond_b
    const-string v3, "GSM"

    const-string v5, "MY  ---------insert  ext"

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 893
    const/16 v19, 0x0

    .local v19, i:I
    :goto_5
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_f

    const/16 v3, 0xff

    aput v3, v17, v19

    add-int/lit8 v19, v19, 0x1

    goto :goto_5

    .line 859
    .end local v19           #i:I
    :cond_c
    const/16 v3, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v3, :cond_d

    .line 860
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->isFDNEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 861
    const/4 v3, 0x0

    aput v14, v24, v3

    goto/16 :goto_4

    .line 865
    :cond_d
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->isUsimEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v3

    if-eqz v3, :cond_e

    .line 866
    const/4 v3, 0x0

    aput v14, v24, v3

    goto/16 :goto_4

    .line 870
    :cond_e
    add-int/lit8 v14, v14, 0x1

    goto/16 :goto_3

    .line 894
    .restart local v19       #i:I
    :cond_f
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_10
    :goto_6
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_11

    .line 896
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v26

    .line 897
    .local v26, temp:I
    const/16 v3, 0xff

    move/from16 v0, v26

    if-eq v0, v3, :cond_10

    const/4 v3, 0x1

    aput v3, v17, v26

    goto :goto_6

    .line 899
    .end local v26           #temp:I
    :cond_11
    invoke-virtual/range {v22 .. v22}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v21

    :cond_12
    :goto_7
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_13

    .line 901
    invoke-interface/range {v21 .. v21}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v26

    .line 902
    .restart local v26       #temp:I
    const/16 v3, 0xff

    move/from16 v0, v26

    if-eq v0, v3, :cond_12

    const/4 v3, 0x1

    aput v3, v17, v26

    goto :goto_7

    .line 905
    .end local v19           #i:I
    .end local v26           #temp:I
    :cond_13
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-le v3, v5, :cond_14

    .line 906
    const/16 v19, 0x1

    .restart local v19       #i:I
    :goto_8
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_14

    .line 907
    aget v3, v17, v19

    const/16 v5, 0xff

    if-ne v3, v5, :cond_17

    .line 908
    aput v19, v17, v19

    .line 909
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY  ---------insert  adn ..extIndex["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v17, v19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    aget v9, v17, v19

    .line 911
    const/4 v3, 0x1

    aput v9, v24, v3

    .line 916
    .end local v19           #i:I
    :cond_14
    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    const/16 v5, 0x14

    if-le v3, v5, :cond_15

    .line 917
    const/16 v19, 0x1

    .restart local v19       #i:I
    :goto_9
    move/from16 v0, v19

    move/from16 v1, v16

    if-ge v0, v1, :cond_15

    .line 918
    aget v3, v17, v19

    const/16 v5, 0xff

    if-ne v3, v5, :cond_18

    .line 919
    aput v19, v17, v19

    .line 920
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY  ---------insert  anr ..extIndex["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, v19

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v17, v19

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 921
    aget v13, v17, v19

    .line 922
    const/4 v3, 0x2

    aput v13, v24, v3

    .line 928
    .end local v19           #i:I
    :cond_15
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY  ---------extRecId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " anrExtRecId"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 930
    :cond_16
    const/4 v3, 0x0

    aget v3, v24, v3

    const/4 v5, -0x1

    if-ne v3, v5, :cond_19

    .line 931
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Adn record don\'t exist for "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 932
    const-string v3, "GSM"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Adn record don\'t exist for "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, p2

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 933
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    goto/16 :goto_1

    .line 906
    .restart local v19       #i:I
    :cond_17
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_8

    .line 917
    :cond_18
    add-int/lit8 v19, v19, 0x1

    goto/16 :goto_9

    .line 937
    .end local v19           #i:I
    :cond_19
    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/os/Message;

    .line 939
    .local v23, pendingResponse:Landroid/os/Message;
    if-eqz v23, :cond_1a

    .line 940
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Have pending update for EF:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 941
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    goto/16 :goto_1

    .line 945
    :cond_1a
    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 946
    invoke-virtual/range {p0 .. p0}, Lzte/contact/zteAdnRecordCache;->requestGetAllAdnFileld()[I

    move-result-object v12

    .line 948
    .local v12, adnEfid:[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v3}, Lzte/contact/zteUsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v4

    .line 949
    .local v4, recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const/16 v25, 0x0

    .line 951
    .local v25, recordSize:[I
    const-string v3, "zteAdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAdnBySearch, efid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    if-eqz v4, :cond_1b

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_1c

    .line 954
    :cond_1b
    const-string v3, "zteAdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAdnBySearch, error, recordSizeMap = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 955
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in updateAdnBySearch,recordSizeMap error, recordSizeMap ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 956
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    goto/16 :goto_1

    .line 959
    :cond_1c
    const-string v3, "zteAdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAdnBySearch, recordSizeMap.size() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 961
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v25

    .end local v25           #recordSize:[I
    check-cast v25, [I

    .line 962
    .restart local v25       #recordSize:[I
    if-nez v25, :cond_1d

    .line 963
    const-string v3, "zteAdnRecordCache"

    const-string v5, " in updateAdnBySearch, error, recordSize == null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 964
    const-string v3, "in updateAdnBySearch,recordSize error, recordSize == null"

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 965
    const/4 v3, 0x0

    const/4 v5, -0x1

    aput v5, v24, v3

    goto/16 :goto_1

    .line 969
    :cond_1d
    const-string v3, "zteAdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAdnBySearch, recordSize[0] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v25, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const-string v3, "zteAdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAdnBySearch, recordSize[1] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v25, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 971
    const-string v3, "zteAdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAdnBySearch, recordSize[2] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget v6, v25, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 972
    new-instance v3, Lzte/contact/ZteAdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lzte/contact/zteAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v5}, Lzte/contact/ZteAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v5, 0x0

    aget v8, v24, v5

    const/4 v5, 0x2

    const/4 v6, 0x0

    aget v6, v24, v6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v5, v1, v6, v2}, Lzte/contact/zteAdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v5, p3

    move/from16 v6, p1

    move-object/from16 v10, p4

    invoke-virtual/range {v3 .. v11}, Lzte/contact/ZteAdnRecordLoader;->updateAdnEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_1
.end method

.method public updateAnrByIndex(I[ILcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 17
    .parameter "efid"
    .parameter "index"
    .parameter "adn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 669
    const/4 v3, 0x5

    aget v3, p2, v3

    move-object/from16 v0, p0

    iput v3, v0, Lzte/contact/zteAdnRecordCache;->pbrIndex:I

    .line 670
    invoke-virtual/range {p0 .. p1}, Lzte/contact/zteAdnRecordCache;->extensionEfForEf(I)I

    move-result v7

    .line 671
    .local v7, extensionEF:I
    if-gez v7, :cond_0

    .line 672
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EF is not known ADN-like EF:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 712
    :goto_0
    return-void

    .line 676
    :cond_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v14

    check-cast v14, Landroid/os/Message;

    .line 677
    .local v14, pendingResponse:Landroid/os/Message;
    if-eqz v14, :cond_1

    .line 678
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "Have pending update for EF:"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p1

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 682
    :cond_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move/from16 v0, p1

    move-object/from16 v1, p5

    invoke-virtual {v3, v0, v1}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 683
    invoke-virtual/range {p0 .. p0}, Lzte/contact/zteAdnRecordCache;->requestGetAllSfiFileld()[I

    move-result-object v16

    .line 686
    .local v16, sfi:[I
    move-object/from16 v0, p0

    iget-object v3, v0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v3}, Lzte/contact/zteUsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v4

    .line 687
    .local v4, recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const/4 v15, 0x0

    .line 689
    .local v15, recordSize:[I
    const-string v3, "zteAdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAnrByIndex, efid = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move/from16 v0, p1

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    if-eqz v4, :cond_2

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v3

    if-nez v3, :cond_3

    .line 692
    :cond_2
    const-string v3, "zteAdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAnrByIndex, error, recordSizeMap = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 693
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "in updateAnrByIndex,recordSizeMap error, recordSizeMap ="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 696
    :cond_3
    const-string v3, "zteAdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAnrByIndex, recordSizeMap.size() = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-interface {v4}, Ljava/util/Map;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 698
    invoke-static/range {p1 .. p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v4, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v15

    .end local v15           #recordSize:[I
    check-cast v15, [I

    .line 699
    .restart local v15       #recordSize:[I
    if-nez v15, :cond_4

    .line 700
    const-string v3, "zteAdnRecordCache"

    const-string v5, " in updateAnrByIndex, error, recordSize == null"

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 701
    const-string v3, "in updateAnrByIndex,recordSize error, recordSize == null"

    move-object/from16 v0, p0

    move-object/from16 v1, p5

    invoke-direct {v0, v1, v3}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 705
    :cond_4
    const-string v3, "zteAdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAnrByIndex, recordSize[0] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x0

    aget v6, v15, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 706
    const-string v3, "zteAdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAnrByIndex, recordSize[1] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v15, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    const-string v3, "zteAdnRecordCache"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in updateAnrByIndex, recordSize[2] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget v6, v15, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 708
    new-instance v3, Lzte/contact/ZteAdnRecordLoader;

    move-object/from16 v0, p0

    iget-object v5, v0, Lzte/contact/zteAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v5}, Lzte/contact/ZteAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v5, 0x4

    aget v8, p2, v5

    const/4 v5, 0x0

    aget v9, p2, v5

    move-object/from16 v0, p0

    iget v5, v0, Lzte/contact/zteAdnRecordCache;->pbrIndex:I

    aget v10, v16, v5

    const/4 v5, 0x2

    aget v12, p2, v5

    const/4 v5, 0x5

    const/4 v6, 0x4

    aget v6, p2, v6

    move-object/from16 v0, p0

    move/from16 v1, p1

    move-object/from16 v2, p3

    invoke-virtual {v0, v5, v1, v6, v2}, Lzte/contact/zteAdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v13

    move-object/from16 v5, p3

    move/from16 v6, p1

    move-object/from16 v11, p4

    invoke-virtual/range {v3 .. v13}, Lzte/contact/ZteAdnRecordLoader;->updateAnrEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIIILjava/lang/String;ILandroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public updateEmailByIndex(I[ILcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 13
    .parameter "efid"
    .parameter "index"
    .parameter "adn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 588
    const/4 v1, 0x5

    aget v1, p2, v1

    iput v1, p0, Lzte/contact/zteAdnRecordCache;->pbrIndex:I

    .line 589
    iget-object v1, p0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/os/Message;

    .line 590
    .local v10, pendingResponse:Landroid/os/Message;
    if-eqz v10, :cond_0

    .line 591
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have pending update for EF:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 624
    :goto_0
    return-void

    .line 595
    :cond_0
    iget-object v1, p0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p5

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 596
    invoke-virtual {p0}, Lzte/contact/zteAdnRecordCache;->requestGetAllSfiFileld()[I

    move-result-object v12

    .line 599
    .local v12, sfi:[I
    iget-object v1, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v1}, Lzte/contact/zteUsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v2

    .line 600
    .local v2, recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const/4 v11, 0x0

    .line 602
    .local v11, recordSize:[I
    const-string v1, "zteAdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateEmailByIndex, efid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 604
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 605
    :cond_1
    const-string v1, "zteAdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateEmailByIndex, error, recordSizeMap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 606
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateEmailByIndex,recordSizeMap error, recordSizeMap ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 609
    :cond_2
    const-string v1, "zteAdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateEmailByIndex, recordSizeMap.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #recordSize:[I
    check-cast v11, [I

    .line 612
    .restart local v11       #recordSize:[I
    if-nez v11, :cond_3

    .line 613
    const-string v1, "zteAdnRecordCache"

    const-string v3, " in updateEmailByIndex, error, recordSize == null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 614
    const-string v1, "in updateEmailByIndex,recordSize error, recordSize == null"

    move-object/from16 v0, p5

    invoke-direct {p0, v0, v1}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 618
    :cond_3
    const-string v1, "zteAdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateEmailByIndex, recordSize[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v11, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const-string v1, "zteAdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateEmailByIndex, recordSize[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v11, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string v1, "zteAdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateEmailByIndex, recordSize[2] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget v4, v11, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    new-instance v1, Lzte/contact/ZteAdnRecordLoader;

    iget-object v3, p0, Lzte/contact/zteAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v3}, Lzte/contact/ZteAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v3, 0x3

    aget v5, p2, v3

    const/4 v3, 0x0

    aget v6, p2, v3

    iget v3, p0, Lzte/contact/zteAdnRecordCache;->pbrIndex:I

    aget v7, v12, v3

    const/4 v3, 0x3

    const/4 v4, 0x3

    aget v4, p2, v4

    move-object/from16 v0, p3

    invoke-virtual {p0, v3, p1, v4, v0}, Lzte/contact/zteAdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v9

    move-object/from16 v3, p3

    move v4, p1

    move-object/from16 v8, p4

    invoke-virtual/range {v1 .. v9}, Lzte/contact/ZteAdnRecordLoader;->updateEmailEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public updateIapByIndex(III[I[BLcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V
    .locals 14
    .parameter "efid"
    .parameter "Emailiniap"
    .parameter "Anriniap"
    .parameter "index"
    .parameter "iapRecord"
    .parameter "adn"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 629
    const/4 v1, 0x5

    aget v1, p4, v1

    iput v1, p0, Lzte/contact/zteAdnRecordCache;->pbrIndex:I

    .line 630
    iget-object v1, p0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    invoke-virtual {v1, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Message;

    .line 631
    .local v12, pendingResponse:Landroid/os/Message;
    if-eqz v12, :cond_0

    .line 632
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Have pending update for EF:"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    .line 665
    :goto_0
    return-void

    .line 635
    :cond_0
    iget-object v1, p0, Lzte/contact/zteAdnRecordCache;->userWriteResponse:Landroid/util/SparseArray;

    move-object/from16 v0, p8

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    .line 638
    iget-object v1, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v1}, Lzte/contact/zteUsimPhoneBookManager;->getEfRecordSize()Ljava/util/Map;

    move-result-object v2

    .line 639
    .local v2, recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    const/4 v13, 0x0

    .line 641
    .local v13, recordSize:[I
    const-string v1, "zteAdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateIapByIndex, efid = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 643
    if-eqz v2, :cond_1

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v1

    if-nez v1, :cond_2

    .line 644
    :cond_1
    const-string v1, "zteAdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateIapByIndex, error, recordSizeMap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateIapByIndex,recordSizeMap error, recordSizeMap ="

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto :goto_0

    .line 648
    :cond_2
    const-string v1, "zteAdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateIapByIndex, recordSizeMap.size() = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-interface {v2}, Ljava/util/Map;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 650
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v2, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v13

    .end local v13           #recordSize:[I
    check-cast v13, [I

    .line 651
    .restart local v13       #recordSize:[I
    if-nez v13, :cond_3

    .line 652
    const-string v1, "zteAdnRecordCache"

    const-string v3, " in updateIapByIndex, error, recordSize == null"

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 653
    const-string v1, "in updateIapByIndex,recordSize error, recordSize == null"

    move-object/from16 v0, p8

    invoke-direct {p0, v0, v1}, Lzte/contact/zteAdnRecordCache;->sendErrorResponse(Landroid/os/Message;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 657
    :cond_3
    const-string v1, "zteAdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateIapByIndex, recordSize[0] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x0

    aget v4, v13, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    const-string v1, "zteAdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateIapByIndex, recordSize[1] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x1

    aget v4, v13, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 659
    const-string v1, "zteAdnRecordCache"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, " in updateIapByIndex, recordSize[2] = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const/4 v4, 0x2

    aget v4, v13, v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 660
    new-instance v1, Lzte/contact/ZteAdnRecordLoader;

    iget-object v3, p0, Lzte/contact/zteAdnRecordCache;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v1, v3}, Lzte/contact/ZteAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v3, 0x3

    aget v6, p4, v3

    const/4 v3, 0x4

    aget v7, p4, v3

    const/4 v3, 0x0

    aget v9, p4, v3

    const/4 v3, 0x6

    const/4 v4, 0x0

    aget v4, p4, v4

    move-object/from16 v0, p5

    invoke-virtual {p0, v3, p1, v4, v0}, Lzte/contact/zteAdnRecordCache;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v11

    move-object/from16 v3, p6

    move/from16 v4, p2

    move/from16 v5, p3

    move v8, p1

    move-object/from16 v10, p7

    invoke-virtual/range {v1 .. v11}, Lzte/contact/ZteAdnRecordLoader;->updateIapEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIIIILjava/lang/String;Landroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public updateusimphonebook(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;[ILjava/lang/String;I)Z
    .locals 9
    .parameter "oldAdn"
    .parameter "newAdn"
    .parameter "index"
    .parameter "oldSrecid"
    .parameter "adnSize"

    .prologue
    .line 389
    const-string v6, "RIL_zteAdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateusimphonebook index[adnExt1_Index] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x1

    aget v8, p3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string v8, " index[anrExt1_Index] = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const/4 v8, 0x2

    aget v8, p3, v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 391
    const/4 v5, -0x1

    .line 392
    .local v5, usimindex:I
    const/4 v0, 0x1

    .line 393
    .local v0, count:I
    const/4 v6, 0x5

    aget v4, p3, v6

    .line 394
    .local v4, pbrIndex:I
    if-nez p4, :cond_2

    const-string v6, ""

    invoke-virtual {p4, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_2

    .line 395
    iget-object v6, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v6}, Lzte/contact/zteUsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v3

    .line 396
    .local v3, oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual {v3}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    .line 397
    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual {p1, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->isUsimEqual(Lcom/android/internal/telephony/uicc/AdnRecord;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 398
    move v5, v0

    .line 411
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v3           #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_0
    const-string v6, "RIL_zteAdnRecordCache"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "updateusimphonebook usimindex = "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 412
    const/4 v6, -0x1

    if-ne v5, v6, :cond_3

    const/4 v6, 0x0

    .line 418
    :goto_1
    return v6

    .line 401
    .restart local v2       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .restart local v3       #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 405
    .end local v2           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v3           #oldAdnList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_2
    const/4 v6, 0x0

    aget v5, p3, v6

    .line 406
    const/4 v1, 0x0

    .local v1, i:I
    :goto_2
    if-ge v1, v4, :cond_0

    .line 407
    add-int/2addr v5, p5

    .line 406
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 413
    .end local v1           #i:I
    :cond_3
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x14

    if-gt v6, v7, :cond_4

    const/4 v6, 0x1

    const/16 v7, 0xff

    aput v7, p3, v6

    .line 414
    :cond_4
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    const/16 v7, 0x14

    if-gt v6, v7, :cond_5

    const/4 v6, 0x2

    const/16 v7, 0xff

    aput v7, p3, v6

    .line 415
    :cond_5
    const/4 v6, 0x1

    aget v6, p3, v6

    if-lez v6, :cond_6

    const/4 v6, 0x1

    aget v6, p3, v6

    const/16 v7, 0xff

    if-eq v6, v7, :cond_6

    const/4 v6, 0x1

    aget v6, p3, v6

    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setExtNumber(I)V

    .line 416
    :cond_6
    const/4 v6, 0x2

    aget v6, p3, v6

    if-lez v6, :cond_7

    const/4 v6, 0x2

    aget v6, p3, v6

    const/16 v7, 0xff

    if-eq v6, v7, :cond_7

    const/4 v6, 0x2

    aget v6, p3, v6

    invoke-virtual {p2, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnrExtNumber(I)V

    .line 417
    :cond_7
    iget-object v6, p0, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v6}, Lzte/contact/zteUsimPhoneBookManager;->loadEfFilesFromUsim()Ljava/util/ArrayList;

    move-result-object v6

    add-int/lit8 v7, v5, -0x1

    invoke-virtual {v6, v7, p2}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 418
    const/4 v6, 0x1

    goto :goto_1
.end method
