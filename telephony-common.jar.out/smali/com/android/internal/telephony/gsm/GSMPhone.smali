.class public Lcom/android/internal/telephony/gsm/GSMPhone;
.super Lcom/android/internal/telephony/PhoneBase;
.source "GSMPhone.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/gsm/GSMPhone$2;,
        Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;,
        Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    }
.end annotation


# static fields
.field public static final CF_ENABLED:Ljava/lang/String; = "cf_enabled_key"

.field private static final CHECK_CALLFORWARDING_STATUS:I = 0x4b

.field public static final CIPHERING_KEY:Ljava/lang/String; = "ciphering_key"

.field private static final DBG_PORT:Z = false

.field private static final EVENT_INIT_CALLFORWARD_STATE_AGAIN:I = 0x78

.field private static final EVENT_INIT_CALLFORWARD_STATE_DONE:I = 0x64

.field private static final EVENT_MODIFY_UPLMN_DONE:I = 0x3e8

.field private static final EVENT_QUERY_UPLMN_DONE:I = 0x3e9

.field private static final LOCAL_DEBUG:Z = true

.field protected static final LOG_TAG:Ljava/lang/String; = "GSMPhone"

.field private static final VDBG:Z = false

.field public static final VM_NUMBER:Ljava/lang/String; = "vm_number_key"

.field public static final VM_SIM_IMSI:Ljava/lang/String; = "vm_sim_imsi_key"


# instance fields
.field count_retry_time:I

.field isQueryCf:Z

.field mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

.field mDebugPortThread:Ljava/lang/Thread;

.field mDebugSocket:Ljava/net/ServerSocket;

.field protected mImei:Ljava/lang/String;

.field protected mImeiSv:Ljava/lang/String;

.field mPendingMMIs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/gsm/GsmMmiCode;",
            ">;"
        }
    .end annotation
.end field

.field mPostDialHandler:Landroid/os/Registrant;

.field protected mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

.field mSimCard:Lcom/android/internal/telephony/uicc/UiccCard;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field protected mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

.field mSsnRegistrants:Landroid/os/RegistrantList;

.field mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

.field private mVmNumber:Ljava/lang/String;

