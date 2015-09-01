.class public Lzte/contact/ZteAdnRecordLoader;
.super Landroid/os/Handler;
.source "ZteAdnRecordLoader.java"


# static fields
.field static final EVENT_ADN_LOAD_ALL_DONE:I = 0x3

.field static final EVENT_ADN_LOAD_DONE:I = 0x1

.field static final EVENT_ANR_EXT_RECORD_LOAD_DONE:I = 0xd

.field static final EVENT_ANR_LOAD_ALL_DONE:I = 0xc

.field static final EVENT_ANR_LOAD_ITEMS_DONE:I = 0xe

.field static final EVENT_EF_LINEAR_RECORD_SIZE_DONE:I = 0x4

.field static final EVENT_EXT_RECORD_LOAD_DONE:I = 0x2

.field static final EVENT_UPDATE_ANR_RECORD_DONE:I = 0x9

.field static final EVENT_UPDATE_EMAIL_RECORD_DONE:I = 0x7

.field static final EVENT_UPDATE_IAP_RECORD_DONE:I = 0xb

.field static final EVENT_UPDATE_RECORD_DONE:I = 0x5

.field static final LOG_TAG:Ljava/lang/String; = "RIL_ZteAdnRecordLoader"


# instance fields
.field Anriniap:I

.field EmailadnNumber:I

.field Emailiniap:I

.field IapforAnr:I

.field IapforEmail:I

.field adns:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field anrExtRecId:I

.field anradnNumber:I

.field ef:I

.field efItemCnt:I

.field extEfItemSize:I

.field extInx:I

.field extRecId:I

.field extensionEF:I

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field pendingExtLoads:I

.field pin2:Ljava/lang/String;

.field recordNumber:I

.field result:Ljava/lang/Object;

.field sfi:I

