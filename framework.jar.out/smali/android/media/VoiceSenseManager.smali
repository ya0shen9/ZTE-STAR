.class public Landroid/media/VoiceSenseManager;
.super Ljava/lang/Object;
.source "VoiceSenseManager.java"


# static fields
.field public static final EXTRA_VOICESENSE_STATE:Ljava/lang/String; = "android.media.EXTRA_VOICESENSE_STATE"

.field private static TAG:Ljava/lang/String; = null

.field public static final VOICESENSE_STATE_CHANGED_ACTION:Ljava/lang/String; = "android.media.VOICESENSE_STATE_CHANGED"

.field public static final VOICESENSE_STATE_DISABLED:I = 0x1

.field public static final VOICESENSE_STATE_DISABLING:I = 0x0

.field public static final VOICESENSE_STATE_ENABLED:I = 0x3

.field public static final VOICESENSE_STATE_ENABLING:I = 0x2

.field public static final VOICESENSE_STATE_UNKNOWN:I = 0x4

.field private static mService:Landroid/os/IVoiceSenseService;


# instance fields
.field private final mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 39
    const-string v0, "VoiceSenseManager"

    sput-object v0, Landroid/media/VoiceSenseManager;->TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 103
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 104
    iput-object p1, p0, Landroid/media/VoiceSenseManager;->mContext:Landroid/content/Context;

    .line 105
    return-void
.end method

.method private static getService()Landroid/os/IVoiceSenseService;
    .locals 2

    .prologue
    .line 108
    sget-object v1, Landroid/media/VoiceSenseManager;->mService:Landroid/os/IVoiceSenseService;

    if-eqz v1, :cond_0

    .line 109
    sget-object v1, Landroid/media/VoiceSenseManager;->mService:Landroid/os/IVoiceSenseService;

    .line 113
    .local v0, b:Landroid/os/IBinder;
    :goto_0
    return-object v1

    .line 111
    .end local v0           #b:Landroid/os/IBinder;
    :cond_0
    const-string/jumbo v1, "voice_sense"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 112
    .restart local v0       #b:Landroid/os/IBinder;
    invoke-static {v0}, Landroid/os/IVoiceSenseService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/IVoiceSenseService;

    move-result-object v1

    sput-object v1, Landroid/media/VoiceSenseManager;->mService:Landroid/os/IVoiceSenseService;

    .line 113
    sget-object v1, Landroid/media/VoiceSenseManager;->mService:Landroid/os/IVoiceSenseService;

    goto :goto_0
.end method


# virtual methods
.method public getVoiceSenseState()I
    .locals 3

    .prologue
    .line 139
    invoke-static {}, Landroid/media/VoiceSenseManager;->getService()Landroid/os/IVoiceSenseService;

    move-result-object v1

    .line 141
    .local v1, service:Landroid/os/IVoiceSenseService;
    :try_start_0
    invoke-interface {v1}, Landroid/os/IVoiceSenseService;->getVoiceSenseState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 143
    :goto_0
    return v2

    .line 142
    :catch_0
    move-exception v0

    .line 143
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x4

    goto :goto_0
.end method

.method public isVoiceSenseEnabled()Z
    .locals 2

    .prologue
    .line 153
    invoke-virtual {p0}, Landroid/media/VoiceSenseManager;->getVoiceSenseState()I

    move-result v0

    const/4 v1, 0x3

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setVoiceSenseEnabled(Z)Z
    .locals 3
    .parameter "enabled"

    .prologue
    .line 123
    invoke-static {}, Landroid/media/VoiceSenseManager;->getService()Landroid/os/IVoiceSenseService;

    move-result-object v1

    .line 125
    .local v1, service:Landroid/os/IVoiceSenseService;
    :try_start_0
    invoke-interface {v1, p1}, Landroid/os/IVoiceSenseService;->setVoiceSenseEnabled(Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    .line 127
    :goto_0
    return v2

    .line 126
    :catch_0
    move-exception v0

    .line 127
    .local v0, e:Landroid/os/RemoteException;
    const/4 v2, 0x0

    goto :goto_0
.end method
