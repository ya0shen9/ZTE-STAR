.class public Lzte/contact/zteUsimPhoneBookManager;
.super Landroid/os/Handler;
.source "zteUsimPhoneBookManager.java"

# interfaces
.implements Lcom/android/internal/telephony/uicc/IccConstants;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;,
        Lzte/contact/zteUsimPhoneBookManager$PbrFile;,
        Lzte/contact/zteUsimPhoneBookManager$usimphonebook;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_ANR_ALL_LOAD_DONE:I = 0x7

.field private static final EVENT_ANR_EXT_RECORD_LOAD_DONE:I = 0x6

.field private static final EVENT_ANR_LOAD_DONE:I = 0x5

.field private static final EVENT_ANR_USED_ITEMS_LOAD_DONE:I = 0xa

.field private static final EVENT_EMAIL_LOAD_DONE:I = 0x4

.field private static final EVENT_EMAIL_USED_ITEMS_LOAD_DONE:I = 0x9

.field private static final EVENT_GET_EF_FILE_RECORD_SIZE_DONE:I = 0x5

.field private static final EVENT_IAP_LOAD_DONE:I = 0x3

.field private static final EVENT_PBR_LOAD_DONE:I = 0x1

.field private static final EVENT_USIM_ADN_LOAD_DONE:I = 0x2

.field private static final EXT_RECORD_LENGTH_BYTES:I = 0xd

.field private static final EXT_RECORD_TYPE_ADDITIONAL_DATA:I = 0x2

.field private static final EXT_RECORD_TYPE_MASK:I = 0x3

.field private static final LOG_TAG:Ljava/lang/String; = "RIL_zteUsimPhoneBookManager"

.field private static final MAX_EXT_CALLED_PARTY_LENGTH:I = 0xa

.field private static final USIM_EFAAS_TAG:I = 0xc7

.field private static final USIM_EFADN_TAG:I = 0xc0

.field private static final USIM_EFANR_TAG:I = 0xc4

.field private static final USIM_EFCCP1_TAG:I = 0xcb

.field private static final USIM_EFEMAIL_TAG:I = 0xca

.field private static final USIM_EFEXT1_TAG:I = 0xc2

.field private static final USIM_EFGRP_TAG:I = 0xc6

.field private static final USIM_EFGSD_TAG:I = 0xc8

.field private static final USIM_EFIAP_TAG:I = 0xc1

.field private static final USIM_EFPBC_TAG:I = 0xc5

.field private static final USIM_EFSNE_TAG:I = 0xc3

.field private static final USIM_EFUID_TAG:I = 0xc9

.field private static final USIM_TYPE1_TAG:I = 0xa8

.field private static final USIM_TYPE2_TAG:I = 0xa9

.field private static final USIM_TYPE3_TAG:I = 0xaa

.field private static mEmailPresentInIap:Z


# instance fields
.field private Anrdatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private Emaildatas:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private anrExtRecId:I

.field private anrRecordExt:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private ext1Efid:I

.field private mAdnCache:Lzte/contact/zteAdnRecordCache;

.field private mAnrFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mAnrForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private mAnrItemsUsed:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mAnrPresentInIap:Z

.field private mAnrTagNumberInIap:I

.field private mAnrsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEmailFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mEmailItemsUsed:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field private mEmailTagNumberInIap:I

.field private mEmailsForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;>;"
        }
    .end annotation
.end field

.field private mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

.field private mIapFileRecord:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field private mIapForAdnRec:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[B>;"
        }
    .end annotation
.end field

.field private mIsPbrPresent:Ljava/lang/Boolean;

.field private mLock:Ljava/lang/Object;

.field private mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

.field private mPbrFileSfi:Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;

.field private mPhoneBookRecords:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field private mRecordSize:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation
.end field

.field private mRefreshCache:Z

.field private oldNumAdnRec:I

.field private pbrNumbers:I

.field private upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 46
    const/4 v0, 0x0

    sput-boolean v0, Lzte/contact/zteUsimPhoneBookManager;->mEmailPresentInIap:Z

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/uicc/IccFileHandler;Lzte/contact/zteAdnRecordCache;)V
    .locals 3
    .parameter "fh"
    .parameter "cache"

    .prologue
    const/4 v2, -0x1

    const/4 v1, 0x0

    .line 130
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 44
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    .line 47
    iput v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailTagNumberInIap:I

    .line 51
    iput-boolean v1, p0, Lzte/contact/zteUsimPhoneBookManager;->mRefreshCache:Z

    .line 54
    iput-boolean v1, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrPresentInIap:Z

    .line 55
    iput v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrTagNumberInIap:I

    .line 61
    iput v1, p0, Lzte/contact/zteUsimPhoneBookManager;->oldNumAdnRec:I

    .line 63
    const/16 v0, 0xff

    iput v0, p0, Lzte/contact/zteUsimPhoneBookManager;->anrExtRecId:I

    .line 72
    iput v1, p0, Lzte/contact/zteUsimPhoneBookManager;->ext1Efid:I

    .line 73
    iput v1, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    .line 131
    iput-object p1, p0, Lzte/contact/zteUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    .line 132
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    .line 134
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    .line 135
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->Emaildatas:Ljava/util/ArrayList;

    .line 137
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    .line 140
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 141
    iput-object p2, p0, Lzte/contact/zteUsimPhoneBookManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    .line 143
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mRecordSize:Ljava/util/Map;

    .line 147
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailItemsUsed:Ljava/util/HashMap;

    .line 148
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrItemsUsed:Ljava/util/HashMap;

    .line 150
    return-void
.end method

.method static synthetic access$002(Lzte/contact/zteUsimPhoneBookManager;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput-boolean p1, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrPresentInIap:Z

    return p1
.end method

.method static synthetic access$102(Lzte/contact/zteUsimPhoneBookManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrTagNumberInIap:I

    return p1
.end method

.method static synthetic access$202(Z)Z
    .locals 0
    .parameter "x0"

    .prologue
    .line 37
    sput-boolean p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailPresentInIap:Z

    return p0
.end method

.method static synthetic access$302(Lzte/contact/zteUsimPhoneBookManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailTagNumberInIap:I

    return p1
.end method

.method static synthetic access$402(Lzte/contact/zteUsimPhoneBookManager;I)I
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 37
    iput p1, p0, Lzte/contact/zteUsimPhoneBookManager;->ext1Efid:I

    return p1
.end method

.method private createPbrFile(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 1131
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 1132
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    .line 1133
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 1137
    :goto_0
    return-void

    .line 1136
    :cond_0
    new-instance v0, Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    invoke-direct {v0, p0, p1}, Lzte/contact/zteUsimPhoneBookManager$PbrFile;-><init>(Lzte/contact/zteUsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    goto :goto_0
.end method

.method private createPbrFileSfi(Ljava/util/ArrayList;)V
    .locals 1
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 606
    .local p1, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    if-nez p1, :cond_0

    .line 607
    const/4 v0, 0x0

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFileSfi:Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;

    .line 612
    :goto_0
    return-void

    .line 611
    :cond_0
    new-instance v0, Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;

    invoke-direct {v0, p0, p1}, Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;-><init>(Lzte/contact/zteUsimPhoneBookManager;Ljava/util/ArrayList;)V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFileSfi:Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;

    goto :goto_0
.end method

.method private getEfFileRecordSize()V
    .locals 9

    .prologue
    const/16 v8, 0xca

    const/16 v7, 0xc4

    const/16 v6, 0xc2

    const/16 v5, 0xc1

    .line 159
    iget-object v3, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 181
    :cond_0
    return-void

    .line 161
    :cond_1
    iget-object v3, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v3}, Ljava/util/HashMap;->size()I

    move-result v2

    .line 163
    .local v2, numRecs:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 164
    iget-object v3, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 165
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 167
    const/16 v3, 0xc0

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lzte/contact/zteUsimPhoneBookManager;->getEfFileRecordSizeAndWait(I)V

    .line 168
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 169
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lzte/contact/zteUsimPhoneBookManager;->getEfFileRecordSizeAndWait(I)V

    .line 171
    :cond_2
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 172
    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lzte/contact/zteUsimPhoneBookManager;->getEfFileRecordSizeAndWait(I)V

    .line 174
    :cond_3
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_4

    .line 175
    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lzte/contact/zteUsimPhoneBookManager;->getEfFileRecordSizeAndWait(I)V

    .line 177
    :cond_4
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_5

    .line 178
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v0, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-direct {p0, v3}, Lzte/contact/zteUsimPhoneBookManager;->getEfFileRecordSizeAndWait(I)V

    .line 163
    :cond_5
    add-int/lit8 v1, v1, 0x1

    goto/16 :goto_0
.end method

.method private getEfFileRecordSizeAndWait(I)V
    .locals 4
    .parameter "fileId"

    .prologue
    .line 184
    const-string v1, "RIL_zteUsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "in getEfFileRecordSizeAndWait,fileId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",will mFh.getEFLinearRecordSize,EVENT_GET_EF_FILE_RECORD_SIZE_DONE"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lzte/contact/zteUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v2, 0x5

    const/4 v3, 0x0

    invoke-virtual {p0, v2, p1, v3}, Lzte/contact/zteUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, p1, v2}, Lcom/android/internal/telephony/uicc/IccFileHandler;->getEFLinearRecordSize(ILandroid/os/Message;)V

    .line 187
    :try_start_0
    iget-object v1, p0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 191
    :goto_0
    return-void

    .line 188
    :catch_0
    move-exception v0

    .line 189
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "RIL_zteUsimPhoneBookManager"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Interrupted Exception in getEfFileRecordSizeAndWait,fileId="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private getUsedEmailAndAnrItems(Ljava/util/ArrayList;I)V
    .locals 11
    .parameter
    .parameter "pbrIndex"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;I)V"
        }
    .end annotation

    .prologue
    .local p1, iapList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/16 v10, 0xff

    .line 1142
    const/4 v3, 0x0

    .line 1143
    .local v3, emailIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 1144
    .local v1, anrIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    const-string v7, "RIL_zteUsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in getUsedEmailAndAnrItems,isANRTYP2()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {p0}, Lzte/contact/zteUsimPhoneBookManager;->isANRTYP2()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ",isEMAILTYP2()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {}, Lzte/contact/zteUsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1145
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    invoke-virtual {p1}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_7

    .line 1146
    invoke-virtual {p1, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, [B

    .line 1147
    .local v5, iapRec:[B
    if-nez v5, :cond_1

    .line 1145
    :cond_0
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 1151
    :cond_1
    invoke-static {}, Lzte/contact/zteUsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v7

    if-eqz v7, :cond_4

    .line 1152
    if-nez v3, :cond_2

    .line 1153
    new-instance v3, Ljava/util/ArrayList;

    .end local v3           #emailIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 1156
    .restart local v3       #emailIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_2
    iget v7, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v7, v5, v7

    and-int/lit16 v2, v7, 0xff

    .line 1157
    .local v2, emailIndex:I
    if-lez v2, :cond_3

    if-eq v2, v10, :cond_3

    .line 1158
    const-string v7, "RIL_zteUsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in getUsedEmailAndAnrItems,emailIndex="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    const-string v7, "RIL_zteUsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in getUsedEmailAndAnrItems,hasContained="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v9

    invoke-virtual {v3, v9}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1160
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_3

    .line 1161
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v3, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1164
    :cond_3
    const-string v7, "RIL_zteUsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in getUsedEmailAndAnrItems,emailIndexList.size()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1167
    .end local v2           #emailIndex:I
    :cond_4
    invoke-virtual {p0}, Lzte/contact/zteUsimPhoneBookManager;->isANRTYP2()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 1168
    if-nez v1, :cond_5

    .line 1169
    new-instance v1, Ljava/util/ArrayList;

    .end local v1           #anrIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 1172
    .restart local v1       #anrIndexList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :cond_5
    iget v7, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrTagNumberInIap:I

    aget-byte v7, v5, v7

    and-int/lit16 v0, v7, 0xff

    .line 1173
    .local v0, anrIndex:I
    if-lez v0, :cond_6

    if-eq v0, v10, :cond_6

    .line 1174
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_6

    .line 1175
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v1, v7}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1178
    :cond_6
    const-string v7, "RIL_zteUsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in getUsedEmailAndAnrItems,anrIndexList.size()="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_1

    .line 1182
    .end local v0           #anrIndex:I
    .end local v5           #iapRec:[B
    :cond_7
    invoke-static {}, Lzte/contact/zteUsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v7

    if-eqz v7, :cond_a

    .line 1183
    const/4 v6, 0x0

    .line 1184
    .local v6, j:I
    :goto_2
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_8

    .line 1185
    const-string v7, "RIL_zteUsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in getUsedEmailAndAnrItems,before sort,emailIndexList["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1184
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1187
    :cond_8
    invoke-static {v3}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1188
    const/4 v6, 0x0

    :goto_3
    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v6, v7, :cond_9

    .line 1189
    const-string v7, "RIL_zteUsimPhoneBookManager"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "in getUsedEmailAndAnrItems,after sort,emailIndexList["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "]="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v3, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v9

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1188
    add-int/lit8 v6, v6, 0x1

    goto :goto_3

    .line 1191
    :cond_9
    iget-object v7, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailItemsUsed:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1194
    .end local v6           #j:I
    :cond_a
    invoke-virtual {p0}, Lzte/contact/zteUsimPhoneBookManager;->isANRTYP2()Z

    move-result v7

    if-eqz v7, :cond_b

    .line 1195
    invoke-static {v1}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 1196
    iget-object v7, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrItemsUsed:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-virtual {v7, v8, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1198
    :cond_b
    return-void
.end method

.method public static isEMAILTYP2()Z
    .locals 1

    .prologue
    .line 215
    sget-boolean v0, Lzte/contact/zteUsimPhoneBookManager;->mEmailPresentInIap:Z

    return v0
.end method

.method private log(Ljava/lang/String;)V
    .locals 1
    .parameter "msg"

    .prologue
    .line 1622
    const-string v0, "RIL_zteUsimPhoneBookManager"

    invoke-static {v0, p1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    return-void
.end method

.method private readAdnFileAndWait(I)V
    .locals 8
    .parameter "recNum"

    .prologue
    const/16 v7, 0xc2

    const/16 v4, 0xc0

    const/4 v6, 0x2

    const/4 v5, 0x0

    .line 1108
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v2, :cond_1

    .line 1128
    :cond_0
    :goto_0
    return-void

    .line 1109
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 1110
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1112
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1115
    new-instance v3, Lzte/contact/ZteAdnRecordLoader;

    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v2}, Lzte/contact/ZteAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v6, p1, v5}, Lzte/contact/zteUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v5

    invoke-virtual {v3, v4, v2, v5}, Lzte/contact/ZteAdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    .line 1124
    :goto_1
    :try_start_0
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v2}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1125
    :catch_0
    move-exception v0

    .line 1126
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v2, "RIL_zteUsimPhoneBookManager"

    const-string v3, "Interrupted Exception in readAdnFileAndWait"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1119
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_2
    new-instance v3, Lzte/contact/ZteAdnRecordLoader;

    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v3, v2}, Lzte/contact/ZteAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p0, v6, p1, v5}, Lzte/contact/zteUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v2, v5, v4}, Lzte/contact/ZteAdnRecordLoader;->loadAllFromEF(IILandroid/os/Message;)V

    goto :goto_1
