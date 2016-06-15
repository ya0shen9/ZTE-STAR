.class public Lcom/android/internal/telephony/uicc/IccCardProxy;
.super Landroid/os/Handler;
.source "IccCardProxy.java"

# interfaces
.implements Lcom/android/internal/telephony/IccCard;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/uicc/IccCardProxy$1;
    }
.end annotation


# static fields
.field private static final DBG:Z = true

.field private static final EVENT_APP_READY:I = 0x6

.field private static final EVENT_CDMA_SUBSCRIPTION_SOURCE_CHANGED:I = 0xb

.field private static final EVENT_GET_PINPUK_RETRIES_DONE:I = 0x12
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field private static final EVENT_ICC_ABSENT:I = 0x4

.field private static final EVENT_ICC_CHANGED:I = 0x3

.field private static final EVENT_ICC_LOCKED:I = 0x5

.field protected static final EVENT_IMSI_READY:I = 0x8

.field private static final EVENT_PERSO_LOCKED:I = 0x9

.field private static final EVENT_RADIO_OFF_OR_UNAVAILABLE:I = 0x1

.field private static final EVENT_RADIO_ON:I = 0x2

.field protected static final EVENT_RECORDS_LOADED:I = 0x7

.field private static final EVENT_SUPPLY_PIN_SILENCE_DONE:I = 0x13

.field private static final LOG_TAG:Ljava/lang/String; = "IccCardProxy"


# instance fields
.field checkstate:I
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation
.end field

.field protected mAbsentRegistrants:Landroid/os/RegistrantList;

.field private mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

.field private mCi:Lcom/android/internal/telephony/CommandsInterface;

.field protected mContext:Landroid/content/Context;

.field protected mCurrentAppType:I

.field protected mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

.field protected mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

.field private mInitialized:Z

.field private mIsCardStatusAvailable:Z

.field protected final mLock:Ljava/lang/Object;

.field private mPersoLockedRegistrants:Landroid/os/RegistrantList;

.field private mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

.field private mPinLockedRegistrants:Landroid/os/RegistrantList;

.field protected mQuietMode:Z

.field private mRadioOn:Z

.field protected mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

.field protected mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

