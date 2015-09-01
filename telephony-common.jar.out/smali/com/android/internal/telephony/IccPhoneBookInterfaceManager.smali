.class public abstract Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.super Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.source "IccPhoneBookInterfaceManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;
    }
.end annotation


# static fields
.field protected static final ALLOW_SIM_OP_IN_UI_THREAD:Z = false

.field protected static final DBG:Z = true

.field protected static final EVENT_ANR_UPDATE_DONE:I = 0x7
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field protected static final EVENT_EMAIL_UPDATE_DONE:I = 0x6
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field protected static final EVENT_GET_SIZE_DONE:I = 0x1

.field protected static final EVENT_IAP_UPDATE_DONE:I = 0x8
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field protected static final EVENT_ICC_CHANGED:I = 0x4

.field protected static final EVENT_LOAD_DONE:I = 0x2

.field protected static final EVENT_UPDATE_DONE:I = 0x3

.field protected static final EVENT_USIM_UPDATE_DONE:I = 0x5
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field


# instance fields
.field protected anrsuccess:Z
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field protected emailsuccess:Z
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field protected iapsuccess:Z
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field protected mAdnCache:Lzte/contact/zteAdnRecordCache;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_CODE:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field protected mBaseHandler:Landroid/os/Handler;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_CODE:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field private mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field private mIs3gCard:Z

.field protected final mLock:Ljava/lang/Object;

.field protected mPhone:Lcom/android/internal/telephony/PhoneBase;

