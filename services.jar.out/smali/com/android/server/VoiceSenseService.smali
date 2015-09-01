.class public Lcom/android/server/VoiceSenseService;
.super Landroid/os/IVoiceSenseService$Stub;
.source "VoiceSenseService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/VoiceSenseService$VoiseSenseObserver;,
        Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;,
        Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;,
        Lcom/android/server/VoiceSenseService$VoiceSenseEnablerThread;
    }
.end annotation


# static fields
.field protected static final DBG:Z = true

.field private static final QUICKSHUTDOWN_ACTION:Ljava/lang/String; = "zte.com.cn.action.quickshutdown"

.field private static final TAG:Ljava/lang/String; = "VoiceSense-Service"

.field private static final VOICEASSISTANT_INIT_FAILED_ACTION:Ljava/lang/String; = "VOICEASSISTANT_INIT_ERROR"

.field private static final VOICEASSISTANT_INIT_FAILED_REQUEST:I = 0x0

.field private static final VOICEASSISTANT_INIT_READY_ACTION:Ljava/lang/String; = "VOICEASSISTANT_INIT_READY"

.field private static final VOICEASSISTANT_SERVICE_CRASH_ACTION:Ljava/lang/String; = "com.cn.zte.voiceassistant.service.crash"

.field protected static final VOICEASSIT_INIT_WAIT_TIME:I = 0x1d4c0

.field private static final VOICESENSE_DISABLED:I = 0x0

.field private static final VOICESENSE_ENABLED:I = 0x1

.field private static final VOICE_WAKEUP_ENABLED_ACTION:Ljava/lang/String; = "android.server.VOICE_WAKEUP_ENABLED_ACTION"

.field private static final VOICE_WAKEUP_FAILED_ACTION:Ljava/lang/String; = "android.server.VOICE_WAKEUP_FAILED_ACTION"


# instance fields
.field private isAlarmSet:Z

.field private isBootCompleted:Z

.field private isRegisted:Z

.field private mAlarmManager:Landroid/app/AlarmManager;

.field private mContext:Landroid/content/Context;

.field private mHandler:Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;

.field private mIsVsOpen:Z

.field private final mReceiver:Landroid/content/BroadcastReceiver;

.field private final mReceiverWhileEnabling:Landroid/content/BroadcastReceiver;

.field private mVoiceAssistantReady:Z

.field private mVoiceAssitInitFailedIntent:Landroid/app/PendingIntent;

.field private mVoiceWakeupReady:Z

.field private final mVsState:Ljava/util/concurrent/atomic/AtomicInteger;

.field private mWorker:Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;

