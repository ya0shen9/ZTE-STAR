.class public Lcom/android/internal/telephony/ZteImsSMSDispatcher;
.super Lcom/android/internal/telephony/ImsSMSDispatcher;
.source "ZteImsSMSDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZTE_RIL_IMS"


# instance fields
.field private zteCdmaSMSDispatcher:Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;

.field private zteGsmSMSDispatcher:Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 2
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/ImsSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V

    .line 29
    const-string v0, "ZTE_RIL_IMS"

    const-string v1, "ZteImsSMSDispatcher created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 30
    return-void
.end method


# virtual methods
.method protected initDispatchers(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/SmsUsageMonitor;)V
    .locals 5
    .parameter "phone"
    .parameter "storageMonitor"
    .parameter "usageMonitor"

    .prologue
    .line 35
    const-string v1, "ZTE_RIL_IMS"

    const-string v2, "ZteImsSMSDispatcher: initDispatchers()"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    new-instance v1, Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;

    invoke-direct {v1, p1, p3, p0}, Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ZteImsSMSDispatcher;->zteCdmaSMSDispatcher:Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;

    .line 37
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, p2, p1}, Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;)Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ZteImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    .line 39
    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v1, p0, Lcom/android/internal/telephony/ZteImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    check-cast v1, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;

    invoke-static {v2, p2, p1, v1}, Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;->makeInboundSmsHandler(Landroid/content/Context;Lcom/android/internal/telephony/SmsStorageMonitor;Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;)Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/ZteImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    .line 41
    new-instance v1, Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;

    iget-object v2, p0, Lcom/android/internal/telephony/ZteImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    invoke-direct {v1, p1, p3, p0, v2}, Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V

    iput-object v1, p0, Lcom/android/internal/telephony/ZteImsSMSDispatcher;->zteGsmSMSDispatcher:Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;

    .line 42
    new-instance v0, Ljava/lang/Thread;

    new-instance v1, Lcom/android/internal/telephony/SmsBroadcastUndelivered;

    invoke-virtual {p1}, Lcom/android/internal/telephony/PhoneBase;->getContext()Landroid/content/Context;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/ZteImsSMSDispatcher;->mGsmInboundSmsHandler:Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;

    iget-object v4, p0, Lcom/android/internal/telephony/ZteImsSMSDispatcher;->mCdmaInboundSmsHandler:Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;

    invoke-direct {v1, v2, v3, v4}, Lcom/android/internal/telephony/SmsBroadcastUndelivered;-><init>(Landroid/content/Context;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;Lcom/android/internal/telephony/cdma/CdmaInboundSmsHandler;)V

    invoke-direct {v0, v1}, Ljava/lang/Thread;-><init>(Ljava/lang/Runnable;)V

    .line 44
    .local v0, broadcastThread:Ljava/lang/Thread;
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 45
    iget-object v1, p0, Lcom/android/internal/telephony/ZteImsSMSDispatcher;->zteCdmaSMSDispatcher:Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;

    iput-object v1, p0, Lcom/android/internal/telephony/ZteImsSMSDispatcher;->mCdmaDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 46
    iget-object v1, p0, Lcom/android/internal/telephony/ZteImsSMSDispatcher;->zteGsmSMSDispatcher:Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;

    iput-object v1, p0, Lcom/android/internal/telephony/ZteImsSMSDispatcher;->mGsmDispatcher:Lcom/android/internal/telephony/SMSDispatcher;

    .line 47
    return-void
.end method

.method protected sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter
    .parameter
    .parameter
    .parameter "extraInfo"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/ArrayList",
            "<",
            "Ljava/lang/String;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/PendingIntent;",
            ">;",
            "Landroid/os/Bundle;",
            ")V"
        }
    .end annotation

    .prologue
    .line 52
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v0, "ZTE_RIL_IMS"

    const-string v1, "sendMultipartText() has extraInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    invoke-virtual {p0}, Lcom/android/internal/telephony/ZteImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 54
    iget-object v0, p0, Lcom/android/internal/telephony/ZteImsSMSDispatcher;->zteCdmaSMSDispatcher:Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    .line 60
    :goto_0
    return-void

    .line 57
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ZteImsSMSDispatcher;->zteGsmSMSDispatcher:Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;->sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLandroid/os/Bundle;)V
    .locals 2
    .parameter "destinationAddress"
    .parameter "scAddress"
    .parameter "message"
    .parameter "smsHeader"
    .parameter "encoding"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "lastPart"
    .parameter "extraInfo"

    .prologue
    .line 77
    const-string v0, "ZTE_RIL_IMS"

    const-string v1, "sendNewSubmitPdu() is not implemented for IMS."

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    return-void
.end method

.method protected sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 7
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "extraInfo"

    .prologue
    .line 64
    const-string v0, "ZTE_RIL_IMS"

    const-string v1, "sendText() has extraInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-virtual {p0}, Lcom/android/internal/telephony/ZteImsSMSDispatcher;->isCdmaMo()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 66
    iget-object v0, p0, Lcom/android/internal/telephony/ZteImsSMSDispatcher;->zteCdmaSMSDispatcher:Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    .line 72
    :goto_0
    return-void

    .line 69
    :cond_0
    iget-object v0, p0, Lcom/android/internal/telephony/ZteImsSMSDispatcher;->zteGsmSMSDispatcher:Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move-object v4, p4

    move-object v5, p5

    move-object v6, p6

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V

    goto :goto_0
.end method