.field protected mRecordSize:[I

.field protected mRecords:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field protected mSuccess:Z

.field protected usimsuccess:Z
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;)V
    .locals 1
    .parameter "phone"

    .prologue
    .line 1011
    invoke-direct {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;-><init>()V

    .line 839
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 842
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    .line 845
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIs3gCard:Z

    .line 873
    new-instance v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$1;-><init>(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    .line 1012
    iput-object p1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    .line 1013
    return-void
.end method

.method private cleanUp()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 1016
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v0, :cond_0

    .line 1017
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v0}, Lzte/contact/zteAdnRecordCache;->reset()V

    .line 1018
    iput-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    .line 1020
    :cond_0
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIs3gCard:Z

    .line 1021
    iput-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1022
    return-void
.end method

.method private updateEfForIccType(I)I
    .locals 1
    .parameter "efid"

    .prologue
    .line 1283
    const/16 v0, 0x6f3a

    if-ne p1, v0, :cond_0

    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIs3gCard:Z

    if-eqz v0, :cond_0

    .line 1284
    const-string v0, "Translate EF_ADN to EF_PBR"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1285
    const/16 p1, 0x4f30

    .line 1287
    .end local p1
    :cond_0
    return p1
.end method


# virtual methods
.method public changeEfForIccType(I)I
    .locals 1
    .parameter "efid"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1369
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->changeEfForIccType(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v0

    return v0
.end method

.method protected checkThread()V
    .locals 2

    .prologue
    .line 1262
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1263
    const-string v0, "query() called on the main UI thread!"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 1264
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "You cannot call query on this provder from the main UI thread."

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1268
    :cond_0
    return-void
.end method

.method public dispose()V
    .locals 0

    .prologue
    .line 1025
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->cleanUp()V

    .line 1026
    return-void
.end method

.method public getAdnRecordsInEf(I)Ljava/util/List;
    .locals 5
    .parameter "efid"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_CODE:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1234
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    const-string v3, "android.permission.READ_CONTACTS"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 1237
    new-instance v2, Ljava/lang/SecurityException;

    const-string v3, "Requires android.permission.READ_CONTACTS permission"

    invoke-direct {v2, v3}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1241
    :cond_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 1242
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getAdnRecordsInEF: efid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1243
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getEfFileRecordSzie(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)V

    .line 1244
    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 1245
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 1246
    new-instance v1, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1247
    .local v1, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v4, 0x2

    invoke-virtual {v2, v4, v1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1248
    .local v0, response:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v2, :cond_1

    .line 1249
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4, p1}, Lzte/contact/zteAdnRecordCache;->extensionEfForEf(I)I

    move-result v4

    invoke-virtual {v2, p1, v4, v0}, Lzte/contact/zteAdnRecordCache;->requestLoadAllAdnLike(IILandroid/os/Message;)V

    .line 1250
    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 1254
    :goto_0
    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1255
    invoke-static {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getRecordsLengthFromEF(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V

    .line 1256
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mRecords:Ljava/util/List;

    return-object v2

    .line 1252
    :cond_1
    :try_start_1
    const-string v2, "Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1254
    .end local v0           #response:Landroid/os/Message;
    .end local v1           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v2
.end method

.method public abstract getAdnRecordsSize(I)[I
.end method

.method public getAdnSize(I)I
    .locals 1
    .parameter "efid"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1304
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getAdnSize(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v0

    return v0
.end method

.method public getAdnTotalSize(I)I
    .locals 1
    .parameter "efid"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1309
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getAdnTotalSize(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v0

    return v0
.end method

.method public getAnrRecordsSize(I)I
    .locals 1
    .parameter "efid"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1431
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getAnrRecordsSize(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v0

    return v0
.end method

.method public getEmailRecordsSize(I)I
    .locals 1
    .parameter "efid"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1427
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getEmailRecordsSize(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v0

    return v0
.end method

.method public getExt1RecordsSize(I)I
    .locals 1
    .parameter "efid"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1435
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getExt1RecordsSize(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v0

    return v0
.end method

.method public getExt1Size(I)I
    .locals 1
    .parameter "efid"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1298
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getExt1Size(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v0

    return v0
.end method

.method public getExtensionSize(I)I
    .locals 1
    .parameter "efid"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1406
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getExt1Size(I)I

    move-result v0

    return v0
.end method

.method public getGetAdnFileld(I)I
    .locals 1
    .parameter "index"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1348
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getGetAdnFileld(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v0

    return v0
.end method

.method public getGetAnrFileld(I)I
    .locals 1
    .parameter "index"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1365
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getGetAnrFileld(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v0

    return v0
.end method

.method public getGetEmailFileld(I)I
    .locals 1
    .parameter "index"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1354
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getGetEmailFileld(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v0

    return v0
.end method

.method public getGetIapFileld(I)I
    .locals 1
    .parameter "index"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1360
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getGetIapFileld(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v0

    return v0
.end method

.method public getIsANRTYP2()Z
    .locals 1
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1336
    invoke-static {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getIsANRTYP2(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)Z

    move-result v0

    return v0
.end method

.method public getIsEMAILTYP2()Z
    .locals 1
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1342
    invoke-static {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getIsEMAILTYP2(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)Z

    move-result v0

    return v0
.end method

.method public getIsSupANR(I)Z
    .locals 1
    .parameter "pbrindex"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1320
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getIsSupANR(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)Z

    move-result v0

    return v0
.end method

.method public getIsSupEmail(I)Z
    .locals 1
    .parameter "pbrindex"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1325
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getIsSupEmail(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)Z

    move-result v0

    return v0
.end method

.method public getIsSupIAP(I)Z
    .locals 1
    .parameter "pbrindex"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1330
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getIsSupIAP(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)Z

    move-result v0

    return v0
.end method

.method public getPbrFileld()I
    .locals 1
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1293
    invoke-static {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getPbrFileld(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)I

    move-result v0

    return v0
.end method

.method public getSimCardType()Z
    .locals 1
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1373
    invoke-static {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getSimCardType(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)Z

    move-result v0

    return v0
.end method

.method public getSimSize(I)I
    .locals 1
    .parameter "efid"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1410
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnSize(I)I

    move-result v0

    return v0
.end method

.method public getSimTotalSize(I)I
    .locals 1
    .parameter "efid"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1402
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnTotalSize(I)I

    move-result v0

    return v0
.end method

.method public getTagRecordsSize(I)I
    .locals 1
    .parameter "efid"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1423
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getTagRecordsSize(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v0

    return v0
.end method

.method public getUsimAdnRecordsSize(I)I
    .locals 1
    .parameter "efid"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1418
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getPbrFileld()I

    move-result v0

    return v0
.end method

.method public getUsimAdnSize()I
    .locals 1
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1314
    invoke-static {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getUsimAdnSize(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)I

    move-result v0

    return v0
.end method

.method public getUsimSize(I)I
    .locals 1
    .parameter "efid"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1414
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getUsimAdnSize()I

    move-result v0

    return v0
.end method

.method public getsimcap(Ljava/lang/String;)Lzte/contact/simcap;
    .locals 1
    .parameter "srecid"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1384
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getsimcap(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/lang/String;)Lzte/contact/simcap;

    move-result-object v0

    return-object v0
.end method

.method public hasLoadContacts()Z
    .locals 1
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1379
    invoke-static {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->hasLoadContacts(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)Z

    move-result v0

    return v0
.end method

.method public isANRSpaceFull(Ljava/lang/String;)Z
    .locals 1
    .parameter "srecid"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1448
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->isANRSpaceFull(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isEmailSpaceFull(Ljava/lang/String;)Z
    .locals 1
    .parameter "srecid"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1452
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->isEmailSpaceFull(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public isSupportANR()Z
    .locals 1
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1439
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupANR(I)Z

    move-result v0

    return v0
.end method

.method public isSupportEmail()Z
    .locals 1
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1444
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsSupEmail(I)Z

    move-result v0

    return v0
.end method

.method protected abstract logd(Ljava/lang/String;)V
.end method

.method protected abstract loge(Ljava/lang/String;)V
.end method

.method protected publish()V
    .locals 1

    .prologue
    .line 1094
    const-string v0, "simphonebook"

    invoke-static {v0, p0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 1095
    return-void
.end method

.method public searchANRSpaceWithSrecid(Ljava/lang/String;)Z
    .locals 1
    .parameter "srecid"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1461
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->searchANRSpaceWithSrecid(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public searchANRSpaceWithoutSrecid()Z
    .locals 1
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1457
    invoke-static {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->searchANRSpaceWithoutSrecid(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)Z

    move-result v0

    return v0
.end method

.method public searchEmailSpaceWithSrecid(Ljava/lang/String;)Z
    .locals 1
    .parameter "srecid"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1469
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->searchEmailSpaceWithSrecid(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public searchEmailSpaceWithoutSrecid()Z
    .locals 1
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1465
    invoke-static {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->searchEmailSpaceWithoutSrecid(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)Z

    move-result v0

    return v0
.end method

.method public setIccCard(Lcom/android/internal/telephony/uicc/UiccCard;)V
    .locals 8
    .parameter "card"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_CODE:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1029
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Card update received: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1031
    if-nez p1, :cond_1

    .line 1032
    const-string v6, "Card is null. Cleanup"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1033
    invoke-direct {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->cleanUp()V

    .line 1090
    :cond_0
    :goto_0
    return-void

    .line 1037
    :cond_1
    const/4 v5, 0x0

    .line 1038
    .local v5, validApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/UiccCard;->getNumApplications()I

    move-result v3

    .line 1039
    .local v3, numApps:I
    const/4 v2, 0x0

    .line 1041
    .local v2, isCurrentAppFound:Z
    const/4 v1, 0x0

    .local v1, i:I
    :goto_1
    if-ge v1, v3, :cond_5

    .line 1042
    invoke-virtual {p1, v1}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplicationIndex(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 1043
    .local v0, app:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_8

    .line 1046
    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getType()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    move-result-object v4

    .line 1047
    .local v4, type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_CSIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v4, v6, :cond_2

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v4, v6, :cond_2

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_ISIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-ne v4, v6, :cond_7

    .line 1049
    :cond_2
    const-string v6, "Card is 3G"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1050
    const/4 v6, 0x1

    iput-boolean v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIs3gCard:Z

    .line 1056
    :goto_2
    if-nez v2, :cond_4

    .line 1060
    if-nez v5, :cond_3

    sget-object v6, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    if-eq v4, v6, :cond_3

    .line 1061
    move-object v5, v0

    .line 1064
    :cond_3
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-ne v6, v0, :cond_4

    .line 1065
    const-string v6, "Existing app found"

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1066
    const/4 v2, 0x1

    .line 1073
    :cond_4
    iget-boolean v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIs3gCard:Z

    if-eqz v6, :cond_8

    if-eqz v2, :cond_8

    .line 1083
    .end local v0           #app:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v4           #type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_5
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v6, :cond_6

    if-nez v2, :cond_0

    .line 1084
    :cond_6
    if-eqz v5, :cond_0

    .line 1085
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Setting currentApp: "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1086
    iput-object v5, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1087
    iget-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mCurrentApp:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v6

    invoke-virtual {v6}, Lcom/android/internal/telephony/uicc/IccRecords;->getAdnCache()Lzte/contact/zteAdnRecordCache;

    move-result-object v6

    iput-object v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    goto :goto_0

    .line 1052
    .restart local v0       #app:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .restart local v4       #type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_7
    const/4 v6, 0x0

    iput-boolean v6, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mIs3gCard:Z

    goto :goto_2

    .line 1041
    .end local v4           #type:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;
    :cond_8
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method

.method public updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z
    .locals 10
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "index"
    .parameter "pin2"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_CODE:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1183
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1186
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1190
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnRecordsInEfByIndex: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " Index="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ==> "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1193
    iget-object v9, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v9

    .line 1194
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 1195
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    .line 1196
    new-instance v8, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v8, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1197
    .local v8, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v8}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1198
    .local v5, response:Landroid/os/Message;
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v2, p2, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1199
    .local v2, newAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v0, :cond_1

    .line 1200
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    const/4 v6, 0x0

    const/16 v7, 0xff

    move v1, p1

    move v3, p4

    move-object v4, p5

    invoke-virtual/range {v0 .. v7}, Lzte/contact/zteAdnRecordCache;->updateAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;II)V

    .line 1201
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 1205
    :goto_0
    monitor-exit v9
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1206
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    return v0

    .line 1203
    :cond_1
    :try_start_1
    const-string v0, "Failure while trying to update by index due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1205
    .end local v2           #newAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v5           #response:Landroid/os/Message;
    .end local v8           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "pin2"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_CODE:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1129
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 1132
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1135
    :cond_0
    const/4 v6, 0x0

    .line 1137
    .local v6, pbrIndex:I
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateAdnRecordsInEfBySearch: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, "==>"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " ("

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ","

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, ")"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v1, " pin2="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 1141
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->updateEfForIccType(I)I

    move-result p1

    .line 1143
    iget-object v8, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 1144
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 1145
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    .line 1146
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v7, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 1147
    .local v7, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v1, 0x3

    invoke-virtual {v0, v1, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 1148
    .local v5, response:Landroid/os/Message;
    new-instance v2, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v2, p2, p3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1149
    .local v2, oldAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    invoke-direct {v3, p4, p5}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 1150
    .local v3, newAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v0, :cond_1

    .line 1151
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    move v1, p1

    move-object v4, p6

    invoke-virtual/range {v0 .. v6}, Lzte/contact/zteAdnRecordCache;->updateAdnBySearch(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;I)[I

    .line 1152
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 1156
    :goto_0
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 1157
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    return v0

    .line 1154
    :cond_1
    :try_start_1
    const-string v0, "Failure while trying to update by search due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    goto :goto_0

    .line 1156
    .end local v2           #oldAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v3           #newAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v5           #response:Landroid/os/Message;
    .end local v7           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit v8
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method public updateIccRecords(Lcom/android/internal/telephony/uicc/IccRecords;)V
    .locals 0
    .parameter "iccRecords"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1389
    invoke-static {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->updateIccRecords(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Lcom/android/internal/telephony/uicc/IccRecords;)V

    .line 1390
    return-void
.end method

.method public updatepbRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "efid"
    .parameter "oldTag"
    .parameter "oldPhoneNumber"
    .parameter "oldEmail"
    .parameter "oldAnr"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "newEmail"
    .parameter "newAnr"
    .parameter "srecid"
    .parameter "pin2"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1397
    invoke-static/range {p0 .. p11}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->updatepbRecordsInEfBySearch(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V
    .locals 2
    .parameter "status"

    .prologue
    .line 1271
    :goto_0
    invoke-virtual {p1}, Ljava/util/concurrent/atomic/AtomicBoolean;->get()Z

    move-result v1

    if-nez v1, :cond_0

    .line 1273
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    invoke-virtual {v1}, Ljava/lang/Object;->wait()V
    :try_end_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1274
    :catch_0
    move-exception v0

    .line 1275
    .local v0, e:Ljava/lang/InterruptedException;
    const-string v1, "interrupted while trying to update by search"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 1278
    .end local v0           #e:Ljava/lang/InterruptedException;
    :cond_0
    return-void
.end method