.field protected mUiccController:Lcom/android/internal/telephony/uicc/UiccController;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "ci"    # Lcom/android/internal/telephony/CommandsInterface;

    .prologue
    const/4 v3, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    .line 116
    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    .line 94
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    .line 98
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    .line 99
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    .line 100
    new-instance v0, Landroid/os/RegistrantList;

    invoke-direct {v0}, Landroid/os/RegistrantList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    .line 102
    iput v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    .line 103
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 104
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 105
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 106
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 107
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 108
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    .line 109
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    .line 111
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    .line 112
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 113
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIsCardStatusAvailable:Z

    .line 114
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->PERSOSUBSTATE_UNKNOWN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 931
    iput v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->checkstate:I

    .line 117
    const-string v0, "Creating"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 118
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    .line 119
    iput-object p2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    .line 120
    const/16 v0, 0xb

    invoke-static {p1, p2, p0, v0, v2}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getInstance(Landroid/content/Context;Lcom/android/internal/telephony/CommandsInterface;Landroid/os/Handler;ILjava/lang/Object;)Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    .line 122
    invoke-static {}, Lcom/android/internal/telephony/uicc/UiccController;->getInstance()Lcom/android/internal/telephony/uicc/UiccController;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 123
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    const/4 v1, 0x3

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccController;->registerForIccChanged(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 124
    const/4 v0, 0x2

    invoke-interface {p2, p0, v0, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOn(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 125
    invoke-interface {p2, p0, v3, v2}, Lcom/android/internal/telephony/CommandsInterface;->registerForOffOrNotAvailable(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 126
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 127
    return-void
.end method

.method private Cleanrestordata()V
    .locals 2
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 914
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 915
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 916
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->Cleanrestordata()V

    .line 918
    :cond_0
    monitor-exit v1

    .line 919
    return-void

    .line 918
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method private checkInputPin()Z
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 934
    const/4 v0, 0x1

    .line 935
    .local v0, "ret":Z
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getCardStartPinType()I

    move-result v1

    .line 936
    .local v1, "startType":I
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "checkInputPin  startType: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, ",checkstate"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->checkstate:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 937
    if-ne v4, v1, :cond_1

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->checkstate:I

    if-nez v2, :cond_1

    .line 938
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->supplyPinSilence()V

    .line 939
    const/4 v0, 0x0

    .line 943
    :cond_0
    :goto_0
    return v0

    .line 940
    :cond_1
    iget v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->checkstate:I

    if-ne v4, v2, :cond_0

    .line 941
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getCardStartPinType()I
    .locals 4
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 922
    const-string v2, "ril.modem_reset"

    const-string v3, ""

    invoke-static {v2, v3}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 923
    .local v0, "CardPinState":Ljava/lang/String;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "getCardStartPinType  CardPinState: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 925
    const/4 v1, 0x0

    .line 926
    .local v1, "ret":I
    const-string v2, "1"

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 927
    const/4 v1, 0x1

    .line 929
    :cond_0
    return v1
.end method

.method private guessRadioTech()I
    .locals 3

    .prologue
    const/4 v1, 0x1

    .line 166
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v2, v1}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCardApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v0

    .line 168
    .local v0, "app":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    if-eqz v0, :cond_0

    .line 171
    :goto_0
    return v1

    :cond_0
    const/4 v1, 0x2

    goto :goto_0
.end method

.method private parsePinPukResult(Landroid/os/AsyncResult;)V
    .locals 1
    .param p1, "ar"    # Landroid/os/AsyncResult;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 774
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 775
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->parsePinPukResult(Landroid/os/AsyncResult;)V

    .line 777
    :cond_0
    return-void
.end method

.method private processLockedState()V
    .locals 5

    .prologue
    .line 475
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v3

    .line 476
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v2, :cond_0

    .line 478
    monitor-exit v3

    .line 503
    :goto_0
    return-void

    .line 480
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPin1State()Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    move-result-object v1

    .line 481
    .local v1, "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;->PINSTATE_ENABLED_PERM_BLOCKED:Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;

    if-ne v1, v2, :cond_1

    .line 482
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERM_DISABLED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 483
    monitor-exit v3

    goto :goto_0

    .line 502
    .end local v1    # "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :catchall_0
    move-exception v2

    monitor-exit v3
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v2

    .line 486
    .restart local v1    # "pin1State":Lcom/android/internal/telephony/uicc/IccCardStatus$PinState;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    .line 487
    .local v0, "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppState:[I

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v4

    aget v2, v2, v4

    packed-switch v2, :pswitch_data_0

    .line 502
    :goto_1
    monitor-exit v3

    goto :goto_0

    .line 489
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 490
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_1

    .line 493
    :pswitch_1
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 487
    nop

    :pswitch_data_0
    .packed-switch 0x3
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V
    .locals 1
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 518
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    .line 519
    return-void
.end method

.method private supplyPinSilence()V
    .locals 2
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 947
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccCardPin()Ljava/lang/String;

    move-result-object v0

    .line 948
    .local v0, "pinremeber":Ljava/lang/String;
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->checkstate:I

    if-nez v1, :cond_0

    .line 949
    const/4 v1, 0x1

    iput v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->checkstate:I

    .line 950
    const/16 v1, 0x13

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 952
    :cond_0
    return-void
.end method

.method private updateExternalStatePIN()Z
    .locals 5
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 955
    const/4 v1, 0x1

    .line 956
    .local v1, "ret":Z
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v3, :cond_0

    .line 957
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getCardStartPinType()I

    move-result v2

    .line 958
    .local v2, "startType":I
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v0

    .line 959
    .local v0, "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "checkstate :"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->checkstate:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 960
    sget-object v3, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->APPSTATE_PIN:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    if-ne v3, v0, :cond_0

    const/4 v3, 0x1

    if-ne v3, v2, :cond_0

    const/4 v3, 0x2

    iget v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->checkstate:I

    if-eq v3, v4, :cond_0

    .line 961
    const/4 v1, 0x0

    .line 964
    .end local v0    # "appState":Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;
    .end local v2    # "startType":I
    :cond_0
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "updateExternalStatePIN ret:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 965
    return v1
.end method

.method private updateQuietMode()V
    .locals 7

    .prologue
    const/4 v3, 0x1

    .line 229
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v4

    .line 230
    :try_start_0
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    .line 232
    .local v2, "oldQuietMode":Z
    const/4 v0, -0x1

    .line 233
    .local v0, "cdmaSource":I
    iget v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    if-ne v5, v3, :cond_2

    .line 234
    const/4 v1, 0x0

    .line 235
    .local v1, "newQuietMode":Z
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "updateQuietMode: 3GPP subscription -> newQuietMode="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {p0, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 244
    :goto_0
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    if-nez v5, :cond_5

    if-ne v1, v3, :cond_5

    .line 247
    const-string v3, "Switching to QuietMode."

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 248
    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 249
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    .line 259
    :cond_0
    :goto_1
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateQuietMode: QuietMode is "

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " (app_type="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, " cdmaSource="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v5, ")"

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 262
    const/4 v3, 0x1

    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    .line 264
    iget-boolean v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIsCardStatusAvailable:Z

    if-eqz v3, :cond_1

    const/4 v3, 0x3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->sendMessage(Landroid/os/Message;)Z

    .line 265
    :cond_1
    monitor-exit v4

    .line 266
    return-void

    .line 237
    .end local v1    # "newQuietMode":Z
    :cond_2
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v5}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    .line 240
    :goto_2
    if-ne v0, v3, :cond_4

    iget v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    const/4 v6, 0x2

    if-ne v5, v6, :cond_4

    move v1, v3

    .restart local v1    # "newQuietMode":Z
    :goto_3
    goto :goto_0

    .line 237
    .end local v1    # "newQuietMode":Z
    :cond_3
    const/4 v0, -0x1

    goto :goto_2

    .line 240
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 250
    .restart local v1    # "newQuietMode":Z
    :cond_5
    iget-boolean v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    if-ne v5, v3, :cond_0

    if-nez v1, :cond_0

    .line 252
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "updateQuietMode: Switching out from QuietMode. Force broadcast of current state="

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v3, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 255
    iput-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    .line 256
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    const/4 v5, 0x1

    invoke-virtual {p0, v3, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V

    goto/16 :goto_1

    .line 265
    .end local v0    # "cdmaSource":I
    .end local v1    # "newQuietMode":Z
    .end local v2    # "oldQuietMode":Z
    :catchall_0
    move-exception v3

    monitor-exit v4
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v3
.end method


# virtual methods
.method protected HandleDetectedState()V
    .locals 1

    .prologue
    .line 381
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 382
    return-void
.end method

.method protected broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 4
    .param p1, "value"    # Ljava/lang/String;
    .param p2, "reason"    # Ljava/lang/String;

    .prologue
    .line 454
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 455
    :try_start_0
    iget-boolean v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    if-eqz v1, :cond_0

    .line 456
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "QuietMode: NOT Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " reason "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 458
    monitor-exit v2

    .line 472
    :goto_0
    return-void

    .line 461
    :cond_0
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.SIM_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 462
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x20000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 463
    const-string v1, "phoneName"

    const-string v3, "Phone"

    invoke-virtual {v0, v1, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 464
    const-string v1, "ss"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 465
    const-string v1, "reason"

    invoke-virtual {v0, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 467
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Broadcasting intent ACTION_SIM_STATE_CHANGED "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v3, " reason "

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 469
    const-string v1, "android.permission.READ_PHONE_STATE"

    const/4 v3, -0x1

    invoke-static {v0, v1, v3}, Landroid/app/ActivityManagerNative;->broadcastStickyIntent(Landroid/content/Intent;Ljava/lang/String;I)V

    .line 471
    monitor-exit v2

    goto :goto_0

    .end local v0    # "intent":Landroid/content/Intent;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "oldPwd"    # Ljava/lang/String;
    .param p3, "newPwd"    # Ljava/lang/String;
    .param p4, "result"    # Landroid/os/Message;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 906
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 907
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeBarringPassword(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 909
    :cond_0
    return-void
.end method

.method public changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 841
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 842
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 843
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccFdnPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 850
    :cond_0
    monitor-exit v2

    .line 851
    :goto_0
    return-void

    .line 844
    :cond_1
    if-eqz p3, :cond_0

    .line 845
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 846
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 847
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 848
    monitor-exit v2

    goto :goto_0

    .line 850
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "oldPassword"    # Ljava/lang/String;
    .param p2, "newPassword"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 827
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 828
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 829
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->changeIccLockPassword(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 836
    :cond_0
    monitor-exit v2

    .line 837
    :goto_0
    return-void

    .line 830
    :cond_1
    if-eqz p3, :cond_0

    .line 831
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 832
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 833
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 834
    monitor-exit v2

    goto :goto_0

    .line 836
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public dispose()V
    .locals 2

    .prologue
    .line 130
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 131
    :try_start_0
    const-string v0, "Disposing"

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 133
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccController;->unregisterForIccChanged(Landroid/os/Handler;)V

    .line 134
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    .line 135
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOn(Landroid/os/Handler;)V

    .line 136
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v0, p0}, Lcom/android/internal/telephony/CommandsInterface;->unregisterForOffOrNotAvailable(Landroid/os/Handler;)V

    .line 137
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->dispose(Landroid/os/Handler;)V

    .line 138
    monitor-exit v1

    .line 139
    return-void

    .line 138
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 3
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 969
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "IccCardProxy: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 970
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mContext="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 971
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCi="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 972
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mAbsentRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 973
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 974
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mAbsentRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 973
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 977
    :cond_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPinLockedRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 978
    const/4 v0, 0x0

    :goto_1
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_1

    .line 979
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPinLockedRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 978
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 982
    :cond_1
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mPersoLockedRegistrants: size="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->size()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 983
    const/4 v0, 0x0

    :goto_2
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1}, Landroid/os/RegistrantList;->size()I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 984
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "  mPersoLockedRegistrants["

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "]="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/os/Registrant;

    invoke-virtual {v1}, Landroid/os/Registrant;->getHandler()Landroid/os/Handler;

    move-result-object v1

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 983
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 987
    :cond_2
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCurrentAppType="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 988
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUiccController="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 989
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUiccCard="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 990
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mUiccApplication="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 991
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mIccRecords="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 992
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mCdmaSSM="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 993
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mRadioOn="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 994
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mQuietMode="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mQuietMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 995
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mInitialized="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 996
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, " mExternalState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 998
    invoke-virtual {p2}, Ljava/io/PrintWriter;->flush()V

    .line 999
    return-void
.end method

.method public getIccCardPin()Ljava/lang/String;
    .locals 2
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 769
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccCardPin()Ljava/lang/String;

    move-result-object v0

    .line 770
    .local v0, "retValue":Ljava/lang/String;
    :goto_0
    return-object v0

    .line 769
    .end local v0    # "retValue":Ljava/lang/String;
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccFdnAvailable()Z
    .locals 2

    .prologue
    .line 743
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnAvailable()Z

    move-result v0

    .line 744
    .local v0, "retValue":Z
    :goto_0
    return v0

    .line 743
    .end local v0    # "retValue":Z
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccFdnEnabled()Z
    .locals 3

    .prologue
    .line 735
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 736
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFdnEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 738
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    return v1

    .line 736
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 739
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;
    .locals 2

    .prologue
    .line 576
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 577
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 578
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccFileHandler()Lcom/android/internal/telephony/uicc/IccFileHandler;

    move-result-object v0

    monitor-exit v1

    .line 580
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 581
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccLockEnabled()Z
    .locals 3

    .prologue
    .line 725
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 727
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccLockEnabled()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 729
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    return v1

    .line 727
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 730
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public getIccPin1RetryCount()I
    .locals 2

    .prologue
    .line 748
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPin1RetryCount()I

    move-result v0

    .line 749
    .local v0, "retValue":I
    :goto_0
    return v0

    .line 748
    .end local v0    # "retValue":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIccPin2Blocked()Z
    .locals 2

    .prologue
    .line 787
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPin2Blocked()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 788
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 787
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccPin2RetryCount()I
    .locals 2

    .prologue
    .line 753
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPin2RetryCount()I

    move-result v0

    .line 754
    .local v0, "retValue":I
    :goto_0
    return v0

    .line 753
    .end local v0    # "retValue":I
    :cond_0
    const/4 v0, -0x1

    goto :goto_0
.end method

.method public getIccPuk1RetryCount()I
    .locals 2
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 759
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPuk1RetryCount()I

    move-result v0

    .line 760
    .local v0, "retValue":I
    :goto_0
    return v0

    .line 759
    .end local v0    # "retValue":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccPuk2Blocked()Z
    .locals 2

    .prologue
    .line 793
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPuk2Blocked()Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 794
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    return v1

    .line 793
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getIccPuk2RetryCount()I
    .locals 2
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 764
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccPuk2RetryCount()I

    move-result v0

    .line 765
    .local v0, "retValue":I
    :goto_0
    return v0

    .line 764
    .end local v0    # "retValue":I
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;
    .locals 2

    .prologue
    .line 569
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 570
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    monitor-exit v1

    return-object v0

    .line 571
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getIccRecordsLoaded()Z
    .locals 2

    .prologue
    .line 522
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 523
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 524
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getRecordsLoaded()Z

    move-result v0

    monitor-exit v1

    .line 526
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 527
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 531
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 540
    const-string v0, "UNKNOWN"

    :goto_0
    return-object v0

    .line 532
    :pswitch_0
    const-string v0, "ABSENT"

    goto :goto_0

    .line 533
    :pswitch_1
    const-string v0, "LOCKED"

    goto :goto_0

    .line 534
    :pswitch_2
    const-string v0, "LOCKED"

    goto :goto_0

    .line 535
    :pswitch_3
    const-string v0, "LOCKED"

    goto :goto_0

    .line 536
    :pswitch_4
    const-string v0, "READY"

    goto :goto_0

    .line 537
    :pswitch_5
    const-string v0, "NOT_READY"

    goto :goto_0

    .line 538
    :pswitch_6
    const-string v0, "LOCKED"

    goto :goto_0

    .line 539
    :pswitch_7
    const-string v0, "CARD_IO_ERROR"

    goto :goto_0

    .line 531
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method

.method protected getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;
    .locals 2
    .param p1, "state"    # Lcom/android/internal/telephony/IccCardConstants$State;

    .prologue
    .line 549
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$IccCardConstants$State:[I

    invoke-virtual {p1}, Lcom/android/internal/telephony/IccCardConstants$State;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    .line 555
    :pswitch_0
    const/4 v0, 0x0

    :goto_0
    return-object v0

    .line 550
    :pswitch_1
    const-string v0, "PIN"

    goto :goto_0

    .line 551
    :pswitch_2
    const-string v0, "PUK"

    goto :goto_0

    .line 552
    :pswitch_3
    const-string v0, "PERSO"

    goto :goto_0

    .line 553
    :pswitch_4
    const-string v0, "PERM_DISABLED"

    goto :goto_0

    .line 554
    :pswitch_5
    const-string v0, "CARD_IO_ERROR"

    goto :goto_0

    .line 549
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_0
        :pswitch_0
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method public getPinPukRetries()V
    .locals 2
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 780
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    const/16 v1, 0x12

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    invoke-interface {v0, v1}, Lcom/android/internal/telephony/CommandsInterface;->getIccPinPukRetries(Landroid/os/Message;)V

    .line 781
    return-void
.end method

.method public getServiceProviderName()Ljava/lang/String;
    .locals 2

    .prologue
    .line 855
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 856
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_0

    .line 857
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/IccRecords;->getServiceProviderName()Ljava/lang/String;

    move-result-object v0

    monitor-exit v1

    .line 859
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 860
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public getState()Lcom/android/internal/telephony/IccCardConstants$State;
    .locals 2

    .prologue
    .line 562
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 563
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    monitor-exit v1

    return-object v0

    .line 564
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public handleMessage(Landroid/os/Message;)V
    .locals 6
    .param p1, "msg"    # Landroid/os/Message;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_CODE:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 271
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 345
    :pswitch_0
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Unhandled message with number: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->what:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->loge(Ljava/lang/String;)V

    .line 348
    :cond_0
    :goto_0
    return-void

    .line 273
    :pswitch_1
    iput-boolean v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    .line 274
    sget-object v2, Lcom/android/internal/telephony/CommandsInterface$RadioState;->RADIO_UNAVAILABLE:Lcom/android/internal/telephony/CommandsInterface$RadioState;

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCi:Lcom/android/internal/telephony/CommandsInterface;

    invoke-interface {v3}, Lcom/android/internal/telephony/CommandsInterface;->getRadioState()Lcom/android/internal/telephony/CommandsInterface$RadioState;

    move-result-object v3

    if-ne v2, v3, :cond_0

    .line 275
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 279
    :pswitch_2
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    .line 280
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    if-nez v2, :cond_0

    .line 281
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateQuietMode()V

    goto :goto_0

    .line 285
    :pswitch_3
    iput-boolean v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIsCardStatusAvailable:Z

    .line 286
    iget-boolean v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mInitialized:Z

    if-eqz v2, :cond_0

    .line 287
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateIccAvailability()V

    goto :goto_0

    .line 291
    :pswitch_4
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v2}, Landroid/os/RegistrantList;->notifyRegistrants()V

    .line 292
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 296
    :pswitch_5
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getPinPukRetries()V

    .line 298
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->checkInputPin()Z

    move-result v1

    .line 299
    .local v1, "bcheck":Z
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_ICC_LOCKED  bcheck: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 300
    if-eqz v1, :cond_0

    .line 301
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->processLockedState()V

    goto :goto_0

    .line 307
    .end local v1    # "bcheck":Z
    :pswitch_6
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getPinPukRetries()V

    .line 309
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 312
    :pswitch_7
    const-string v2, "LOADED"

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 315
    :pswitch_8
    const-string v2, "IMSI"

    invoke-virtual {p0, v2, v5}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 318
    :pswitch_9
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 319
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Landroid/os/AsyncResult;

    invoke-virtual {v3, v2}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    .line 320
    sget-object v2, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 323
    :pswitch_a
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateQuietMode()V

    .line 324
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateActiveRecord()V

    goto/16 :goto_0

    .line 327
    :pswitch_b
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 328
    .local v0, "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->result:Ljava/lang/Object;

    if-eqz v2, :cond_0

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_0

    .line 329
    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->parsePinPukResult(Landroid/os/AsyncResult;)V

    goto/16 :goto_0

    .line 333
    .end local v0    # "ar":Landroid/os/AsyncResult;
    :pswitch_c
    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, Landroid/os/AsyncResult;

    .line 334
    .restart local v0    # "ar":Landroid/os/AsyncResult;
    if-eqz v0, :cond_1

    iget-object v2, v0, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    if-nez v2, :cond_1

    .line 335
    iput v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->checkstate:I

    .line 340
    :goto_1
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "EVENT_SUPPLY_PIN_DONE: checkstate ="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->checkstate:I

    if-nez v2, :cond_2

    const-string v2, "SUCC"

    :goto_2
    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 337
    :cond_1
    const/4 v2, 0x2

    iput v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->checkstate:I

    .line 338
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->Cleanrestordata()V

    goto :goto_1

    .line 340
    :cond_2
    const-string v2, "FAIL"

    goto :goto_2

    .line 271
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_0
        :pswitch_a
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_b
        :pswitch_c
    .end packed-switch
.end method

.method public hasIccCard()Z
    .locals 3

    .prologue
    .line 873
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 874
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v2, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-eq v0, v2, :cond_0

    .line 875
    const/4 v0, 0x1

    monitor-exit v1

    .line 877
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    monitor-exit v1

    goto :goto_0

    .line 878
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z
    .locals 3
    .param p1, "type"    # Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;

    .prologue
    .line 865
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 866
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v1, p1}, Lcom/android/internal/telephony/uicc/UiccCard;->isApplicationOnIcc(Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppType;)Z

    move-result v1

    :goto_0
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 867
    .local v0, "retValue":Ljava/lang/Boolean;
    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    monitor-exit v2

    return v1

    .line 866
    .end local v0    # "retValue":Ljava/lang/Boolean;
    :cond_0
    const/4 v1, 0x0

    goto :goto_0

    .line 868
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected log(Ljava/lang/String;)V
    .locals 1
    .param p1, "s"    # Ljava/lang/String;

    .prologue
    .line 882
    const-string v0, "IccCardProxy"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 883
    return-void
.end method

.method protected loge(Ljava/lang/String;)V
    .locals 1
    .param p1, "msg"    # Ljava/lang/String;

    .prologue
    .line 886
    const-string v0, "IccCardProxy"

    invoke-static {v0, p1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 887
    return-void
.end method

.method public queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V
    .locals 1
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "serviceClassX"    # I
    .param p4, "onComplete"    # Landroid/os/Message;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 899
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 900
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p1, p2, p3, p4}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->queryFacilityLock(Ljava/lang/String;Ljava/lang/String;ILandroid/os/Message;)V

    .line 902
    :cond_0
    return-void
.end method

.method public registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 4
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 589
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 590
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 592
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 594
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v3, :cond_0

    .line 595
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 597
    :cond_0
    monitor-exit v2

    .line 598
    return-void

    .line 597
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 3
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 635
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 636
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 638
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 640
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/IccCardConstants$State;->isPinLocked()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 641
    invoke-virtual {v0}, Landroid/os/Registrant;->notifyRegistrant()V

    .line 643
    :cond_0
    monitor-exit v2

    .line 644
    return-void

    .line 643
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public registerForPersoLocked(Landroid/os/Handler;ILjava/lang/Object;)V
    .locals 6
    .param p1, "h"    # Landroid/os/Handler;
    .param p2, "what"    # I
    .param p3, "obj"    # Ljava/lang/Object;

    .prologue
    .line 612
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 613
    :try_start_0
    new-instance v0, Landroid/os/Registrant;

    invoke-direct {v0, p1, p2, p3}, Landroid/os/Registrant;-><init>(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 615
    .local v0, "r":Landroid/os/Registrant;
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v1, v0}, Landroid/os/RegistrantList;->add(Landroid/os/Registrant;)V

    .line 617
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getState()Lcom/android/internal/telephony/IccCardConstants$State;

    move-result-object v1

    sget-object v3, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne v1, v3, :cond_0

    .line 618
    new-instance v1, Landroid/os/AsyncResult;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;->ordinal()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct {v1, v3, v4, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    invoke-virtual {v0, v1}, Landroid/os/Registrant;->notifyRegistrant(Landroid/os/AsyncResult;)V

    .line 620
    :cond_0
    monitor-exit v2

    .line 621
    return-void

    .line 620
    .end local v0    # "r":Landroid/os/Registrant;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method protected registerUiccCardEvents()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 432
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    const/4 v1, 0x4

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCard;->registerForAbsent(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 433
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    .line 434
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, 0x6

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 435
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/4 v1, 0x5

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 436
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    const/16 v1, 0x9

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->registerForPersoLocked(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 438
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_2

    .line 439
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/16 v1, 0x8

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForImsiReady(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 440
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    const/4 v1, 0x7

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/telephony/uicc/IccRecords;->registerForRecordsLoaded(Landroid/os/Handler;ILjava/lang/Object;)V

    .line 442
    :cond_2
    return-void
.end method

.method protected setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;Z)V
    .locals 3
    .param p1, "newState"    # Lcom/android/internal/telephony/IccCardConstants$State;
    .param p2, "override"    # Z

    .prologue
    .line 506
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 507
    if-nez p2, :cond_0

    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    if-ne p1, v0, :cond_0

    .line 508
    monitor-exit v1

    .line 515
    :goto_0
    return-void

    .line 510
    :cond_0
    iput-object p1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    .line 511
    const-string v0, "gsm.sim.state"

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {v2}, Lcom/android/internal/telephony/IccCardConstants$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 512
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateIntentString(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mExternalState:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->getIccStateReason(Lcom/android/internal/telephony/IccCardConstants$State;)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v0, v2}, Lcom/android/internal/telephony/uicc/IccCardProxy;->broadcastIccStateChangedIntent(Ljava/lang/String;Ljava/lang/String;)V

    .line 514
    monitor-exit v1

    goto :goto_0

    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V
    .locals 6
    .param p1, "facility"    # Ljava/lang/String;
    .param p2, "lockState"    # Z
    .param p3, "password"    # Ljava/lang/String;
    .param p4, "serviceClass"    # I
    .param p5, "response"    # Landroid/os/Message;
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 892
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_0

    .line 893
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move v4, p4

    move-object v5, p5

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setFacilityLock(Ljava/lang/String;ZLjava/lang/String;ILandroid/os/Message;)V

    .line 895
    :cond_0
    return-void
.end method

.method public setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 813
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 814
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 815
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccFdnEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 822
    :cond_0
    monitor-exit v2

    .line 823
    :goto_0
    return-void

    .line 816
    :cond_1
    if-eqz p3, :cond_0

    .line 817
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 818
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 819
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 820
    monitor-exit v2

    goto :goto_0

    .line 822
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "enabled"    # Z
    .param p2, "password"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 799
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 800
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 801
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->setIccLockEnabled(ZLjava/lang/String;Landroid/os/Message;)V

    .line 808
    :cond_0
    monitor-exit v2

    .line 809
    :goto_0
    return-void

    .line 802
    :cond_1
    if-eqz p3, :cond_0

    .line 803
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 804
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 805
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 806
    monitor-exit v2

    goto :goto_0

    .line 808
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public setVoiceRadioTech(I)V
    .locals 3
    .param p1, "radioTech"    # I

    .prologue
    .line 146
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 148
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting radio tech "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 150
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 151
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    .line 155
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateQuietMode()V

    .line 156
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateActiveRecord()V

    .line 157
    monitor-exit v1

    .line 158
    return-void

    .line 153
    :cond_0
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    goto :goto_0

    .line 157
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public setVoiceRadioTechEx(I)V
    .locals 3
    .param p1, "radioTech"    # I

    .prologue
    .line 179
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 181
    :try_start_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Setting radio tech "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {p1}, Landroid/telephony/ServiceState;->rilRadioTechnologyToString(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 183
    invoke-static {p1}, Landroid/telephony/ServiceState;->isGsm(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 184
    const/4 v0, 0x1

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    .line 194
    :goto_0
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateQuietMode()V

    .line 195
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateActiveRecord()V

    .line 196
    monitor-exit v1

    .line 197
    return-void

    .line 185
    :cond_0
    invoke-static {p1}, Landroid/telephony/ServiceState;->isCdma(I)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 186
    const/4 v0, 0x2

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    goto :goto_0

    .line 196
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0

    .line 189
    :cond_1
    :try_start_1
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->guessRadioTech()I

    move-result v0

    iput v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    .line 191
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Radio tech is unknown. Guessed radio tech family is "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0
.end method

.method public supplyDepersonalization(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "type"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 711
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 712
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 713
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyDepersonalization(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 720
    :cond_0
    monitor-exit v2

    .line 721
    :goto_0
    return-void

    .line 714
    :cond_1
    if-eqz p3, :cond_0

    .line 715
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "CommandsInterface is not set."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 716
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 717
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 718
    monitor-exit v2

    goto :goto_0

    .line 720
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPin(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 655
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 656
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 657
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin(Ljava/lang/String;Landroid/os/Message;)V

    .line 664
    :cond_0
    monitor-exit v2

    .line 665
    :goto_0
    return-void

    .line 658
    :cond_1
    if-eqz p2, :cond_0

    .line 659
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 660
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 661
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 662
    monitor-exit v2

    goto :goto_0

    .line 664
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPin2(Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "pin2"    # Ljava/lang/String;
    .param p2, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 683
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 684
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 685
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPin2(Ljava/lang/String;Landroid/os/Message;)V

    .line 692
    :cond_0
    monitor-exit v2

    .line 693
    :goto_0
    return-void

    .line 686
    :cond_1
    if-eqz p2, :cond_0

    .line 687
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 688
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 689
    invoke-virtual {p2}, Landroid/os/Message;->sendToTarget()V

    .line 690
    monitor-exit v2

    goto :goto_0

    .line 692
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "puk"    # Ljava/lang/String;
    .param p2, "newPin"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 669
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 670
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 671
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 678
    :cond_0
    monitor-exit v2

    .line 679
    :goto_0
    return-void

    .line 672
    :cond_1
    if-eqz p3, :cond_0

    .line 673
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 674
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 675
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 676
    monitor-exit v2

    goto :goto_0

    .line 678
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V
    .locals 3
    .param p1, "puk2"    # Ljava/lang/String;
    .param p2, "newPin2"    # Ljava/lang/String;
    .param p3, "onComplete"    # Landroid/os/Message;

    .prologue
    .line 697
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v2

    .line 698
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v1, :cond_1

    .line 699
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1, p1, p2, p3}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->supplyPuk2(Ljava/lang/String;Ljava/lang/String;Landroid/os/Message;)V

    .line 706
    :cond_0
    monitor-exit v2

    .line 707
    :goto_0
    return-void

    .line 700
    :cond_1
    if-eqz p3, :cond_0

    .line 701
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "ICC card is absent."

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    .line 702
    .local v0, "e":Ljava/lang/Exception;
    invoke-static {p3}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;)Landroid/os/AsyncResult;

    move-result-object v1

    iput-object v0, v1, Landroid/os/AsyncResult;->exception:Ljava/lang/Throwable;

    .line 703
    invoke-virtual {p3}, Landroid/os/Message;->sendToTarget()V

    .line 704
    monitor-exit v2

    goto :goto_0

    .line 706
    .end local v0    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v1

    monitor-exit v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v1
.end method

.method public unregisterForAbsent(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 602
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 603
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mAbsentRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 604
    monitor-exit v1

    .line 605
    return-void

    .line 604
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForLocked(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 648
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 649
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPinLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 650
    monitor-exit v1

    .line 651
    return-void

    .line 650
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method public unregisterForPersoLocked(Landroid/os/Handler;)V
    .locals 2
    .param p1, "h"    # Landroid/os/Handler;

    .prologue
    .line 625
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v1

    .line 626
    :try_start_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPersoLockedRegistrants:Landroid/os/RegistrantList;

    invoke-virtual {v0, p1}, Landroid/os/RegistrantList;->remove(Landroid/os/Handler;)V

    .line 627
    monitor-exit v1

    .line 628
    return-void

    .line 627
    :catchall_0
    move-exception v0

    monitor-exit v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v0
.end method

.method protected unregisterUiccCardEvents()V
    .locals 1

    .prologue
    .line 445
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCard;->unregisterForAbsent(Landroid/os/Handler;)V

    .line 446
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForReady(Landroid/os/Handler;)V

    .line 447
    :cond_1
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForLocked(Landroid/os/Handler;)V

    .line 448
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-eqz v0, :cond_3

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->unregisterForPersoLocked(Landroid/os/Handler;)V

    .line 449
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_4

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForImsiReady(Landroid/os/Handler;)V

    .line 450
    :cond_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-eqz v0, :cond_5

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v0, p0}, Lcom/android/internal/telephony/uicc/IccRecords;->unregisterForRecordsLoaded(Landroid/os/Handler;)V

    .line 451
    :cond_5
    return-void
.end method

.method protected updateActiveRecord()V
    .locals 3

    .prologue
    .line 204
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "updateActiveRecord app type = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, "mIccRecords = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 207
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-nez v1, :cond_1

    .line 222
    :cond_0
    :goto_0
    return-void

    .line 211
    :cond_1
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_2

    .line 212
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCdmaSSM:Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;

    invoke-virtual {v1}, Lcom/android/internal/telephony/cdma/CdmaSubscriptionSourceManager;->getCdmaSubscriptionSource()I

    move-result v0

    .line 213
    .local v0, "newSubscriptionSource":I
    if-nez v0, :cond_0

    .line 215
    const-string v1, "Setting Ruim Record as active"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 216
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->recordsRequired()V

    goto :goto_0

    .line 218
    .end local v0    # "newSubscriptionSource":I
    :cond_2
    iget v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    const/4 v2, 0x1

    if-ne v1, v2, :cond_0

    .line 219
    const-string v1, "Setting SIM Record as active"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 220
    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccRecords;->recordsRequired()V

    goto :goto_0
.end method

.method protected updateExternalState()V
    .locals 2

    .prologue
    .line 385
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ABSENT:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_2

    .line 386
    :cond_0
    iget-boolean v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mRadioOn:Z

    if-eqz v0, :cond_1

    .line 387
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->ABSENT:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    .line 429
    :goto_0
    return-void

    .line 389
    :cond_1
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 394
    :cond_2
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCard;->getCardState()Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    move-result-object v0

    sget-object v1, Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;->CARDSTATE_ERROR:Lcom/android/internal/telephony/uicc/IccCardStatus$CardState;

    if-ne v0, v1, :cond_3

    .line 395
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->CARD_IO_ERROR:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 399
    :cond_3
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-nez v0, :cond_4

    .line 400
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->NOT_READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 404
    :cond_4
    sget-object v0, Lcom/android/internal/telephony/uicc/IccCardProxy$1;->$SwitchMap$com$android$internal$telephony$uicc$IccCardApplicationStatus$AppState:[I

    iget-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;

    move-result-object v1

    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$AppState;->ordinal()I

    move-result v1

    aget v0, v0, v1

    packed-switch v0, :pswitch_data_0

    goto :goto_0

    .line 406
    :pswitch_0
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 409
    :pswitch_1
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->HandleDetectedState()V

    goto :goto_0

    .line 412
    :pswitch_2
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PIN_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 415
    :pswitch_3
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PUK_REQUIRED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 418
    :pswitch_4
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->isPersoLocked()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 419
    iget-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    invoke-virtual {v0}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getPersoSubState()Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mPersoSubState:Lcom/android/internal/telephony/uicc/IccCardApplicationStatus$PersoSubState;

    .line 420
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->PERSO_LOCKED:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 422
    :cond_5
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->UNKNOWN:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 426
    :pswitch_5
    sget-object v0, Lcom/android/internal/telephony/IccCardConstants$State;->READY:Lcom/android/internal/telephony/IccCardConstants$State;

    invoke-direct {p0, v0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->setExternalState(Lcom/android/internal/telephony/IccCardConstants$State;)V

    goto :goto_0

    .line 404
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method

.method protected updateIccAvailability()V
    .locals 6
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_CODE:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 351
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mLock:Ljava/lang/Object;

    monitor-enter v5

    .line 352
    :try_start_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccController:Lcom/android/internal/telephony/uicc/UiccController;

    invoke-virtual {v4}, Lcom/android/internal/telephony/uicc/UiccController;->getUiccCard()Lcom/android/internal/telephony/uicc/UiccCard;

    move-result-object v2

    .line 353
    .local v2, "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    const/4 v1, 0x0

    .line 354
    .local v1, "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    const/4 v3, 0x0

    .line 355
    .local v3, "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    if-eqz v2, :cond_4

    .line 356
    iget v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mCurrentAppType:I

    invoke-virtual {v2, v4}, Lcom/android/internal/telephony/uicc/UiccCard;->getApplication(I)Lcom/android/internal/telephony/uicc/UiccCardApplication;

    move-result-object v1

    .line 357
    if-eqz v1, :cond_0

    .line 358
    invoke-virtual {v1}, Lcom/android/internal/telephony/uicc/UiccCardApplication;->getIccRecords()Lcom/android/internal/telephony/uicc/IccRecords;

    move-result-object v3

    .line 364
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    if-ne v4, v3, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    if-ne v4, v1, :cond_1

    iget-object v4, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    if-eq v4, v2, :cond_2

    .line 365
    :cond_1
    const-string v4, "Icc changed. Reregestering."

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    .line 366
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->unregisterUiccCardEvents()V

    .line 367
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccCard:Lcom/android/internal/telephony/uicc/UiccCard;

    .line 368
    iput-object v1, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mUiccApplication:Lcom/android/internal/telephony/uicc/UiccCardApplication;

    .line 369
    iput-object v3, p0, Lcom/android/internal/telephony/uicc/IccCardProxy;->mIccRecords:Lcom/android/internal/telephony/uicc/IccRecords;

    .line 370
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->registerUiccCardEvents()V

    .line 371
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateActiveRecord()V

    .line 373
    :cond_2
    invoke-direct {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateExternalStatePIN()Z

    move-result v0

    .line 374
    .local v0, "bupdate":Z
    if-eqz v0, :cond_3

    .line 375
    invoke-virtual {p0}, Lcom/android/internal/telephony/uicc/IccCardProxy;->updateExternalState()V

    .line 377
    :cond_3
    monitor-exit v5

    .line 378
    return-void

    .line 361
    .end local v0    # "bupdate":Z
    :cond_4
    const-string v4, "No card available"

    invoke-virtual {p0, v4}, Lcom/android/internal/telephony/uicc/IccCardProxy;->log(Ljava/lang/String;)V

    goto :goto_0

    .line 377
    .end local v1    # "newApp":Lcom/android/internal/telephony/uicc/UiccCardApplication;
    .end local v2    # "newCard":Lcom/android/internal/telephony/uicc/UiccCard;
    .end local v3    # "newRecords":Lcom/android/internal/telephony/uicc/IccRecords;
    :catchall_0
    move-exception v4

    monitor-exit v5
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw v4
.end method