.field uplmn_act:[B


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;)V
    .locals 1
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"

    .prologue
    .line 175
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V

    .line 176
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Lcom/android/internal/telephony/PhoneNotifier;Z)V
    .locals 9
    .parameter "context"
    .parameter "ci"
    .parameter "notifier"
    .parameter "unitTestMode"

    .prologue
    const/4 v8, 0x1

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 180
    const-string v1, "GSM"

    move-object v0, p0

    move-object v2, p3

    move-object v3, p1

    move-object v4, p2

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/android/internal/telephony/PhoneBase;-><init>(Ljava/lang/String;Lcom/android/internal/telephony/PhoneNotifier;Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Z)V

    .line 130
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->uplmn_act:[B

    .line 133
    iput-boolean v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->isQueryCf:Z

    .line 134
    iput v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->count_retry_time:I

    .line 140
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    .line 143
    iput-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 149
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    .line 182
    instance-of v0, p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    if-eqz v0, :cond_0

    .line 183
    check-cast p2, Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .end local p2
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 186
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, v8}, Lcom/android/internal/telephony/CommandsInterface;->setPhoneType(I)V

    .line 187
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 189
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->initSubscriptionSpecifics()V

    .line 191
    if-nez p4, :cond_1

    .line 192
    new-instance v0, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    .line 193
    new-instance v0, Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/PhoneSubInfo;-><init>(Lcom/android/internal/telephony/Phone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 196
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0, v8, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 197
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x8

    invoke-interface {v0, p0, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 198
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x5

    invoke-interface {v0, p0, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 199
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x7

    invoke-interface {v0, p0, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnUSSD(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 200
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x2

    invoke-interface {v0, p0, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 201
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    const/16 v1, 0x13

    invoke-virtual {v0, p0, v1, v6}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->registerForNetworkAttached(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 202
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x1f

    invoke-interface {v0, p0, v1, v6}, Lcom/android/internal/telephony/CommandsInterface;->setOnSs(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 238
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setProperties()V

    .line 239
    return-void
.end method

.method private getStoredVoiceMessageCount()I
    .locals 7
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 2000
    const/4 v0, 0x0

    .line 2001
    .local v0, countVoiceMessages:I
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v3

    .line 2002
    .local v3, sp:Landroid/content/SharedPreferences;
    const-string v4, "vm_id_key"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 2003
    .local v2, imsi:Ljava/lang/String;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v1

    .line 2005
    .local v1, currentImsi:Ljava/lang/String;
    const-string v4, "GSMPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Voicemail count retrieval for Imsi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " current Imsi = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2008
    if-eqz v2, :cond_0

    if-eqz v1, :cond_0

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 2011
    const-string v4, "vm_count_key"

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 2012
    const-string v4, "GSMPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Voice Mail Count from preference = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2014
    :cond_0
    return v0
.end method

.method private handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"

    .prologue
    const/4 v1, 0x1

    .line 604
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-le v2, v1, :cond_1

    .line 605
    const/4 v1, 0x0

    .line 623
    :cond_0
    :goto_0
    return v1

    .line 608
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_2

    .line 609
    const-string v2, "GSMPhone"

    const-string v3, "MmiCode 0: rejectCall"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 611
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->rejectCall()V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 612
    :catch_0
    move-exception v0

    .line 613
    .local v0, e:Lcom/android/internal/telephony/CallStateException;
    const-string v2, "GSMPhone"

    const-string v3, "reject failed"

    invoke-static {v2, v3, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 615
    sget-object v2, Lcom/android/internal/telephony/Phone$SuppService;->REJECT:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 617
    .end local v0           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    sget-object v3, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v2, v3, :cond_0

    .line 618
    const-string v2, "GSMPhone"

    const-string v3, "MmiCode 0: hangupWaitingOrBackground"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupWaitingOrBackground()V

    goto :goto_0
.end method

.method private handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 10
    .parameter "dialString"

    .prologue
    const/4 v6, 0x1

    .line 669
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v5

    .line 671
    .local v5, len:I
    const/4 v7, 0x2

    if-le v5, v7, :cond_0

    .line 672
    const/4 v6, 0x0

    .line 716
    :goto_0
    return v6

    .line 675
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    .line 677
    .local v0, call:Lcom/android/internal/telephony/gsm/GsmCall;
    if-le v5, v6, :cond_2

    .line 679
    const/4 v7, 0x1

    :try_start_0
    invoke-virtual {p1, v7}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 680
    .local v2, ch:C
    add-int/lit8 v1, v2, -0x30

    .line 681
    .local v1, callIndex:I
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)Lcom/android/internal/telephony/gsm/GsmConnection;

    move-result-object v3

    .line 684
    .local v3, conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    if-eqz v3, :cond_1

    if-lt v1, v6, :cond_1

    const/4 v7, 0x7

    if-gt v1, v7, :cond_1

    .line 685
    const-string v7, "GSMPhone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MmiCode 2: separate call "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 687
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7, v3}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->separate(Lcom/android/internal/telephony/gsm/GsmConnection;)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 693
    .end local v1           #callIndex:I
    .end local v2           #ch:C
    .end local v3           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :catch_0
    move-exception v4

    .line 694
    .local v4, e:Lcom/android/internal/telephony/CallStateException;
    const-string v7, "GSMPhone"

    const-string v8, "separate failed"

    invoke-static {v7, v8, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 696
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 689
    .end local v4           #e:Lcom/android/internal/telephony/CallStateException;
    .restart local v1       #callIndex:I
    .restart local v2       #ch:C
    .restart local v3       #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_1
    :try_start_1
    const-string v7, "GSMPhone"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "separate: invalid call index "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 691
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SEPARATE:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 700
    .end local v1           #callIndex:I
    .end local v2           #ch:C
    .end local v3           #conn:Lcom/android/internal/telephony/gsm/GsmConnection;
    :cond_2
    :try_start_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v7

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v7

    sget-object v8, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v7, v8, :cond_3

    .line 701
    const-string v7, "GSMPhone"

    const-string v8, "MmiCode 2: accept ringing call"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V
    :try_end_2
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_2 .. :try_end_2} :catch_1

    goto :goto_0

    .line 709
    :catch_1
    move-exception v4

    .line 710
    .restart local v4       #e:Lcom/android/internal/telephony/CallStateException;
    const-string v7, "GSMPhone"

    const-string v8, "switch failed"

    invoke-static {v7, v8, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 712
    sget-object v7, Lcom/android/internal/telephony/Phone$SuppService;->SWITCH:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto/16 :goto_0

    .line 705
    .end local v4           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_3
    :try_start_3
    const-string v7, "GSMPhone"

    const-string v8, "MmiCode 2: switchWaitingOrHoldingAndActive"

    invoke-static {v7, v8}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 707
    iget-object v7, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v7}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_3
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_0
.end method

.method private handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 9
    .parameter "dialString"

    .prologue
    const/4 v5, 0x1

    .line 628
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v4

    .line 630
    .local v4, len:I
    const/4 v6, 0x2

    if-le v4, v6, :cond_1

    .line 631
    const/4 v5, 0x0

    .line 665
    :cond_0
    :goto_0
    return v5

    .line 634
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    .line 637
    .local v0, call:Lcom/android/internal/telephony/gsm/GsmCall;
    if-le v4, v5, :cond_2

    .line 638
    const/4 v6, 0x1

    :try_start_0
    invoke-virtual {p1, v6}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 639
    .local v2, ch:C
    add-int/lit8 v1, v2, -0x30

    .line 641
    .local v1, callIndex:I
    if-lt v1, v5, :cond_0

    const/4 v6, 0x7

    if-gt v1, v6, :cond_0

    .line 642
    const-string v6, "GSMPhone"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string v8, "MmiCode 1: hangupConnectionByIndex "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6, v0, v1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangupConnectionByIndex(Lcom/android/internal/telephony/gsm/GsmCall;I)V
    :try_end_0
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 659
    .end local v1           #callIndex:I
    .end local v2           #ch:C
    :catch_0
    move-exception v3

    .line 660
    .local v3, e:Lcom/android/internal/telephony/CallStateException;
    const-string v6, "GSMPhone"

    const-string v7, "hangup failed"

    invoke-static {v6, v7, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 662
    sget-object v6, Lcom/android/internal/telephony/Phone$SuppService;->HANGUP:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v6}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0

    .line 648
    .end local v3           #e:Lcom/android/internal/telephony/CallStateException;
    :cond_2
    :try_start_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v6

    sget-object v7, Lcom/android/internal/telephony/Call$State;->IDLE:Lcom/android/internal/telephony/Call$State;

    if-eq v6, v7, :cond_3

    .line 649
    const-string v6, "GSMPhone"

    const-string v7, "MmiCode 1: hangup foreground"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 652
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6, v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->hangup(Lcom/android/internal/telephony/gsm/GsmCall;)V

    goto :goto_0

    .line 654
    :cond_3
    const-string v6, "GSMPhone"

    const-string v7, "MmiCode 1: switchWaitingOrHoldingAndActive"

    invoke-static {v6, v7}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V
    :try_end_1
    .catch Lcom/android/internal/telephony/CallStateException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .parameter "dialString"

    .prologue
    const/4 v0, 0x1

    .line 744
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 745
    const/4 v0, 0x0

    .line 751
    :goto_0
    return v0

    .line 748
    :cond_0
    const-string v1, "GSMPhone"

    const-string v2, "MmiCode 5: CCBS not supported!"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 750
    sget-object v1, Lcom/android/internal/telephony/Phone$SuppService;->UNKNOWN:Lcom/android/internal/telephony/Phone$SuppService;

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V

    goto :goto_0
.end method

.method private handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V
    .locals 6
    .parameter "infos"

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 1796
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1797
    .local v1, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_1

    .line 1798
    if-eqz p1, :cond_0

    array-length v3, p1

    if-nez v3, :cond_2

    .line 1801
    :cond_0
    const/4 v3, 0x0

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1814
    :cond_1
    :goto_0
    return-void

    .line 1803
    :cond_2
    const/4 v0, 0x0

    .local v0, i:I
    array-length v2, p1

    .local v2, s:I
    :goto_1
    if-ge v0, v2, :cond_1

    .line 1804
    aget-object v3, p1, v0

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->serviceClass:I

    and-int/lit8 v3, v3, 0x1

    if-eqz v3, :cond_5

    .line 1805
    aget-object v3, p1, v0

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v3, v4, :cond_4

    move v3, v4

    :goto_2
    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCallForwardingPreference(Z)V

    .line 1806
    aget-object v3, p1, v0

    iget v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->status:I

    if-ne v3, v4, :cond_3

    move v5, v4

    :cond_3
    aget-object v3, p1, v0

    iget-object v3, v3, Lcom/android/internal/telephony/CallForwardInfo;->number:Ljava/lang/String;

    invoke-virtual {v1, v4, v5, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    goto :goto_0

    :cond_4
    move v3, v5

    .line 1805
    goto :goto_2

    .line 1803
    :cond_5
    add-int/lit8 v0, v0, 0x1

    goto :goto_1
.end method

.method private handleEctIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"

    .prologue
    const/4 v1, 0x1

    .line 732
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 734
    .local v0, len:I
    if-eq v0, v1, :cond_0

    .line 735
    const/4 v1, 0x0

    .line 740
    :goto_0
    return v1

    .line 738
    :cond_0
    const-string v2, "GSMPhone"

    const-string v3, "MmiCode 4: explicit call transfer"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 739
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->explicitCallTransfer()V

    goto :goto_0
.end method

.method private handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z
    .locals 3
    .parameter "dialString"

    .prologue
    const/4 v0, 0x1

    .line 721
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-le v1, v0, :cond_0

    .line 722
    const/4 v0, 0x0

    .line 727
    :goto_0
    return v0

    .line 725
    :cond_0
    const-string v1, "GSMPhone"

    const-string v2, "MmiCode 3: merge calls"

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 726
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->conference()V

    goto :goto_0
.end method

.method private handleSetSelectNetwork(Landroid/os/AsyncResult;)V
    .locals 6
    .parameter "ar"

    .prologue
    .line 1750
    iget-object v3, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    instance-of v3, v3, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    if-nez v3, :cond_1

    .line 1751
    const-string v3, "GSMPhone"

    const-string v4, "unexpected result from user object."

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1777
    :cond_0
    :goto_0
    return-void

    .line 1755
    :cond_1
    iget-object v1, p1, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    .line 1759
    .local v1, nsm:Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    if-eqz v3, :cond_2

    .line 1760
    const-string v3, "GSMPhone"

    const-string v4, "sending original message to recipient"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1761
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    iget-object v4, p1, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    iget-object v5, p1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    invoke-static {v3, v4, v5}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1762
    iget-object v3, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    invoke-virtual {v3}, Landroid/os/Message;->sendToTarget()V

    .line 1767
    :cond_2
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 1768
    .local v2, sp:Landroid/content/SharedPreferences;
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1769
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v3, "network_selection_key"

    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1770
    const-string v3, "network_selection_name_key"

    iget-object v4, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    invoke-interface {v0, v3, v4}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 1773
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v3

    if-nez v3, :cond_0

    .line 1774
    const-string v3, "GSMPhone"

    const-string v4, "failed to commit network selection preference"

    invoke-static {v3, v4}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method private isValidCommandInterfaceCFAction(I)Z
    .locals 1
    .parameter "commandInterfaceCFAction"

    .prologue
    .line 1046
    packed-switch p1, :pswitch_data_0

    .line 1053
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1051
    :pswitch_1
    const/4 v0, 0x1

    goto :goto_0

    .line 1046
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
        :pswitch_1
    .end packed-switch
.end method

.method private isValidCommandInterfaceCFReason(I)Z
    .locals 1
    .parameter "commandInterfaceCFReason"

    .prologue
    .line 1032
    packed-switch p1, :pswitch_data_0

    .line 1041
    const/4 v0, 0x0

    :goto_0
    return v0

    .line 1039
    :pswitch_0
    const/4 v0, 0x1

    goto :goto_0

    .line 1032
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method private isValidFacilityString(Ljava/lang/String;)Z
    .locals 2
    .parameter "facility"

    .prologue
    const/4 v0, 0x1

    .line 1941
    const-string v1, "AO"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1971
    :cond_0
    :goto_0
    return v0

    .line 1944
    :cond_1
    const-string v1, "OI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1947
    const-string v1, "OX"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1950
    const-string v1, "AI"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1953
    const-string v1, "IR"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1956
    const-string v1, "AB"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1959
    const-string v1, "AG"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1962
    const-string v1, "AC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1965
    const-string v1, "SC"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1968
    const-string v1, "FD"

    invoke-virtual {p1, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1971
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onIncomingUSSD(ILjava/lang/String;)V
    .locals 7
    .parameter "ussdMode"
    .parameter "ussdMessage"

    .prologue
    const/4 v6, 0x0

    const/4 v2, 0x1

    .line 1328
    if-ne p1, v2, :cond_2

    move v3, v2

    .line 1331
    .local v3, isUssdRequest:Z
    :goto_0
    if-eqz p1, :cond_3

    if-eq p1, v2, :cond_3

    .line 1338
    .local v2, isUssdError:Z
    :goto_1
    const/4 v0, 0x0

    .line 1339
    .local v0, found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const/4 v1, 0x0

    .local v1, i:I
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6}, Ljava/util/ArrayList;->size()I

    move-result v5

    .local v5, s:I
    :goto_2
    if-ge v1, v5, :cond_0

    .line 1340
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual {v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v6

    if-eqz v6, :cond_4

    .line 1341
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v6, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    .end local v0           #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    check-cast v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    .line 1346
    .restart local v0       #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :cond_0
    if-eqz v0, :cond_6

    .line 1349
    if-eqz v2, :cond_5

    .line 1350
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    .line 1368
    :cond_1
    :goto_3
    return-void

    .end local v0           #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .end local v1           #i:I
    .end local v2           #isUssdError:Z
    .end local v3           #isUssdRequest:Z
    .end local v5           #s:I
    :cond_2
    move v3, v6

    .line 1328
    goto :goto_0

    .restart local v3       #isUssdRequest:Z
    :cond_3
    move v2, v6

    .line 1331
    goto :goto_1

    .line 1339
    .restart local v0       #found:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    .restart local v1       #i:I
    .restart local v2       #isUssdError:Z
    .restart local v5       #s:I
    :cond_4
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 1352
    :cond_5
    invoke-virtual {v0, p2, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinished(Ljava/lang/String;Z)V

    goto :goto_3

    .line 1359
    :cond_6
    if-nez v2, :cond_1

    if-eqz p2, :cond_1

    .line 1361
    iget-object v6, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v6}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p2, v3, p0, v6}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newNetworkInitiatedUssd(Ljava/lang/String;ZLcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v4

    .line 1365
    .local v4, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-direct {p0, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V

    goto :goto_3
.end method

.method private onNetworkInitiatedUssd(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V
    .locals 3
    .parameter "mmi"

    .prologue
    const/4 v2, 0x0

    .line 1317
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1319
    return-void
.end method

.method private processIccRecordEvents(I)V
    .locals 0
    .parameter "eventCode"

    .prologue
    .line 1713
    packed-switch p1, :pswitch_data_0

    .line 1721
    :goto_0
    return-void

    .line 1715
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    goto :goto_0

    .line 1718
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyMessageWaitingIndicator()V

    goto :goto_0

    .line 1713
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method private registerForSimRecordEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1902
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1903
    .local v0, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 1910
    :goto_0
    return-void

    .line 1906
    :cond_0
    const/16 v1, 0x1c

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForNetworkSelectionModeAutomatic(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1908
    const/16 v1, 0x1d

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsEvents(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 1909
    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    goto :goto_0
.end method

.method private unregisterForSimRecordEvents()V
    .locals 2

    .prologue
    .line 1913
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1914
    .local v0, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-nez v0, :cond_0

    .line 1920
    :goto_0
    return-void

    .line 1917
    :cond_0
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForNetworkSelectionModeAutomatic(Landroid/os/Handler;)V

    .line 1918
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsEvents(Landroid/os/Handler;)V

    .line 1919
    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    goto :goto_0
.end method

.method private updateCallForwardStatus(I)V
    .locals 5
    .parameter "caller"

    .prologue
    .line 1299
    const-string v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateCallForwardStatus got sim records count_retry_time"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->count_retry_time:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1300
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1301
    .local v1, r:Lcom/android/internal/telephony/uicc/IccRecords;
    const/4 v2, 0x3

    if-ne p1, v2, :cond_1

    .line 1302
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->isCallForwardStatusStored()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1304
    const-string v2, "GSMPhone"

    const-string v3, "Callforwarding info is present on sim"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1313
    :cond_0
    :goto_0
    return-void

    .line 1308
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->count_retry_time:I

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->count_retry_time:I

    .line 1309
    const/16 v2, 0x4b

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v0

    .line 1311
    .local v0, msg:Landroid/os/Message;
    const-wide/16 v2, 0x1388

    invoke-virtual {p0, v0, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendMessageDelayed(Landroid/os/Message;J)Z

    goto :goto_0
.end method

.method private updateVoiceMail()V
    .locals 5

    .prologue
    .line 339
    const/4 v0, 0x0

    .line 340
    .local v0, countVoiceMessages:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 341
    .local v1, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    .line 343
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMessageCount()I

    move-result v0

    .line 345
    :cond_0
    if-nez v0, :cond_1

    .line 346
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getStoredVoiceMessageCount()I

    move-result v0

    .line 348
    :cond_1
    const-string v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateVoiceMail countVoiceMessages = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 349
    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVoiceMessageCount(I)V

    .line 350
    return-void
.end method


# virtual methods
.method public acceptCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 540
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->acceptCall()V

    .line 541
    return-void
.end method

.method public activateCellBroadcastSms(ILandroid/os/Message;)V
    .locals 2
    .parameter "activate"
    .parameter "response"

    .prologue
    .line 1840
    const-string v0, "GSMPhone"

    const-string v1, "[GSMPhone] activateCellBroadcastSms() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1841
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1842
    return-void
.end method

.method public canConference()Z
    .locals 1

    .prologue
    .line 557
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canConference()Z

    move-result v0

    return v0
.end method

.method public canDial()Z
    .locals 1

    .prologue
    .line 561
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canDial()Z

    move-result v0

    return v0
.end method

.method public canTransfer()Z
    .locals 1

    .prologue
    .line 576
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->canTransfer()Z

    move-result v0

    return v0
.end method

.method public clearDisconnected()V
    .locals 1

    .prologue
    .line 571
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->clearDisconnected()V

    .line 572
    return-void
.end method

.method public conference()V
    .locals 1

    .prologue
    .line 566
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->conference()V

    .line 567
    return-void
.end method

.method public deletePreferredPlmn(ILandroid/os/Message;)V
    .locals 11
    .parameter "index"
    .parameter "result"

    .prologue
    const/4 v10, 0x5

    const/4 v9, 0x0

    const/4 v8, -0x1

    .line 2047
    const/4 v0, 0x0

    .line 2049
    .local v0, Filehandler:Lcom/android/internal/telephony/uicc/IccFileHandler;
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->uplmn_act:[B

    .line 2050
    .local v4, plmn_data:[B
    new-array v3, v10, [B

    .line 2051
    .local v3, oper_data:[B
    const-string v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "===yangbin= deletePreferredPlmn index "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2052
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 2053
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v5

    invoke-virtual {v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 2056
    :cond_0
    if-eqz v0, :cond_1

    .line 2057
    aput-byte v8, v3, v9

    .line 2058
    const/4 v5, 0x1

    aput-byte v8, v3, v5

    .line 2059
    const/4 v5, 0x2

    aput-byte v8, v3, v5

    .line 2060
    const/4 v5, 0x3

    aput-byte v9, v3, v5

    .line 2061
    const/4 v5, 0x4

    aput-byte v9, v3, v5

    .line 2063
    const/4 v1, 0x0

    .local v1, k:I
    :goto_0
    if-ge v1, v10, :cond_2

    .line 2065
    mul-int/lit8 v5, p1, 0x5

    add-int/2addr v5, v1

    aget-byte v6, v3, v1

    aput-byte v6, v4, v5

    .line 2063
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2071
    .end local v1           #k:I
    :cond_1
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v5

    new-instance v6, Ljava/lang/Exception;

    const-string v7, "null"

    invoke-direct {v6, v7}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v6, v5, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2072
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 2082
    :goto_1
    return-void

    .line 2076
    .restart local v1       #k:I
    :cond_2
    invoke-static {v4}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v2

    .line 2077
    .local v2, modify_plmn_all:Ljava/lang/String;
    const-string v5, "GSMPhone"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "===yangbin= deletePreferredPlmn modify_plmn_all ==="

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2078
    const/16 v5, 0x6f60

    const/16 v6, 0x3e8

    invoke-virtual {p0, v6, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    invoke-virtual {v0, v5, v4, v6}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto :goto_1
.end method

.method public dial(Ljava/lang/String;)Lcom/android/internal/telephony/Connection;
    .locals 1
    .parameter "dialString"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 807
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v0

    return-object v0
.end method

.method public dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;
    .locals 7
    .parameter "dialString"
    .parameter "uusInfo"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x0

    .line 814
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->stripSeparators(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 817
    .local v2, newDialString:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleInCallMmiCommands(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    move-object v3, v4

    .line 838
    :goto_0
    return-object v3

    .line 822
    :cond_0
    invoke-static {v2}, Landroid/telephony/PhoneNumberUtils;->extractNetworkPortionAlt(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 823
    .local v1, networkPortion:Ljava/lang/String;
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {v1, p0, v3}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 825
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    const-string v3, "GSMPhone"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "dialing w/ mmi \'"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "\'..."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v3, v5}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 828
    if-nez v0, :cond_1

    .line 829
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v3, v2, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;Lcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 830
    :cond_1
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isTemporaryModeCLIR()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 831
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v4, v0, Lcom/android/internal/telephony/gsm/GsmMmiCode;->mDialingNumber:Ljava/lang/String;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->getCLIRMode()I

    move-result v5

    invoke-virtual {v3, v4, v5, p2}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dial(Ljava/lang/String;ILcom/android/internal/telephony/UUSInfo;)Lcom/android/internal/telephony/Connection;

    move-result-object v3

    goto :goto_0

    .line 833
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v3, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 834
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v5, Landroid/os/AsyncResult;

    invoke-direct {v5, v4, v0, v4}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v3, v5}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 835
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    move-object v3, v4

    .line 838
    goto :goto_0
.end method

.method public disableLocationUpdates()V
    .locals 1

    .prologue
    .line 1240
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->disableLocationUpdates()V

    .line 1241
    return-void
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 254
    sget-object v1, Lcom/android/internal/telephony/PhoneProxy;->lockForRadioTechnologyChange:Ljava/lang/Object;

    monitor-enter v1

    .line 255
    :try_start_0
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->dispose()V

    .line 258
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForAvailable(Landroid/os/Handler;)V

    .line 259
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForSimRecordEvents()V

    .line 260
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 261
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 262
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->unregisterForNetworkAttached(Landroid/os/Handler;)V

    .line 263
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUSSD(Landroid/os/Handler;)V

    .line 264
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSuppServiceNotification(Landroid/os/Handler;)V

    .line 265
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnUSSD(Landroid/os/Handler;)V

    .line 266
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unSetOnSs(Landroid/os/Handler;)V

    .line 268
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 271
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->dispose()V

    .line 272
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->dispose()V

    .line 273
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->dispose()V

    .line 274
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    if-eqz v0, :cond_0

    .line 275
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->dispose()V

    .line 277
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0}, Lcom/android/internal/telephony/PhoneSubInfo;->dispose()V

    .line 278
    monitor-exit v1

    .line 279
    return-void

    .line 278
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 2
    .parameter "fd"
    .parameter "pw"
    .parameter "args"

    .prologue
    .line 1924
    const-string v0, "GSMPhone extends:"

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1925
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/telephony/PhoneBase;->dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V

    .line 1926
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mCT="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1927
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSST="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1928
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mPendingMMIs="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1929
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSimPhoneBookIntManager="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1930
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mSubInfo="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1933
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " mVmNumber="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 1934
    return-void
.end method

.method public enableLocationUpdates()V
    .locals 1

    .prologue
    .line 1235
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->enableLocationUpdates()V

    .line 1236
    return-void
.end method

.method public explicitCallTransfer()V
    .locals 1

    .prologue
    .line 581
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->explicitCallTransfer()V

    .line 582
    return-void
.end method

.method protected finalize()V
    .locals 2

    .prologue
    .line 296
    const-string v0, "GSMPhone"

    const-string v1, "GSMPhone finalized"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 297
    return-void
.end method

.method public getAvailableNetworks(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1128
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getAvailableNetworks(Landroid/os/Message;)V

    .line 1129
    return-void
.end method

.method public bridge synthetic getBackgroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 593
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mBackgroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getCallBarringOption(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "facility"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 1975
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidFacilityString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1976
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, p2, v1, p3}, Lcom/android/internal/telephony/CommandsInterface;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 1979
    :cond_0
    return-void
.end method

.method public getCallForwardingIndicator()Z
    .locals 3

    .prologue
    .line 353
    const/4 v0, 0x0

    .line 354
    .local v0, cf:Z
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 355
    .local v1, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_0

    .line 356
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceCallForwardingFlag()Z

    move-result v0

    .line 358
    :cond_0
    if-nez v0, :cond_1

    .line 359
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallForwardingPreference()Z

    move-result v0

    .line 361
    :cond_1
    return v0
.end method

.method public getCallForwardingOption(ILandroid/os/Message;)V
    .locals 4
    .parameter "commandInterfaceCFReason"
    .parameter "onComplete"

    .prologue
    .line 1063
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1064
    const-string v1, "GSMPhone"

    const-string v2, "requesting call forwarding query."

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1066
    if-nez p1, :cond_1

    .line 1067
    const/16 v1, 0xd

    invoke-virtual {p0, v1, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1071
    .local v0, resp:Landroid/os/Message;
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v2, 0x0

    const/4 v3, 0x0

    invoke-interface {v1, p1, v2, v3, v0}, Lcom/android/internal/telephony/CommandsInterface;->queryCallForwardStatus(IILjava/lang/String;Landroid/os/Message;)V

    .line 1073
    .end local v0           #resp:Landroid/os/Message;
    :cond_0
    return-void

    .line 1069
    :cond_1
    move-object v0, p2

    .restart local v0       #resp:Landroid/os/Message;
    goto :goto_0
.end method

.method protected getCallForwardingPreference()Z
    .locals 4

    .prologue
    .line 1287
    const-string v2, "GSMPhone"

    const-string v3, "Get callforwarding info from perferences"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1290
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "cf_enabled_key"

    const/4 v3, 0x0

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v0

    .line 1291
    .local v0, cf:Z
    return v0
.end method

.method public getCallTracker()Lcom/android/internal/telephony/CallTracker;
    .locals 1

    .prologue
    .line 333
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    return-object v0
.end method

.method public getCallWaiting(Landroid/os/Message;)V
    .locals 2
    .parameter "onComplete"

    .prologue
    .line 1117
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1, p1}, Lcom/android/internal/telephony/CommandsInterface;->queryCallWaiting(ILandroid/os/Message;)V

    .line 1118
    return-void
.end method

.method public getCellBroadcastSmsConfig(Landroid/os/Message;)V
    .locals 2
    .parameter "response"

    .prologue
    .line 1851
    const-string v0, "GSMPhone"

    const-string v1, "[GSMPhone] getCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1852
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 1853
    return-void
.end method

.method public getCellLocation()Landroid/telephony/CellLocation;
    .locals 1

    .prologue
    .line 313
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCellLocation()Landroid/telephony/CellLocation;

    move-result-object v0

    return-object v0
.end method

.method public getDataActivityState()Lcom/android/internal/telephony/Phone$DataActivityState;
    .locals 3

    .prologue
    .line 422
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 424
    .local v0, ret:Lcom/android/internal/telephony/Phone$DataActivityState;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-nez v1, :cond_0

    .line 425
    sget-object v1, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DctConstants$Activity:[I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getActivity()Lcom/android/internal/telephony/DctConstants$Activity;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$Activity;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    .line 443
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->NONE:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 448
    :cond_0
    :goto_0
    return-object v0

    .line 427
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAIN:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 428
    goto :goto_0

    .line 431
    :pswitch_1
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 432
    goto :goto_0

    .line 435
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DATAINANDOUT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 436
    goto :goto_0

    .line 439
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/Phone$DataActivityState;->DORMANT:Lcom/android/internal/telephony/Phone$DataActivityState;

    .line 440
    goto :goto_0

    .line 425
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public getDataCallList(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getDataCallList(Landroid/os/Message;)V

    .line 1226
    return-void
.end method

.method public getDataConnectionState(Ljava/lang/String;)Lcom/android/internal/telephony/PhoneConstants$DataState;
    .locals 4
    .parameter "apnType"

    .prologue
    .line 372
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 374
    .local v0, ret:Lcom/android/internal/telephony/PhoneConstants$DataState;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-nez v1, :cond_0

    .line 378
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 417
    :goto_0
    return-object v0

    .line 379
    :cond_0
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->getCurrentDataConnectionState()I

    move-result v1

    if-eqz v1, :cond_1

    iget-boolean v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mOosIsDisconnect:Z

    if-eqz v1, :cond_1

    .line 384
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 385
    const-string v1, "GSMPhone"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getDataConnectionState: Data is Out of Service. ret = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 386
    :cond_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeEnabled(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->isApnTypeActive(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 391
    :cond_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 393
    :cond_3
    sget-object v1, Lcom/android/internal/telephony/gsm/GSMPhone$2;->$SwitchMap$com$android$internal$telephony$DctConstants$State:[I

    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v2, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getState(Ljava/lang/String;)Lcom/android/internal/telephony/DctConstants$State;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/DctConstants$State;->ordinal()I

    move-result v2

    aget v1, v1, v2

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 397
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->DISCONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 398
    goto :goto_0

    .line 402
    :pswitch_1
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v1, v1, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v2, Lcom/android/internal/telephony/PhoneConstants$State;->IDLE:Lcom/android/internal/telephony/PhoneConstants$State;

    if-eq v1, v2, :cond_4

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->isConcurrentVoiceAndDataAllowed()Z

    move-result v1

    if-nez v1, :cond_4

    .line 404
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->SUSPENDED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 406
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTED:Lcom/android/internal/telephony/PhoneConstants$DataState;

    .line 408
    goto :goto_0

    .line 412
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/PhoneConstants$DataState;->CONNECTING:Lcom/android/internal/telephony/PhoneConstants$DataState;

    goto :goto_0

    .line 393
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_1
        :pswitch_1
        :pswitch_2
        :pswitch_2
    .end packed-switch
.end method

.method public getDataRoamingEnabled()Z
    .locals 1

    .prologue
    .line 1245
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->getDataOnRoamingEnabled()Z

    move-result v0

    return v0
.end method

.method public getDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 954
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getDeviceSvn()Ljava/lang/String;
    .locals 1

    .prologue
    .line 959
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    return-object v0
.end method

.method public getEsn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 969
    const-string v0, "GSMPhone"

    const-string v1, "[GSMPhone] getEsn() is a CDMA method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 970
    const-string v0, "0"

    return-object v0
.end method

.method public bridge synthetic getForegroundCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 587
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mForegroundCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getGroupIdLevel1()Ljava/lang/String;
    .locals 2

    .prologue
    .line 987
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 988
    .local v0, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getGid1()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccPhoneBookInterfaceManager()Lcom/android/internal/telephony/IccPhoneBookInterfaceManager;
    .locals 1

    .prologue
    .line 1829
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    return-object v0
.end method

.method public getImei()Ljava/lang/String;
    .locals 1

    .prologue
    .line 964
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    return-object v0
.end method

.method public getLine1AlphaTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 1005
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1006
    .local v0, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnAlphaTag()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getLine1Number()Ljava/lang/String;
    .locals 2

    .prologue
    .line 993
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 994
    .local v0, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMeid()Ljava/lang/String;
    .locals 2

    .prologue
    .line 975
    const-string v0, "GSMPhone"

    const-string v1, "[GSMPhone] getMeid() is a CDMA method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 976
    const-string v0, "0"

    return-object v0
.end method

.method public getMsisdn()Ljava/lang/String;
    .locals 2

    .prologue
    .line 999
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1000
    .local v0, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getMsisdnNumber()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getMute()Z
    .locals 1

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->getMute()Z

    move-result v0

    return v0
.end method

.method public getNeighboringCids(Landroid/os/Message;)V
    .locals 1
    .parameter "response"

    .prologue
    .line 1205
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getNeighboringCids(Landroid/os/Message;)V

    .line 1206
    return-void
.end method

.method public getOutgoingCallerIdDisplay(Landroid/os/Message;)V
    .locals 1
    .parameter "onComplete"

    .prologue
    .line 1103
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1}, Lcom/android/internal/telephony/CommandsInterface;->getCLIR(Landroid/os/Message;)V

    .line 1104
    return-void
.end method

.method public getPendingMmiCodes()Ljava/util/List;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<+",
            "Lcom/android/internal/telephony/MmiCode;",
            ">;"
        }
    .end annotation

    .prologue
    .line 367
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    return-object v0
.end method

.method public getPhoneSubInfo()Lcom/android/internal/telephony/PhoneSubInfo;
    .locals 1

    .prologue
    .line 1821
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    return-object v0
.end method

.method public getPhoneType()I
    .locals 1

    .prologue
    .line 323
    const/4 v0, 0x1

    return v0
.end method

.method public bridge synthetic getRingingCall()Lcom/android/internal/telephony/Call;
    .locals 1

    .prologue
    .line 102
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v0

    return-object v0
.end method

.method public getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mRingingCall:Lcom/android/internal/telephony/gsm/GsmCall;

    return-object v0
.end method

.method public getServiceState()Landroid/telephony/ServiceState;
    .locals 1

    .prologue
    .line 303
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    if-eqz v0, :cond_0

    .line 304
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    .line 307
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Landroid/telephony/ServiceState;

    invoke-direct {v0}, Landroid/telephony/ServiceState;-><init>()V

    goto :goto_0
.end method

.method public getServiceStateTracker()Lcom/android/internal/telephony/ServiceStateTracker;
    .locals 1

    .prologue
    .line 328
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    return-object v0
.end method

.method public getState()Lcom/android/internal/telephony/PhoneConstants$State;
    .locals 1

    .prologue
    .line 318
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    return-object v0
.end method

.method public getSubscriberId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 981
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 982
    .local v0, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getIMSI()Ljava/lang/String;

    move-result-object v1

    :goto_0
    return-object v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;
    .locals 1
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 1994
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/uicc/UiccCard;

    return-object v0
.end method

.method protected getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .locals 2

    .prologue
    .line 1661
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    return-object v0
.end method

.method protected getVmSimImsi()Ljava/lang/String;
    .locals 3

    .prologue
    .line 926
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 927
    .local v0, sp:Landroid/content/SharedPreferences;
    const-string v1, "vm_sim_imsi_key"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getVoiceMailAlphaTag()Ljava/lang/String;
    .locals 4

    .prologue
    .line 940
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 942
    .local v0, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_2

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 944
    .local v1, ret:Ljava/lang/String;
    :goto_0
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 945
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    const v3, 0x1040004

    invoke-virtual {v2, v3}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    .line 949
    .end local v1           #ret:Ljava/lang/String;
    :cond_1
    return-object v1

    .line 942
    :cond_2
    const-string v1, ""

    goto :goto_0
.end method

.method public getVoiceMailNumber()Ljava/lang/String;
    .locals 5

    .prologue
    .line 916
    iget-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v3}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 917
    .local v1, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v1, :cond_1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->getVoiceMailNumber()Ljava/lang/String;

    move-result-object v0

    .line 918
    .local v0, number:Ljava/lang/String;
    :goto_0
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 919
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v2

    .line 920
    .local v2, sp:Landroid/content/SharedPreferences;
    const-string v3, "vm_number_key"

    const/4 v4, 0x0

    invoke-interface {v2, v3, v4}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 922
    .end local v2           #sp:Landroid/content/SharedPreferences;
    :cond_0
    return-object v0

    .line 917
    .end local v0           #number:Ljava/lang/String;
    :cond_1
    const-string v0, ""

    goto :goto_0
.end method

.method public handleInCallMmiCommands(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"

    .prologue
    const/4 v2, 0x0

    .line 756
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->isInCall()Z

    move-result v3

    if-nez v3, :cond_0

    move v1, v2

    .line 791
    :goto_0
    return v1

    .line 760
    :cond_0
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-eqz v3, :cond_1

    move v1, v2

    .line 761
    goto :goto_0

    .line 764
    :cond_1
    const/4 v1, 0x0

    .line 765
    .local v1, result:Z
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v0

    .line 766
    .local v0, ch:C
    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 768
    :pswitch_0
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallDeflectionIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 770
    goto :goto_0

    .line 772
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallWaitingIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 774
    goto :goto_0

    .line 776
    :pswitch_2
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCallHoldIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 777
    goto :goto_0

    .line 779
    :pswitch_3
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleMultipartyIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 780
    goto :goto_0

    .line 782
    :pswitch_4
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleEctIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 783
    goto :goto_0

    .line 785
    :pswitch_5
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCcbsIncallSupplementaryService(Ljava/lang/String;)Z

    move-result v1

    .line 786
    goto :goto_0

    .line 766
    :pswitch_data_0
    .packed-switch 0x30
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 23
    .parameter "msg"

    .prologue
    .line 1385
    const/16 v17, 0x0

    .line 1387
    .local v17, poweron_mode:I
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIsTheCurrentActivePhone:Z

    move/from16 v20, v0

    if-nez v20, :cond_1

    .line 1388
    const-string v20, "GSMPhone"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Received message "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "["

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, "] while being destroyed. Ignoring."

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1658
    :cond_0
    :goto_0
    return-void

    .line 1392
    :cond_1
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->what:I

    move/from16 v20, v0

    sparse-switch v20, :sswitch_data_0

    .line 1656
    invoke-super/range {p0 .. p1}, Lcom/android/internal/telephony/PhoneBase;->handleMessage(Landroid/os/Message;)V

    goto :goto_0

    .line 1394
    :sswitch_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v20, v0

    const/16 v21, 0x6

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/internal/telephony/CommandsInterface;->getBasebandVersion(Landroid/os/Message;)V

    .line 1397
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v20, v0

    const/16 v21, 0x9

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/internal/telephony/CommandsInterface;->getIMEI(Landroid/os/Message;)V

    .line 1398
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move-object/from16 v20, v0

    const/16 v21, 0xa

    move-object/from16 v0, p0

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v21

    invoke-interface/range {v20 .. v21}, Lcom/android/internal/telephony/CommandsInterface;->getIMEISV(Landroid/os/Message;)V

    goto :goto_0

    .line 1404
    :sswitch_1
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCallForwardingPreference(Z)V

    goto :goto_0

    .line 1408
    :sswitch_2
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->syncClirSetting()V

    .line 1410
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "enroll_poweron_mode"

    const/16 v22, -0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 1411
    const-string v20, "GSMPhone"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "EVENT_REGISTERED_TO_NETWORK isQueryCf = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->isQueryCf:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", poweron_mode = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->isQueryCf:Z

    move/from16 v20, v0

    if-nez v20, :cond_0

    const/16 v20, 0x1

    move/from16 v0, v20

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 1413
    const/16 v20, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCallForwardStatus(I)V

    goto/16 :goto_0

    .line 1418
    :sswitch_3
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCurrentCarrierInProvider()Z

    .line 1422
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getVmSimImsi()Ljava/lang/String;

    move-result-object v11

    .line 1423
    .local v11, imsi:Ljava/lang/String;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v12

    .line 1424
    .local v12, imsiFromSIM:Ljava/lang/String;
    if-eqz v11, :cond_2

    if-eqz v12, :cond_2

    invoke-virtual {v12, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v20

    if-nez v20, :cond_2

    .line 1425
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 1427
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 1430
    :cond_2
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateVoiceMail()V

    .line 1431
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "enroll_poweron_mode"

    const/16 v22, -0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 1432
    const-string v20, "GSMPhone"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "EVENT_SIM_RECORDS_LOADED isQueryCf = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->isQueryCf:Z

    move/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    const-string v22, ", poweron_mode = "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1433
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->isQueryCf:Z

    move/from16 v20, v0

    if-nez v20, :cond_3

    const/16 v20, 0x1

    move/from16 v0, v20

    move/from16 v1, v17

    if-ne v0, v1, :cond_3

    .line 1434
    const/16 v20, 0x3

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCallForwardStatus(I)V

    .line 1436
    :cond_3
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 1437
    invoke-direct/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateVoiceMail()V

    goto/16 :goto_0

    .line 1441
    .end local v11           #imsi:Ljava/lang/String;
    .end local v12           #imsiFromSIM:Ljava/lang/String;
    :sswitch_4
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1443
    .local v4, ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 1447
    const-string v20, "GSMPhone"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Baseband version: "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v22, v0

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1448
    const-string v21, "gsm.version.baseband"

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, p0

    move-object/from16 v1, v21

    move-object/from16 v2, v20

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1452
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_5
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1454
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 1458
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    .line 1460
    const-string v20, "persist.radio.device.imei"

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mImei:Ljava/lang/String;

    move-object/from16 v21, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    move-object/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    goto/16 :goto_0

    .line 1465
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_6
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1467
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_0

    .line 1471
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/String;

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->mImeiSv:Ljava/lang/String;

    goto/16 :goto_0

    .line 1475
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_7
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1477
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Ljava/lang/String;

    move-object/from16 v19, v20

    check-cast v19, [Ljava/lang/String;

    .line 1479
    .local v19, ussdResult:[Ljava/lang/String;
    move-object/from16 v0, v19

    array-length v0, v0

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-le v0, v1, :cond_0

    .line 1481
    const/16 v20, 0x0

    :try_start_0
    aget-object v20, v19, v20

    invoke-static/range {v20 .. v20}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v20

    const/16 v21, 0x1

    aget-object v21, v19, v21

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-object/from16 v2, v21

    invoke-direct {v0, v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->onIncomingUSSD(ILjava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 1482
    :catch_0
    move-exception v8

    .line 1483
    .local v8, e:Ljava/lang/NumberFormatException;
    const-string v20, "GSMPhone"

    const-string v21, "error parsing USSD"

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1494
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v8           #e:Ljava/lang/NumberFormatException;
    .end local v19           #ussdResult:[Ljava/lang/String;
    :sswitch_8
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/ArrayList;->size()I

    move-result v20

    add-int/lit8 v10, v20, -0x1

    .local v10, i:I
    :goto_1
    if-ltz v10, :cond_0

    .line 1495
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPendingUSSD()Z

    move-result v20

    if-eqz v20, :cond_4

    .line 1496
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    invoke-virtual/range {v20 .. v20}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->onUssdFinishedError()V

    .line 1494
    :cond_4
    add-int/lit8 v10, v10, -0x1

    goto :goto_1

    .line 1502
    .end local v10           #i:I
    :sswitch_9
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1503
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v14, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    check-cast v14, Lcom/android/internal/telephony/gsm/SuppServiceNotification;

    .line 1504
    .local v14, not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1508
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v14           #not:Lcom/android/internal/telephony/gsm/SuppServiceNotification;
    :sswitch_a
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1509
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1510
    .local v18, r:Lcom/android/internal/telephony/uicc/IccRecords;
    iget-object v6, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v6, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;

    .line 1511
    .local v6, cfu:Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_5

    if-eqz v18, :cond_5

    .line 1512
    const/16 v21, 0x1

    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    const/16 v22, 0x1

    move/from16 v0, v20

    move/from16 v1, v22

    if-ne v0, v1, :cond_6

    const/16 v20, 0x1

    :goto_2
    iget-object v0, v6, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mSetCfNumber:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v18

    move/from16 v1, v21

    move/from16 v2, v20

    move-object/from16 v3, v22

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceCallForwardingFlag(IZLjava/lang/String;)V

    .line 1513
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    const/16 v21, 0x1

    move/from16 v0, v20

    move/from16 v1, v21

    if-ne v0, v1, :cond_7

    const/16 v20, 0x1

    :goto_3
    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCallForwardingPreference(Z)V

    .line 1515
    :cond_5
    iget-object v0, v6, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mOnComplete:Landroid/os/Message;

    move-object/from16 v20, v0

    if-eqz v20, :cond_0

    .line 1516
    iget-object v0, v6, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mOnComplete:Landroid/os/Message;

    move-object/from16 v20, v0

    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v21, v0

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v22, v0

    invoke-static/range {v20 .. v22}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1517
    iget-object v0, v6, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;->mOnComplete:Landroid/os/Message;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1512
    :cond_6
    const/16 v20, 0x0

    goto :goto_2

    .line 1513
    :cond_7
    const/16 v20, 0x0

    goto :goto_3

    .line 1522
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v6           #cfu:Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    .end local v18           #r:Lcom/android/internal/telephony/uicc/IccRecords;
    :sswitch_b
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1523
    .restart local v4       #ar:Landroid/os/AsyncResult;
    const-class v20, Lcom/android/internal/telephony/uicc/IccVmNotSupportedException;

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    invoke-virtual/range {v20 .. v21}, Ljava/lang/Class;->isInstance(Ljava/lang/Object;)Z

    move-result v20

    if-eqz v20, :cond_8

    .line 1524
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    move-object/from16 v20, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->storeVoiceMailNumber(Ljava/lang/String;)V

    .line 1525
    const/16 v20, 0x0

    move-object/from16 v0, v20

    iput-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1527
    :cond_8
    iget-object v15, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v15, Landroid/os/Message;

    .line 1528
    .local v15, onComplete:Landroid/os/Message;
    if-eqz v15, :cond_0

    .line 1529
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v15, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1530
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1536
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v15           #onComplete:Landroid/os/Message;
    :sswitch_c
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1537
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_9

    .line 1538
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [Lcom/android/internal/telephony/CallForwardInfo;

    check-cast v20, [Lcom/android/internal/telephony/CallForwardInfo;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleCfuQueryResult([Lcom/android/internal/telephony/CallForwardInfo;)V

    .line 1540
    :cond_9
    iget-object v15, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v15, Landroid/os/Message;

    .line 1541
    .restart local v15       #onComplete:Landroid/os/Message;
    if-eqz v15, :cond_0

    .line 1542
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v15, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1543
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1549
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v15           #onComplete:Landroid/os/Message;
    :sswitch_d
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1550
    .restart local v4       #ar:Landroid/os/AsyncResult;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    move-object/from16 v20, v0

    move-object/from16 v0, v20

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->mSS:Landroid/telephony/ServiceState;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/telephony/ServiceState;->getIsManualSelection()Z

    move-result v20

    if-eqz v20, :cond_a

    .line 1551
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/Message;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    goto/16 :goto_0

    .line 1555
    :cond_a
    const-string v20, "GSMPhone"

    const-string v21, "Stop duplicate SET_NETWORK_SELECTION_AUTOMATIC to Ril "

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1560
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_e
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1561
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Ljava/lang/Integer;

    invoke-virtual/range {v20 .. v20}, Ljava/lang/Integer;->intValue()I

    move-result v20

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->processIccRecordEvents(I)V

    goto/16 :goto_0

    .line 1567
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_f
    move-object/from16 v0, p1

    iget-object v0, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/AsyncResult;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->handleSetSelectNetwork(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1571
    :sswitch_10
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1572
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_b

    .line 1573
    move-object/from16 v0, p1

    iget v0, v0, Landroid/os/Message;->arg1:I

    move/from16 v20, v0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->saveClirSetting(I)V

    .line 1575
    :cond_b
    iget-object v15, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    check-cast v15, Landroid/os/Message;

    .line 1576
    .restart local v15       #onComplete:Landroid/os/Message;
    if-eqz v15, :cond_0

    .line 1577
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-static {v15, v0, v1}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 1578
    invoke-virtual {v15}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1583
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v15           #onComplete:Landroid/os/Message;
    :sswitch_11
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1584
    .restart local v4       #ar:Landroid/os/AsyncResult;
    const-string v20, "GSMPhone"

    const-string v21, "Event EVENT_SS received"

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1588
    new-instance v13, Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v20

    check-cast v20, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-direct {v13, v0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)V

    .line 1589
    .local v13, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    invoke-virtual {v13, v4}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processSsData(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 1593
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v13           #mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    :sswitch_12
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallForwardingPreference()Z

    move-result v5

    .line 1594
    .local v5, cfEnabled:Z
    const-string v20, "GSMPhone"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "Callforwarding is "

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1595
    if-eqz v5, :cond_c

    .line 1596
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    goto/16 :goto_0

    .line 1601
    :cond_c
    const/16 v20, 0x64

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(I)Landroid/os/Message;

    move-result-object v7

    .line 1602
    .local v7, done:Landroid/os/Message;
    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-virtual {v0, v1, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallForwardingOption(ILandroid/os/Message;)V

    goto/16 :goto_0

    .line 1606
    .end local v5           #cfEnabled:Z
    .end local v7           #done:Landroid/os/Message;
    :sswitch_13
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getCallForwardingPreference()Z

    move-result v9

    .line 1607
    .local v9, enabled:Z
    const-string v20, "GSMPhone"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "EVENT_INIT_CALLFORWARD_STATE_DONE cfEnabled:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    invoke-virtual {v0, v9}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    if-eqz v9, :cond_d

    .line 1609
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->notifyCallForwardingIndicator()V

    .line 1611
    :cond_d
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1612
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v20, v0

    if-nez v20, :cond_e

    .line 1613
    const/16 v20, 0x1

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->isQueryCf:Z

    .line 1614
    const/16 v20, 0x0

    move/from16 v0, v20

    move-object/from16 v1, p0

    iput v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->count_retry_time:I

    goto/16 :goto_0

    .line 1615
    :cond_e
    move-object/from16 v0, p0

    iget v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->count_retry_time:I

    move/from16 v20, v0

    const/16 v21, 0x5

    move/from16 v0, v20

    move/from16 v1, v21

    if-gt v0, v1, :cond_0

    .line 1616
    const/16 v20, 0x78

    const-wide/16 v21, 0xbb8

    move-object/from16 v0, p0

    move/from16 v1, v20

    move-wide/from16 v2, v21

    invoke-virtual {v0, v1, v2, v3}, Lcom/android/internal/telephony/gsm/GSMPhone;->sendEmptyMessageDelayed(IJ)Z

    goto/16 :goto_0

    .line 1620
    .end local v4           #ar:Landroid/os/AsyncResult;
    .end local v9           #enabled:Z
    :sswitch_14
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    move-object/from16 v20, v0

    invoke-virtual/range {v20 .. v20}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v20

    const-string v21, "enroll_poweron_mode"

    const/16 v22, -0x1

    invoke-static/range {v20 .. v22}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v17

    .line 1621
    const-string v20, "GSMPhone"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "EVENT_INIT_CALLFORWARD_STATE_AGAIN poweron_mode:"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1622
    const/16 v20, 0x1

    move/from16 v0, v20

    move/from16 v1, v17

    if-ne v0, v1, :cond_0

    .line 1623
    const/16 v20, 0x13

    move-object/from16 v0, p0

    move/from16 v1, v20

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->updateCallForwardStatus(I)V

    goto/16 :goto_0

    .line 1630
    :sswitch_15
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1631
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/Message;

    invoke-static/range {v20 .. v20}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v20

    iget-object v0, v4, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    move-object/from16 v21, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v20

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 1632
    iget-object v0, v4, Landroid/os/AsyncResult;->userObj:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, Landroid/os/Message;

    invoke-virtual/range {v20 .. v20}, Landroid/os/Message;->sendToTarget()V

    goto/16 :goto_0

    .line 1639
    .end local v4           #ar:Landroid/os/AsyncResult;
    :sswitch_16
    const-string v20, "GSMPhone"

    const-string v21, "===yangbin= EVENT_QUERY_UPLMN_DONE operator ==="

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1640
    move-object/from16 v0, p1

    iget-object v4, v0, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v4, Landroid/os/AsyncResult;

    .line 1641
    .restart local v4       #ar:Landroid/os/AsyncResult;
    iget-object v0, v4, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    move-object/from16 v20, v0

    check-cast v20, [B

    check-cast v20, [B

    move-object/from16 v0, v20

    move-object/from16 v1, p0

    iput-object v0, v1, Lcom/android/internal/telephony/gsm/GSMPhone;->uplmn_act:[B

    .line 1642
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GSMPhone;->uplmn_act:[B

    move-object/from16 v20, v0

    invoke-static/range {v20 .. v20}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v16

    .line 1643
    .local v16, operator_act:Ljava/lang/String;
    const-string v20, "GSMPhone"

    new-instance v21, Ljava/lang/StringBuilder;

    invoke-direct/range {v21 .. v21}, Ljava/lang/StringBuilder;-><init>()V

    const-string v22, "===yangbin= queryPreferredPlmn operator ==="

    invoke-virtual/range {v21 .. v22}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    move-object/from16 v0, v21

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v21

    invoke-virtual/range {v21 .. v21}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v21

    invoke-static/range {v20 .. v21}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_0

    .line 1392
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_9
        0x3 -> :sswitch_3
        0x5 -> :sswitch_1
        0x6 -> :sswitch_4
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_5
        0xa -> :sswitch_6
        0xc -> :sswitch_a
        0xd -> :sswitch_c
        0x10 -> :sswitch_f
        0x11 -> :sswitch_f
        0x12 -> :sswitch_10
        0x13 -> :sswitch_2
        0x14 -> :sswitch_b
        0x1c -> :sswitch_d
        0x1d -> :sswitch_e
        0x1f -> :sswitch_11
        0x4b -> :sswitch_12
        0x64 -> :sswitch_13
        0x78 -> :sswitch_14
        0x3e8 -> :sswitch_15
        0x3e9 -> :sswitch_16
    .end sparse-switch
.end method

.method public handlePinMmi(Ljava/lang/String;)Z
    .locals 4
    .parameter "dialString"

    .prologue
    const/4 v3, 0x0

    .line 844
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromDialString(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 846
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isPinPukCommand()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 847
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 848
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 849
    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->processCode()V

    .line 850
    const/4 v1, 0x1

    .line 853
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected initSubscriptionSpecifics()V
    .locals 1

    .prologue
    .line 248
    new-instance v0, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 249
    new-instance v0, Lcom/android/internal/telephony/dataconnection/DcTracker;

    invoke-direct {v0, p0}, Lcom/android/internal/telephony/dataconnection/DcTracker;-><init>(Lcom/android/internal/telephony/PhoneBase;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    .line 250
    return-void
.end method

.method protected isCfEnable(I)Z
    .locals 2
    .parameter "action"

    .prologue
    const/4 v0, 0x1

    .line 1058
    if-eq p1, v0, :cond_0

    const/4 v1, 0x3

    if-ne p1, v1, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isCspPlmnEnabled()Z
    .locals 2

    .prologue
    .line 1868
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1869
    .local v0, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->isCspPlmnEnabled()Z

    move-result v1

    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method isInCall()Z
    .locals 4

    .prologue
    .line 795
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getForegroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v1

    .line 796
    .local v1, foregroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getBackgroundCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v0

    .line 797
    .local v0, backgroundCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getRingingCall()Lcom/android/internal/telephony/gsm/GsmCall;

    move-result-object v3

    invoke-virtual {v3}, Lcom/android/internal/telephony/gsm/GsmCall;->getState()Lcom/android/internal/telephony/Call$State;

    move-result-object v2

    .line 799
    .local v2, ringingCallState:Lcom/android/internal/telephony/Call$State;
    invoke-virtual {v1}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v0}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {v2}, Lcom/android/internal/telephony/Call$State;->isAlive()Z

    move-result v3

    if-eqz v3, :cond_1

    :cond_0
    const/4 v3, 0x1

    :goto_0
    return v3

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public isManualNetSelAllowed()Z
    .locals 5

    .prologue
    const/4 v1, 0x0

    .line 1874
    const/4 v0, 0x0

    .line 1876
    .local v0, nwMode:I
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "preferred_network_mode"

    invoke-static {v2, v3, v0}, Landroid/provider/Settings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1879
    const-string v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "isManualNetSelAllowed in mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1884
    const-string v2, "ro.config.multimode_cdma"

    invoke-static {v2, v1}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v2

    if-eqz v2, :cond_1

    const/16 v2, 0xa

    if-eq v0, v2, :cond_0

    const/4 v2, 0x7

    if-ne v0, v2, :cond_1

    .line 1887
    :cond_0
    const-string v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Manual selection not supported in mode = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1898
    :goto_0
    return v1

    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method protected log(Ljava/lang/String;)V
    .locals 3
    .parameter "s"

    .prologue
    .line 1937
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "[GSMPhone] "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1938
    return-void
.end method

.method public modifyPreferredPlmn(IILjava/lang/String;IIILandroid/os/Message;)V
    .locals 14
    .parameter "index"
    .parameter "format"
    .parameter "oper"
    .parameter "GSM_AcT"
    .parameter "GSM_Compact_AcT"
    .parameter "UTRAN_AcT"
    .parameter "result"

    .prologue
    .line 2088
    const/4 v1, 0x0

    .line 2090
    .local v1, Filehandler:Lcom/android/internal/telephony/uicc/IccFileHandler;
    iget-object v10, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->uplmn_act:[B

    .line 2091
    .local v10, plmn_data:[B
    invoke-virtual/range {p3 .. p3}, Ljava/lang/String;->length()I

    move-result v7

    .line 2092
    .local v7, operLenReal:I
    new-array v9, v7, [I

    .line 2093
    .local v9, oper_m:[I
    const/4 v11, 0x5

    new-array v8, v11, [B

    .line 2094
    .local v8, oper_data:[B
    const-string v11, "GSMPhone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "===yangbin= modifyPreferredPlmn operator ==operLenReal="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2095
    const/4 v11, 0x7

    if-le p1, v11, :cond_0

    .line 2097
    const-string v11, "GSMPhone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "===zhaiyushan= Plmn\'s index the max is 7(0~7) ,the current index is ="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2177
    :goto_0
    return-void

    .line 2100
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v11

    if-eqz v11, :cond_1

    .line 2101
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v11

    invoke-virtual {v11}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v1

    .line 2104
    :cond_1
    if-eqz v1, :cond_5

    .line 2108
    const/4 v11, 0x5

    if-lt v7, v11, :cond_2

    const/4 v11, 0x6

    if-le v7, v11, :cond_3

    .line 2110
    :cond_2
    invoke-static/range {p7 .. p7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v11

    new-instance v12, Ljava/lang/Exception;

    const-string v13, "null"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v12, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2111
    invoke-virtual/range {p7 .. p7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2114
    :cond_3
    const/4 v3, 0x0

    .local v3, i:I
    :goto_1
    if-ge v3, v7, :cond_6

    .line 2115
    move-object/from16 v0, p3

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v2

    .line 2116
    .local v2, c:C
    const/16 v11, 0x30

    if-lt v2, v11, :cond_4

    const/16 v11, 0x39

    if-gt v2, v11, :cond_4

    .line 2118
    add-int/lit8 v11, v2, -0x30

    aput v11, v9, v3

    .line 2114
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 2122
    :cond_4
    invoke-static/range {p7 .. p7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v11

    new-instance v12, Ljava/lang/Exception;

    const-string v13, "null"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v12, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2123
    invoke-virtual/range {p7 .. p7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2130
    .end local v2           #c:C
    .end local v3           #i:I
    :cond_5
    invoke-static/range {p7 .. p7}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v11

    new-instance v12, Ljava/lang/Exception;

    const-string v13, "null"

    invoke-direct {v12, v13}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    iput-object v12, v11, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 2131
    invoke-virtual/range {p7 .. p7}, Landroid/os/Message;->sendToTarget()V

    goto :goto_0

    .line 2138
    .restart local v3       #i:I
    :cond_6
    const-string v11, "GSMPhone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "===yangbin= modifyPreferredPlmn operator ==GSM_AcT="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p4

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2139
    const-string v11, "GSMPhone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "===yangbin= modifyPreferredPlmn operator ==UTRAN_AcT="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p6

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2140
    const-string v11, "GSMPhone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "===yangbin= modifyPreferredPlmn operator ==GSM_Compact_AcT="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    move/from16 v0, p5

    invoke-virtual {v12, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2141
    const/4 v11, 0x0

    const/4 v12, 0x1

    aget v12, v9, v12

    shl-int/lit8 v12, v12, 0x4

    const/4 v13, 0x0

    aget v13, v9, v13

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v8, v11

    .line 2142
    const/4 v11, 0x5

    if-ne v7, v11, :cond_a

    .line 2144
    const/4 v11, 0x1

    const/4 v12, 0x2

    aget v12, v9, v12

    or-int/lit16 v12, v12, 0xf0

    int-to-byte v12, v12

    aput-byte v12, v8, v11

    .line 2150
    :cond_7
    :goto_2
    const/4 v11, 0x2

    const/4 v12, 0x4

    aget v12, v9, v12

    shl-int/lit8 v12, v12, 0x4

    const/4 v13, 0x3

    aget v13, v9, v13

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v8, v11

    .line 2151
    const/4 v11, 0x2

    move/from16 v0, p6

    if-ne v0, v11, :cond_b

    .line 2153
    const/4 v11, 0x3

    const/16 v12, -0x80

    aput-byte v12, v8, v11

    .line 2159
    :cond_8
    :goto_3
    const/4 v11, 0x1

    move/from16 v0, p4

    if-ne v0, v11, :cond_9

    .line 2161
    const/4 v11, 0x4

    const/16 v12, -0x80

    aput-byte v12, v8, v11

    .line 2164
    :cond_9
    invoke-static {v8}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    .line 2165
    .local v5, modify_plmn:Ljava/lang/String;
    const-string v11, "GSMPhone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "=== yangbin= modifyPreferredPlmn modify_plmn ==="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string v13, "index = "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2166
    const/4 v4, 0x0

    .local v4, k:I
    :goto_4
    const/4 v11, 0x5

    if-ge v4, v11, :cond_c

    .line 2168
    mul-int/lit8 v11, p1, 0x5

    add-int/2addr v11, v4

    aget-byte v12, v8, v4

    aput-byte v12, v10, v11

    .line 2166
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 2146
    .end local v4           #k:I
    .end local v5           #modify_plmn:Ljava/lang/String;
    :cond_a
    const/4 v11, 0x6

    if-ne v7, v11, :cond_7

    .line 2148
    const/4 v11, 0x1

    const/4 v12, 0x5

    aget v12, v9, v12

    shl-int/lit8 v12, v12, 0x4

    const/4 v13, 0x2

    aget v13, v9, v13

    or-int/2addr v12, v13

    int-to-byte v12, v12

    aput-byte v12, v8, v11

    goto :goto_2

    .line 2155
    :cond_b
    const/4 v11, 0x1

    move/from16 v0, p6

    if-ne v0, v11, :cond_8

    .line 2157
    const/4 v11, 0x3

    const/16 v12, 0x40

    aput-byte v12, v8, v11

    goto :goto_3

    .line 2170
    .restart local v4       #k:I
    .restart local v5       #modify_plmn:Ljava/lang/String;
    :cond_c
    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v6

    .line 2171
    .local v6, modify_plmn_all:Ljava/lang/String;
    const-string v11, "GSMPhone"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string v13, "===yangbin= modifyPreferredPlmn modify_plmn_all ==="

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2172
    const/16 v11, 0x6f60

    const/16 v12, 0x3e8

    move-object/from16 v0, p7

    invoke-virtual {p0, v12, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v12

    invoke-virtual {v1, v11, v10, v12}, Lcom/android/internal/telephony/uicc/IccFileHandler;->updateEFTransparent(I[BLandroid/os/Message;)V

    goto/16 :goto_0
.end method

.method public notifyCallForwardingIndicator()V
    .locals 1

    .prologue
    .line 501
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCallForwardingChanged(Lcom/android/internal/telephony/Phone;)V

    .line 502
    return-void
.end method

.method notifyDisconnect(Lcom/android/internal/telephony/Connection;)V
    .locals 1
    .parameter "cn"

    .prologue
    .line 477
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDisconnectRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 478
    return-void
.end method

.method notifyLocationChanged()V
    .locals 1

    .prologue
    .line 495
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyCellLocation(Lcom/android/internal/telephony/Phone;)V

    .line 496
    return-void
.end method

.method notifyNewRingingConnection(Lcom/android/internal/telephony/Connection;)V
    .locals 0
    .parameter "c"

    .prologue
    .line 472
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyNewRingingConnectionP(Lcom/android/internal/telephony/Connection;)V

    .line 473
    return-void
.end method

.method notifyPhoneStateChanged()V
    .locals 1

    .prologue
    .line 456
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mNotifier:Lcom/android/internal/telephony/PhoneNotifier;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/PhoneNotifier;->notifyPhoneState(Lcom/android/internal/telephony/Phone;)V

    .line 457
    return-void
.end method

.method notifyPreciseCallStateChanged()V
    .locals 0

    .prologue
    .line 466
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->notifyPreciseCallStateChangedP()V

    .line 467
    return-void
.end method

.method notifyServiceStateChanged(Landroid/telephony/ServiceState;)V
    .locals 0
    .parameter "ss"

    .prologue
    .line 490
    invoke-super {p0, p1}, Lcom/android/internal/telephony/PhoneBase;->notifyServiceStateChangedP(Landroid/telephony/ServiceState;)V

    .line 491
    return-void
.end method

.method notifySuppServiceFailed(Lcom/android/internal/telephony/Phone$SuppService;)V
    .locals 1
    .parameter "code"

    .prologue
    .line 485
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSuppServiceFailedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 486
    return-void
.end method

.method notifyUnknownConnection()V
    .locals 1

    .prologue
    .line 481
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUnknownConnectionRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p0}, Landroid/os/RegistrantList;->notifyResult(Ljava/lang/Object;)V

    .line 482
    return-void
.end method

.method onMMIDone(Lcom/android/internal/telephony/gsm/GsmMmiCode;)V
    .locals 3
    .parameter "mmi"

    .prologue
    const/4 v2, 0x0

    .line 1265
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isUssdRequest()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->isSsInfo()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1266
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiCompleteRegistrants:Landroid/os/RegistrantList;

    new-instance v1, Landroid/os/AsyncResult;

    invoke-direct {v1, v2, p1, v2}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 1269
    :cond_1
    return-void
.end method

.method protected onUpdateIccAvailability()V
    .locals 4
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_CODE:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    const/4 v3, 0x0

    .line 1681
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v2, :cond_1

    .line 1710
    :cond_0
    :goto_0
    return-void

    .line 1687
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setCardInPhoneBook()V

    .line 1689
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 1691
    .local v1, newUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 1692
    .local v0, app:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eq v0, v1, :cond_0

    .line 1693
    if-eqz v0, :cond_3

    .line 1694
    const-string v2, "Removing stale icc objects."

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1695
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 1696
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->unregisterForSimRecordEvents()V

    .line 1698
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1699
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1700
    iput-object v3, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 1702
    :cond_3
    if-eqz v1, :cond_0

    .line 1703
    const-string v2, "New Uicc application found"

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    .line 1704
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2, v1}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1705
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 1706
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/util/concurrent/atomic/AtomicReference;->set(Ljava/lang/Object;)V

    .line 1707
    invoke-direct {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->registerForSimRecordEvents()V

    goto :goto_0
.end method

.method public queryPreferredPlmn(ILandroid/os/Message;)V
    .locals 5
    .parameter "format"
    .parameter "result"

    .prologue
    .line 2020
    const-string v2, "GSMPhone"

    const-string v3, "===queryPreferredPlmn ==="

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2021
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 2022
    .local v1, aid_string:Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-nez v1, :cond_1

    .line 2024
    const-string v2, "GSMPhone"

    const-string v3, "===aid_string is null ==="

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2042
    :cond_0
    :goto_0
    return-void

    .line 2028
    :cond_1
    const-string v2, "GSMPhone"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "===queryPreferredPlmn ==="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2029
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getAid()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3, p2}, Lcom/android/internal/telephony/CommandsInterface;->queryPreferredPlmn(Ljava/lang/String;Landroid/os/Message;)V

    .line 2031
    const/4 v0, 0x0

    .line 2033
    .local v0, Filehandler:Lcom/android/internal/telephony/uicc/IccFileHandler;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    if-eqz v2, :cond_2

    .line 2034
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getUiccCardApplication()Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    .line 2036
    :cond_2
    if-eqz v0, :cond_0

    .line 2039
    const/16 v2, 0x6f60

    const/16 v3, 0x3e9

    const/4 v4, 0x0

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {v0, v2, v3}, Lcom/android/internal/telephony/uicc/IccFileHandler;->loadEFTransparent(ILandroid/os/Message;)V

    goto :goto_0
.end method

.method public registerForSimRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 529
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 530
    return-void
.end method

.method public registerForSuppServiceNotification(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    const/4 v2, 0x1

    .line 517
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1, p2, p3}, Landroid/os/RegistrantList;->addUnique(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 518
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-ne v0, v2, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v2, v1}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    .line 519
    :cond_0
    return-void
.end method

.method public rejectCall()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 546
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->rejectCall()V

    .line 547
    return-void
.end method

.method public removeReferences()V
    .locals 3
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_CODE:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 284
    const-string v0, "GSMPhone"

    const-string v1, "removeReferences"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 285
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimulatedRadioControl:Lcom/android/internal/telephony/test/SimulatedRadioControl;

    .line 286
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    .line 287
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSubInfo:Lcom/android/internal/telephony/PhoneSubInfo;

    .line 288
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    .line 289
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    .line 290
    iput-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 291
    invoke-super {p0}, Lcom/android/internal/telephony/PhoneBase;->removeReferences()V

    .line 292
    return-void
.end method

.method public requestChangeCbPsw(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .parameter "facility"
    .parameter "oldPwd"
    .parameter "newPwd"
    .parameter "result"

    .prologue
    .line 1990
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/CommandsInterface;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1991
    return-void
.end method

.method public saveClirSetting(I)V
    .locals 4
    .parameter "commandInterfaceCLIRMode"

    .prologue
    .line 1785
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1786
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1787
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "clir_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    .line 1790
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    move-result v2

    if-nez v2, :cond_0

    .line 1791
    const-string v2, "GSMPhone"

    const-string v3, "failed to commit CLIR preference"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1793
    :cond_0
    return-void
.end method

.method public selectNetworkManually(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 3
    .parameter "network"
    .parameter "response"

    .prologue
    .line 1168
    new-instance v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone$1;)V

    .line 1169
    .local v1, nsm:Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    iput-object p2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 1170
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 1171
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorAlphaLong()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 1174
    const/16 v2, 0x10

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1183
    .local v0, msg:Landroid/os/Message;
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/gsm/GSMPhone;->setNetworkSelectionModeManual(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V

    .line 1185
    return-void
.end method

.method public sendBurstDtmf(Ljava/lang/String;)V
    .locals 2
    .parameter "dtmfString"

    .prologue
    .line 896
    const-string v0, "GSMPhone"

    const-string v1, "[GSMPhone] sendBurstDtmf() is a CDMA method"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 897
    return-void
.end method

.method public sendDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 867
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_1

    .line 868
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "sendDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 875
    :cond_0
    :goto_0
    return-void

    .line 871
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    iget-object v0, v0, Lcom/android/internal/telephony/gsm/GsmCallTracker;->mState:Lcom/android/internal/telephony/PhoneConstants$State;

    sget-object v1, Lcom/android/internal/telephony/PhoneConstants$State;->OFFHOOK:Lcom/android/internal/telephony/PhoneConstants$State;

    if-ne v0, v1, :cond_0

    .line 872
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->sendDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public sendUssdResponse(Ljava/lang/String;)V
    .locals 4
    .parameter "ussdMessge"

    .prologue
    const/4 v3, 0x0

    .line 858
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccApplication:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-static {p1, p0, v1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->newFromUssdUserInput(Ljava/lang/String;Lcom/android/internal/telephony/gsm/GSMPhone;Lcom/android/internal/telephony/uicc/UiccCardApplication;)Lcom/android/internal/telephony/gsm/GsmMmiCode;

    move-result-object v0

    .line 859
    .local v0, mmi:Lcom/android/internal/telephony/gsm/GsmMmiCode;
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPendingMMIs:Ljava/util/ArrayList;

    invoke-virtual {v1, v0}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 860
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mMmiRegistrants:Landroid/os/RegistrantList;

    new-instance v2, Landroid/os/AsyncResult;

    invoke-direct {v2, v3, v0, v3}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v1, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 861
    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmMmiCode;->sendUssd(Ljava/lang/String;)V

    .line 862
    return-void
.end method

.method public setCallBarringOption(Ljava/lang/String;ZLjava/lang/String;Landroid/os/Message;)V
    .locals 6
    .parameter "facility"
    .parameter "lockState"
    .parameter "password"
    .parameter "onComplete"

    .prologue
    .line 1983
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidFacilityString(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1984
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v4, 0x1

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v5, p4

    invoke-interface/range {v0 .. v5}, Lcom/android/internal/telephony/CommandsInterface;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 1987
    :cond_0
    return-void
.end method

.method public setCallForwardingOption(IILjava/lang/String;ILandroid/os/Message;)V
    .locals 8
    .parameter "commandInterfaceCFAction"
    .parameter "commandInterfaceCFReason"
    .parameter "dialingNumber"
    .parameter "timerSeconds"
    .parameter "onComplete"

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    .line 1081
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFAction(I)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-direct {p0, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->isValidCommandInterfaceCFReason(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1085
    if-nez p2, :cond_2

    .line 1086
    new-instance v7, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;

    invoke-direct {v7, p3, p5}, Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;-><init>(Ljava/lang/String;Landroid/os/Message;)V

    .line 1087
    .local v7, cfu:Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    const/16 v2, 0xc

    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/gsm/GSMPhone;->isCfEnable(I)Z

    move-result v0

    if-eqz v0, :cond_1

    move v0, v3

    :goto_0
    invoke-virtual {p0, v2, v0, v1, v7}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v6

    .line 1092
    .end local v7           #cfu:Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    .local v6, resp:Landroid/os/Message;
    :goto_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    move v1, p1

    move v2, p2

    move-object v4, p3

    move v5, p4

    invoke-interface/range {v0 .. v6}, Lcom/android/internal/telephony/CommandsInterface;->setCallForward(IIILjava/lang/String;ILandroid/os/Message;)V

    .line 1099
    .end local v6           #resp:Landroid/os/Message;
    :cond_0
    return-void

    .restart local v7       #cfu:Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    :cond_1
    move v0, v1

    .line 1087
    goto :goto_0

    .line 1090
    .end local v7           #cfu:Lcom/android/internal/telephony/gsm/GSMPhone$Cfu;
    :cond_2
    move-object v6, p5

    .restart local v6       #resp:Landroid/os/Message;
    goto :goto_1
.end method

.method protected setCallForwardingPreference(Z)V
    .locals 4
    .parameter "enabled"

    .prologue
    .line 1276
    const-string v2, "GSMPhone"

    const-string v3, "Set callforwarding info to perferences"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1277
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1278
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 1279
    .local v0, edit:Landroid/content/SharedPreferences$Editor;
    const-string v2, "cf_enabled_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    .line 1280
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 1283
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 1284
    return-void
.end method

.method public setCallWaiting(ZLandroid/os/Message;)V
    .locals 2
    .parameter "enable"
    .parameter "onComplete"

    .prologue
    .line 1122
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x1

    invoke-interface {v0, p1, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setCallWaiting(ZILandroid/os/Message;)V

    .line 1123
    return-void
.end method

.method protected setCardInPhoneBook()V
    .locals 2

    .prologue
    .line 1667
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    if-nez v0, :cond_1

    .line 1676
    :cond_0
    :goto_0
    return-void

    .line 1671
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    if-eqz v0, :cond_0

    .line 1675
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimPhoneBookIntManager:Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;

    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/SimPhoneBookInterfaceManager;->setIccCard(Lcom/android/internal/telephony/uicc/UiccCard;)V

    goto :goto_0
.end method

.method public setCellBroadcastSmsConfig([ILandroid/os/Message;)V
    .locals 2
    .parameter "configValuesArray"
    .parameter "response"

    .prologue
    .line 1862
    const-string v0, "GSMPhone"

    const-string v1, "[GSMPhone] setCellBroadcastSmsConfig() is obsolete; use SmsManager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 1864
    return-void
.end method

.method public setDataRoamingEnabled(Z)V
    .locals 1
    .parameter "enable"

    .prologue
    .line 1250
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mDcTracker:Lcom/android/internal/telephony/dataconnection/DcTrackerBase;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/dataconnection/DcTrackerBase;->setDataOnRoamingEnabled(Z)V

    .line 1251
    return-void
.end method

.method public setLine1Number(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 2
    .parameter "alphaTag"
    .parameter "number"
    .parameter "onComplete"

    .prologue
    .line 1011
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1012
    .local v0, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 1013
    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/telephony/uicc/IccRecords;->setMsisdnNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1015
    :cond_0
    return-void
.end method

.method public setMute(Z)V
    .locals 1
    .parameter "muted"

    .prologue
    .line 1215
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->setMute(Z)V

    .line 1216
    return-void
.end method

.method public setNetworkSelectionModeAutomatic(Landroid/os/Message;)V
    .locals 4
    .parameter "response"

    .prologue
    .line 1149
    new-instance v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;-><init>(Lcom/android/internal/telephony/gsm/GSMPhone$1;)V

    .line 1150
    .local v1, nsm:Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;
    iput-object p1, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->message:Landroid/os/Message;

    .line 1151
    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorNumeric:Ljava/lang/String;

    .line 1152
    const-string v2, ""

    iput-object v2, v1, Lcom/android/internal/telephony/gsm/GSMPhone$NetworkSelectMessage;->operatorAlphaLong:Ljava/lang/String;

    .line 1155
    const/16 v2, 0x11

    invoke-virtual {p0, v2, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 1157
    .local v0, msg:Landroid/os/Message;
    const-string v2, "GSMPhone"

    const-string v3, "wrapping and sending message to connect automatically"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v2, v0}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeAutomatic(Landroid/os/Message;)V

    .line 1160
    return-void
.end method

.method public setNetworkSelectionModeManual(Lcom/android/internal/telephony/OperatorInfo;Landroid/os/Message;)V
    .locals 3
    .parameter "network"
    .parameter "msg"

    .prologue
    .line 1191
    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->ratstring()Ljava/lang/String;

    move-result-object v0

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1192
    const-string v0, "GSMPhone"

    const-string v1, "selectNetworkManually and rat is null"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1193
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    .line 1199
    :goto_0
    return-void

    .line 1195
    :cond_0
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "selectNetworkManually and rat is "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->ratstring()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1196
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "+"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Lcom/android/internal/telephony/OperatorInfo;->ratstring()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p2}, Lcom/android/internal/telephony/CommandsInterface;->setNetworkSelectionModeManual(Ljava/lang/String;Landroid/os/Message;)V

    goto :goto_0
.end method

.method public setOnPostDialCharacter(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 1
    .parameter "h"
    .parameter "what"
    .parameter "obj"

    .prologue
    .line 1210
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    iput-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mPostDialHandler:Landroid/os/Registrant;

    .line 1211
    return-void
.end method

.method public setOutgoingCallerIdDisplay(ILandroid/os/Message;)V
    .locals 3
    .parameter "commandInterfaceCLIRMode"
    .parameter "onComplete"

    .prologue
    .line 1109
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x12

    const/4 v2, 0x0

    invoke-virtual {p0, v1, p1, v2, p2}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1111
    return-void
.end method

.method protected setProperties()V
    .locals 3

    .prologue
    .line 243
    const-string v0, "gsm.current.phone-type"

    new-instance v1, Ljava/lang/Integer;

    const/4 v2, 0x1

    invoke-direct {v1, v2}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v1}, Ljava/lang/Integer;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 245
    return-void
.end method

.method public setRadioPower(Z)V
    .locals 1
    .parameter "power"

    .prologue
    .line 902
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->setRadioPower(Z)V

    .line 903
    return-void
.end method

.method public setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "property"
    .parameter "value"

    .prologue
    .line 511
    invoke-super {p0, p1, p2}, Lcom/android/internal/telephony/PhoneBase;->setSystemProperty(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    return-void
.end method

.method protected setVmSimImsi(Ljava/lang/String;)V
    .locals 3
    .parameter "imsi"

    .prologue
    .line 931
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 932
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 933
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "vm_sim_imsi_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 934
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 935
    return-void
.end method

.method public setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 4
    .parameter "alphaTag"
    .parameter "voiceMailNumber"
    .parameter "onComplete"

    .prologue
    const/4 v3, 0x0

    .line 1023
    iput-object p2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    .line 1024
    const/16 v2, 0x14

    invoke-virtual {p0, v2, v3, v3, p3}, Lcom/android/internal/telephony/gsm/GSMPhone;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    .line 1025
    .local v1, resp:Landroid/os/Message;
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1026
    .local v0, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 1027
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mVmNumber:Ljava/lang/String;

    invoke-virtual {v0, p1, v2, v1}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMailNumber(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 1029
    :cond_0
    return-void
.end method

.method public setVoiceMessageWaiting(II)V
    .locals 2
    .parameter "line"
    .parameter "countWaiting"

    .prologue
    .line 2189
    iget-object v1, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v1}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 2190
    .local v0, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v0, :cond_0

    .line 2191
    invoke-virtual {v0, p1, p2}, Lcom/android/internal/telephony/uicc/IccRecords;->setVoiceMessageWaiting(II)V

    .line 2195
    :goto_0
    return-void

    .line 2193
    :cond_0
    const-string v1, "SIM Records not found, MWI not updated"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/gsm/GSMPhone;->log(Ljava/lang/String;)V

    goto :goto_0
.end method

.method public startDtmf(C)V
    .locals 3
    .parameter "c"

    .prologue
    .line 880
    invoke-static {p1}, Landroid/telephony/PhoneNumberUtils;->is12Key(C)Z

    move-result v0

    if-nez v0, :cond_0

    .line 881
    const-string v0, "GSMPhone"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "startDtmf called with invalid character \'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "\'"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 886
    :goto_0
    return-void

    .line 884
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, p1, v1}, Lcom/android/internal/telephony/CommandsInterface;->startDtmf(CLandroid/os/Message;)V

    goto :goto_0
.end method

.method public stopDtmf()V
    .locals 2

    .prologue
    .line 891
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->stopDtmf(Landroid/os/Message;)V

    .line 892
    return-void
.end method

.method protected storeVoiceMailNumber(Ljava/lang/String;)V
    .locals 3
    .parameter "number"

    .prologue
    .line 906
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 907
    .local v1, sp:Landroid/content/SharedPreferences;
    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    .line 908
    .local v0, editor:Landroid/content/SharedPreferences$Editor;
    const-string v2, "vm_number_key"

    invoke-interface {v0, v2, p1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    .line 909
    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 910
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getSubscriberId()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/gsm/GSMPhone;->setVmSimImsi(Ljava/lang/String;)V

    .line 911
    return-void
.end method

.method public switchHoldingAndActive()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lcom/android/internal/telephony/CallStateException;
        }
    .end annotation

    .prologue
    .line 552
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCT:Lcom/android/internal/telephony/gsm/GsmCallTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmCallTracker;->switchWaitingOrHoldingAndActive()V

    .line 553
    return-void
.end method

.method protected syncClirSetting()V
    .locals 4

    .prologue
    .line 1374
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/GSMPhone;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v1

    .line 1375
    .local v1, sp:Landroid/content/SharedPreferences;
    const-string v2, "clir_key"

    const/4 v3, -0x1

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 1376
    .local v0, clirSetting:I
    if-ltz v0, :cond_0

    .line 1377
    iget-object v2, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v3, 0x0

    invoke-interface {v2, v0, v3}, Lcom/android/internal/telephony/CommandsInterface;->setCLIR(ILandroid/os/Message;)V

    .line 1379
    :cond_0
    return-void
.end method

.method public unregisterForSimRecordsLoaded(Landroid/os/Handler;)V
    .locals 1
    .parameter "h"

    .prologue
    .line 534
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSimRecordsLoadedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 535
    return-void
.end method

.method public unregisterForSuppServiceNotification(Landroid/os/Handler;)V
    .locals 3
    .parameter "h"

    .prologue
    .line 523
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 524
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSsnRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0}, Landroid/os/RegistrantList;->size()I

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Lcom/android/internal/telephony/CommandsInterface;->setSuppServiceNotifications(ZLandroid/os/Message;)V

    .line 525
    :cond_0
    return-void
.end method

.method public updateCurrentCarrierInProvider()Z
    .locals 6

    .prologue
    .line 1729
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mIccRecords:Ljava/util/concurrent/atomic/AtomicReference;

    invoke-virtual {v4}, Ljava/util/concurrent/atomic/AtomicReference;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/telephony/uicc/IccRecords;

    .line 1730
    .local v2, r:Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v2, :cond_0

    .line 1732
    :try_start_0
    sget-object v4, Landroid/provider/Telephony$Carriers;->CONTENT_URI:Landroid/net/Uri;

    const-string v5, "current"

    invoke-static {v4, v5}, Landroid/net/Uri;->withAppendedPath(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v3

    .line 1733
    .local v3, uri:Landroid/net/Uri;
    new-instance v1, Landroid/content/ContentValues;

    invoke-direct {v1}, Landroid/content/ContentValues;-><init>()V

    .line 1734
    .local v1, map:Landroid/content/ContentValues;
    const-string v4, "numeric"

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/IccRecords;->getOperatorNumeric()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v1, v4, v5}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 1735
    iget-object v4, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mContext:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-virtual {v4, v3, v1}, Landroid/content/ContentResolver;->insert(Landroid/net/Uri;Landroid/content/ContentValues;)Landroid/net/Uri;
    :try_end_0
    .catch Landroid/database/SQLException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1736
    const/4 v4, 0x1

    .line 1741
    .end local v1           #map:Landroid/content/ContentValues;
    .end local v3           #uri:Landroid/net/Uri;
    :goto_0
    return v4

    .line 1737
    :catch_0
    move-exception v0

    .line 1738
    .local v0, e:Landroid/database/SQLException;
    const-string v4, "GSMPhone"

    const-string v5, "Can\'t store current operator"

    invoke-static {v4, v5, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1741
    .end local v0           #e:Landroid/database/SQLException;
    :cond_0
    const/4 v4, 0x0

    goto :goto_0
.end method

.method public updateServiceLocation()V
    .locals 1

    .prologue
    .line 1230
    iget-object v0, p0, Lcom/android/internal/telephony/gsm/GSMPhone;->mSST:Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;

    invoke-virtual {v0}, Lcom/android/internal/telephony/gsm/GsmServiceStateTracker;->enableSingleLocationUpdate()V

    .line 1231
    return-void
.end method
