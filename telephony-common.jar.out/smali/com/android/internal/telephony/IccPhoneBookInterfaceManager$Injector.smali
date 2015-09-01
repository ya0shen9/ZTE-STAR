.class Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;
.super Ljava/lang/Object;
.source "IccPhoneBookInterfaceManager.java"


# annotations
.annotation build Landroid/annotation/KiwiHook;
    value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_CLASS:Landroid/annotation/KiwiHook$KiwiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# static fields
.field static adnSizeInfo:[I

.field static anrSizeInfo:[I

.field static emailSizeInfo:[I

.field static ext1SizeInfo:[I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 55
    sput-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->adnSizeInfo:[I

    .line 56
    sput-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->emailSizeInfo:[I

    .line 57
    sput-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->anrSizeInfo:[I

    .line 58
    sput-object v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->ext1SizeInfo:[I

    return-void
.end method

.method constructor <init>()V
    .locals 0

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static changeEfForIccType(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I
    .locals 3
    .parameter "Iccpbim"
    .parameter "efid"

    .prologue
    .line 318
    const/16 v1, 0x6f3a

    if-ne p1, v1, :cond_1

    .line 320
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    if-nez v1, :cond_0

    const-string v1, "phone is null "

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 321
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 322
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lzte/contact/zteAdnRecordCache;->requestGetAdnFileld(I)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result p1

    .line 328
    .end local p1
    :cond_1
    :goto_0
    return p1

    .line 324
    .restart local p1
    :catch_0
    move-exception v0

    .line 325
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "there is no card"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static getAdnSize(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I
    .locals 1
    .parameter "Iccpbim"
    .parameter "efid"

    .prologue
    .line 190
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v0, :cond_0

    .line 191
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v0, p1}, Lzte/contact/zteAdnRecordCache;->requestAdnSize(I)I

    move-result v0

    .line 194
    :goto_0
    return v0

    .line 193
    :cond_0
    const-string v0, " getAdnSize Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 194
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getAdnTotalSize(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I
    .locals 2
    .parameter "Iccpbim"
    .parameter "efid"

    .prologue
    .line 169
    const/4 v0, -0x1

    .line 170
    .local v0, mRecordTotalSize:I
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v1, :cond_0

    .line 171
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v1, p1}, Lzte/contact/zteAdnRecordCache;->requestAdnTotalSize(I)I

    move-result v0

    .line 175
    :goto_0
    return v0

    .line 173
    :cond_0
    const-string v1, " getAdnTotalSize Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static getAnrRecordsSize(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I
    .locals 4
    .parameter "Iccpbim"
    .parameter "efid"

    .prologue
    const/4 v3, 0x2

    .line 261
    const/16 v0, 0x14

    .line 262
    .local v0, recordAnrSize:I
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->ext1SizeInfo:[I

    if-eqz v1, :cond_1

    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->ext1SizeInfo:[I

    aget v1, v1, v3

    if-lez v1, :cond_1

    .line 263
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getExtensionSize(I)I

    move-result v1

    sget-object v2, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->ext1SizeInfo:[I

    aget v2, v2, v3

    if-lt v1, v2, :cond_0

    .line 264
    const/16 v0, 0xa

    .line 269
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getAnrRecordsSize recordAnrSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 271
    return v0

    .line 267
    :cond_1
    const/16 v0, 0xa

    goto :goto_0
.end method

.method static getEfFileRecordSzie(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)V
    .locals 2
    .parameter "Iccpbim"
    .parameter "efid"

    .prologue
    .line 383
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v0, :cond_0

    .line 384
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " contact framework ,in getAdnRecordsInEf,will adnCache.getEfFileRecordSize,efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v1, p1}, Lzte/contact/zteAdnRecordCache;->extensionEfForEf(I)I

    move-result v1

    invoke-virtual {v0, p1, v1}, Lzte/contact/zteAdnRecordCache;->getEfFileRecordSize(II)V

    .line 387
    :cond_0
    return-void
.end method

.method static getEmailRecordsSize(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I
    .locals 3
    .parameter "Iccpbim"
    .parameter "efid"

    .prologue
    const/4 v2, 0x0

    .line 248
    const/4 v0, 0x0

    .line 249
    .local v0, recordEmailSize:I
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->emailSizeInfo:[I

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->emailSizeInfo:[I

    aget v1, v1, v2

    if-lez v1, :cond_0

    .line 250
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getIsEMAILTYP2()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 251
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->emailSizeInfo:[I

    aget v1, v1, v2

    add-int/lit8 v0, v1, -0x2

    .line 256
    :cond_0
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getEmailRecordsSize: recordEmailSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 257
    return v0

    .line 253
    :cond_1
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->emailSizeInfo:[I

    aget v0, v1, v2

    goto :goto_0
.end method

.method static getExt1RecordsSize(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I
    .locals 3
    .parameter "Iccpbim"
    .parameter "efid"

    .prologue
    const/4 v2, 0x2

    .line 284
    const/4 v0, 0x0

    .line 285
    .local v0, ext1recordSize:I
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->ext1SizeInfo:[I

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->ext1SizeInfo:[I

    aget v1, v1, v2

    if-lez v1, :cond_0

    .line 286
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->ext1SizeInfo:[I

    aget v0, v1, v2

    .line 288
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getExt1RecordsSize ext1recordSize"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 289
    return v0
.end method

.method static getExt1Size(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I
    .locals 1
    .parameter "Iccpbim"
    .parameter "efid"

    .prologue
    .line 180
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v0, :cond_0

    .line 181
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v0, p1}, Lzte/contact/zteAdnRecordCache;->requestEXT1Size(I)I

    move-result v0

    .line 184
    :goto_0
    return v0

    .line 183
    :cond_0
    const-string v0, " getExt1Size Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 184
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getGetAdnFileld(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I
    .locals 1
    .parameter "Iccpbim"
    .parameter "index"

    .prologue
    .line 294
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v0, :cond_0

    .line 295
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v0, p1}, Lzte/contact/zteAdnRecordCache;->requestGetAdnFileld(I)I

    move-result v0

    .line 298
    :goto_0
    return v0

    .line 297
    :cond_0
    const-string v0, " getGetAdnFileld Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 298
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static getGetAnrFileld(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I
    .locals 1
    .parameter "Iccpbim"
    .parameter "index"

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v0, :cond_0

    .line 334
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v0, p1}, Lzte/contact/zteAdnRecordCache;->requestGetAnrFileld(I)I

    move-result v0

    .line 337
    :goto_0
    return v0

    .line 336
    :cond_0
    const-string v0, " getGetAnrFileld Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 337
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getGetEmailFileld(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I
    .locals 1
    .parameter "Iccpbim"
    .parameter "index"

    .prologue
    .line 353
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v0, :cond_0

    .line 354
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v0, p1}, Lzte/contact/zteAdnRecordCache;->requestGetEmailFileld(I)I

    move-result v0

    .line 357
    :goto_0
    return v0

    .line 356
    :cond_0
    const-string v0, " getGetEmailFileld Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 357
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getGetIapFileld(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I
    .locals 1
    .parameter "Iccpbim"
    .parameter "index"

    .prologue
    .line 343
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v0, :cond_0

    .line 344
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v0, p1}, Lzte/contact/zteAdnRecordCache;->requestGetIapFileld(I)I

    move-result v0

    .line 347
    :goto_0
    return v0

    .line 346
    :cond_0
    const-string v0, " getGetIapFileld Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 347
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getIsANRTYP2(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)Z
    .locals 1
    .parameter "Iccpbim"

    .prologue
    .line 363
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v0, :cond_0

    .line 364
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v0}, Lzte/contact/zteAdnRecordCache;->requestIsANRTYP2()Z

    move-result v0

    .line 367
    :goto_0
    return v0

    .line 366
    :cond_0
    const-string v0, " getIsANRTYP2 Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 367
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getIsEMAILTYP2(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)Z
    .locals 1
    .parameter "Iccpbim"

    .prologue
    .line 373
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v0, :cond_0

    .line 374
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v0}, Lzte/contact/zteAdnRecordCache;->requestIsEMAILTYP2()Z

    move-result v0

    .line 377
    :goto_0
    return v0

    .line 376
    :cond_0
    const-string v0, " getIsEMAILTYP2 Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 377
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getIsSupANR(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)Z
    .locals 1
    .parameter "Iccpbim"
    .parameter "pbrindex"

    .prologue
    .line 141
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v0, :cond_0

    .line 142
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v0, p1}, Lzte/contact/zteAdnRecordCache;->requestIsSupANR(I)Z

    move-result v0

    .line 145
    :goto_0
    return v0

    .line 144
    :cond_0
    const-string v0, " getIsSupANR Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 145
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getIsSupEmail(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)Z
    .locals 1
    .parameter "Iccpbim"
    .parameter "pbrindex"

    .prologue
    .line 150
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v0, :cond_0

    .line 151
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v0, p1}, Lzte/contact/zteAdnRecordCache;->requestIsSupEmail(I)Z

    move-result v0

    .line 154
    :goto_0
    return v0

    .line 153
    :cond_0
    const-string v0, " getIsSupEmail Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 154
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getIsSupIAP(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)Z
    .locals 1
    .parameter "Iccpbim"
    .parameter "pbrindex"

    .prologue
    .line 159
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v0, :cond_0

    .line 160
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v0, p1}, Lzte/contact/zteAdnRecordCache;->requestIsSupIAP(I)Z

    move-result v0

    .line 163
    :goto_0
    return v0

    .line 162
    :cond_0
    const-string v0, " getIsSupIAP Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 163
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getPbrFileld(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)I
    .locals 1
    .parameter "Iccpbim"

    .prologue
    .line 210
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v0}, Lzte/contact/zteAdnRecordCache;->requestPbrFileld()I

    move-result v0

    .line 214
    :goto_0
    return v0

    .line 213
    :cond_0
    const-string v0, " getPbrFileld Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 214
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getRecordsLengthFromEF(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)V
    .locals 6
    .parameter "Iccpbim"

    .prologue
    const/4 v5, 0x0

    .line 390
    const-string v4, "getRecordsLengthFromEF"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 391
    const/4 v0, 0x0

    .line 392
    .local v0, adnEfid:I
    const/16 v4, 0x6f3a

    invoke-static {p0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->changeEfForIccType(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v0

    .line 393
    if-lez v0, :cond_0

    sget-object v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->adnSizeInfo:[I

    if-nez v4, :cond_0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->adnSizeInfo:[I

    .line 394
    :cond_0
    const/4 v3, 0x0

    .line 395
    .local v3, extensionEF:I
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v4, :cond_4

    .line 396
    iget-object v4, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4, v0}, Lzte/contact/zteAdnRecordCache;->extensionEfForEf(I)I

    move-result v3

    .line 400
    :goto_0
    if-lez v3, :cond_1

    sget-object v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->ext1SizeInfo:[I

    if-nez v4, :cond_1

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->ext1SizeInfo:[I

    .line 401
    :cond_1
    const/4 v2, 0x0

    .line 402
    .local v2, emailEfid:I
    invoke-static {p0, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getGetEmailFileld(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v2

    .line 403
    if-lez v2, :cond_2

    sget-object v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->emailSizeInfo:[I

    if-nez v4, :cond_2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->emailSizeInfo:[I

    .line 404
    :cond_2
    const/4 v1, 0x0

    .line 405
    .local v1, anrEfid:I
    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getGetAnrFileld(I)I

    move-result v1

    .line 406
    if-lez v1, :cond_3

    sget-object v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->anrSizeInfo:[I

    if-nez v4, :cond_3

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->anrSizeInfo:[I

    .line 407
    :cond_3
    return-void

    .line 398
    .end local v1           #anrEfid:I
    .end local v2           #emailEfid:I
    :cond_4
    const-string v4, "Failure while trying to update by search due to uninitialised adncache"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static getSimCardType(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)Z
    .locals 4
    .parameter "Iccpbim"

    .prologue
    .line 303
    const-string v1, "getSimCardType"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 306
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;->APPTYPE_USIM:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    invoke-virtual {v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 307
    :catch_0
    move-exception v0

    .line 309
    .local v0, ex:Ljava/lang/Exception;
    const-string v1, "getSimCardType RuntimeException"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 310
    new-instance v1, Ljava/lang/RuntimeException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "ex"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method static getTagRecordsSize(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I
    .locals 4
    .parameter "Iccpbim"
    .parameter "efid"

    .prologue
    const/4 v3, 0x0

    .line 275
    const/4 v0, 0x0

    .line 276
    .local v0, recordAdnSize:I
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->adnSizeInfo:[I

    if-eqz v1, :cond_0

    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->adnSizeInfo:[I

    aget v1, v1, v3

    const/16 v2, 0xe

    if-le v1, v2, :cond_0

    .line 277
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->adnSizeInfo:[I

    aget v1, v1, v3

    add-int/lit8 v0, v1, -0xe

    .line 279
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "getTagRecordsSize: recordAdnSize = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 280
    return v0
.end method

.method static getUsimAdnSize(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)I
    .locals 1
    .parameter "Iccpbim"

    .prologue
    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v0, :cond_0

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v0}, Lzte/contact/zteAdnRecordCache;->requestUsimAdnSize()I

    move-result v0

    .line 204
    :goto_0
    return v0

    .line 203
    :cond_0
    const-string v0, " getUsimAdnSize Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 204
    const/4 v0, 0x0

    goto :goto_0
.end method

.method static getsimcap(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/lang/String;)Lzte/contact/simcap;
    .locals 18
    .parameter "Iccpbim"
    .parameter "srecid"

    .prologue
    .line 410
    new-instance v11, Lzte/contact/simcap;

    invoke-direct {v11}, Lzte/contact/simcap;-><init>()V

    .line 411
    .local v11, msimcap:Lzte/contact/simcap;
    if-nez p1, :cond_0

    const-string p1, ""

    .line 412
    :cond_0
    const/16 v1, 0x6f3a

    move-object/from16 v0, p0

    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->changeEfForIccType(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v2

    .line 413
    .local v2, adnEfid:I
    const/4 v1, 0x6

    new-array v10, v1, [I

    .line 414
    .local v10, index:[I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    const/4 v6, -0x1

    aput v6, v10, v1

    .line 415
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x1

    const/4 v6, -0x1

    aput v6, v10, v1

    .line 416
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x2

    const/4 v6, -0x1

    aput v6, v10, v1

    .line 417
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    const/4 v6, -0x1

    aput v6, v10, v1

    .line 418
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    const/4 v6, -0x1

    aput v6, v10, v1

    .line 419
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x5

    const/4 v6, -0x1

    aput v6, v10, v1

    .line 420
    const/4 v15, 0x0

    .line 421
    .local v15, simSize:I
    const/16 v16, 0x0

    .line 422
    .local v16, usimSize:I
    const/4 v13, 0x0

    .line 423
    .local v13, oldEmails:[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v13, v1, [Ljava/lang/String;

    .line 424
    const/4 v1, 0x0

    const-string v6, ""

    aput-object v6, v13, v1

    .line 425
    const/4 v12, 0x0

    .line 426
    .local v12, newEmails:[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v12, v1, [Ljava/lang/String;

    .line 427
    const/4 v1, 0x0

    const-string v6, ""

    aput-object v6, v12, v1

    .line 428
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v1, ""

    const-string v6, ""

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-direct {v3, v1, v6, v13, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 429
    .local v3, oldAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v4, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v1, ""

    const-string v6, ""

    const-string v17, ""

    move-object/from16 v0, v17

    invoke-direct {v4, v1, v6, v12, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    .local v4, newAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    const/4 v5, 0x0

    .line 431
    .local v5, ext1Size:I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-nez v1, :cond_2

    .line 432
    const-string v1, "Failure while trying to update anr due to uninitialised adncache"

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 529
    :cond_1
    :goto_0
    return-object v11

    .line 435
    :cond_2
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->ext1SizeInfo:[I

    if-eqz v1, :cond_4

    .line 436
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->ext1SizeInfo:[I

    const/4 v6, 0x2

    aget v5, v1, v6

    .line 437
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->ext1SizeInfo:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    add-int/lit8 v1, v1, -0x3

    iput v1, v11, Lzte/contact/simcap;->ext1length:I

    .line 442
    :goto_1
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v1, v2}, Lzte/contact/zteAdnRecordCache;->requestAdnTotalSize(I)I

    move-result v15

    .line 443
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v1, v2}, Lzte/contact/zteAdnRecordCache;->requestAdnSize(I)I

    move-result v8

    .line 444
    .local v8, curSimSize:I
    iput v15, v11, Lzte/contact/simcap;->simSize:I

    .line 445
    iput v8, v11, Lzte/contact/simcap;->curSimSize:I

    .line 446
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v1}, Lzte/contact/zteAdnRecordCache;->requestUsimAdnSize()I

    move-result v16

    .line 447
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v1}, Lzte/contact/zteAdnRecordCache;->requestPbrFileld()I

    move-result v9

    .line 448
    .local v9, curUsimSize:I
    move/from16 v0, v16

    iput v0, v11, Lzte/contact/simcap;->usimSize:I

    .line 449
    iput v9, v11, Lzte/contact/simcap;->curUsimSize:I

    .line 451
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    move-object/from16 v6, p1

    invoke-virtual/range {v1 .. v6}, Lzte/contact/zteAdnRecordCache;->searchIndex(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;)[I

    move-result-object v10

    .line 452
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    aget v1, v10, v1

    const/4 v6, -0x1

    if-eq v1, v6, :cond_1

    .line 453
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x5

    aget v14, v10, v1

    .line 454
    .local v14, pbrIndex:I
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getsimcap pbrIndex = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 455
    const/16 v1, 0x6f3a

    if-eq v2, v1, :cond_3

    .line 456
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getGetAdnFileld(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v2

    .line 458
    :cond_3
    iput v5, v11, Lzte/contact/simcap;->ext1Size:I

    .line 459
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getExt1Size(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v7

    .line 460
    .local v7, curExt1Size:I
    iput v7, v11, Lzte/contact/simcap;->curExt1Size:I

    .line 461
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getsimcap 233 msimcap.curExt1Size = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v6, v11, Lzte/contact/simcap;->curExt1Size:I

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v6, "ext1Size = "

    invoke-virtual {v1, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    move-object/from16 v0, p0

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 463
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->adnSizeInfo:[I

    if-nez v1, :cond_5

    .line 464
    const/4 v1, 0x0

    iput v1, v11, Lzte/contact/simcap;->taglength:I

    .line 471
    :goto_2
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->adnSizeInfo:[I

    if-nez v1, :cond_8

    .line 472
    const/4 v1, 0x0

    iput v1, v11, Lzte/contact/simcap;->numberlength:I

    .line 490
    :goto_3
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getIsSupEmail(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 493
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->emailSizeInfo:[I

    if-nez v1, :cond_d

    .line 494
    const/4 v1, 0x0

    iput v1, v11, Lzte/contact/simcap;->emaillength:I

    .line 508
    :goto_4
    move-object/from16 v0, p0

    invoke-static {v0, v14}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getIsSupANR(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)Z

    move-result v1

    if-eqz v1, :cond_16

    .line 511
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->anrSizeInfo:[I

    if-nez v1, :cond_11

    .line 512
    const/4 v1, 0x0

    iput v1, v11, Lzte/contact/simcap;->anrlength:I

    goto/16 :goto_0

    .line 439
    .end local v7           #curExt1Size:I
    .end local v8           #curSimSize:I
    .end local v9           #curUsimSize:I
    .end local v14           #pbrIndex:I
    :cond_4
    const/4 v5, 0x0

    .line 440
    const/4 v1, 0x0

    iput v1, v11, Lzte/contact/simcap;->ext1length:I

    goto/16 :goto_1

    .line 465
    .restart local v7       #curExt1Size:I
    .restart local v8       #curSimSize:I
    .restart local v9       #curUsimSize:I
    .restart local v14       #pbrIndex:I
    :cond_5
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->adnSizeInfo:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    const/16 v6, 0xe

    if-gt v1, v6, :cond_6

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    aget v1, v10, v1

    if-lez v1, :cond_7

    .line 466
    :cond_6
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->adnSizeInfo:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    add-int/lit8 v1, v1, -0xe

    iput v1, v11, Lzte/contact/simcap;->taglength:I

    goto :goto_2

    .line 468
    :cond_7
    const/4 v1, 0x0

    iput v1, v11, Lzte/contact/simcap;->taglength:I

    goto :goto_2

    .line 473
    :cond_8
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->adnSizeInfo:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    if-lez v1, :cond_c

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x0

    aget v1, v10, v1

    if-lez v1, :cond_c

    .line 474
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->ext1SizeInfo:[I

    if-nez v1, :cond_9

    .line 475
    const/16 v1, 0xa

    iput v1, v11, Lzte/contact/simcap;->numberlength:I

    goto :goto_3

    .line 476
    :cond_9
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getExt1Size(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v1

    if-lt v1, v5, :cond_a

    const-string v1, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_a

    .line 477
    const/16 v1, 0xa

    iput v1, v11, Lzte/contact/simcap;->numberlength:I

    goto :goto_3

    .line 479
    :cond_a
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getExt1Size(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v1

    if-le v1, v5, :cond_b

    const-string v1, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_b

    .line 480
    const/16 v1, 0xa

    iput v1, v11, Lzte/contact/simcap;->numberlength:I

    goto/16 :goto_3

    .line 483
    :cond_b
    const/16 v1, 0x14

    iput v1, v11, Lzte/contact/simcap;->numberlength:I

    goto/16 :goto_3

    .line 487
    :cond_c
    const/4 v1, 0x0

    iput v1, v11, Lzte/contact/simcap;->numberlength:I

    goto/16 :goto_3

    .line 495
    :cond_d
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    aget v1, v10, v1

    if-lez v1, :cond_f

    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->emailSizeInfo:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    if-lez v1, :cond_f

    .line 496
    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getIsEMAILTYP2(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)Z

    move-result v1

    if-eqz v1, :cond_e

    .line 497
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->emailSizeInfo:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    add-int/lit8 v1, v1, -0x2

    iput v1, v11, Lzte/contact/simcap;->emaillength:I

    goto/16 :goto_4

    .line 499
    :cond_e
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->emailSizeInfo:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    iput v1, v11, Lzte/contact/simcap;->emaillength:I

    goto/16 :goto_4

    .line 502
    :cond_f
    const/4 v1, 0x0

    iput v1, v11, Lzte/contact/simcap;->emaillength:I

    goto/16 :goto_4

    .line 505
    :cond_10
    const/4 v1, 0x0

    iput v1, v11, Lzte/contact/simcap;->emaillength:I

    goto/16 :goto_4

    .line 513
    :cond_11
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    aget v1, v10, v1

    if-lez v1, :cond_15

    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->anrSizeInfo:[I

    const/4 v6, 0x0

    aget v1, v1, v6

    if-lez v1, :cond_15

    .line 514
    sget-object v1, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->ext1SizeInfo:[I

    if-nez v1, :cond_12

    .line 515
    const/16 v1, 0xa

    iput v1, v11, Lzte/contact/simcap;->anrlength:I

    goto/16 :goto_0

    .line 516
    :cond_12
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getExt1Size(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v1

    if-lt v1, v5, :cond_13

    const-string v1, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_13

    .line 517
    const/16 v1, 0xa

    iput v1, v11, Lzte/contact/simcap;->numberlength:I

    goto/16 :goto_0

    .line 518
    :cond_13
    move-object/from16 v0, p0

    invoke-static {v0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getExt1Size(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v1

    if-le v1, v5, :cond_14

    const-string v1, ""

    move-object/from16 v0, p1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_14

    .line 519
    const/16 v1, 0xa

    iput v1, v11, Lzte/contact/simcap;->numberlength:I

    goto/16 :goto_0

    .line 521
    :cond_14
    const/16 v1, 0x14

    iput v1, v11, Lzte/contact/simcap;->anrlength:I

    goto/16 :goto_0

    .line 524
    :cond_15
    const/4 v1, 0x0

    iput v1, v11, Lzte/contact/simcap;->anrlength:I

    goto/16 :goto_0

    .line 527
    :cond_16
    const/4 v1, 0x0

    iput v1, v11, Lzte/contact/simcap;->anrlength:I

    goto/16 :goto_0
.end method

.method static hasLoadContacts(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)Z
    .locals 4
    .parameter "Iccpbim"

    .prologue
    const/4 v1, 0x0

    .line 219
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/PhoneBase;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 220
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 221
    .local v0, icccontacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-nez v2, :cond_0

    .line 222
    const-string v2, " hasLoadContacts Failure while trying to load from SIM due to uninitialised adncache"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 244
    .end local v0           #icccontacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :goto_0
    return v1

    .line 225
    .restart local v0       #icccontacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getSimCardType()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 226
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    iget-object v2, v2, Lzte/contact/zteAdnRecordCache;->mUsimPhoneBookManager:Lzte/contact/zteUsimPhoneBookManager;

    invoke-virtual {v2}, Lzte/contact/zteUsimPhoneBookManager;->loadUsimRecord()Ljava/util/ArrayList;

    move-result-object v0

    .line 230
    :goto_1
    if-eqz v0, :cond_3

    .line 231
    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v2

    if-nez v2, :cond_2

    .line 232
    const-string v1, "hasLoadContacts true"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 233
    const/4 v1, 0x1

    goto :goto_0

    .line 228
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    iget-object v2, v2, Lzte/contact/zteAdnRecordCache;->adnLikeFiles:Landroid/util/SparseArray;

    const/16 v3, 0x6f3a

    invoke-virtual {v2, v3}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #icccontacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    check-cast v0, Ljava/util/ArrayList;

    .restart local v0       #icccontacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    goto :goto_1

    .line 235
    :cond_2
    const-string v2, "hasLoadContacts  icccontacts isEmpty "

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 239
    :cond_3
    const-string v2, "hasLoadContacts icccontacts is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 243
    .end local v0           #icccontacts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :cond_4
    const-string v2, "hasLoadContacts uicc is null"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0
.end method

.method static isANRSpaceFull(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/lang/String;)Z
    .locals 2
    .parameter "Iccpbim"
    .parameter "srecid"

    .prologue
    .line 73
    const/4 v0, 0x1

    .line 75
    .local v0, isANRSpaceFull:Z
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 77
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->searchANRSpaceWithoutSrecid()Z

    move-result v0

    .line 84
    :goto_0
    return v0

    .line 81
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->searchANRSpaceWithSrecid(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static isEmailSpaceFull(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/lang/String;)Z
    .locals 2
    .parameter "Iccpbim"
    .parameter "srecid"

    .prologue
    .line 60
    const/4 v0, 0x1

    .line 61
    .local v0, isEmailSpaceFull:Z
    if-eqz p1, :cond_0

    const-string v1, ""

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->searchEmailSpaceWithoutSrecid()Z

    move-result v0

    .line 69
    :goto_0
    return v0

    .line 67
    :cond_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->searchEmailSpaceWithSrecid(Ljava/lang/String;)Z

    move-result v0

    goto :goto_0
.end method

.method static searchANRSpaceWithSrecid(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/lang/String;)Z
    .locals 3
    .parameter "Iccpbim"
    .parameter "srecid"

    .prologue
    .line 127
    const/4 v0, 0x1

    .line 129
    .local v0, isANRSpaceFull:Z
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v2, :cond_0

    .line 130
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v2, p1}, Lzte/contact/zteAdnRecordCache;->searchANRSpaceWithSrecid(Ljava/lang/String;)Z

    move-result v0

    move v1, v0

    .line 136
    .end local v0           #isANRSpaceFull:Z
    .local v1, isANRSpaceFull:I
    :goto_0
    return v1

    .line 132
    .end local v1           #isANRSpaceFull:I
    .restart local v0       #isANRSpaceFull:Z
    :cond_0
    const-string v2, " adnCache is null,can\'t searchANRSpaceWithSrecid"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move v1, v0

    .line 133
    .restart local v1       #isANRSpaceFull:I
    goto :goto_0
.end method

.method static searchANRSpaceWithoutSrecid(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)Z
    .locals 3
    .parameter "Iccpbim"

    .prologue
    .line 114
    const/4 v0, 0x1

    .line 116
    .local v0, isANRSpaceFull:Z
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v2, :cond_0

    .line 117
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v2}, Lzte/contact/zteAdnRecordCache;->searchANRSpaceWithoutSrecid()Z

    move-result v0

    move v1, v0

    .line 123
    .end local v0           #isANRSpaceFull:Z
    .local v1, isANRSpaceFull:I
    :goto_0
    return v1

    .line 119
    .end local v1           #isANRSpaceFull:I
    .restart local v0       #isANRSpaceFull:Z
    :cond_0
    const-string v2, " adnCache is null,can\'t searchANRSpaceWithoutSrecid"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move v1, v0

    .line 120
    .restart local v1       #isANRSpaceFull:I
    goto :goto_0
.end method

.method static searchEmailSpaceWithSrecid(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/lang/String;)Z
    .locals 3
    .parameter "Iccpbim"
    .parameter "srecid"

    .prologue
    .line 101
    const/4 v0, 0x1

    .line 103
    .local v0, isEmailSpaceFull:Z
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v2, :cond_0

    .line 104
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v2, p1}, Lzte/contact/zteAdnRecordCache;->searchEmailSpaceWithSrecid(Ljava/lang/String;)Z

    move-result v0

    move v1, v0

    .line 110
    .end local v0           #isEmailSpaceFull:Z
    .local v1, isEmailSpaceFull:I
    :goto_0
    return v1

    .line 106
    .end local v1           #isEmailSpaceFull:I
    .restart local v0       #isEmailSpaceFull:Z
    :cond_0
    const-string v2, " adnCache is null,can\'t searchEmailSpaceWithSrecid"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move v1, v0

    .line 107
    .restart local v1       #isEmailSpaceFull:I
    goto :goto_0
.end method

.method static searchEmailSpaceWithoutSrecid(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)Z
    .locals 3
    .parameter "Iccpbim"

    .prologue
    .line 89
    const/4 v0, 0x1

    .line 91
    .local v0, isEmailSpaceFull:Z
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v2, :cond_0

    .line 92
    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v2}, Lzte/contact/zteAdnRecordCache;->searchEmailSpaceWithoutSrecid()Z

    move-result v0

    move v1, v0

    .line 97
    .end local v0           #isEmailSpaceFull:Z
    .local v1, isEmailSpaceFull:I
    :goto_0
    return v1

    .line 94
    .end local v1           #isEmailSpaceFull:I
    .restart local v0       #isEmailSpaceFull:Z
    :cond_0
    const-string v2, " adnCache is null,can\'t searchEmailSpaceWithoutSrecid"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move v1, v0

    .line 95
    .restart local v1       #isEmailSpaceFull:I
    goto :goto_0
.end method

.method private static updateAdnEmailRecordsInEfByIndex(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;)Z
    .locals 19
    .parameter "Iccpbim"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "newEmail"
    .parameter "newAnr"
    .parameter "index"
    .parameter "pin2"

    .prologue
    .line 662
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v6, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v4, v6}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 665
    new-instance v4, Ljava/lang/SecurityException;

    const-string v6, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v4, v6}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 669
    :cond_0
    const/16 v18, 0x0

    .line 670
    .local v18, usimsuccess:Z
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x5

    aget v17, p5, v4

    .line 671
    .local v17, pbrIndex:I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getGetAdnFileld(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v5

    .line 673
    .local v5, adnefid:I
    const-string v9, ""

    move-object/from16 v4, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p5

    move-object/from16 v10, p6

    invoke-static/range {v4 .. v10}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->updateAdnRecordsInEfByIndex(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;ILjava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)Z

    move-result v18

    .line 674
    if-nez v18, :cond_1

    const/4 v4, 0x0

    .line 721
    :goto_0
    return v4

    .line 675
    :cond_1
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getIsSupEmail(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)Z

    move-result v4

    if-eqz v4, :cond_2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x3

    aget v4, p5, v4

    const/16 v6, 0xff

    if-eq v4, v6, :cond_2

    .line 676
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAdnEmailRecordsInEfByIndex index[adnCache.email_Index] = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x3

    aget v6, p5, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 677
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getGetEmailFileld(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v14

    .line 678
    .local v14, emailefid:I
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p3

    move-object/from16 v3, p6

    invoke-static {v0, v14, v1, v2, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->updateEmailRecordsInEfByIndex(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I[ILjava/lang/String;Ljava/lang/String;)Z

    move-result v18

    .line 683
    .end local v14           #emailefid:I
    :goto_1
    if-nez v18, :cond_3

    const/4 v4, 0x0

    goto :goto_0

    .line 680
    :cond_2
    const-string p3, ""

    .line 681
    const/16 v18, 0x1

    goto :goto_1

    .line 684
    :cond_3
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getIsSupANR(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)Z

    move-result v4

    if-eqz v4, :cond_4

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    aget v4, p5, v4

    const/16 v6, 0xff

    if-eq v4, v6, :cond_4

    .line 685
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAdnEmailRecordsInEfByIndex index[adnCache.anr_Index] = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v6}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v6, 0x4

    aget v6, p5, v6

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 686
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getGetAnrFileld(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v13

    .line 687
    .local v13, anrefid:I
    move-object/from16 v0, p0

    move-object/from16 v1, p5

    move-object/from16 v2, p4

    move-object/from16 v3, p6

    invoke-static {v0, v13, v1, v2, v3}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->updateAnrRecordsInEfByIndex(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I[ILjava/lang/String;Ljava/lang/String;)Z

    move-result v18

    .line 692
    .end local v13           #anrefid:I
    :goto_2
    if-nez v18, :cond_5

    const/4 v4, 0x0

    goto/16 :goto_0

    .line 689
    :cond_4
    const-string p4, ""

    .line 690
    const/16 v18, 0x1

    goto :goto_2

    .line 694
    :cond_5
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getIsSupIAP(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)Z

    move-result v4

    if-eqz v4, :cond_d

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getIsEMAILTYP2(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)Z

    move-result v4

    if-nez v4, :cond_6

    invoke-static/range {p0 .. p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getIsANRTYP2(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;)Z

    move-result v4

    if-eqz v4, :cond_d

    .line 695
    :cond_6
    const-string v4, "updateAdnEmailRecordsInEfByIndex iap "

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 696
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-static {v0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->getGetIapFileld(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result v7

    .line 697
    .local v7, iapefid:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4}, Lzte/contact/zteAdnRecordCache;->GetEmailiniap()I

    move-result v8

    .line 698
    .local v8, emailiniap:I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4}, Lzte/contact/zteAdnRecordCache;->GetAnriniap()I

    move-result v9

    .line 699
    .local v9, anriniap:I
    const-string v4, ""

    move-object/from16 v0, p3

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_7

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x3

    const/16 v6, 0xff

    aput v6, p5, v4

    .line 700
    :cond_7
    const-string v4, ""

    move-object/from16 v0, p4

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_8

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/16 v6, 0xff

    aput v6, p5, v4

    .line 701
    :cond_8
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v16

    .line 702
    .local v16, iapSizeInfo:[I
    const/4 v15, 0x0

    .line 703
    .local v15, iapSize:I
    const/4 v11, 0x0

    .line 704
    .local v11, iapRecord:[B
    if-eqz v16, :cond_c

    .line 705
    const/4 v4, 0x0

    aget v15, v16, v4

    .line 706
    if-lez v15, :cond_b

    .line 707
    new-array v11, v15, [B

    .line 708
    const/4 v4, -0x1

    if-eq v8, v4, :cond_9

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x3

    aget v4, p5, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v11, v8

    .line 709
    :cond_9
    const/4 v4, -0x1

    if-eq v9, v4, :cond_a

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    aget v4, p5, v4

    and-int/lit16 v4, v4, 0xff

    int-to-byte v4, v4

    aput-byte v4, v11, v9

    :cond_a
    move-object/from16 v6, p0

    move-object/from16 v10, p5

    move-object/from16 v12, p6

    .line 710
    invoke-static/range {v6 .. v12}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->updateIapRecordsInEfByIndex(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;III[I[BLjava/lang/String;)Z

    move-result v18

    .line 720
    .end local v7           #iapefid:I
    .end local v8           #emailiniap:I
    .end local v9           #anriniap:I
    .end local v11           #iapRecord:[B
    .end local v15           #iapSize:I
    .end local v16           #iapSizeInfo:[I
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateAdnEmailRecordsInEfByIndex usimsuccess = "

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v18

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move/from16 v4, v18

    .line 721
    goto/16 :goto_0

    .line 712
    .restart local v7       #iapefid:I
    .restart local v8       #emailiniap:I
    .restart local v9       #anriniap:I
    .restart local v11       #iapRecord:[B
    .restart local v15       #iapSize:I
    .restart local v16       #iapSizeInfo:[I
    :cond_b
    const/16 v18, 0x0

    goto :goto_3

    .line 715
    :cond_c
    const/16 v18, 0x0

    goto :goto_3

    .line 718
    .end local v7           #iapefid:I
    .end local v8           #emailiniap:I
    .end local v9           #anriniap:I
    .end local v11           #iapRecord:[B
    .end local v15           #iapSize:I
    .end local v16           #iapSizeInfo:[I
    :cond_d
    const/16 v18, 0x1

    goto :goto_3
.end method

.method private static updateAdnRecordsInEfByIndex(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;ILjava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)Z
    .locals 11
    .parameter "Iccpbim"
    .parameter "efid"
    .parameter "newTag"
    .parameter "newPhoneNumber"
    .parameter "index"
    .parameter "srecid"
    .parameter "pin2"

    .prologue
    .line 537
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 540
    new-instance v1, Ljava/lang/SecurityException;

    const-string v2, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v1, v2}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 544
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAdnRecordsInEfByIndex: efid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " index[adnCache.adn_Index]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    aget v2, p4, v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    move-object/from16 v0, p6

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 547
    iget-object v10, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 548
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 549
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    .line 550
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v9, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 551
    .local v9, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 552
    .local v6, response:Landroid/os/Message;
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v1, ""

    move-object/from16 v0, p5

    invoke-direct {v3, p2, p3, v1, v0}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 553
    .local v3, newAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v1, :cond_1

    .line 554
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x0

    aget v4, p4, v2

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x5

    aget v7, p4, v2

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x1

    aget v8, p4, v2

    move v2, p1

    move-object/from16 v5, p6

    invoke-virtual/range {v1 .. v8}, Lzte/contact/zteAdnRecordCache;->updateAdnByIndex(ILcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;Landroid/os/Message;II)V

    .line 555
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 559
    :goto_0
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 560
    iget-boolean v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mSuccess:Z

    return v1

    .line 557
    :cond_1
    :try_start_1
    const-string v1, "Failure while trying to update by index due to uninitialised adncache"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_0

    .line 559
    .end local v3           #newAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v6           #response:Landroid/os/Message;
    .end local v9           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v1

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v1
.end method

.method private static updateAnrRecordsInEfByIndex(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I[ILjava/lang/String;Ljava/lang/String;)Z
    .locals 8
    .parameter "Iccpbim"
    .parameter "efid"
    .parameter "index"
    .parameter "newAnr"
    .parameter "pin2"

    .prologue
    const/4 v0, 0x0

    .line 630
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 633
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 637
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateAnrRecordsInEfByIndex: efid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 639
    iget-object v7, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v7

    .line 640
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 641
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->anrsuccess:Z

    .line 642
    new-instance v6, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v6, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 643
    .local v6, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v2, 0x7

    invoke-virtual {v1, v2, v6}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 644
    .local v5, response:Landroid/os/Message;
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v1, ""

    const-string v2, ""

    const-string v4, ""

    invoke-direct {v3, v1, v2, p3, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 645
    .local v3, newAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x4

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 646
    monitor-exit v7

    .line 656
    :goto_0
    return v0

    .line 648
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v0, :cond_2

    .line 649
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lzte/contact/zteAdnRecordCache;->updateAnrByIndex(I[ILcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 650
    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 654
    :goto_1
    monitor-exit v7
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 656
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->anrsuccess:Z

    goto :goto_0

    .line 652
    :cond_2
    :try_start_1
    const-string v0, "Failure while trying to update anr due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 654
    .end local v3           #newAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v5           #response:Landroid/os/Message;
    .end local v6           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit v7
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method private static updateEmailRecordsInEfByIndex(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I[ILjava/lang/String;Ljava/lang/String;)Z
    .locals 9
    .parameter "Iccpbim"
    .parameter "efid"
    .parameter "index"
    .parameter "newEmail"
    .parameter "pin2"

    .prologue
    const/4 v4, 0x3

    const/4 v0, 0x0

    .line 566
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v1, v2}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v1

    if-eqz v1, :cond_0

    .line 569
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 573
    :cond_0
    const/4 v6, 0x0

    .line 574
    .local v6, newEmails:[Ljava/lang/String;
    const/4 v1, 0x1

    new-array v6, v1, [Ljava/lang/String;

    .line 575
    aput-object p3, v6, v0

    .line 576
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateEmailRecordsInEfByIndex: efid="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ","

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    aget v2, p2, v4

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " pin2="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 578
    iget-object v8, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v8

    .line 579
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 580
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->emailsuccess:Z

    .line 581
    new-instance v7, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v1, 0x0

    invoke-direct {v7, v1}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 582
    .local v7, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/4 v2, 0x6

    invoke-virtual {v1, v2, v7}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v5

    .line 583
    .local v5, response:Landroid/os/Message;
    new-instance v3, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v1, ""

    const-string v2, ""

    const-string v4, ""

    invoke-direct {v3, v1, v2, v6, v4}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 584
    .local v3, newAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v1, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v1, 0x3

    aget v1, p2, v1

    const/4 v2, -0x1

    if-ne v1, v2, :cond_1

    .line 585
    monitor-exit v8

    .line 594
    :goto_0
    return v0

    .line 587
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v0, :cond_2

    .line 588
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    move v1, p1

    move-object v2, p2

    move-object v4, p4

    invoke-virtual/range {v0 .. v5}, Lzte/contact/zteAdnRecordCache;->updateEmailByIndex(I[ILcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 589
    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 593
    :goto_1
    monitor-exit v8
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 594
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->emailsuccess:Z

    goto :goto_0

    .line 591
    :cond_2
    :try_start_1
    const-string v0, "Failure while trying to update to email due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 593
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

.method private static updateIapRecordsInEfByIndex(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;III[I[BLjava/lang/String;)Z
    .locals 11
    .parameter "Iccpbim"
    .parameter "efid"
    .parameter "Emailiniap"
    .parameter "Anriniap"
    .parameter "index"
    .parameter "iapRecord"
    .parameter "pin2"

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_0

    .line 604
    new-instance v0, Ljava/lang/SecurityException;

    const-string v1, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v0, v1}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 607
    :cond_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "updateIapRecordsInEfByIndex: efid="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 608
    iget-object v10, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mLock:Ljava/lang/Object;

    monitor-enter v10

    .line 609
    :try_start_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->checkThread()V

    .line 610
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->iapsuccess:Z

    .line 611
    new-instance v9, Ljava/util/concurrent/atomic/AtomicBoolean;

    const/4 v0, 0x0

    invoke-direct {v9, v0}, Ljava/util/concurrent/atomic/AtomicBoolean;-><init>(Z)V

    .line 612
    .local v9, status:Ljava/util/concurrent/atomic/AtomicBoolean;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mBaseHandler:Landroid/os/Handler;

    const/16 v1, 0x8

    invoke-virtual {v0, v1, v9}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v8

    .line 613
    .local v8, response:Landroid/os/Message;
    new-instance v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    const-string v0, ""

    const-string v1, ""

    iget-object v2, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v2, 0x3

    aget v2, p4, v2

    iget-object v3, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v3, 0x4

    aget v3, p4, v3

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;II)V

    .line 614
    .local v6, newAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v0, 0x0

    aget v0, p4, v0

    const/4 v1, -0x1

    if-ne v0, v1, :cond_1

    .line 615
    const/4 v0, 0x0

    monitor-exit v10

    .line 625
    :goto_0
    return v0

    .line 617
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-eqz v0, :cond_2

    .line 618
    iget-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    move v1, p1

    move v2, p2

    move v3, p3

    move-object v4, p4

    move-object/from16 v5, p5

    move-object/from16 v7, p6

    invoke-virtual/range {v0 .. v8}, Lzte/contact/zteAdnRecordCache;->updateIapByIndex(III[I[BLcom/android/internal/telephony/uicc/AdnRecord;Ljava/lang/String;Landroid/os/Message;)V

    .line 619
    invoke-virtual {p0, v9}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->waitForResult(Ljava/util/concurrent/atomic/AtomicBoolean;)V

    .line 623
    :goto_1
    monitor-exit v10
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    iget-boolean v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->iapsuccess:Z

    goto :goto_0

    .line 621
    :cond_2
    :try_start_1
    const-string v0, "Failure while trying to update iap due to uninitialised adncache"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    goto :goto_1

    .line 623
    .end local v6           #newAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v8           #response:Landroid/os/Message;
    .end local v9           #status:Ljava/util/concurrent/atomic/AtomicBoolean;
    :catchall_0
    move-exception v0

    monitor-exit v10
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw v0
.end method

.method static updateIccRecords(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Lcom/android/internal/telephony/uicc/IccRecords;)V
    .locals 1
    .parameter "Iccpbim"
    .parameter "iccRecords"

    .prologue
    .line 826
    if-eqz p1, :cond_0

    .line 827
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/IccRecords;->getAdnCache()Lzte/contact/zteAdnRecordCache;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    .line 831
    :goto_0
    return-void

    .line 829
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    goto :goto_0
.end method

.method static updatepbRecordsInEfBySearch(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 28
    .parameter "Iccpbim"
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

    .prologue
    .line 729
    const-string v4, "updatepbRecordsInEfBySearch"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 730
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v4

    const-string v5, "android.permission.WRITE_CONTACTS"

    invoke-virtual {v4, v5}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v4

    if-eqz v4, :cond_0

    .line 733
    new-instance v4, Ljava/lang/SecurityException;

    const-string v5, "Requires android.permission.WRITE_CONTACTS permission"

    invoke-direct {v4, v5}, Ljava/lang/SecurityException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 736
    :cond_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatepbRecordsInEfBySearch efid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " srecid= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " pin2= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p11

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 737
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatepbRecordsInEfBySearch oldTag= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p2

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " oldPhoneNumber= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p3

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " oldEmail= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " oldAnr= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p5

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 738
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatepbRecordsInEfBySearch newTag= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p6

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newPhoneNumber= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p7

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newEmail= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p8

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " newAnr= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p9

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 740
    move-object/from16 v24, p10

    .line 741
    .local v24, oldSrecid:Ljava/lang/String;
    if-nez p2, :cond_1

    const-string p2, ""

    :cond_1
    if-nez p3, :cond_2

    const-string p3, ""

    :cond_2
    if-nez p4, :cond_3

    const-string p4, ""

    :cond_3
    if-nez p5, :cond_4

    const-string p5, ""

    .line 742
    :cond_4
    if-nez p6, :cond_5

    const-string p6, ""

    :cond_5
    if-nez p7, :cond_6

    const-string p7, ""

    :cond_6
    if-nez p8, :cond_7

    const-string p8, ""

    :cond_7
    if-nez p9, :cond_8

    const-string p9, ""

    .line 744
    :cond_8
    invoke-static/range {p0 .. p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->changeEfForIccType(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;I)I

    move-result p1

    .line 745
    const/4 v4, 0x6

    new-array v13, v4, [I

    .line 746
    .local v13, index:[I
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    const/4 v5, -0x1

    aput v5, v13, v4

    .line 747
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    const/4 v5, -0x1

    aput v5, v13, v4

    .line 748
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x2

    const/4 v5, -0x1

    aput v5, v13, v4

    .line 749
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x3

    const/4 v5, -0x1

    aput v5, v13, v4

    .line 750
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    const/4 v5, -0x1

    aput v5, v13, v4

    .line 751
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x5

    const/4 v5, -0x1

    aput v5, v13, v4

    .line 752
    const/16 v23, 0x0

    .line 753
    .local v23, oldEmails:[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v23, v0

    .line 754
    const/4 v4, 0x0

    aput-object p4, v23, v4

    .line 755
    const/16 v22, 0x0

    .line 756
    .local v22, newEmails:[Ljava/lang/String;
    const/4 v4, 0x1

    new-array v0, v4, [Ljava/lang/String;

    move-object/from16 v22, v0

    .line 757
    const/4 v4, 0x0

    aput-object p8, v22, v4

    .line 758
    new-instance v6, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v23

    move-object/from16 v3, p5

    invoke-direct {v6, v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 759
    .local v6, oldAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    new-instance v7, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v0, p6

    move-object/from16 v1, p7

    move-object/from16 v2, v22

    move-object/from16 v3, p9

    invoke-direct {v7, v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)V

    .line 761
    .local v7, newAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    if-nez v4, :cond_9

    .line 762
    const-string v4, "Failure while trying to update anr due to uninitialised adncache"

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    .line 763
    const-string v4, ""

    .line 820
    :goto_0
    return-object v4

    .line 766
    :cond_9
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    move/from16 v0, p1

    invoke-virtual {v4, v0}, Lzte/contact/zteAdnRecordCache;->extensionEfForEf(I)I

    move-result v21

    .line 767
    .local v21, extensionEF:I
    const/4 v8, 0x0

    .line 768
    .local v8, ext1Size:I
    if-lez v21, :cond_a

    sget-object v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->ext1SizeInfo:[I

    if-eqz v4, :cond_a

    sget-object v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->ext1SizeInfo:[I

    const/4 v5, 0x2

    aget v8, v4, v5

    .line 769
    :cond_a
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    move/from16 v5, p1

    move-object/from16 v9, p10

    invoke-virtual/range {v4 .. v9}, Lzte/contact/zteAdnRecordCache;->searchIndex(ILcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;ILjava/lang/String;)[I

    move-result-object v13

    .line 771
    const/4 v4, 0x2

    new-array v0, v4, [B

    move-object/from16 v25, v0

    .line 772
    .local v25, recid:[B
    const/4 v4, 0x0

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    aget v5, v13, v5

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v25, v4

    .line 773
    const/4 v4, 0x1

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x5

    aget v5, v13, v5

    add-int/lit8 v5, v5, 0x1

    and-int/lit16 v5, v5, 0xff

    int-to-byte v5, v5

    aput-byte v5, v25, v4

    .line 775
    invoke-static/range {v25 .. v25}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object p10

    .line 776
    if-nez p10, :cond_b

    const-string p10, ""

    .line 777
    :cond_b
    const/16 v4, 0x6f3b

    move/from16 v0, p1

    if-eq v0, v4, :cond_d

    .line 778
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    aget v4, v13, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x1

    aget v4, v13, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x2

    aget v4, v13, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_c

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x5

    aget v4, v13, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_f

    .line 779
    :cond_c
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatepbRecordsInEfBySearch index[adnCache.adn_Index]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    aget v5, v13, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 780
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatepbRecordsInEfBySearch index[adnCache.adnExt1_Index]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x1

    aget v5, v13, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 781
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatepbRecordsInEfBySearch index[adnCache.anrExt1_Index]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x2

    aget v5, v13, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 782
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatepbRecordsInEfBySearch index[adnCache.pbr_Index]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x5

    aget v5, v13, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 783
    const-string p10, ""

    move-object/from16 v4, p10

    .line 784
    goto/16 :goto_0

    .line 787
    :cond_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x0

    aget v4, v13, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_e

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x5

    aget v4, v13, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_f

    .line 788
    :cond_e
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatepbRecordsInEfBySearch index[adnCache.adn_Index]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x0

    aget v5, v13, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 789
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatepbRecordsInEfBySearch index[adnCache.pbr_Index]="

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x5

    aget v5, v13, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 790
    const-string p10, ""

    move-object/from16 v4, p10

    .line 791
    goto/16 :goto_0

    .line 794
    :cond_f
    const/16 v4, 0x6f3a

    move/from16 v0, p1

    if-eq v0, v4, :cond_10

    const/16 v4, 0x6f3b

    move/from16 v0, p1

    if-ne v0, v4, :cond_12

    :cond_10
    move-object/from16 v9, p0

    move/from16 v10, p1

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move-object/from16 v14, p10

    move-object/from16 v15, p11

    .line 795
    invoke-static/range {v9 .. v15}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->updateAdnRecordsInEfByIndex(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;ILjava/lang/String;Ljava/lang/String;[ILjava/lang/String;Ljava/lang/String;)Z

    move-result v26

    .line 797
    .local v26, success:Z
    if-nez v26, :cond_11

    const-string p10, ""

    .line 798
    :cond_11
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatepbRecordsInEfBySearch srecid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "success= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v26

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move-object/from16 v4, p10

    .line 799
    goto/16 :goto_0

    .line 802
    .end local v26           #success:Z
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x3

    aget v4, v13, v4

    const/4 v5, -0x1

    if-eq v4, v5, :cond_13

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v4}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v4, 0x4

    aget v4, v13, v4

    const/4 v5, -0x1

    if-ne v4, v5, :cond_14

    .line 803
    :cond_13
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updatepbRecordsInEfBySearch index[adnCache.email_Index]= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x3

    aget v5, v13, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 804
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, " updatepbRecordsInEfBySearch index[adnCache.anr_Index]= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    invoke-virtual {v5}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    const/4 v5, 0x4

    aget v5, v13, v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->loge(Ljava/lang/String;)V

    .line 805
    const-string p10, ""

    move-object/from16 v4, p10

    .line 806
    goto/16 :goto_0

    :cond_14
    move-object/from16 v14, p0

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, p8

    move-object/from16 v18, p9

    move-object/from16 v19, v13

    move-object/from16 v20, p11

    .line 808
    invoke-static/range {v14 .. v20}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->updateAdnEmailRecordsInEfByIndex(Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;[ILjava/lang/String;)Z

    move-result v27

    .line 809
    .local v27, usimsuccess:Z
    const/4 v4, 0x1

    move/from16 v0, v27

    if-ne v0, v4, :cond_17

    .line 811
    const/16 v20, 0x0

    .line 812
    .local v20, adnSize:I
    sget-object v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->adnSizeInfo:[I

    if-nez v4, :cond_15

    invoke-virtual/range {p0 .. p1}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->getAdnRecordsSize(I)[I

    move-result-object v4

    sput-object v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->adnSizeInfo:[I

    .line 813
    :cond_15
    sget-object v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->adnSizeInfo:[I

    if-eqz v4, :cond_16

    sget-object v4, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager$Injector;->adnSizeInfo:[I

    const/4 v5, 0x2

    aget v20, v4, v5

    .line 814
    :cond_16
    new-instance v14, Lcom/android/internal/telephony/uicc/AdnRecord;

    move-object/from16 v15, p6

    move-object/from16 v16, p7

    move-object/from16 v17, v22

    move-object/from16 v18, p9

    move-object/from16 v19, p10

    invoke-direct/range {v14 .. v19}, Lcom/android/internal/telephony/uicc/AdnRecord;-><init>(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    .line 815
    .local v14, newusimAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->mAdnCache:Lzte/contact/zteAdnRecordCache;

    move-object/from16 v16, v6

    move-object/from16 v17, v14

    move-object/from16 v18, v13

    move-object/from16 v19, v24

    invoke-virtual/range {v15 .. v20}, Lzte/contact/zteAdnRecordCache;->updateusimphonebook(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;[ILjava/lang/String;I)Z

    .line 818
    .end local v14           #newusimAdn:Lcom/android/internal/telephony/uicc/AdnRecord;
    .end local v20           #adnSize:I
    :cond_17
    if-nez v27, :cond_18

    const-string p10, ""

    .line 819
    :cond_18
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updatepbRecordsInEfBySearch srecid = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p10

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "usimsuccess= "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;->logd(Ljava/lang/String;)V

    move-object/from16 v4, p10

    .line 820
    goto/16 :goto_0
.end method