.field usedRecordNumArr:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field userResponse:Landroid/os/Message;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V
    .locals 2
    .parameter "fh"

    .prologue
    const/4 v1, 0x0

    .line 81
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p0, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    .line 35
    iput v1, p0, Lzte/contact/ZteAdnRecordLoader;->Emailiniap:I

    .line 36
    iput v1, p0, Lzte/contact/ZteAdnRecordLoader;->Anriniap:I

    .line 41
    iput v1, p0, Lzte/contact/ZteAdnRecordLoader;->extInx:I

    .line 42
    iput v1, p0, Lzte/contact/ZteAdnRecordLoader;->sfi:I

    .line 82
    iput-object p1, p0, Lzte/contact/ZteAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 83
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 20
    .parameter "msg"

    .prologue
    .line 377
    const/4 v8, 0x0

    .line 380
    .local v8, anrRec:[B
    :try_start_0
    move-object/from16 v0, p1

    iget v1, v0, Landroid/os/Message;->what:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    packed-switch v1, :pswitch_data_0

    .line 670
    :cond_0
    :goto_0
    :pswitch_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    move-object/from16 v0, p0

    iget v1, v0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I

    if-nez v1, :cond_1

    .line 672
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lzte/contact/ZteAdnRecordLoader;->result:Ljava/lang/Object;

    iput-object v2, v1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .line 674
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 675
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 677
    :cond_1
    :goto_1
    return-void

    .line 382
    :pswitch_1
    :try_start_1
    const-string v1, "ZteAdnRecordLoader"

    const-string v2, "got EVENT_EF_LINEAR_RECORD_SIZE_DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 384
    .local v9, ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v7, v0

    .line 386
    .local v7, adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_2

    .line 387
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get EF record size failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    .line 658
    .end local v7           #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    :catch_0
    move-exception v12

    .line 659
    .local v12, exc:Ljava/lang/RuntimeException;
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 660
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v12, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 662
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 665
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    goto :goto_1

    .line 391
    .end local v12           #exc:Ljava/lang/RuntimeException;
    .restart local v7       #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v9       #ar:Landroid/os/AsyncResult;
    :cond_2
    :try_start_2
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [I

    move-object v0, v1

    check-cast v0, [I

    move-object/from16 v16, v0

    .line 399
    .local v16, recordSize:[I
    move-object/from16 v0, p0

    iget v1, v0, Lzte/contact/ZteAdnRecordLoader;->extInx:I

    if-nez v1, :cond_4

    move-object/from16 v0, v16

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_3

    move-object/from16 v0, p0

    iget v1, v0, Lzte/contact/ZteAdnRecordLoader;->recordNumber:I

    const/4 v2, 0x2

    aget v2, v16, v2

    if-le v1, v2, :cond_4

    .line 400
    :cond_3
    const-string v1, "RIL_ZteAdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error  1recordSize.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lzte/contact/ZteAdnRecordLoader;->recordNumber:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSize[2]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v16, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 401
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 404
    :cond_4
    move-object/from16 v0, p0

    iget v1, v0, Lzte/contact/ZteAdnRecordLoader;->extInx:I

    if-lez v1, :cond_6

    move-object/from16 v0, v16

    array-length v1, v0

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    move-object/from16 v0, p0

    iget v1, v0, Lzte/contact/ZteAdnRecordLoader;->extRecId:I

    const/4 v2, 0x2

    aget v2, v16, v2

    if-le v1, v2, :cond_6

    .line 405
    :cond_5
    const-string v1, "RIL_ZteAdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "error  2recordSize.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v16

    array-length v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "extRecId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lzte/contact/ZteAdnRecordLoader;->extRecId:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSize[2]"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v16, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 410
    :cond_6
    move-object/from16 v0, p0

    iget v1, v0, Lzte/contact/ZteAdnRecordLoader;->extInx:I

    if-nez v1, :cond_8

    .line 411
    const/4 v1, 0x0

    aget v1, v16, v1

    move-object/from16 v0, p0

    iget v2, v0, Lzte/contact/ZteAdnRecordLoader;->extRecId:I

    invoke-virtual {v7, v1, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAdnString(II)[B

    move-result-object v4

    .line 412
    .local v4, data:[B
    if-nez v4, :cond_7

    .line 413
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "wrong ADN format"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 416
    :cond_7
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lzte/contact/ZteAdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v3, v0, Lzte/contact/ZteAdnRecordLoader;->recordNumber:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lzte/contact/ZteAdnRecordLoader;->pin2:Ljava/lang/String;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lzte/contact/ZteAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 418
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I

    .line 420
    .end local v4           #data:[B
    :cond_8
    move-object/from16 v0, p0

    iget v1, v0, Lzte/contact/ZteAdnRecordLoader;->extInx:I

    if-nez v1, :cond_a

    move-object/from16 v0, p0

    iget v1, v0, Lzte/contact/ZteAdnRecordLoader;->extRecId:I

    const/16 v2, 0xff

    if-ne v1, v2, :cond_9

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_a

    .line 421
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lzte/contact/ZteAdnRecordLoader;->extensionEF:I

    const/4 v3, 0x4

    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v7}, Lzte/contact/ZteAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 423
    move-object/from16 v0, p0

    iget v1, v0, Lzte/contact/ZteAdnRecordLoader;->extInx:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lzte/contact/ZteAdnRecordLoader;->extInx:I

    goto/16 :goto_0

    .line 427
    :cond_a
    move-object/from16 v0, p0

    iget v1, v0, Lzte/contact/ZteAdnRecordLoader;->extInx:I

    if-eqz v1, :cond_0

    .line 428
    const/4 v1, 0x0

    aget v1, v16, v1

    invoke-virtual {v7, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildEXT1String(I)[B

    move-result-object v4

    .line 430
    .restart local v4       #data:[B
    if-nez v4, :cond_b

    .line 431
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "worong ADN format"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 435
    :cond_b
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lzte/contact/ZteAdnRecordLoader;->extensionEF:I

    move-object/from16 v0, p0

    iget v3, v0, Lzte/contact/ZteAdnRecordLoader;->extRecId:I

    move-object/from16 v0, p0

    iget-object v5, v0, Lzte/contact/ZteAdnRecordLoader;->pin2:Ljava/lang/String;

    const/4 v6, 0x5

    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lzte/contact/ZteAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 438
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 443
    .end local v4           #data:[B
    .end local v7           #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v16           #recordSize:[I
    :pswitch_2
    const-string v1, "ZteAdnRecordLoader"

    const-string v2, "got EVENT_UPDATE_RECORD_DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 444
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 445
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_c

    .line 446
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "update EF adn record failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 449
    :cond_c
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I

    .line 450
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 454
    .end local v9           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 455
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_d

    .line 456
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "update EF adn email record failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 459
    :cond_d
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I

    .line 460
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 463
    .end local v9           #ar:Landroid/os/AsyncResult;
    :pswitch_4
    const-string v1, "ZteAdnRecordLoader"

    const-string v2, "got EVENT_UPDATE_ANR_RECORD_DONE"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 466
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_e

    .line 467
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "update EF adn anr record failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 470
    :cond_e
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I

    .line 471
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 474
    .end local v9           #ar:Landroid/os/AsyncResult;
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 475
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_f

    .line 476
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "update EF adn anr record failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 479
    :cond_f
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I

    .line 480
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->result:Ljava/lang/Object;

    goto/16 :goto_0

    .line 484
    .end local v9           #ar:Landroid/os/AsyncResult;
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 485
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v4, v0

    .line 487
    .restart local v4       #data:[B
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_10

    .line 488
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 498
    :cond_10
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget v1, v0, Lzte/contact/ZteAdnRecordLoader;->ef:I

    move-object/from16 v0, p0

    iget v2, v0, Lzte/contact/ZteAdnRecordLoader;->recordNumber:I

    invoke-direct {v7, v1, v2, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 499
    .restart local v7       #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, p0

    iput-object v7, v0, Lzte/contact/ZteAdnRecordLoader;->result:Ljava/lang/Object;

    .line 501
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 506
    const/4 v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I

    .line 508
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lzte/contact/ZteAdnRecordLoader;->extensionEF:I

    iget v3, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lzte/contact/ZteAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    goto/16 :goto_0

    .line 515
    .end local v4           #data:[B
    .end local v7           #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 516
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v4, v0

    .line 517
    .restart local v4       #data:[B
    iget-object v1, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v7, v0

    .line 519
    .restart local v7       #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_11

    .line 520
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 523
    :cond_11
    const-string v1, "RIL_ZteAdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ADN extension EF: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lzte/contact/ZteAdnRecordLoader;->extensionEF:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 528
    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->appendExtRecord([B)V

    .line 530
    move-object/from16 v0, p0

    iget v1, v0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I

    goto/16 :goto_0

    .line 535
    .end local v4           #data:[B
    .end local v7           #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    :pswitch_8
    const-string v1, "RIL_ZteAdnRecordLoader"

    const-string v2, "EVENT_ADN_LOAD_ALL_DONE "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 536
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 537
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v11, v0

    .line 539
    .local v11, datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_12

    .line 541
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 544
    :cond_12
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->adns:Ljava/util/ArrayList;

    .line 545
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->adns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->result:Ljava/lang/Object;

    .line 546
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I

    .line 548
    const/4 v13, 0x0

    .local v13, i:I
    invoke-virtual {v11}, Ljava/util/ArrayList;->size()I

    move-result v17

    .local v17, s:I
    :goto_2
    move/from16 v0, v17

    if-ge v13, v0, :cond_0

    .line 550
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget v2, v0, Lzte/contact/ZteAdnRecordLoader;->ef:I

    add-int/lit8 v3, v13, 0x1

    invoke-virtual {v11, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, [B

    invoke-direct {v7, v2, v3, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(II[B)V

    .line 552
    .restart local v7       #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    const/4 v1, 0x2

    new-array v15, v1, [B

    .line 553
    .local v15, recid:[B
    const/4 v1, 0x0

    add-int/lit8 v2, v13, 0x1

    and-int/lit16 v2, v2, 0xff

    int-to-byte v2, v2

    aput-byte v2, v15, v1

    .line 554
    const/4 v1, 0x1

    const/4 v2, 0x1

    aput-byte v2, v15, v1

    .line 555
    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v18

    .line 556
    .local v18, srecid:Ljava/lang/String;
    move-object/from16 v0, v18

    invoke-virtual {v7, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecid(Ljava/lang/String;)V

    .line 558
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->adns:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 560
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_13

    .line 565
    move-object/from16 v0, p0

    iget v1, v0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I

    .line 566
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lzte/contact/ZteAdnRecordLoader;->extensionEF:I

    iget v3, v7, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    const/4 v5, 0x2

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lzte/contact/ZteAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 548
    :cond_13
    add-int/lit8 v13, v13, 0x1

    goto :goto_2

    .line 576
    .end local v7           #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v11           #datas:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    .end local v13           #i:I
    .end local v15           #recid:[B
    .end local v17           #s:I
    .end local v18           #srecid:Ljava/lang/String;
    :pswitch_9
    const-string v1, "RIL_ZteAdnRecordLoader"

    const-string v2, "got EVENT_ANR_LOAD_ITEMS_DONE "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 578
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object/from16 v19, v0

    .line 579
    .local v19, usedAnrFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const-string v1, "RIL_ZteAdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle EVENT_ANR_LOAD_ITEMS_DONE,usedAnrFileRecord="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 580
    if-eqz v19, :cond_14

    .line 581
    const-string v1, "RIL_ZteAdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "handle EVENT_ANR_LOAD_ITEMS_DONE,usedAnrFileRecord.size()="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Ljava/util/ArrayList;->size()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 583
    :cond_14
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_15

    .line 584
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 586
    :cond_15
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget v2, v0, Lzte/contact/ZteAdnRecordLoader;->efItemCnt:I

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->adns:Ljava/util/ArrayList;

    .line 587
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->adns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->result:Ljava/lang/Object;

    .line 588
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I

    .line 590
    const/16 v1, 0x11

    new-array v10, v1, [B

    .line 591
    .local v10, blankAnrRec:[B
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_3
    const/16 v1, 0x11

    if-ge v13, v1, :cond_16

    .line 592
    const/4 v1, -0x1

    aput-byte v1, v10, v13

    .line 591
    add-int/lit8 v13, v13, 0x1

    goto :goto_3

    .line 595
    :cond_16
    const/4 v13, 0x0

    :goto_4
    move-object/from16 v0, p0

    iget v1, v0, Lzte/contact/ZteAdnRecordLoader;->efItemCnt:I

    if-ge v13, v1, :cond_0

    .line 596
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->usedRecordNumArr:Ljava/util/ArrayList;

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_18

    .line 597
    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [B

    move-object v8, v0

    .line 598
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget v1, v0, Lzte/contact/ZteAdnRecordLoader;->ef:I

    invoke-direct {v7, v1, v8}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(I[B)V

    .line 603
    .restart local v7       #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->adns:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 604
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasAnrExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_17

    .line 605
    move-object/from16 v0, p0

    iget v1, v0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I

    .line 606
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lzte/contact/ZteAdnRecordLoader;->extEfItemSize:I

    move-object/from16 v0, p0

    iget v3, v0, Lzte/contact/ZteAdnRecordLoader;->extensionEF:I

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v5

    const/16 v6, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v6, v7}, Lzte/contact/ZteAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v1, v2, v3, v5, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedWithRecordSize(IIILandroid/os/Message;)V

    .line 595
    :cond_17
    add-int/lit8 v13, v13, 0x1

    goto :goto_4

    .line 600
    .end local v7           #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_18
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget v1, v0, Lzte/contact/ZteAdnRecordLoader;->ef:I

    invoke-direct {v7, v1, v10}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(I[B)V

    .restart local v7       #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    goto :goto_5

    .line 615
    .end local v7           #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v10           #blankAnrRec:[B
    .end local v13           #i:I
    .end local v19           #usedAnrFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    :pswitch_a
    const-string v1, "RIL_ZteAdnRecordLoader"

    const-string v2, "EVENT_ANR_LOAD_ALL_DONE "

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 617
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, Ljava/util/ArrayList;

    move-object v0, v1

    check-cast v0, Ljava/util/ArrayList;

    move-object v14, v0

    .line 619
    .local v14, mAnrFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_19

    .line 620
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 622
    :cond_19
    new-instance v1, Ljava/util/ArrayList;

    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v2

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(I)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->adns:Ljava/util/ArrayList;

    .line 623
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->adns:Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iput-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->result:Ljava/lang/Object;

    .line 624
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput v1, v0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I

    .line 626
    const/4 v13, 0x0

    .restart local v13       #i:I
    :goto_6
    invoke-virtual {v14}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-ge v13, v1, :cond_0

    .line 627
    invoke-virtual {v14, v13}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    move-object v0, v1

    check-cast v0, [B

    move-object v8, v0

    .line 628
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p0

    iget v1, v0, Lzte/contact/ZteAdnRecordLoader;->ef:I

    invoke-direct {v7, v1, v8}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(I[B)V

    .line 629
    .restart local v7       #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->adns:Ljava/util/ArrayList;

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 630
    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasAnrExtendedRecord()Z

    move-result v1

    if-eqz v1, :cond_1a

    .line 631
    move-object/from16 v0, p0

    iget v1, v0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v1, v1, 0x1

    move-object/from16 v0, p0

    iput v1, v0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I

    .line 632
    move-object/from16 v0, p0

    iget-object v1, v0, Lzte/contact/ZteAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-object/from16 v0, p0

    iget v2, v0, Lzte/contact/ZteAdnRecordLoader;->extensionEF:I

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v3

    const/16 v5, 0xd

    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v7}, Lzte/contact/ZteAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v1, v2, v3, v5}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 626
    :cond_1a
    add-int/lit8 v13, v13, 0x1

    goto :goto_6

    .line 640
    .end local v7           #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v9           #ar:Landroid/os/AsyncResult;
    .end local v13           #i:I
    .end local v14           #mAnrFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    :pswitch_b
    move-object/from16 v0, p1

    iget-object v1, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v1, Landroid/os/AsyncResult;

    move-object v0, v1

    check-cast v0, Landroid/os/AsyncResult;

    move-object v9, v0

    .line 641
    .restart local v9       #ar:Landroid/os/AsyncResult;
    iget-object v1, v9, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v1, [B

    move-object v0, v1

    check-cast v0, [B

    move-object v4, v0

    .line 642
    .restart local v4       #data:[B
    iget-object v1, v9, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v0, v1

    check-cast v0, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object v7, v0

    .line 644
    .restart local v7       #adn:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v1, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-eqz v1, :cond_1b

    .line 645
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "load failed"

    iget-object v3, v9, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-direct {v1, v2, v3}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;Ljava/lang/Throwable;)V

    throw v1

    .line 647
    :cond_1b
    const-string v1, "RIL_ZteAdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ANR extention EF: 0x"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, p0

    iget v3, v0, Lzte/contact/ZteAdnRecordLoader;->extensionEF:I

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ":"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\n"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    invoke-virtual {v7, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->appendAnrExtRecord([B)V

    .line 654
    move-object/from16 v0, p0

    iget v1, v0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I

    add-int/lit8 v1, v1, -0x1

    move-object/from16 v0, p0

    iput v1, v0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_0

    goto/16 :goto_0

    .line 380
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_1
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_0
        :pswitch_4
        :pswitch_0
        :pswitch_5
        :pswitch_a
        :pswitch_b
        :pswitch_9
    .end packed-switch
.end method

.method public loadAllAnrFromEF(IILandroid/os/Message;)V
    .locals 2
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "response"

    .prologue
    .line 124
    iput p1, p0, Lzte/contact/ZteAdnRecordLoader;->ef:I

    .line 125
    iput p2, p0, Lzte/contact/ZteAdnRecordLoader;->extensionEF:I

    .line 126
    iput-object p3, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 128
    iget-object v0, p0, Lzte/contact/ZteAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0xc

    invoke-virtual {p0, v1}, Lzte/contact/ZteAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 132
    return-void
.end method

.method public loadAllFromEF(IILandroid/os/Message;)V
    .locals 2
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "response"

    .prologue
    .line 111
    iput p1, p0, Lzte/contact/ZteAdnRecordLoader;->ef:I

    .line 112
    iput p2, p0, Lzte/contact/ZteAdnRecordLoader;->extensionEF:I

    .line 113
    iput-object p3, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 115
    iget-object v0, p0, Lzte/contact/ZteAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x3

    invoke-virtual {p0, v1}, Lzte/contact/ZteAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 119
    return-void
.end method

.method public loadAnrItemsFromEF(IIIIILjava/util/ArrayList;Landroid/os/Message;)V
    .locals 3
    .parameter "efItemSize"
    .parameter "extEfItemSize"
    .parameter "efItemCnt"
    .parameter "efid"
    .parameter "extEfid"
    .parameter
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(IIIII",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 139
    .local p6, recordNumArr:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    iput p4, p0, Lzte/contact/ZteAdnRecordLoader;->ef:I

    .line 140
    iput p5, p0, Lzte/contact/ZteAdnRecordLoader;->extensionEF:I

    .line 141
    iput p2, p0, Lzte/contact/ZteAdnRecordLoader;->extEfItemSize:I

    .line 142
    iput p3, p0, Lzte/contact/ZteAdnRecordLoader;->efItemCnt:I

    .line 143
    iput-object p6, p0, Lzte/contact/ZteAdnRecordLoader;->usedRecordNumArr:Ljava/util/ArrayList;

    .line 144
    iput-object p7, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 146
    const-string v0, "RIL_ZteAdnRecordLoader"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "in loadAnrItemsFromEF, will mFh.loadEFLinearFixedItems,EVENT_ANR_LOAD_ITEMS_DONE,recordNumArr="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 147
    iget-object v0, p0, Lzte/contact/ZteAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v1, 0xe

    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {p0, v1, v2}, Lzte/contact/ZteAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, p4, p6, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedItems(IILjava/util/ArrayList;Landroid/os/Message;)V

    .line 149
    return-void
.end method

.method public loadFromEF(IIILandroid/os/Message;)V
    .locals 2
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "response"

    .prologue
    .line 92
    iput p1, p0, Lzte/contact/ZteAdnRecordLoader;->ef:I

    .line 93
    iput p2, p0, Lzte/contact/ZteAdnRecordLoader;->extensionEF:I

    .line 94
    iput p3, p0, Lzte/contact/ZteAdnRecordLoader;->recordNumber:I

    .line 95
    iput-object p4, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 97
    iget-object v0, p0, Lzte/contact/ZteAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x1

    invoke-virtual {p0, v1}, Lzte/contact/ZteAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p1, p3, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixed(IILandroid/os/Message;)V

    .line 101
    return-void
.end method

.method public updateAdnEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .parameter
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "extRecId"
    .parameter "pin2"
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            "IIII",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 181
    .local p1, recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    move-object/from16 v0, p8

    iput-object v0, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 187
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 189
    .local v8, recordSize:[I
    array-length v1, v8

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget v1, v8, v1

    if-le p5, v1, :cond_2

    .line 190
    :cond_0
    const-string v1, "RIL_ZteAdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateAdnEF, recordSize.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSize[2]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 223
    .end local v8           #recordSize:[I
    :catch_0
    move-exception v7

    .line 224
    .local v7, exc:Ljava/lang/RuntimeException;
    iget-object v1, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 225
    iget-object v1, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 227
    iget-object v1, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 230
    const/4 v1, 0x0

    iput-object v1, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 233
    .end local v7           #exc:Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void

    .line 194
    .restart local v8       #recordSize:[I
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    aget v1, v8, v1

    invoke-virtual {p2, v1, p6}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAdnString(II)[B

    move-result-object v4

    .line 195
    .local v4, data:[B
    if-nez v4, :cond_3

    .line 196
    const-string v1, "RIL_ZteAdnRecordLoader"

    const-string v2, "in updateAdnEF, data == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 197
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "wrong ADN format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 200
    :cond_3
    iget-object v1, p0, Lzte/contact/ZteAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lzte/contact/ZteAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move v2, p3

    move v3, p5

    move-object/from16 v5, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 202
    const/4 v1, 0x1

    iput v1, p0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I

    .line 205
    const/16 v1, 0xff

    if-ne p6, v1, :cond_4

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 206
    :cond_4
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #recordSize:[I
    check-cast v8, [I

    .line 207
    .restart local v8       #recordSize:[I
    array-length v1, v8

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    const/4 v1, 0x2

    aget v1, v8, v1

    if-le p6, v1, :cond_6

    .line 208
    :cond_5
    const-string v1, "RIL_ZteAdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateAdnEF, recordSize.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "extRecId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSize[2]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 209
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 212
    :cond_6
    const/4 v1, 0x0

    aget v1, v8, v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildEXT1String(I)[B

    move-result-object v4

    .line 213
    if-nez v4, :cond_7

    .line 214
    const-string v1, "RIL_ZteAdnRecordLoader"

    const-string v2, "in updateAdnEF, data == null,1"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 215
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "worong ADN format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 218
    :cond_7
    iget-object v1, p0, Lzte/contact/ZteAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v2, 0x5

    invoke-virtual {p0, v2}, Lzte/contact/ZteAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move v2, p4

    move v3, p6

    move-object/from16 v5, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 221
    const/4 v1, 0x1

    iput v1, p0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public updateAnrEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIIILjava/lang/String;ILandroid/os/Message;)V
    .locals 9
    .parameter
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "anradnNumber"
    .parameter "sfi"
    .parameter "pin2"
    .parameter "anrExtRecId"
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            "IIIII",
            "Ljava/lang/String;",
            "I",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 315
    .local p1, recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    move-object/from16 v0, p10

    iput-object v0, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 320
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 322
    .local v8, recordSizeAnr:[I
    array-length v1, v8

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget v1, v8, v1

    if-le p5, v1, :cond_2

    .line 323
    :cond_0
    const-string v1, "RIL_ZteAdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateAnrEF, recordSize.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSize[2]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 324
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 356
    .end local v8           #recordSizeAnr:[I
    :catch_0
    move-exception v7

    .line 357
    .local v7, exc:Ljava/lang/RuntimeException;
    iget-object v1, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 358
    iget-object v1, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 360
    iget-object v1, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 363
    const/4 v1, 0x0

    iput-object v1, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 366
    .end local v7           #exc:Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void

    .line 327
    .restart local v8       #recordSizeAnr:[I
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    aget v2, v8, v1

    move-object v1, p2

    move v3, p5

    move v4, p6

    move/from16 v5, p7

    move/from16 v6, p9

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAnrString(IIIII)[B

    move-result-object v4

    .line 328
    .local v4, data:[B
    if-nez v4, :cond_3

    .line 329
    const-string v1, "RIL_ZteAdnRecordLoader"

    const-string v2, "in updateAnrEF, data == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "wrong ADN format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 333
    :cond_3
    iget-object v1, p0, Lzte/contact/ZteAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lzte/contact/ZteAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move v2, p3

    move v3, p5

    move-object/from16 v5, p8

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 335
    const/4 v1, 0x1

    iput v1, p0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I

    .line 338
    const/16 v1, 0xff

    move/from16 v0, p9

    if-ne v0, v1, :cond_4

    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x14

    if-le v1, v2, :cond_1

    .line 339
    :cond_4
    invoke-static {p4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #recordSizeAnr:[I
    check-cast v8, [I

    .line 340
    .restart local v8       #recordSizeAnr:[I
    array-length v1, v8

    const/4 v2, 0x3

    if-ne v1, v2, :cond_5

    const/4 v1, 0x2

    aget v1, v8, v1

    move/from16 v0, p9

    if-le v0, v1, :cond_6

    .line 341
    :cond_5
    const-string v1, "RIL_ZteAdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateAnrEF, recordSize.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "anrExtRecId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p9

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSizeAnr[2]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 342
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 345
    :cond_6
    const/4 v1, 0x0

    aget v1, v8, v1

    invoke-virtual {p2, v1}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildAnrEXT1String(I)[B

    move-result-object v4

    .line 346
    if-nez v4, :cond_7

    .line 347
    const-string v1, "RIL_ZteAdnRecordLoader"

    const-string v2, "in updateAnrEF, data == null,1"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 348
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "wrong ADN format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 351
    :cond_7
    iget-object v1, p0, Lzte/contact/ZteAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x9

    invoke-virtual {p0, v2}, Lzte/contact/ZteAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move v2, p4

    move/from16 v3, p9

    move-object/from16 v5, p8

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 354
    const/4 v1, 0x1

    iput v1, p0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public updateEF(Lcom/android/internal/telephony/uicc/AdnRecord;IIILjava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "adn"
    .parameter "ef"
    .parameter "extensionEF"
    .parameter "recordNumber"
    .parameter "pin2"
    .parameter "response"

    .prologue
    .line 167
    iput p2, p0, Lzte/contact/ZteAdnRecordLoader;->ef:I

    .line 168
    iput p3, p0, Lzte/contact/ZteAdnRecordLoader;->extensionEF:I

    .line 169
    iput p4, p0, Lzte/contact/ZteAdnRecordLoader;->recordNumber:I

    .line 170
    iput-object p6, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 171
    iput-object p5, p0, Lzte/contact/ZteAdnRecordLoader;->pin2:Ljava/lang/String;

    .line 173
    iget-object v0, p0, Lzte/contact/ZteAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v1, 0x4

    invoke-virtual {p0, v1, p1}, Lzte/contact/ZteAdnRecordLoader;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, p2, v1}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 175
    return-void
.end method

.method public updateEmailEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .parameter
    .parameter "adn"
    .parameter "ef"
    .parameter "recordNumber"
    .parameter "EmailadnNumber"
    .parameter "sfi"
    .parameter "pin2"
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            "IIII",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 239
    .local p1, recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    move-object/from16 v0, p8

    iput-object v0, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 244
    :try_start_0
    invoke-static {p3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 246
    .local v8, recordSizeEmail:[I
    array-length v1, v8

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget v1, v8, v1

    if-le p4, v1, :cond_2

    .line 247
    :cond_0
    const-string v1, "RIL_ZteAdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateEmailEF, recordSizeEmail.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSizeEmail[2]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 261
    .end local v8           #recordSizeEmail:[I
    :catch_0
    move-exception v7

    .line 262
    .local v7, exc:Ljava/lang/RuntimeException;
    iget-object v1, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 263
    iget-object v1, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 265
    iget-object v1, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 268
    const/4 v1, 0x0

    iput-object v1, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 271
    .end local v7           #exc:Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void

    .line 251
    .restart local v8       #recordSizeEmail:[I
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    aget v1, v8, v1

    invoke-virtual {p2, v1, p4, p5, p6}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildEmailString(IIII)[B

    move-result-object v4

    .line 252
    .local v4, data:[B
    if-nez v4, :cond_3

    .line 253
    const-string v1, "RIL_ZteAdnRecordLoader"

    const-string v2, "in updateEmailEF, data == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "worong ADN format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 257
    :cond_3
    iget-object v1, p0, Lzte/contact/ZteAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v2, 0x7

    invoke-virtual {p0, v2}, Lzte/contact/ZteAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move v2, p3

    move v3, p4

    move-object/from16 v5, p7

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 260
    const/4 v1, 0x1

    iput v1, p0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method public updateIapEF(Ljava/util/Map;Lcom/android/internal/telephony/uicc/AdnRecord;IIIIIILjava/lang/String;Landroid/os/Message;)V
    .locals 9
    .parameter
    .parameter "adn"
    .parameter "Emailiniap"
    .parameter "Anriniap"
    .parameter "IapforEmail"
    .parameter "IapforAnr"
    .parameter "ef"
    .parameter "recordNumber"
    .parameter "pin2"
    .parameter "response"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[I>;",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            "IIIIII",
            "Ljava/lang/String;",
            "Landroid/os/Message;",
            ")V"
        }
    .end annotation

    .prologue
    .line 277
    .local p1, recordSizeMap:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;[I>;"
    move-object/from16 v0, p10

    iput-object v0, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 281
    :try_start_0
    invoke-static/range {p7 .. p7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {p1, v1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, [I

    .line 283
    .local v8, recordSizeIap:[I
    array-length v1, v8

    const/4 v2, 0x3

    if-ne v1, v2, :cond_0

    const/4 v1, 0x2

    aget v1, v8, v1

    move/from16 v0, p8

    if-le v0, v1, :cond_2

    .line 284
    :cond_0
    const-string v1, "RIL_ZteAdnRecordLoader"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in updateIapEF, recordSizeIap.length="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    array-length v3, v8

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordNumber="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p8

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "recordSizeIap[2]="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const/4 v3, 0x2

    aget v3, v8, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "get wrong EF record size format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    .end local v8           #recordSizeIap:[I
    :catch_0
    move-exception v7

    .line 300
    .local v7, exc:Ljava/lang/RuntimeException;
    iget-object v1, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    if-eqz v1, :cond_1

    .line 301
    iget-object v1, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-static {v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v7, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 303
    iget-object v1, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    invoke-virtual {v1}, Landroid/os/Message;->sendToTarget()V

    .line 306
    const/4 v1, 0x0

    iput-object v1, p0, Lzte/contact/ZteAdnRecordLoader;->userResponse:Landroid/os/Message;

    .line 309
    .end local v7           #exc:Ljava/lang/RuntimeException;
    :cond_1
    :goto_0
    return-void

    .line 288
    .restart local v8       #recordSizeIap:[I
    :cond_2
    const/4 v1, 0x0

    :try_start_1
    aget v2, v8, v1

    move-object v1, p2

    move v3, p5

    move v4, p6

    move v5, p3

    move v6, p4

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->buildIapString(IIIII)[B

    move-result-object v4

    .line 289
    .local v4, data:[B
    if-nez v4, :cond_3

    .line 290
    const-string v1, "RIL_ZteAdnRecordLoader"

    const-string v2, "in updateIapEF, data == null"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    new-instance v1, Ljava/lang/RuntimeException;

    const-string v2, "worong ADN format"

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 294
    :cond_3
    iget-object v1, p0, Lzte/contact/ZteAdnRecordLoader;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0xb

    invoke-virtual {p0, v2}, Lzte/contact/ZteAdnRecordLoader;->obtainMessage(I)Landroid/os/Message;

    move-result-object v6

    move/from16 v2, p7

    move/from16 v3, p8

    move-object/from16 v5, p9

    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFLinearFixed(II[BLjava/lang/String;Landroid/os/Message;)V

    .line 297
    const/4 v1, 0x1

    iput v1, p0, Lzte/contact/ZteAdnRecordLoader;->pendingExtLoads:I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method