.end method

.method private readAnrFileAndWait(I)V
    .locals 14
    .parameter "recNum"

    .prologue
    const/16 v13, 0xc4

    const/16 v7, 0xc2

    const/4 v12, 0x0

    .line 422
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v0, :cond_1

    .line 468
    :cond_0
    :goto_0
    return-void

    .line 423
    :cond_1
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v0, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/util/Map;

    .line 424
    .local v10, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v10, :cond_0

    invoke-interface {v10}, Ljava/util/Map;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_0

    .line 426
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 427
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v4

    .line 428
    .local v4, efid:I
    const/4 v5, 0x0

    .line 429
    .local v5, extEfid:I
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 430
    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    invoke-interface {v10, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 433
    :cond_2
    invoke-virtual {p0}, Lzte/contact/zteUsimPhoneBookManager;->isANRTYP2()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 434
    const-string v0, "RIL_zteUsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "in readAnrFileAndWait, is type2 anr,recNum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 435
    const/4 v11, 0x0

    .line 436
    .local v11, recordSize:[I
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mRecordSize:Ljava/util/Map;

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #recordSize:[I
    check-cast v11, [I

    .line 437
    .restart local v11       #recordSize:[I
    if-nez v11, :cond_3

    .line 438
    const-string v0, "RIL_zteUsimPhoneBookManager"

    const-string v6, " in readAnrFileAndWait, error, recordSize == null"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 441
    :cond_3
    aget v1, v11, v12

    .line 442
    .local v1, efItemSize:I
    const/4 v0, 0x2

    aget v3, v11, v0

    .line 443
    .local v3, efItemCnt:I
    const/4 v2, 0x0

    .line 444
    .local v2, extEfItemSize:I
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mRecordSize:Ljava/util/Map;

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {v0, v6}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [I

    .line 445
    .local v9, extRecordSize:[I
    if-eqz v9, :cond_4

    .line 446
    aget v2, v9, v12

    .line 449
    :cond_4
    const-string v0, "RIL_zteUsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "in readAnrFileAndWait, mAnrItemsUsed.get(recNum)="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    iget-object v7, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrItemsUsed:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 450
    new-instance v0, Lzte/contact/ZteAdnRecordLoader;

    iget-object v6, p0, Lzte/contact/zteUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v6}, Lzte/contact/ZteAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    iget-object v6, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrItemsUsed:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    const/16 v7, 0xa

    invoke-virtual {p0, v7, p1, v4}, Lzte/contact/zteUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual/range {v0 .. v7}, Lzte/contact/ZteAdnRecordLoader;->loadAnrItemsFromEF(IIIIILjava/util/ArrayList;Landroid/os/Message;)V

    .line 460
    .end local v1           #efItemSize:I
    .end local v2           #extEfItemSize:I
    .end local v3           #efItemCnt:I
    .end local v9           #extRecordSize:[I
    .end local v11           #recordSize:[I
    :goto_1
    :try_start_0
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v0}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 461
    :catch_0
    move-exception v8

    .line 462
    .local v8, e:Ljava/lang/InterruptedException;
    const-string v0, "RIL_zteUsimPhoneBookManager"

    const-string v6, "Interrupted Exception in readAnrFileAndWait"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 453
    .end local v8           #e:Ljava/lang/InterruptedException;
    :cond_5
    const-string v0, "RIL_zteUsimPhoneBookManager"

    const-string v6, "in readAnrFileAndWait, is type1 anr"

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    const-string v0, "RIL_zteUsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "in readAnrFileAndWait,will AdnRecordLoader(mFh).loadAllAnrFromEF,EVENT_ANR_ALL_LOAD_DONE,recNum="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v0, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    new-instance v0, Lzte/contact/ZteAdnRecordLoader;

    iget-object v6, p0, Lzte/contact/zteUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-direct {v0, v6}, Lzte/contact/ZteAdnRecordLoader;-><init>(Lcom/android/internal/telephony/uicc/IccFileHandler;)V

    const/4 v6, 0x7

    invoke-virtual {p0, v6, v4, p1}, Lzte/contact/zteUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v0, v4, v5, v6}, Lzte/contact/ZteAdnRecordLoader;->loadAllAnrFromEF(IILandroid/os/Message;)V

    goto :goto_1
.end method

.method private readAnrRecord(I)Ljava/lang/String;
    .locals 7
    .parameter "recNum"

    .prologue
    .line 997
    const/4 v3, 0x0

    .line 999
    .local v3, anrRec:[B
    :try_start_0
    iget-object v5, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v5, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    move-object v0, v5

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1004
    const/4 v5, 0x1

    aget-byte v5, v3, v5

    and-int/lit16 v2, v5, 0xff

    .line 1006
    .local v2, anrLength:I
    const/4 v5, 0x2

    add-int/lit8 v6, v2, 0x1

    invoke-static {v3, v5, v6}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v1

    .line 1007
    .end local v2           #anrLength:I
    :goto_0
    return-object v1

    .line 1000
    :catch_0
    move-exception v4

    .line 1001
    .local v4, e:Ljava/lang/IndexOutOfBoundsException;
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "readAnrRecord mAnrFileRecord.get exception anrRec = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-direct {p0, v5}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1002
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private readEmailFileAndWait(I)V
    .locals 9
    .parameter "recNum"

    .prologue
    const/16 v6, 0xca

    const/4 v8, 0x0

    .line 357
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v4, :cond_1

    .line 399
    :cond_0
    :goto_0
    return-void

    .line 358
    :cond_1
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v4, v4, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 359
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_0

    .line 361
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 362
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 363
    .local v1, efid:I
    invoke-static {}, Lzte/contact/zteUsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v4

    if-eqz v4, :cond_3

    .line 364
    const-string v4, "RIL_zteUsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in readEmailFileAndWait, is type2 email,recNum="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 365
    const/4 v3, 0x0

    .line 366
    .local v3, recordSize:[I
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mRecordSize:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-interface {v4, v5}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #recordSize:[I
    check-cast v3, [I

    .line 367
    .restart local v3       #recordSize:[I
    if-nez v3, :cond_2

    .line 368
    const-string v4, "RIL_zteUsimPhoneBookManager"

    const-string v5, " in readEmailFileAndWait, error, recordSize == null"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 372
    :cond_2
    const-string v4, "RIL_zteUsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in readEmailFileAndWait, recordSize[0] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget v6, v3, v8

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    const-string v4, "RIL_zteUsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in readEmailFileAndWait, recordSize[1] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x1

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v4, "RIL_zteUsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, " in readEmailFileAndWait, recordSize[2] = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const/4 v6, 0x2

    aget v6, v3, v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 375
    const-string v4, "RIL_zteUsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "in readEmailFileAndWait, mEmailItemsUsed.get(recNum) = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailItemsUsed:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    iget-object v5, p0, Lzte/contact/zteUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    aget v6, v3, v8

    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailItemsUsed:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v4, v7}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/ArrayList;

    const/16 v7, 0x9

    invoke-virtual {p0, v7, p1, v1}, Lzte/contact/zteUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v7

    invoke-virtual {v5, v6, v1, v4, v7}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedItems(IILjava/util/ArrayList;Landroid/os/Message;)V

    .line 387
    .end local v3           #recordSize:[I
    :goto_1
    :try_start_0
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v4}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 392
    :goto_2
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v4, :cond_0

    .line 393
    const-string v4, "RIL_zteUsimPhoneBookManager"

    const-string v5, "Error: Email file is empty"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 382
    :cond_3
    const-string v4, "RIL_zteUsimPhoneBookManager"

    const-string v5, " in readEmailFileAndWait, is type1 email"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    iget-object v5, p0, Lzte/contact/zteUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-interface {v2, v4}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    const/4 v6, 0x4

    invoke-virtual {p0, v6, p1, v8}, Lzte/contact/zteUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v5, v4, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    goto :goto_1

    .line 388
    :catch_0
    move-exception v0

    .line 389
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v4, "RIL_zteUsimPhoneBookManager"

    const-string v5, "Interrupted Exception in readEmailFileAndWait"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method private readEmailRecord(Ljava/util/ArrayList;I)Ljava/lang/String;
    .locals 7
    .parameter
    .parameter "recNum"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;I)",
            "Ljava/lang/String;"
        }
    .end annotation

    .prologue
    .local p1, emailFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const/4 v6, 0x0

    .line 1085
    const/4 v3, 0x0

    .line 1087
    .local v3, emailRec:[B
    :try_start_0
    invoke-virtual {p1, p2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    move-object v0, v4

    check-cast v0, [B

    move-object v3, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1093
    array-length v4, v3

    add-int/lit8 v4, v4, -0x2

    invoke-static {v3, v6, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 1098
    .local v2, email:Ljava/lang/String;
    const/4 v4, -0x1

    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    aget-byte v5, v3, v5

    if-ne v4, v5, :cond_0

    .line 1099
    array-length v4, v3

    invoke-static {v3, v6, v4}, Lcom/android/internal/telephony/uicc/IccUtils;->adnStringFieldToString([BII)Ljava/lang/String;

    move-result-object v2

    .line 1103
    .end local v2           #email:Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v2

    .line 1088
    :catch_0
    move-exception v1

    .line 1089
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private readIapFileAndWait(I)V
    .locals 6
    .parameter "recNum"

    .prologue
    .line 405
    iget-object v3, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-nez v3, :cond_1

    .line 416
    :cond_0
    :goto_0
    return-void

    .line 406
    :cond_1
    iget-object v3, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v3, v3, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/util/Map;

    .line 407
    .local v2, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v2, :cond_0

    invoke-interface {v2}, Ljava/util/Map;->isEmpty()Z

    move-result v3

    if-nez v3, :cond_0

    .line 408
    const/16 v3, 0xc1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Integer;

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v1

    .line 410
    .local v1, efid:I
    iget-object v3, p0, Lzte/contact/zteUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/4 v4, 0x3

    const/4 v5, 0x0

    invoke-virtual {p0, v4, p1, v5}, Lzte/contact/zteUsimPhoneBookManager;->obtainMessage(III)Landroid/os/Message;

    move-result-object v4

    invoke-virtual {v3, v1, v4}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 412
    :try_start_0
    iget-object v3, p0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v3}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 413
    :catch_0
    move-exception v0

    .line 414
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v3, "RIL_zteUsimPhoneBookManager"

    const-string v4, "Interrupted Exception in readIapFileAndWait"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private readIapRecord(I)[B
    .locals 4
    .parameter "recNum"

    .prologue
    .line 1075
    const/4 v2, 0x0

    .line 1077
    .local v2, iapRec:[B
    :try_start_0
    iget-object v3, p0, Lzte/contact/zteUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v3, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    move-object v0, v3

    check-cast v0, [B

    move-object v2, v0
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    move-object v3, v2

    .line 1081
    :goto_0
    return-object v3

    .line 1078
    :catch_0
    move-exception v1

    .line 1079
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const/4 v3, 0x0

    goto :goto_0
.end method

.method private readPbrFileAndWait()V
    .locals 4

    .prologue
    .line 345
    iget-object v1, p0, Lzte/contact/zteUsimPhoneBookManager;->mFh:Lcom/android/internal/telephony/uicc/IccFileHandler;

    const/16 v2, 0x4f30

    const/4 v3, 0x1

    invoke-virtual {p0, v3}, Lzte/contact/zteUsimPhoneBookManager;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFLinearFixedAll(ILandroid/os/Message;)V

    .line 347
    :try_start_0
    iget-object v1, p0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    .line 351
    :goto_0
    return-void

    .line 348
    :catch_0
    move-exception v0

    .line 349
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "RIL_zteUsimPhoneBookManager"

    const-string v2, "Interrupted Exception in readPbrFileAndWait"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private refreshCache()V
    .locals 3

    .prologue
    .line 331
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 338
    :cond_0
    return-void

    .line 332
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->clear()V

    .line 334
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 335
    .local v1, numRecs:I
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 336
    invoke-direct {p0, v0}, Lzte/contact/zteUsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 335
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method private updatePhoneAdnRecord(I)V
    .locals 13
    .parameter "recordNum"

    .prologue
    const/4 v12, 0x0

    .line 800
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    if-nez v10, :cond_1

    .line 885
    :cond_0
    :goto_0
    return-void

    .line 801
    :cond_1
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v5

    .line 803
    .local v5, numAdnRecs:I
    if-nez p1, :cond_2

    .line 804
    iput v5, p0, Lzte/contact/zteUsimPhoneBookManager;->oldNumAdnRec:I

    .line 806
    :cond_2
    const/4 v7, 0x0

    .line 807
    .local v7, recIndex:I
    if-lez p1, :cond_4

    .line 808
    iget v7, p0, Lzte/contact/zteUsimPhoneBookManager;->oldNumAdnRec:I

    .line 812
    :goto_1
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    if-eqz v10, :cond_5

    invoke-static {}, Lzte/contact/zteUsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v10

    if-eqz v10, :cond_5

    .line 817
    iget v10, p0, Lzte/contact/zteUsimPhoneBookManager;->oldNumAdnRec:I

    invoke-virtual {p0, p1, v10}, Lzte/contact/zteUsimPhoneBookManager;->parseType1IapFile(II)V

    .line 819
    move v3, v7

    .local v3, i:I
    :goto_2
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v10

    if-ge v3, v10, :cond_5

    .line 820
    const/4 v9, 0x0

    .line 822
    .local v9, record:[B
    :try_start_0
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mIapForAdnRec:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    .end local v9           #record:[B
    check-cast v9, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 828
    .restart local v9       #record:[B
    if-nez v9, :cond_6

    .line 819
    :cond_3
    :goto_3
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 810
    .end local v3           #i:I
    .end local v9           #record:[B
    :cond_4
    const/4 v7, 0x0

    goto :goto_1

    .line 823
    .restart local v3       #i:I
    :catch_0
    move-exception v0

    .line 824
    .local v0, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v10, "RIL_zteUsimPhoneBookManager"

    const-string v11, "Error: Improper ICC card: No IAP record for ADN, continuing"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 853
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v3           #i:I
    :cond_5
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 860
    .local v4, len:I
    iget v10, p0, Lzte/contact/zteUsimPhoneBookManager;->oldNumAdnRec:I

    invoke-virtual {p0, p1, v10}, Lzte/contact/zteUsimPhoneBookManager;->parseType1EmailFile(II)V

    .line 868
    move v3, v7

    .restart local v3       #i:I
    :goto_4
    if-ge v3, v5, :cond_0

    .line 870
    const/4 v1, 0x0

    .line 872
    .local v1, emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :try_start_1
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v11

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    .end local v1           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    check-cast v1, Ljava/util/ArrayList;
    :try_end_1
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_1

    .line 876
    .restart local v1       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v1, :cond_8

    .line 868
    :goto_5
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 831
    .end local v1           #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .end local v4           #len:I
    .restart local v9       #record:[B
    :cond_6
    iget v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailTagNumberInIap:I

    aget-byte v10, v9, v10

    and-int/lit16 v8, v10, 0xff

    .line 833
    .local v8, recNum:I
    const/4 v10, -0x1

    if-eq v8, v10, :cond_3

    .line 834
    const/4 v10, 0x1

    new-array v2, v10, [Ljava/lang/String;

    .line 836
    .local v2, emails:[Ljava/lang/String;
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    add-int/lit8 v11, v8, -0x1

    invoke-direct {p0, v10, v11}, Lzte/contact/zteUsimPhoneBookManager;->readEmailRecord(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v10

    aput-object v10, v2, v12

    .line 837
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 838
    .local v6, rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v6, :cond_7

    .line 839
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 844
    :goto_6
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 842
    :cond_7
    new-instance v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .end local v6           #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string v10, ""

    const-string v11, ""

    invoke-direct {v6, v10, v11, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;)V

    .restart local v6       #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    goto :goto_6

    .line 873
    .end local v2           #emails:[Ljava/lang/String;
    .end local v6           #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v8           #recNum:I
    .end local v9           #record:[B
    .restart local v4       #len:I
    :catch_1
    move-exception v0

    .line 874
    .restart local v0       #e:Ljava/lang/IndexOutOfBoundsException;
    goto/16 :goto_0

    .line 878
    .end local v0           #e:Ljava/lang/IndexOutOfBoundsException;
    .restart local v1       #emailList:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_8
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 880
    .restart local v6       #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v10

    new-array v2, v10, [Ljava/lang/String;

    .line 881
    .restart local v2       #emails:[Ljava/lang/String;
    invoke-virtual {v1}, Ljava/util/ArrayList;->toArray()[Ljava/lang/Object;

    move-result-object v10

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v11

    invoke-static {v10, v12, v2, v12, v11}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 882
    invoke-virtual {v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 883
    iget-object v10, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v10, v3, v6}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_5
.end method

.method private updatePhoneAnrAdnRecord(I)V
    .locals 21
    .parameter "recNum"

    .prologue
    .line 889
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v14

    .line 891
    .local v14, numAdnRecs:I
    const-string v6, ""

    .line 893
    .local v6, anr:Ljava/lang/String;
    if-nez p1, :cond_0

    .line 894
    move-object/from16 v0, p0

    iput v14, v0, Lzte/contact/zteUsimPhoneBookManager;->oldNumAdnRec:I

    .line 896
    :cond_0
    const/16 v16, 0x0

    .line 897
    .local v16, recIndex:I
    if-lez p1, :cond_2

    .line 898
    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteUsimPhoneBookManager;->oldNumAdnRec:I

    move/from16 v16, v0

    .line 903
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_3

    invoke-virtual/range {p0 .. p0}, Lzte/contact/zteUsimPhoneBookManager;->isANRTYP2()Z

    move-result v18

    if-eqz v18, :cond_3

    .line 904
    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteUsimPhoneBookManager;->oldNumAdnRec:I

    move/from16 v18, v0

    move-object/from16 v0, p0

    move/from16 v1, p1

    move/from16 v2, v18

    invoke-virtual {v0, v1, v2}, Lzte/contact/zteUsimPhoneBookManager;->parseType1IapFile(II)V

    .line 905
    move/from16 v11, v16

    .local v11, i:I
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v11, v0, :cond_3

    .line 906
    const/16 v17, 0x0

    .line 908
    .local v17, record:[B
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mIapForAdnRec:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v17

    .end local v17           #record:[B
    check-cast v17, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 913
    .restart local v17       #record:[B
    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mAnrTagNumberInIap:I

    move/from16 v18, v0

    aget-byte v18, v17, v18

    move/from16 v0, v18

    and-int/lit16 v8, v0, 0xff

    .line 914
    .local v8, anrrecNum:I
    const/16 v18, 0xff

    move/from16 v0, v18

    if-ne v8, v0, :cond_5

    .line 905
    :cond_1
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 900
    .end local v8           #anrrecNum:I
    .end local v11           #i:I
    .end local v17           #record:[B
    :cond_2
    const/16 v16, 0x0

    goto :goto_0

    .line 909
    .restart local v11       #i:I
    :catch_0
    move-exception v9

    .line 910
    .local v9, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "Error: Improper ICC card: No IAP record for ADN, continuing i= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    .end local v9           #e:Ljava/lang/IndexOutOfBoundsException;
    .end local v11           #i:I
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    if-eqz v18, :cond_9

    .line 929
    const/4 v12, 0x0

    .line 930
    .local v12, index:I
    if-nez p1, :cond_7

    .line 931
    const/4 v12, 0x0

    .line 932
    move-object/from16 v0, p0

    iput v14, v0, Lzte/contact/zteUsimPhoneBookManager;->oldNumAdnRec:I

    .line 936
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v13

    .local v13, it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_4
    :goto_4
    invoke-interface {v13}, Ljava/util/Iterator;->hasNext()Z

    move-result v18

    if-eqz v18, :cond_9

    .line 937
    invoke-interface {v13}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 938
    .local v4, REC:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v6

    .line 939
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v10

    .line 940
    .local v10, extAnrIndex:I
    invoke-virtual/range {p0 .. p0}, Lzte/contact/zteUsimPhoneBookManager;->isANRTYP2()Z

    move-result v18

    if-eqz v18, :cond_8

    .line 941
    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrIndex()I

    move-result v3

    .line 942
    .local v3, AnrIndex:I
    if-ge v3, v14, :cond_4

    .line 943
    if-eqz v3, :cond_4

    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v3, v0, :cond_4

    .line 944
    add-int/lit8 v3, v3, -0x1

    .line 946
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 947
    .local v15, rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v15, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 948
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 949
    if-eqz v10, :cond_4

    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v10, v0, :cond_4

    .line 950
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 951
    .local v5, Rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v5, v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnrExtNumber(I)V

    .line 952
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v3, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto :goto_4

    .line 915
    .end local v3           #AnrIndex:I
    .end local v4           #REC:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v5           #Rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v10           #extAnrIndex:I
    .end local v12           #index:I
    .end local v13           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    .end local v15           #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v8       #anrrecNum:I
    .restart local v11       #i:I
    .restart local v17       #record:[B
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    if-lez v18, :cond_1

    .line 916
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v8, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v6

    .line 917
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 918
    .local v7, anrrec:Lcom/android/internal/telephony/uicc/AdnRecord;
    if-eqz v7, :cond_6

    .line 919
    invoke-virtual {v7, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 923
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v11, v7}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    goto/16 :goto_2

    .line 921
    :cond_6
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    .end local v7           #anrrec:Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    invoke-direct {v7, v0, v1, v6, v2}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v7       #anrrec:Lcom/android/internal/telephony/uicc/AdnRecord;
    goto :goto_5

    .line 934
    .end local v7           #anrrec:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v8           #anrrecNum:I
    .end local v11           #i:I
    .end local v17           #record:[B
    .restart local v12       #index:I
    :cond_7
    move-object/from16 v0, p0

    iget v12, v0, Lzte/contact/zteUsimPhoneBookManager;->oldNumAdnRec:I

    goto/16 :goto_3

    .line 956
    .restart local v4       #REC:Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v10       #extAnrIndex:I
    .restart local v13       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_8
    if-lt v12, v14, :cond_a

    .line 972
    .end local v4           #REC:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v10           #extAnrIndex:I
    .end local v12           #index:I
    .end local v13           #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_9
    return-void

    .line 957
    .restart local v4       #REC:Lcom/android/internal/telephony/uicc/AdnRecord;
    .restart local v10       #extAnrIndex:I
    .restart local v12       #index:I
    .restart local v13       #it:Ljava/util/Iterator;,"Ljava/util/Iterator<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v15

    check-cast v15, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 958
    .restart local v15       #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v15, v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 959
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v15}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 960
    if-eqz v10, :cond_b

    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v10, v0, :cond_b

    .line 961
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 962
    .restart local v5       #Rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v5, v10}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnrExtNumber(I)V

    .line 963
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12, v5}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 965
    .end local v5           #Rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_b
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_4
.end method

.method private updatePhoneRecord(I)V
    .locals 22
    .parameter "recordNum"

    .prologue
    .line 675
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord recordNum = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v12

    .line 677
    .local v12, numAdnRecs:I
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord numAdnRecs = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 679
    const/4 v10, 0x0

    .local v10, i:I
    :goto_0
    if-ge v10, v12, :cond_15

    .line 680
    :try_start_0
    const-string v17, ""

    .line 681
    .local v17, tag:Ljava/lang/String;
    const-string v13, ""

    .line 682
    .local v13, number:Ljava/lang/String;
    const/4 v9, -0x1

    .line 683
    .local v9, ext1id:I
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v7, v0, [Ljava/lang/String;

    .line 684
    .local v7, emails:[Ljava/lang/String;
    const/16 v18, 0x0

    const-string v19, ""

    aput-object v19, v7, v18

    .line 685
    const/16 v6, 0xff

    .line 686
    .local v6, emailrecNum:I
    const-string v4, ""

    .line 687
    .local v4, anr:Ljava/lang/String;
    const/16 v5, 0xff

    .line 688
    .local v5, anrrecNum:I
    const/4 v11, 0x0

    .line 689
    .local v11, iaprecord:[B
    const/16 v18, 0x2

    move/from16 v0, v18

    new-array v15, v0, [B

    .line 690
    .local v15, recid:[B
    const/16 v18, 0x1

    add-int/lit8 v19, p1, 0x1

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v15, v18

    .line 691
    new-instance v14, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    const-string v21, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v21

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 692
    .local v14, rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    const/16 v18, 0x0

    add-int/lit8 v19, v10, 0x1

    move/from16 v0, v19

    and-int/lit16 v0, v0, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v15, v18

    .line 694
    invoke-static {v15}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v16

    .line 695
    .local v16, srecid:Ljava/lang/String;
    if-eqz v14, :cond_d

    .line 696
    move-object/from16 v0, v16

    invoke-virtual {v14, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setRecid(Ljava/lang/String;)V

    .line 701
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v17

    .line 702
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v13

    .line 703
    move-object/from16 v0, v17

    invoke-virtual {v14, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAlphaTag(Ljava/lang/String;)V

    .line 704
    invoke-virtual {v14, v13}, Lcom/android/internal/telephony/uicc/AdnRecord;->setNumber(Ljava/lang/String;)V

    .line 705
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasExtendedRecord()Z

    move-result v18

    if-eqz v18, :cond_0

    .line 706
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->getExtNumber()I

    move-result v9

    .line 707
    invoke-virtual {v14, v9}, Lcom/android/internal/telephony/uicc/AdnRecord;->setExtNumber(I)V

    .line 709
    :cond_0
    invoke-virtual/range {p0 .. p1}, Lzte/contact/zteUsimPhoneBookManager;->isSupportIAP(I)Z

    move-result v18

    if-eqz v18, :cond_1

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v10, v0, :cond_1

    .line 710
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11           #iaprecord:[B
    check-cast v11, [B

    .line 711
    .restart local v11       #iaprecord:[B
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord IAP i = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 714
    :cond_1
    invoke-virtual/range {p0 .. p1}, Lzte/contact/zteUsimPhoneBookManager;->isSupportEmail(I)Z

    move-result v18

    if-eqz v18, :cond_6

    .line 715
    invoke-static {}, Lzte/contact/zteUsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v18

    if-eqz v18, :cond_10

    .line 716
    if-eqz v11, :cond_e

    .line 717
    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mEmailTagNumberInIap:I

    move/from16 v18, v0

    aget-byte v18, v11, v18

    move/from16 v0, v18

    and-int/lit16 v6, v0, 0xff

    .line 718
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord IAP  emailrecNum = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "i = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 719
    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v6, v0, :cond_2

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_4

    .line 720
    :cond_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForEmailId:Ljava/util/Map;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_3

    .line 721
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForEmailId:Ljava/util/Map;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v6

    .line 722
    :cond_3
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord EMAIL  emailrecNum = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "i = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v6, v0, :cond_4

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v6, v0, :cond_4

    .line 724
    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mEmailTagNumberInIap:I

    move/from16 v18, v0

    and-int/lit16 v0, v6, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v11, v18

    .line 725
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 726
    const-string v19, "RIL_zteUsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord EMAIL  upb[recordNum].iaplist.get(i)[mEmailTagNumberInIap] = "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mEmailTagNumberInIap:I

    move/from16 v21, v0

    aget-byte v18, v18, v21

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "i = "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 729
    :cond_4
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v6, v0, :cond_5

    const/16 v6, 0xff

    .line 740
    :cond_5
    :goto_2
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord emailrecNum = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "i = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 741
    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v6, v0, :cond_6

    if-eqz v6, :cond_6

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->emaillist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-gt v6, v0, :cond_6

    .line 742
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->emaillist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v6, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v7

    .line 745
    :cond_6
    invoke-virtual {v14, v7}, Lcom/android/internal/telephony/uicc/AdnRecord;->setEmails([Ljava/lang/String;)V

    .line 746
    invoke-virtual/range {p0 .. p1}, Lzte/contact/zteUsimPhoneBookManager;->isSupportANR(I)Z

    move-result v18

    if-eqz v18, :cond_b

    .line 747
    invoke-virtual/range {p0 .. p0}, Lzte/contact/zteUsimPhoneBookManager;->isANRTYP2()Z

    move-result v18

    if-eqz v18, :cond_13

    .line 748
    if-eqz v11, :cond_11

    .line 749
    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mAnrTagNumberInIap:I

    move/from16 v18, v0

    aget-byte v18, v11, v18

    move/from16 v0, v18

    and-int/lit16 v5, v0, 0xff

    .line 750
    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v5, v0, :cond_7

    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_9

    .line 751
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForAnrId:Ljava/util/Map;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 752
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForAnrId:Ljava/util/Map;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v5

    .line 753
    :cond_8
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord ANR  anrrecNum = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, "i = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v5, v0, :cond_9

    const/16 v18, -0x1

    move/from16 v0, v18

    if-eq v5, v0, :cond_9

    .line 755
    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mAnrTagNumberInIap:I

    move/from16 v18, v0

    and-int/lit16 v0, v5, 0xff

    move/from16 v19, v0

    move/from16 v0, v19

    int-to-byte v0, v0

    move/from16 v19, v0

    aput-byte v19, v11, v18

    .line 756
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10, v11}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 757
    const-string v19, "RIL_zteUsimPhoneBookManager"

    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord upb[recordNum].iaplist.get(i)[mAnrTagNumberInIap] = "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, [B

    move-object/from16 v0, p0

    iget v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mAnrTagNumberInIap:I

    move/from16 v21, v0

    aget-byte v18, v18, v21

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    const-string v20, "i = "

    move-object/from16 v0, v18

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 771
    :cond_9
    :goto_3
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_a

    const/16 v5, 0xff

    .line 772
    :cond_a
    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v5, v0, :cond_14

    if-eqz v5, :cond_14

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-gt v5, v0, :cond_14

    .line 773
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v5, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    .line 778
    :cond_b
    :goto_4
    invoke-virtual {v14, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnr(Ljava/lang/String;)V

    .line 780
    invoke-virtual/range {p0 .. p1}, Lzte/contact/zteUsimPhoneBookManager;->isSupportANR(I)Z

    move-result v18

    if-eqz v18, :cond_c

    const/16 v18, 0xff

    move/from16 v0, v18

    if-eq v5, v0, :cond_c

    if-eqz v5, :cond_c

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-gt v5, v0, :cond_c

    .line 782
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v5, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->hasAnrExtendedRecord()Z

    move-result v18

    if-eqz v18, :cond_c

    .line 783
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    add-int/lit8 v19, v5, -0x1

    invoke-virtual/range {v18 .. v19}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-virtual/range {v18 .. v18}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrExtNumber()I

    move-result v9

    .line 784
    invoke-virtual {v14, v9}, Lcom/android/internal/telephony/uicc/AdnRecord;->setAnrExtNumber(I)V

    .line 788
    :cond_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 679
    add-int/lit8 v10, v10, 0x1

    goto/16 :goto_0

    .line 698
    :cond_d
    new-instance v14, Lcom/android/internal/telephony/uicc/AdnRecord;

    .end local v14           #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string v18, ""

    const-string v19, ""

    const-string v20, ""

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    move-object/from16 v2, v20

    move-object/from16 v3, v16

    invoke-direct {v14, v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .restart local v14       #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    goto/16 :goto_1

    .line 731
    :cond_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForEmailId:Ljava/util/Map;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_f

    .line 732
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForEmailId:Ljava/util/Map;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v6

    goto/16 :goto_2

    .line 734
    :cond_f
    const/16 v6, 0xff

    goto/16 :goto_2

    .line 738
    :cond_10
    add-int/lit8 v6, v10, 0x1

    goto/16 :goto_2

    .line 762
    :cond_11
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForAnrId:Ljava/util/Map;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_12

    .line 763
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, p1

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForAnrId:Ljava/util/Map;

    move-object/from16 v18, v0

    add-int/lit8 v19, v10, 0x1

    invoke-static/range {v19 .. v19}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Ljava/lang/Integer;

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Integer;->intValue()I

    move-result v5

    goto/16 :goto_3

    .line 765
    :cond_12
    const/16 v5, 0xff

    goto/16 :goto_3

    .line 769
    :cond_13
    add-int/lit8 v5, v10, 0x1

    goto/16 :goto_3

    .line 775
    :cond_14
    const-string v4, ""
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_4

    .line 791
    .end local v4           #anr:Ljava/lang/String;
    .end local v5           #anrrecNum:I
    .end local v6           #emailrecNum:I
    .end local v7           #emails:[Ljava/lang/String;
    .end local v9           #ext1id:I
    .end local v11           #iaprecord:[B
    .end local v13           #number:Ljava/lang/String;
    .end local v14           #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v15           #recid:[B
    .end local v16           #srecid:Ljava/lang/String;
    .end local v17           #tag:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 792
    .local v8, ex:Ljava/lang/Exception;
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "updatePhoneRecord ex = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 794
    .end local v8           #ex:Ljava/lang/Exception;
    :cond_15
    const-string v18, "RIL_zteUsimPhoneBookManager"

    const-string v19, "updatePhoneRecord done "

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 795
    return-void
.end method


# virtual methods
.method public GetAnrdatas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 320
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->Anrdatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public GetEmaildatas()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 317
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->Emaildatas:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getAdnFileld(I)I
    .locals 5
    .parameter "recNum"

    .prologue
    const/16 v4, 0xc0

    const/4 v0, 0x0

    .line 531
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 545
    :cond_0
    :goto_0
    return v0

    .line 534
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 536
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 537
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 538
    .local v0, efid:I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 542
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 543
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getAllAdnFileId()[I
    .locals 3

    .prologue
    .line 635
    const/4 v0, 0x0

    .line 636
    .local v0, FileId:[I
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    .line 637
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    .line 639
    invoke-virtual {p0, v1}, Lzte/contact/zteUsimPhoneBookManager;->getAdnFileld(I)I

    move-result v2

    aput v2, v0, v1

    .line 637
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 641
    :cond_0
    return-object v0
.end method

.method public getAllAnrFileId()[I
    .locals 3

    .prologue
    .line 665
    const/4 v0, 0x0

    .line 666
    .local v0, FileId:[I
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    .line 667
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    .line 669
    invoke-virtual {p0, v1}, Lzte/contact/zteUsimPhoneBookManager;->getAnrFileld(I)I

    move-result v2

    aput v2, v0, v1

    .line 667
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 671
    :cond_0
    return-object v0
.end method

.method public getAllEmailFileId()[I
    .locals 3

    .prologue
    .line 615
    const/4 v0, 0x0

    .line 616
    .local v0, FileId:[I
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    .line 617
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    .line 619
    invoke-virtual {p0, v1}, Lzte/contact/zteUsimPhoneBookManager;->getEmailFileId(I)I

    move-result v2

    aput v2, v0, v1

    .line 617
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 621
    :cond_0
    return-object v0
.end method

.method public getAllExt1Fileld()[I
    .locals 3

    .prologue
    .line 645
    const/4 v0, 0x0

    .line 646
    .local v0, FileId:[I
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    .line 647
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    .line 649
    invoke-virtual {p0, v1}, Lzte/contact/zteUsimPhoneBookManager;->getExt1Fileld(I)I

    move-result v2

    aput v2, v0, v1

    .line 647
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 651
    :cond_0
    return-object v0
.end method

.method public getAllIapFileId()[I
    .locals 3

    .prologue
    .line 625
    const/4 v0, 0x0

    .line 626
    .local v0, FileId:[I
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    .line 627
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    .line 629
    invoke-virtual {p0, v1}, Lzte/contact/zteUsimPhoneBookManager;->getIapFileId(I)I

    move-result v2

    aput v2, v0, v1

    .line 627
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 631
    :cond_0
    return-object v0
.end method

.method public getAllSfiFileId()[I
    .locals 3

    .prologue
    .line 655
    const/4 v0, 0x0

    .line 656
    .local v0, FileId:[I
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    new-array v0, v2, [I

    .line 657
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget v2, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    if-ge v1, v2, :cond_0

    .line 659
    invoke-virtual {p0, v1}, Lzte/contact/zteUsimPhoneBookManager;->getSfiFileld(I)I

    move-result v2

    aput v2, v0, v1

    .line 657
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 661
    :cond_0
    return-object v0
.end method

.method public getAnrFileId(I)I
    .locals 5
    .parameter "recNum"

    .prologue
    const/16 v4, 0xc4

    const/4 v0, 0x0

    .line 474
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 488
    :cond_0
    :goto_0
    return v0

    .line 477
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 479
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 480
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 481
    .local v0, efid:I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 485
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 486
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getAnrFileld(I)I
    .locals 5
    .parameter "recNum"

    .prologue
    const/16 v4, 0xc4

    const/4 v0, 0x0

    .line 588
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 602
    :cond_0
    :goto_0
    return v0

    .line 591
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 593
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 594
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 595
    .local v0, efid:I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 599
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 600
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getAnriniap()I
    .locals 1

    .prologue
    .line 326
    iget v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrTagNumberInIap:I

    return v0
.end method

.method public getEXT1efid()I
    .locals 1

    .prologue
    .line 1618
    iget v0, p0, Lzte/contact/zteUsimPhoneBookManager;->ext1Efid:I

    return v0
.end method

.method public getEfRecordSize()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "[I>;"
        }
    .end annotation

    .prologue
    .line 154
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mRecordSize:Ljava/util/Map;

    return-object v0
.end method

.method public getEmailFileId(I)I
    .locals 5
    .parameter "recNum"

    .prologue
    const/16 v4, 0xca

    const/4 v0, 0x0

    .line 493
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 507
    :cond_0
    :goto_0
    return v0

    .line 496
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 498
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 499
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 500
    .local v0, efid:I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 504
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 505
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getEmailiniap()I
    .locals 1

    .prologue
    .line 323
    iget v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailTagNumberInIap:I

    return v0
.end method

.method public getExt1Fileld(I)I
    .locals 5
    .parameter "recNum"

    .prologue
    const/16 v4, 0xc2

    const/4 v0, 0x0

    .line 550
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 564
    :cond_0
    :goto_0
    return v0

    .line 553
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 555
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 556
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 557
    .local v0, efid:I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 561
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 562
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getIapFileId(I)I
    .locals 5
    .parameter "recNum"

    .prologue
    const/16 v4, 0xc1

    const/4 v0, 0x0

    .line 512
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 526
    :cond_0
    :goto_0
    return v0

    .line 515
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 517
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/util/Map;

    .line 518
    .local v1, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v0, 0x0

    .line 519
    .local v0, efid:I
    if-eqz v1, :cond_0

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 523
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 524
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public getSfiFileld(I)I
    .locals 5
    .parameter "recNum"

    .prologue
    const/16 v4, 0xc0

    const/4 v1, 0x0

    .line 569
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 583
    :cond_0
    :goto_0
    return v1

    .line 572
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 574
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFileSfi:Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFileSfi;->mSfiFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 575
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/4 v1, 0x0

    .line 576
    .local v1, sfi:I
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 580
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 581
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public getUsimRecordSize()I
    .locals 7

    .prologue
    .line 1602
    const/4 v3, 0x0

    .line 1603
    .local v3, usimNumbers:I
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    if-eqz v4, :cond_3

    .line 1604
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v4

    if-ge v1, v4, :cond_3

    .line 1605
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1607
    .local v2, rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string v0, ""

    .line 1608
    .local v0, email:Ljava/lang/String;
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x0

    aget-object v0, v4, v5

    .line 1609
    :cond_0
    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    const-string v4, ""

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    const-string v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 1611
    :cond_1
    add-int/lit8 v3, v3, 0x1

    .line 1604
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1614
    .end local v0           #email:Ljava/lang/String;
    .end local v1           #i:I
    .end local v2           #rec:Lcom/android/internal/telephony/uicc/AdnRecord;
    :cond_3
    const-string v4, "RIL_zteUsimPhoneBookManager"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "MY getUsimRecordSize ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1615
    return v3
.end method

.method public getadnlist(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "recnumber"
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
    .line 258
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    aget-object v0, v0, p1

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getanrlist(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "recnumber"
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
    .line 267
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    aget-object v0, v0, p1

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getemaillist(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "recnumber"
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
    .line 264
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    aget-object v0, v0, p1

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->emaillist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getiaplist(I)Ljava/util/ArrayList;
    .locals 1
    .parameter "recnumber"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation

    .prologue
    .line 261
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    aget-object v0, v0, p1

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getpbrNumbers()I
    .locals 1

    .prologue
    .line 207
    iget v0, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    return v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 22
    .parameter "msg"

    .prologue
    .line 1206
    const/16 v4, 0xff

    .line 1208
    .local v4, adnAnrRecNum:I
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v18, v0

    packed-switch v18, :pswitch_data_0

    .line 1438
    :goto_0
    :pswitch_0
    return-void

    .line 1211
    :pswitch_1
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 1212
    .local v7, ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg1:I

    .line 1214
    .local v8, efId:I
    const-string v18, "zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "got EVENT_GET_EF_FILE_RECORD_SIZE_DONE efId = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",ar.exception = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_0

    .line 1218
    :try_start_0
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, [I

    move-object/from16 v0, v18

    check-cast v0, [I

    move-object v14, v0

    .line 1219
    .local v14, recordSize:[I
    const-string v18, "zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "got EVENT_GET_EF_FILE_RECORD_SIZE_DONE,recordSize[0]="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget v20, v14, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1220
    const-string v18, "zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "got EVENT_GET_EF_FILE_RECORD_SIZE_DONE,recordSize[1]="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget v20, v14, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    const-string v18, "zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "got EVENT_GET_EF_FILE_RECORD_SIZE_DONE,recordSize[2]="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x2

    aget v20, v14, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1222
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mRecordSize:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    invoke-interface {v0, v1, v14}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1227
    .end local v14           #recordSize:[I
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1228
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notify()V

    .line 1229
    monitor-exit v19

    goto/16 :goto_0

    :catchall_0
    move-exception v18

    monitor-exit v19
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v18

    .line 1223
    :catch_0
    move-exception v11

    .line 1224
    .local v11, ex:Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_GET_EF_FILE_RECORD_SIZE_DONE Exception  = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_1

    .line 1233
    .end local v7           #ar:Landroid/os/AsyncResult;
    .end local v8           #efId:I
    .end local v11           #ex:Ljava/lang/Exception;
    :pswitch_2
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 1234
    .restart local v7       #ar:Landroid/os/AsyncResult;
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_1

    .line 1235
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->createPbrFile(Ljava/util/ArrayList;)V

    .line 1236
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->createPbrFileSfi(Ljava/util/ArrayList;)V

    .line 1238
    :cond_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1239
    :try_start_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notify()V

    .line 1240
    monitor-exit v19

    goto/16 :goto_0

    :catchall_1
    move-exception v18

    monitor-exit v19
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    throw v18

    .line 1244
    .end local v7           #ar:Landroid/os/AsyncResult;
    :pswitch_3
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 1245
    .restart local v7       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 1246
    .local v13, recNum:I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_USIM_ADN_LOAD_DONE recNum = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1247
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_2

    .line 1249
    :try_start_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z
    :try_end_3
    .catch Ljava/lang/Exception; {:try_start_3 .. :try_end_3} :catch_1

    .line 1254
    :cond_2
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1255
    :try_start_4
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notify()V

    .line 1256
    monitor-exit v19

    goto/16 :goto_0

    :catchall_2
    move-exception v18

    monitor-exit v19
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_2

    throw v18

    .line 1250
    :catch_1
    move-exception v11

    .line 1251
    .restart local v11       #ex:Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_USIM_ADN_LOAD_DONE Exception  = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_2

    .line 1259
    .end local v7           #ar:Landroid/os/AsyncResult;
    .end local v11           #ex:Ljava/lang/Exception;
    .end local v13           #recNum:I
    :pswitch_4
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 1260
    .restart local v7       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 1261
    .restart local v13       #recNum:I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_IAP_LOAD_DONE recNum = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1262
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_3

    .line 1263
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lzte/contact/zteUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 1265
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v19, v18, v13

    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move-object/from16 v1, v19

    iput-object v0, v1, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    .line 1267
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1, v13}, Lzte/contact/zteUsimPhoneBookManager;->getUsedEmailAndAnrItems(Ljava/util/ArrayList;I)V
    :try_end_5
    .catch Ljava/lang/Exception; {:try_start_5 .. :try_end_5} :catch_2

    .line 1273
    :cond_3
    :goto_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1274
    :try_start_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notify()V

    .line 1275
    monitor-exit v19

    goto/16 :goto_0

    :catchall_3
    move-exception v18

    monitor-exit v19
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_3

    throw v18

    .line 1269
    :catch_2
    move-exception v11

    .line 1270
    .restart local v11       #ex:Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_IAP_LOAD_DONE Exception ex = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    goto :goto_3

    .line 1280
    .end local v7           #ar:Landroid/os/AsyncResult;
    .end local v11           #ex:Ljava/lang/Exception;
    .end local v13           #recNum:I
    :pswitch_5
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 1281
    .restart local v7       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 1282
    .restart local v13       #recNum:I
    move-object/from16 v0, p1

    iget v8, v0, Landroid/os/Message;->arg2:I

    .line 1283
    .restart local v8       #efId:I
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "got EVENT_EMAIL_USED_ITEMS_LOAD_DONE,recNum="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1284
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE,ar.exception="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1285
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_9

    .line 1286
    const/4 v15, 0x0

    .line 1287
    .local v15, usedEmailFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iget-object v15, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    .end local v15           #usedEmailFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    check-cast v15, Ljava/util/ArrayList;

    .line 1288
    .restart local v15       #usedEmailFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE,usedEmailFileRecord="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    if-eqz v15, :cond_4

    .line 1290
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE,usedEmailFileRecord.size()="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v15}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1292
    :cond_4
    const/4 v10, 0x0

    .line 1293
    .local v10, emailRec:[B
    const/16 v5, 0xff

    .line 1294
    .local v5, adnEmailRecNum:I
    const/4 v9, 0x0

    .line 1297
    .local v9, emailItemsUsed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    :try_start_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mEmailItemsUsed:Ljava/util/HashMap;

    move-object/from16 v18, v0

    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-virtual/range {v18 .. v19}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, Ljava/util/ArrayList;

    move-object v9, v0

    .line 1299
    const/4 v14, 0x0

    .line 1300
    .restart local v14       #recordSize:[I
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mRecordSize:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    invoke-interface/range {v18 .. v19}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v14

    .end local v14           #recordSize:[I
    check-cast v14, [I

    .line 1301
    .restart local v14       #recordSize:[I
    if-nez v14, :cond_5

    .line 1302
    const-string v18, "RIL_zteUsimPhoneBookManager"

    const-string v19, " handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE, error, recordSize == null"

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1305
    :cond_5
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE, recordSize[0] = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget v20, v14, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1306
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE, recordSize[1] = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x1

    aget v20, v14, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1307
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE, recordSize[2] = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x2

    aget v20, v14, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1309
    const/16 v16, 0x0

    .line 1310
    .local v16, usedEmailIndex:I
    const/4 v12, 0x0

    .local v12, i:I
    move/from16 v17, v16

    .end local v16           #usedEmailIndex:I
    .local v17, usedEmailIndex:I
    :goto_4
    const/16 v18, 0x2

    aget v18, v14, v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_9

    .line 1311
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v3, v0, [Ljava/lang/String;

    .line 1312
    .local v3, RecEmail:[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>([Ljava/lang/String;)V

    .line 1313
    .local v2, Emaildata:Lcom/android/internal/telephony/uicc/AdnRecord;
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE, i= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1314
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE, emailItemsUsed.contains(i+1) = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    add-int/lit8 v20, v12, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1315
    add-int/lit8 v18, v12, 0x1

    invoke-static/range {v18 .. v18}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v9, v0}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v18

    if-eqz v18, :cond_8

    .line 1316
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE, usedEmailIndex= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1317
    move/from16 v0, v17

    invoke-virtual {v15, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, [B

    move-object v10, v0

    .line 1318
    if-eqz v10, :cond_6

    .line 1319
    array-length v0, v10

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aget-byte v5, v10, v18

    .line 1321
    :cond_6
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_7

    const/16 v5, 0xff

    .line 1323
    :cond_7
    const/16 v18, 0x0

    add-int/lit8 v16, v17, 0x1

    .end local v17           #usedEmailIndex:I
    .restart local v16       #usedEmailIndex:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-direct {v0, v15, v1}, Lzte/contact/zteUsimPhoneBookManager;->readEmailRecord(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v3, v18

    .line 1324
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, " handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE, usedEmailIndex= "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    const-string v20, ",RecEmail[0]="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    const/16 v20, 0x0

    aget-object v20, v3, v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1330
    :goto_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForEmailId:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    add-int/lit8 v20, v12, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1331
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->Emaildatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1332
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->emaillist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1333
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE, Emaildata.email[0] = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v20

    const/16 v21, 0x0

    aget-object v20, v20, v21

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1334
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE, Emaildatas.size() = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->Emaildatas:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1335
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "handle EVENT_EMAIL_USED_ITEMS_LOAD_DONE, upb[recNum].emaillist.size() = "

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v20, v0

    aget-object v20, v20, v13

    move-object/from16 v0, v20

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->emaillist:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1310
    add-int/lit8 v12, v12, 0x1

    move/from16 v17, v16

    .end local v16           #usedEmailIndex:I
    .restart local v17       #usedEmailIndex:I
    goto/16 :goto_4

    .line 1326
    :cond_8
    const/16 v5, 0xff

    .line 1327
    const/16 v18, 0x0

    const/16 v19, 0x0

    aput-object v19, v3, v18
    :try_end_7
    .catch Ljava/lang/Exception; {:try_start_7 .. :try_end_7} :catch_3

    move/from16 v16, v17

    .end local v17           #usedEmailIndex:I
    .restart local v16       #usedEmailIndex:I
    goto/16 :goto_5

    .line 1337
    .end local v2           #Emaildata:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v3           #RecEmail:[Ljava/lang/String;
    .end local v12           #i:I
    .end local v14           #recordSize:[I
    .end local v16           #usedEmailIndex:I
    :catch_3
    move-exception v11

    .line 1338
    .restart local v11       #ex:Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_EMAIL_USED_ITEMS_LOAD_DONE Exception ex = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1341
    .end local v5           #adnEmailRecNum:I
    .end local v9           #emailItemsUsed:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/Integer;>;"
    .end local v10           #emailRec:[B
    .end local v11           #ex:Ljava/lang/Exception;
    .end local v15           #usedEmailFileRecord:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    :cond_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1342
    :try_start_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notify()V

    .line 1343
    monitor-exit v19

    goto/16 :goto_0

    :catchall_4
    move-exception v18

    monitor-exit v19
    :try_end_8
    .catchall {:try_start_8 .. :try_end_8} :catchall_4

    throw v18

    .line 1347
    .end local v7           #ar:Landroid/os/AsyncResult;
    .end local v8           #efId:I
    .end local v13           #recNum:I
    :pswitch_6
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 1348
    .restart local v7       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    .line 1350
    .restart local v13       #recNum:I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_ANR_USED_ITEMS_LOAD_DONE recNum = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1351
    const-string v18, "RIL_zteUsimPhoneBookManager"

    new-instance v19, Ljava/lang/StringBuilder;

    invoke-direct/range {v19 .. v19}, Ljava/lang/StringBuilder;-><init>()V

    const-string v20, "got EVENT_ANR_USED_ITEMS_LOAD_DONE,recNum="

    invoke-virtual/range {v19 .. v20}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v19

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v19

    invoke-virtual/range {v19 .. v19}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v19

    invoke-static/range {v18 .. v19}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1352
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_b

    .line 1354
    :try_start_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1355
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_6
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_b

    .line 1356
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1358
    .local v6, anrAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrIndex()I

    move-result v4

    .line 1360
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_a

    const/16 v4, 0xff

    .line 1361
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForAnrId:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    add-int/lit8 v20, v12, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_9
    .catch Ljava/lang/Exception; {:try_start_9 .. :try_end_9} :catch_4

    .line 1355
    add-int/lit8 v12, v12, 0x1

    goto :goto_6

    .line 1363
    .end local v6           #anrAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v12           #i:I
    :catch_4
    move-exception v11

    .line 1364
    .restart local v11       #ex:Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_ANR_USED_ITEMS_LOAD_DONE Exception ex = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1368
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1369
    :try_start_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notify()V

    .line 1370
    monitor-exit v19

    goto/16 :goto_0

    :catchall_5
    move-exception v18

    monitor-exit v19
    :try_end_a
    .catchall {:try_start_a .. :try_end_a} :catchall_5

    throw v18

    .line 1375
    .end local v7           #ar:Landroid/os/AsyncResult;
    .end local v13           #recNum:I
    :pswitch_7
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 1376
    .restart local v7       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg1:I

    .line 1377
    .restart local v13       #recNum:I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_EMAIL_LOAD_DONE recNum = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1378
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_f

    .line 1379
    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    iput-object v0, v1, Lzte/contact/zteUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 1380
    const/4 v10, 0x0

    .line 1381
    .restart local v10       #emailRec:[B
    const/16 v5, 0xff

    .line 1383
    .restart local v5       #adnEmailRecNum:I
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_7
    :try_start_b
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_f

    .line 1385
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v18

    move-object/from16 v0, v18

    check-cast v0, [B

    move-object v10, v0

    .line 1386
    if-eqz v10, :cond_c

    .line 1387
    invoke-static {}, Lzte/contact/zteUsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v18

    if-eqz v18, :cond_e

    .line 1388
    array-length v0, v10

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    aget-byte v5, v10, v18

    .line 1392
    :cond_c
    :goto_8
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v5, v0, :cond_d

    const/16 v5, 0xff

    .line 1393
    :cond_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForEmailId:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-static {v5}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    add-int/lit8 v20, v12, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1395
    const/16 v18, 0x1

    move/from16 v0, v18

    new-array v3, v0, [Ljava/lang/String;

    .line 1396
    .restart local v3       #RecEmail:[Ljava/lang/String;
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>([Ljava/lang/String;)V

    .line 1397
    .restart local v2       #Emaildata:Lcom/android/internal/telephony/uicc/AdnRecord;
    const/16 v18, 0x0

    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-direct {v0, v1, v12}, Lzte/contact/zteUsimPhoneBookManager;->readEmailRecord(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v19

    aput-object v19, v3, v18

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->Emaildatas:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1399
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->emaillist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_b
    .catch Ljava/lang/Exception; {:try_start_b .. :try_end_b} :catch_5

    .line 1383
    add-int/lit8 v12, v12, 0x1

    goto/16 :goto_7

    .line 1390
    .end local v2           #Emaildata:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v3           #RecEmail:[Ljava/lang/String;
    :cond_e
    add-int/lit8 v5, v12, 0x1

    goto :goto_8

    .line 1401
    :catch_5
    move-exception v11

    .line 1402
    .restart local v11       #ex:Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_IAP_LOAD_DONE Exception ex = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1405
    .end local v5           #adnEmailRecNum:I
    .end local v10           #emailRec:[B
    .end local v11           #ex:Ljava/lang/Exception;
    .end local v12           #i:I
    :cond_f
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1406
    :try_start_c
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notify()V

    .line 1407
    monitor-exit v19

    goto/16 :goto_0

    :catchall_6
    move-exception v18

    monitor-exit v19
    :try_end_c
    .catchall {:try_start_c .. :try_end_c} :catchall_6

    throw v18

    .line 1411
    .end local v7           #ar:Landroid/os/AsyncResult;
    .end local v13           #recNum:I
    :pswitch_8
    move-object/from16 v0, p1

    iget-object v7, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v7, Landroid/os/AsyncResult;

    .line 1412
    .restart local v7       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p1

    iget v13, v0, Landroid/os/Message;->arg2:I

    .line 1414
    .restart local v13       #recNum:I
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_ANR_ALL_LOAD_DONE recNum = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1415
    iget-object v0, v7, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v18, v0

    if-nez v18, :cond_12

    .line 1417
    :try_start_d
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v19, v0

    iget-object v0, v7, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v18, v0

    check-cast v18, Ljava/util/ArrayList;

    move-object/from16 v0, v19

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/util/ArrayList;->addAll(Ljava/util/Collection;)Z

    .line 1418
    const/4 v12, 0x0

    .restart local v12       #i:I
    :goto_9
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/util/ArrayList;->size()I

    move-result v18

    move/from16 v0, v18

    if-ge v12, v0, :cond_12

    .line 1419
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    move-object/from16 v18, v0

    move-object/from16 v0, v18

    invoke-virtual {v0, v12}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    .line 1420
    .restart local v6       #anrAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    invoke-virtual/range {p0 .. p0}, Lzte/contact/zteUsimPhoneBookManager;->isANRTYP2()Z

    move-result v18

    if-eqz v18, :cond_11

    .line 1421
    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnrIndex()I

    move-result v4

    .line 1425
    :goto_a
    const/16 v18, -0x1

    move/from16 v0, v18

    if-ne v4, v0, :cond_10

    const/16 v4, 0xff

    .line 1426
    :cond_10
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    move-object/from16 v18, v0

    aget-object v18, v18, v13

    move-object/from16 v0, v18

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForAnrId:Ljava/util/Map;

    move-object/from16 v18, v0

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v19

    add-int/lit8 v20, v12, 0x1

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v20

    invoke-interface/range {v18 .. v20}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_d
    .catch Ljava/lang/Exception; {:try_start_d .. :try_end_d} :catch_6

    .line 1418
    add-int/lit8 v12, v12, 0x1

    goto :goto_9

    .line 1423
    :cond_11
    add-int/lit8 v4, v12, 0x1

    goto :goto_a

    .line 1428
    .end local v6           #anrAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v12           #i:I
    :catch_6
    move-exception v11

    .line 1429
    .restart local v11       #ex:Ljava/lang/Exception;
    new-instance v18, Ljava/lang/StringBuilder;

    invoke-direct/range {v18 .. v18}, Ljava/lang/StringBuilder;-><init>()V

    const-string v19, "EVENT_ANR_ALL_LOAD_DONE Exception ex = "

    invoke-virtual/range {v18 .. v19}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v18

    move-object/from16 v0, v18

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v18

    invoke-virtual/range {v18 .. v18}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v18

    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-direct {v0, v1}, Lzte/contact/zteUsimPhoneBookManager;->log(Ljava/lang/String;)V

    .line 1432
    .end local v11           #ex:Ljava/lang/Exception;
    :cond_12
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v19, v0

    monitor-enter v19

    .line 1433
    :try_start_e
    move-object/from16 v0, p0

    iget-object v0, v0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    move-object/from16 v18, v0

    invoke-virtual/range {v18 .. v18}, Ljava/lang/Object;->notify()V

    .line 1434
    monitor-exit v19

    goto/16 :goto_0

    :catchall_7
    move-exception v18

    monitor-exit v19
    :try_end_e
    .catchall {:try_start_e .. :try_end_e} :catchall_7

    throw v18

    .line 1208
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_7
        :pswitch_1
        :pswitch_0
        :pswitch_8
        :pswitch_0
        :pswitch_5
        :pswitch_6
    .end packed-switch
.end method

.method public invalidateCache()V
    .locals 1

    .prologue
    .line 341
    const/4 v0, 0x1

    iput-boolean v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mRefreshCache:Z

    .line 342
    return-void
.end method

.method public isANRTYP2()Z
    .locals 1

    .prologue
    .line 211
    iget-boolean v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrPresentInIap:Z

    return v0
.end method

.method public isSupportANR(I)Z
    .locals 4
    .parameter "pbrindex"

    .prologue
    const/4 v1, 0x0

    .line 221
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 229
    :cond_0
    :goto_0
    return v1

    .line 222
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 223
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 224
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 227
    const/16 v2, 0xc4

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 228
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSupportEmail(I)Z
    .locals 4
    .parameter "pbrindex"

    .prologue
    const/4 v1, 0x0

    .line 234
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 242
    :cond_0
    :goto_0
    return v1

    .line 235
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 236
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 237
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 240
    const/16 v2, 0xca

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 241
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public isSupportIAP(I)Z
    .locals 4
    .parameter "pbrindex"

    .prologue
    const/4 v1, 0x0

    .line 246
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v2, :cond_1

    .line 254
    :cond_0
    :goto_0
    return v1

    .line 247
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    if-eqz v2, :cond_0

    .line 248
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/Map;

    .line 249
    .local v0, fileIds:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/Map;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_0

    .line 252
    const/16 v2, 0xc1

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v0, v2}, Ljava/util/Map;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 253
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public loadEfFilesFromUsim()Ljava/util/ArrayList;
    .locals 5
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 273
    iget-object v3, p0, Lzte/contact/zteUsimPhoneBookManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 274
    :try_start_0
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-nez v4, :cond_1

    .line 275
    iget-boolean v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mRefreshCache:Z

    if-eqz v2, :cond_0

    .line 276
    const/4 v2, 0x0

    iput-boolean v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mRefreshCache:Z

    .line 277
    invoke-direct {p0}, Lzte/contact/zteUsimPhoneBookManager;->refreshCache()V

    .line 279
    :cond_0
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    monitor-exit v3

    .line 313
    :goto_0
    return-object v2

    .line 282
    :cond_1
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    invoke-virtual {v4}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v4

    if-nez v4, :cond_2

    monitor-exit v3

    goto :goto_0

    .line 312
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 286
    :cond_2
    :try_start_1
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_3

    .line 287
    invoke-direct {p0}, Lzte/contact/zteUsimPhoneBookManager;->readPbrFileAndWait()V

    .line 290
    :cond_3
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    if-nez v4, :cond_4

    monitor-exit v3

    goto :goto_0

    .line 292
    :cond_4
    invoke-direct {p0}, Lzte/contact/zteUsimPhoneBookManager;->getEfFileRecordSize()V

    .line 294
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    iget-object v2, v2, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v1

    .line 296
    .local v1, numRecs:I
    iput v1, p0, Lzte/contact/zteUsimPhoneBookManager;->pbrNumbers:I

    .line 297
    new-array v2, v1, [Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    iput-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    .line 298
    const/4 v0, 0x0

    .local v0, i:I
    :goto_1
    if-ge v0, v1, :cond_8

    .line 299
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->upb:[Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    new-instance v4, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;

    invoke-direct {v4, p0}, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;-><init>(Lzte/contact/zteUsimPhoneBookManager;)V

    aput-object v4, v2, v0

    .line 300
    invoke-direct {p0, v0}, Lzte/contact/zteUsimPhoneBookManager;->readAdnFileAndWait(I)V

    .line 301
    invoke-virtual {p0, v0}, Lzte/contact/zteUsimPhoneBookManager;->isSupportIAP(I)Z

    move-result v2

    if-eqz v2, :cond_5

    invoke-direct {p0, v0}, Lzte/contact/zteUsimPhoneBookManager;->readIapFileAndWait(I)V

    .line 302
    :cond_5
    invoke-virtual {p0, v0}, Lzte/contact/zteUsimPhoneBookManager;->isSupportEmail(I)Z

    move-result v2

    if-eqz v2, :cond_6

    invoke-direct {p0, v0}, Lzte/contact/zteUsimPhoneBookManager;->readEmailFileAndWait(I)V

    .line 303
    :cond_6
    invoke-virtual {p0, v0}, Lzte/contact/zteUsimPhoneBookManager;->isSupportANR(I)Z

    move-result v2

    if-eqz v2, :cond_7

    invoke-direct {p0, v0}, Lzte/contact/zteUsimPhoneBookManager;->readAnrFileAndWait(I)V

    .line 298
    :cond_7
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 308
    :cond_8
    const/4 v0, 0x0

    :goto_2
    if-ge v0, v1, :cond_9

    .line 309
    invoke-direct {p0, v0}, Lzte/contact/zteUsimPhoneBookManager;->updatePhoneRecord(I)V

    .line 308
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 312
    :cond_9
    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 313
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    goto :goto_0
.end method

.method public loadUsimRecord()Ljava/util/ArrayList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1626
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    return-object v0
.end method

.method parseType1Anr(III)V
    .locals 4
    .parameter "numRecs"
    .parameter "recNum"
    .parameter "oldNumAdnRec"

    .prologue
    .line 975
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/Map;

    .line 976
    if-lez p2, :cond_2

    .line 977
    move v1, p3

    .local v1, i:I
    :goto_0
    if-ge v1, p1, :cond_5

    .line 978
    sub-int v2, v1, p3

    invoke-direct {p0, v2}, Lzte/contact/zteUsimPhoneBookManager;->readAnrRecord(I)Ljava/lang/String;

    move-result-object v0

    .line 979
    .local v0, anr:Ljava/lang/String;
    if-eqz v0, :cond_0

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 977
    :cond_0
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 983
    :cond_1
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 986
    .end local v0           #anr:Ljava/lang/String;
    .end local v1           #i:I
    :cond_2
    const/4 v1, 0x0

    .restart local v1       #i:I
    :goto_2
    if-ge v1, p1, :cond_5

    .line 987
    invoke-direct {p0, v1}, Lzte/contact/zteUsimPhoneBookManager;->readAnrRecord(I)Ljava/lang/String;

    move-result-object v0

    .line 988
    .restart local v0       #anr:Ljava/lang/String;
    if-eqz v0, :cond_3

    const-string v2, ""

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 986
    :cond_3
    :goto_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 992
    :cond_4
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mAnrForAdnRec:Ljava/util/Map;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v0}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 995
    .end local v0           #anr:Ljava/lang/String;
    :cond_5
    return-void
.end method

.method parseType1EmailFile(II)V
    .locals 9
    .parameter "recordNum"
    .parameter "oldNumAdnRec"

    .prologue
    .line 1011
    new-instance v7, Ljava/util/HashMap;

    invoke-direct {v7}, Ljava/util/HashMap;-><init>()V

    iput-object v7, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    .line 1012
    const/4 v3, 0x0

    .line 1014
    .local v3, emailRec:[B
    const/4 v5, 0x0

    .line 1015
    .local v5, recIndex:I
    const/16 v0, 0xff

    .line 1016
    .local v0, adnRecNum:I
    if-lez p1, :cond_1

    .line 1017
    move v5, p2

    .line 1021
    :goto_0
    move v4, v5

    .local v4, i:I
    :goto_1
    iget-object v7, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v7}, Ljava/util/ArrayList;->size()I

    move-result v7

    if-ge v4, v7, :cond_2

    .line 1023
    :try_start_0
    iget-object v7, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v7, v4}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v3

    .end local v3           #emailRec:[B
    check-cast v3, [B
    :try_end_0
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1028
    .restart local v3       #emailRec:[B
    invoke-static {}, Lzte/contact/zteUsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 1029
    array-length v7, v3

    add-int/lit8 v7, v7, -0x1

    aget-byte v0, v3, v7

    .line 1030
    const/16 v7, 0xff

    if-ne v0, v7, :cond_4

    .line 1021
    :cond_0
    :goto_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 1019
    .end local v4           #i:I
    :cond_1
    const/4 v5, 0x0

    goto :goto_0

    .line 1024
    .end local v3           #emailRec:[B
    .restart local v4       #i:I
    :catch_0
    move-exception v1

    .line 1025
    .local v1, e:Ljava/lang/IndexOutOfBoundsException;
    const-string v7, "RIL_zteUsimPhoneBookManager"

    const-string v8, "Error: Improper ICC card: No email record for ADN, continuing"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1048
    .end local v1           #e:Ljava/lang/IndexOutOfBoundsException;
    :cond_2
    return-void

    .line 1032
    .restart local v3       #emailRec:[B
    :cond_3
    add-int/lit8 v0, v4, 0x1

    .line 1035
    :cond_4
    iget-object v7, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    invoke-direct {p0, v7, v4}, Lzte/contact/zteUsimPhoneBookManager;->readEmailRecord(Ljava/util/ArrayList;I)Ljava/lang/String;

    move-result-object v2

    .line 1036
    .local v2, email:Ljava/lang/String;
    if-eqz v2, :cond_0

    const-string v7, ""

    invoke-virtual {v2, v7}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_0

    .line 1040
    iget-object v7, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v8, v0, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Ljava/util/ArrayList;

    .line 1041
    .local v6, val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    if-nez v6, :cond_5

    .line 1042
    new-instance v6, Ljava/util/ArrayList;

    .end local v6           #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-direct {v6}, Ljava/util/ArrayList;-><init>()V

    .line 1044
    .restart local v6       #val:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    :cond_5
    invoke-virtual {v6, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 1046
    iget-object v7, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailsForAdnRec:Ljava/util/Map;

    add-int/lit8 v8, v0, -0x1

    invoke-static {v8}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    invoke-interface {v7, v8, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_2
.end method

.method parseType1IapFile(II)V
    .locals 4
    .parameter "recordNum"
    .parameter "oldNumAdnRec"

    .prologue
    .line 1051
    new-instance v2, Ljava/util/HashMap;

    invoke-direct {v2}, Ljava/util/HashMap;-><init>()V

    iput-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mIapForAdnRec:Ljava/util/Map;

    .line 1052
    if-lez p1, :cond_1

    .line 1053
    move v0, p2

    .local v0, i:I
    :goto_0
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1054
    sub-int v2, v0, p2

    invoke-direct {p0, v2}, Lzte/contact/zteUsimPhoneBookManager;->readIapRecord(I)[B

    move-result-object v1

    .line 1055
    .local v1, iap:[B
    if-nez v1, :cond_0

    .line 1053
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1059
    :cond_0
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mIapForAdnRec:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_1

    .line 1062
    .end local v0           #i:I
    .end local v1           #iap:[B
    :cond_1
    const/4 v0, 0x0

    .restart local v0       #i:I
    :goto_2
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v2

    if-ge v0, v2, :cond_3

    .line 1063
    invoke-direct {p0, v0}, Lzte/contact/zteUsimPhoneBookManager;->readIapRecord(I)[B

    move-result-object v1

    .line 1064
    .restart local v1       #iap:[B
    if-nez v1, :cond_2

    .line 1062
    :goto_3
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 1068
    :cond_2
    iget-object v2, p0, Lzte/contact/zteUsimPhoneBookManager;->mIapForAdnRec:Ljava/util/Map;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-interface {v2, v3, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 1072
    .end local v1           #iap:[B
    :cond_3
    return-void
.end method

.method public reset()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 195
    iget-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mPhoneBookRecords:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 196
    iput-object v1, p0, Lzte/contact/zteUsimPhoneBookManager;->mIapFileRecord:Ljava/util/ArrayList;

    .line 197
    iput-object v1, p0, Lzte/contact/zteUsimPhoneBookManager;->mEmailFileRecord:Ljava/util/ArrayList;

    .line 198
    iput-object v1, p0, Lzte/contact/zteUsimPhoneBookManager;->mPbrFile:Lzte/contact/zteUsimPhoneBookManager$PbrFile;

    .line 199
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mIsPbrPresent:Ljava/lang/Boolean;

    .line 200
    const/4 v0, 0x0

    iput-boolean v0, p0, Lzte/contact/zteUsimPhoneBookManager;->mRefreshCache:Z

    .line 201
    return-void
.end method