.field private vsObserver:Lcom/android/server/VoiceSenseService$VoiseSenseObserver;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .parameter "context"

    .prologue
    .line 169
    invoke-direct {p0}, Landroid/os/IVoiceSenseService$Stub;-><init>()V

    .line 61
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/VoiceSenseService;->mIsVsOpen:Z

    .line 74
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    iput-object v0, p0, Lcom/android/server/VoiceSenseService;->mVsState:Ljava/util/concurrent/atomic/AtomicInteger;

    .line 97
    new-instance v0, Lcom/android/server/VoiceSenseService$1;

    invoke-direct {v0, p0}, Lcom/android/server/VoiceSenseService$1;-><init>(Lcom/android/server/VoiceSenseService;)V

    iput-object v0, p0, Lcom/android/server/VoiceSenseService;->mReceiver:Landroid/content/BroadcastReceiver;

    .line 150
    new-instance v0, Lcom/android/server/VoiceSenseService$2;

    invoke-direct {v0, p0}, Lcom/android/server/VoiceSenseService$2;-><init>(Lcom/android/server/VoiceSenseService;)V

    iput-object v0, p0, Lcom/android/server/VoiceSenseService;->mReceiverWhileEnabling:Landroid/content/BroadcastReceiver;

    .line 170
    iput-object p1, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    .line 171
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->registerForBroadcasts()V

    .line 172
    new-instance v0, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;

    const-string v1, "VoiceSenseServiceWorker"

    invoke-direct {v0, p0, v1}, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;-><init>(Lcom/android/server/VoiceSenseService;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/android/server/VoiceSenseService;->mWorker:Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;

    .line 173
    iget-object v0, p0, Lcom/android/server/VoiceSenseService;->mWorker:Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;

    invoke-virtual {v0}, Lcom/android/server/VoiceSenseService$VoiceSenseWorkerThread;->start()V

    .line 174
    const-string v0, "VoiceSense-Service"

    const-string v1, "#### Spawned worker thread ####"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 182
    return-void
.end method

.method static native abortWDBJni()V
.end method

.method static synthetic access$000(Ljava/lang/String;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-static {p0}, Lcom/android/server/VoiceSenseService;->log(Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$100(Lcom/android/server/VoiceSenseService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->isVoiceSenseToggled()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1000(Lcom/android/server/VoiceSenseService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->notifyVoiceWakeupEnabled()V

    return-void
.end method

.method static synthetic access$1100(Lcom/android/server/VoiceSenseService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->isAudioActive()Z

    move-result v0

    return v0
.end method

.method static synthetic access$1200(Lcom/android/server/VoiceSenseService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->notifyVoiceWakeupFailed()V

    return-void
.end method

.method static synthetic access$1302(Lcom/android/server/VoiceSenseService;Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;)Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/server/VoiceSenseService;->mHandler:Lcom/android/server/VoiceSenseService$VoiceSenseWorkerHandler;

    return-object p1
.end method

.method static synthetic access$1502(Lcom/android/server/VoiceSenseService;Lcom/android/server/VoiceSenseService$VoiseSenseObserver;)Lcom/android/server/VoiceSenseService$VoiseSenseObserver;
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-object p1, p0, Lcom/android/server/VoiceSenseService;->vsObserver:Lcom/android/server/VoiceSenseService$VoiseSenseObserver;

    return-object p1
.end method

.method static synthetic access$1600(Lcom/android/server/VoiceSenseService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/server/VoiceSenseService;->mIsVsOpen:Z

    return v0
.end method

.method static synthetic access$1602(Lcom/android/server/VoiceSenseService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/server/VoiceSenseService;->mIsVsOpen:Z

    return p1
.end method

.method static synthetic access$200(Lcom/android/server/VoiceSenseService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->enableVoiceAssit()V

    return-void
.end method

.method static synthetic access$300(Lcom/android/server/VoiceSenseService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->disableVoiceSense()V

    return-void
.end method

.method static synthetic access$402(Lcom/android/server/VoiceSenseService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/server/VoiceSenseService;->isBootCompleted:Z

    return p1
.end method

.method static synthetic access$500(Lcom/android/server/VoiceSenseService;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 55
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->enableVoiceSense()V

    return-void
.end method

.method static synthetic access$600(Lcom/android/server/VoiceSenseService;I)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    invoke-direct {p0, p1}, Lcom/android/server/VoiceSenseService;->setVoiceStateState(I)V

    return-void
.end method

.method static synthetic access$700(Lcom/android/server/VoiceSenseService;)Z
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-boolean v0, p0, Lcom/android/server/VoiceSenseService;->isRegisted:Z

    return v0
.end method

.method static synthetic access$702(Lcom/android/server/VoiceSenseService;Z)Z
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 55
    iput-boolean p1, p0, Lcom/android/server/VoiceSenseService;->isRegisted:Z

    return p1
.end method

.method static synthetic access$800(Lcom/android/server/VoiceSenseService;)Landroid/content/BroadcastReceiver;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/VoiceSenseService;->mReceiverWhileEnabling:Landroid/content/BroadcastReceiver;

    return-object v0
.end method

.method static synthetic access$900(Lcom/android/server/VoiceSenseService;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 55
    iget-object v0, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method private disableVoiceAssit()V
    .locals 2

    .prologue
    .line 306
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 307
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.action.SETTINGS_SWITCH_OFF"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 308
    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 309
    return-void
.end method

.method private disableVoiceSense()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 257
    invoke-direct {p0, v2}, Lcom/android/server/VoiceSenseService;->setVoiceStateState(I)V

    .line 260
    iget-boolean v0, p0, Lcom/android/server/VoiceSenseService;->isRegisted:Z

    if-eqz v0, :cond_0

    .line 261
    iget-object v0, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mReceiverWhileEnabling:Landroid/content/BroadcastReceiver;

    invoke-virtual {v0, v1}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 262
    iput-boolean v2, p0, Lcom/android/server/VoiceSenseService;->isRegisted:Z

    .line 268
    :cond_0
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->disableVoiceWakeup()V

    .line 270
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/server/VoiceSenseService;->setVoiceStateState(I)V

    .line 271
    return-void
.end method

.method private disableVoiceWakeup()V
    .locals 2

    .prologue
    .line 295
    const-string v0, "persist.sys.voicesence"

    const-string v1, "0"

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 296
    const-string v0, "voice_sense=off"

    invoke-static {v0}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 297
    return-void
.end method

.method private enableVoiceAssit()V
    .locals 2

    .prologue
    .line 300
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 301
    .local v0, i:Landroid/content/Intent;
    const-string v1, "android.intent.action.SETTINGS_SWITCH_ON"

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    .line 302
    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 303
    return-void
.end method

.method private enableVoiceSense()V
    .locals 1

    .prologue
    .line 247
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lcom/android/server/VoiceSenseService;->setVoiceStateState(I)V

    .line 248
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->registerForBroadcastsWhileEnabling()V

    .line 249
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->enableVoiceWakeup()V

    .line 254
    return-void
.end method

.method private enableVoiceWakeup()V
    .locals 3

    .prologue
    .line 282
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->isAudioActive()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->notifyVoiceWakeupEnabled()V

    .line 288
    :goto_0
    iget-boolean v1, p0, Lcom/android/server/VoiceSenseService;->isBootCompleted:Z

    if-nez v1, :cond_0

    .line 289
    const-string v1, "persist.sys.voicesence"

    const-string v2, "1"

    invoke-static {v1, v2}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 290
    :cond_0
    const-string v1, "voice_sense=on"

    invoke-static {v1}, Landroid/media/AudioSystem;->setParameters(Ljava/lang/String;)I

    .line 292
    return-void

    .line 285
    :cond_1
    new-instance v0, Lcom/android/server/VoiceSenseService$VoiceSenseEnablerThread;

    const-string v1, "VoiceSenseEnablerThread"

    invoke-direct {v0, p0, v1}, Lcom/android/server/VoiceSenseService$VoiceSenseEnablerThread;-><init>(Lcom/android/server/VoiceSenseService;Ljava/lang/String;)V

    .line 286
    .local v0, enabler:Lcom/android/server/VoiceSenseService$VoiceSenseEnablerThread;
    invoke-virtual {v0}, Lcom/android/server/VoiceSenseService$VoiceSenseEnablerThread;->start()V

    goto :goto_0
.end method

.method static native getKeywordJni(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static native getKeywordRDBJni(Ljava/lang/String;)I
.end method

.method private getPersistedVoiceSenseState()I
    .locals 4

    .prologue
    const/4 v2, 0x0

    .line 333
    iget-object v3, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 335
    .local v0, cr:Landroid/content/ContentResolver;
    :try_start_0
    const-string v3, "zte_voice_switch"

    invoke-static {v0, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 338
    :goto_0
    return v2

    .line 336
    :catch_0
    move-exception v1

    .line 337
    .local v1, e:Landroid/provider/Settings$SettingNotFoundException;
    const-string v3, "zte_voice_switch"

    invoke-static {v0, v3, v2}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_0
.end method

.method static native getValueJni(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private isAudioActive()Z
    .locals 7

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 365
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    invoke-static {}, Landroid/media/AudioSystem;->getNumStreamTypes()I

    move-result v5

    if-ge v1, v5, :cond_2

    .line 366
    invoke-static {v1, v4}, Landroid/media/AudioSystem;->isStreamActive(II)Z

    move-result v5

    if-eqz v5, :cond_1

    .line 375
    :cond_0
    :goto_1
    return v3

    .line 367
    :cond_1
    invoke-static {v1, v4}, Landroid/media/AudioSystem;->isStreamActiveRemotely(II)Z

    move-result v5

    if-nez v5, :cond_0

    .line 365
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 369
    :cond_2
    const/4 v2, 0x1

    .local v2, j:I
    :goto_2
    invoke-static {}, Landroid/media/MediaRecorder;->getAudioSourceMax()I

    move-result v5

    if-ge v2, v5, :cond_3

    .line 370
    invoke-static {v2}, Landroid/media/AudioSystem;->isSourceActive(I)Z

    move-result v5

    if-nez v5, :cond_0

    .line 369
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 372
    :cond_3
    iget-object v5, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    const-string v6, "audio"

    invoke-virtual {v5, v6}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    .line 373
    .local v0, audioManager:Landroid/media/AudioManager;
    invoke-virtual {v0}, Landroid/media/AudioManager;->getMode()I

    move-result v5

    if-nez v5, :cond_0

    move v3, v4

    .line 375
    goto :goto_1
.end method

.method private isVoiceSenseToggled()Z
    .locals 2

    .prologue
    const/4 v0, 0x1

    .line 343
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->getPersistedVoiceSenseState()I

    move-result v1

    if-ne v1, v0, :cond_0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private static log(Ljava/lang/String;)V
    .locals 1
    .parameter "s"

    .prologue
    .line 379
    const-string v0, "VoiceSense-Service"

    invoke-static {v0, p0}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return-void
.end method

.method private notifyVoiceWakeupEnabled()V
    .locals 2

    .prologue
    .line 419
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.server.VOICE_WAKEUP_ENABLED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 420
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 421
    return-void
.end method

.method private notifyVoiceWakeupFailed()V
    .locals 2

    .prologue
    .line 424
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.server.VOICE_WAKEUP_FAILED_ACTION"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 425
    .local v0, intent:Landroid/content/Intent;
    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v1, v0}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 426
    return-void
.end method

.method private persistVoiceSenseState(I)V
    .locals 2
    .parameter "state"

    .prologue
    .line 327
    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 329
    .local v0, cr:Landroid/content/ContentResolver;
    const-string v1, "zte_voice_switch"

    invoke-static {v0, v1, p1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 330
    return-void
.end method

.method static native readSysfsJni(Ljava/lang/String;)Ljava/lang/String;
.end method

.method private registerForBroadcasts()V
    .locals 3

    .prologue
    .line 347
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 348
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.intent.action.BOOT_COMPLETED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 349
    const-string v1, "com.cn.zte.voiceassistant.service.crash"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 350
    const-string v1, "zte.com.cn.action.quickshutdown"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 351
    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/VoiceSenseService;->mReceiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 352
    return-void
.end method

.method private registerForBroadcastsWhileEnabling()V
    .locals 3

    .prologue
    .line 355
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 356
    .local v0, intentFilter:Landroid/content/IntentFilter;
    const-string v1, "android.server.VOICE_WAKEUP_ENABLED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 358
    const-string v1, "android.server.VOICE_WAKEUP_FAILED_ACTION"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 360
    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/VoiceSenseService;->mReceiverWhileEnabling:Landroid/content/BroadcastReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 361
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/VoiceSenseService;->isRegisted:Z

    .line 362
    return-void
.end method

.method static native runSysCmdJni(Ljava/lang/String;)I
.end method

.method static native setKeywordJni(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method static native setKeywordWDBJni(Ljava/lang/String;I)I
.end method

.method static native setKeywordsWDBJni([Ljava/lang/String;[II)I
.end method

.method static native setValueJni(Ljava/lang/String;Ljava/lang/String;)I
.end method

.method private setVoiceAssitInitAlarm()V
    .locals 7

    .prologue
    .line 274
    const v0, 0x1d4c0

    .line 275
    .local v0, triggerTime:I
    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mAlarmManager:Landroid/app/AlarmManager;

    const/4 v2, 0x0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    int-to-long v5, v0

    add-long/2addr v3, v5

    iget-object v5, p0, Lcom/android/server/VoiceSenseService;->mVoiceAssitInitFailedIntent:Landroid/app/PendingIntent;

    invoke-virtual {v1, v2, v3, v4, v5}, Landroid/app/AlarmManager;->set(IJLandroid/app/PendingIntent;)V

    .line 278
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/VoiceSenseService;->isAlarmSet:Z

    .line 279
    return-void
.end method

.method private setVoiceStateState(I)V
    .locals 3
    .parameter "vsState"

    .prologue
    .line 316
    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mVsState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v1, p1}, Ljava/util/concurrent/atomic/AtomicInteger;->set(I)V

    .line 318
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "setVoiceStateState: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Lcom/android/server/VoiceSenseService;->log(Ljava/lang/String;)V

    .line 320
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.media.VOICESENSE_STATE_CHANGED"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 321
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x400

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 322
    const-string v1, "android.media.EXTRA_VOICESENSE_STATE"

    invoke-virtual {v0, v1, p1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 323
    iget-object v1, p0, Lcom/android/server/VoiceSenseService;->mContext:Landroid/content/Context;

    sget-object v2, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendStickyBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 324
    return-void
.end method

.method static native writeSysfsJni(Ljava/lang/String;Ljava/lang/String;I)I
.end method


# virtual methods
.method public abortWDB()V
    .locals 0

    .prologue
    .line 204
    invoke-static {}, Lcom/android/server/VoiceSenseService;->abortWDBJni()V

    .line 205
    return-void
.end method

.method public getKeyword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "sysfs"
    .parameter "file"

    .prologue
    .line 217
    invoke-static {p1, p2}, Lcom/android/server/VoiceSenseService;->getKeywordJni(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getKeywordRDB(Ljava/lang/String;)I
    .locals 1
    .parameter "file"

    .prologue
    .line 208
    invoke-static {p1}, Lcom/android/server/VoiceSenseService;->getKeywordRDBJni(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getValue(Ljava/lang/String;)Ljava/lang/String;
    .locals 3
    .parameter "id"

    .prologue
    .line 190
    const-string v0, "VoiceSense-Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### getValue ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ####"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 191
    invoke-static {p1}, Lcom/android/server/VoiceSenseService;->getValueJni(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVoiceSenseState()I
    .locals 1

    .prologue
    .line 312
    iget-object v0, p0, Lcom/android/server/VoiceSenseService;->mVsState:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v0}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v0

    return v0
.end method

.method public readSysfs(Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "sysfs"

    .prologue
    .line 229
    invoke-static {p1}, Lcom/android/server/VoiceSenseService;->readSysfsJni(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public runSysCmd(Ljava/lang/String;)I
    .locals 1
    .parameter "cmd"

    .prologue
    .line 221
    invoke-static {p1}, Lcom/android/server/VoiceSenseService;->runSysCmdJni(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setKeyword(Ljava/lang/String;Ljava/lang/String;)I
    .locals 1
    .parameter "sysfs"
    .parameter "file"

    .prologue
    .line 213
    invoke-static {p1, p2}, Lcom/android/server/VoiceSenseService;->setKeywordJni(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public setKeywordWDB(Ljava/lang/String;I)I
    .locals 1
    .parameter "file"
    .parameter "keyword_id"

    .prologue
    .line 196
    invoke-static {p1, p2}, Lcom/android/server/VoiceSenseService;->setKeywordWDBJni(Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public setKeywordsWDB([Ljava/lang/String;[II)I
    .locals 1
    .parameter "file"
    .parameter "ids"
    .parameter "noOfKw"

    .prologue
    .line 200
    invoke-static {p1, p2, p3}, Lcom/android/server/VoiceSenseService;->setKeywordsWDBJni([Ljava/lang/String;[II)I

    move-result v0

    return v0
.end method

.method public setValue(Ljava/lang/String;Ljava/lang/String;)I
    .locals 3
    .parameter "id"
    .parameter "val"

    .prologue
    .line 185
    const-string v0, "VoiceSense-Service"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "#### setValue ==> "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " ####"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 186
    invoke-static {p1, p2}, Lcom/android/server/VoiceSenseService;->setValueJni(Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public declared-synchronized setVoiceSenseEnabled(Z)Z
    .locals 4
    .parameter "enable"

    .prologue
    const/4 v3, 0x1

    .line 234
    monitor-enter p0

    :try_start_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 235
    .local v0, ident:J
    if-eqz p1, :cond_0

    .line 236
    const/4 v2, 0x1

    invoke-direct {p0, v2}, Lcom/android/server/VoiceSenseService;->persistVoiceSenseState(I)V

    .line 237
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->enableVoiceSense()V

    .line 242
    :goto_0
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 243
    monitor-exit p0

    return v3

    .line 239
    :cond_0
    const/4 v2, 0x0

    :try_start_1
    invoke-direct {p0, v2}, Lcom/android/server/VoiceSenseService;->persistVoiceSenseState(I)V

    .line 240
    invoke-direct {p0}, Lcom/android/server/VoiceSenseService;->disableVoiceSense()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 234
    .end local v0           #ident:J
    :catchall_0
    move-exception v2

    monitor-exit p0

    throw v2
.end method

.method public writeSysfs(Ljava/lang/String;Ljava/lang/String;I)I
    .locals 1
    .parameter "sysfs"
    .parameter "value"
    .parameter "size"

    .prologue
    .line 225
    invoke-static {p1, p2, p3}, Lcom/android/server/VoiceSenseService;->writeSysfsJni(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method
