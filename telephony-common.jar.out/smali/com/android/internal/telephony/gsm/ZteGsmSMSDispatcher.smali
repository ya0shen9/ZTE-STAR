.class public Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;
.super Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;
.source "ZteGsmSMSDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZTE_GSM"


# direct methods
.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V
    .locals 2
    .parameter "phone"
    .parameter "usageMonitor"
    .parameter "imsSMSDispatcher"
    .parameter "gsmInboundSmsHandler"

    .prologue
    .line 29
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/gsm/GsmSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;Lcom/android/internal/telephony/gsm/GsmInboundSmsHandler;)V

    .line 30
    const-string v0, "ZTE_GSM"

    const-string v1, "ZteGsmSMSDispatcher created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    return-void
.end method


# virtual methods
.method public sendMultipartText(Ljava/lang/String;Ljava/lang/String;Ljava/util/ArrayList;Ljava/util/ArrayList;Ljava/util/ArrayList;Landroid/os/Bundle;)V
    .locals 17
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
    .line 64
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v1, "ZTE_GSM"

    const-string v2, "sendMultipartText() has extraInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    invoke-static {}, Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;->getNextConcatenatedRef()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    move/from16 v16, v0

    .line 66
    .local v16, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 67
    .local v15, msgCount:I
    const/4 v6, 0x0

    .line 69
    .local v6, encoding:I
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;->mRemainingMessages:I

    .line 71
    new-array v13, v15, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 72
    .local v13, encodingForParts:[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v15, :cond_2

    .line 73
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v12

    .line 74
    .local v12, details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v1, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v6, v1, :cond_1

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    if-ne v6, v1, :cond_1

    .line 77
    :cond_0
    iget v6, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 79
    :cond_1
    aput-object v12, v13, v14

    .line 72
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 82
    .end local v12           #details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_2
    const/4 v14, 0x0

    :goto_1
    if-ge v14, v15, :cond_7

    .line 83
    new-instance v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 84
    .local v11, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v16

    iput v0, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 85
    add-int/lit8 v1, v14, 0x1

    iput v1, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 86
    iput v15, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 93
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 94
    new-instance v5, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 95
    .local v5, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v11, v5, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 98
    const/4 v1, 0x1

    if-ne v6, v1, :cond_3

    .line 99
    aget-object v1, v13, v14

    iget v1, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v1, v5, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 100
    aget-object v1, v13, v14

    iget v1, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v1, v5, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 103
    :cond_3
    const/4 v7, 0x0

    .line 104
    .local v7, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v14, :cond_4

    .line 105
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #sentIntent:Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 108
    .restart local v7       #sentIntent:Landroid/app/PendingIntent;
    :cond_4
    const/4 v8, 0x0

    .line 109
    .local v8, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v14, :cond_5

    .line 110
    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 113
    .restart local v8       #deliveryIntent:Landroid/app/PendingIntent;
    :cond_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    add-int/lit8 v1, v15, -0x1

    if-ne v14, v1, :cond_6

    const/4 v9, 0x1

    :goto_2
    move-object/from16 v1, p0

    move-object/from16 v2, p1

    move-object/from16 v3, p2

    move-object/from16 v10, p6

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;->sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLandroid/os/Bundle;)V

    .line 82
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 113
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 116
    .end local v5           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v7           #sentIntent:Landroid/app/PendingIntent;
    .end local v8           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v11           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_7
    return-void
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLandroid/os/Bundle;)V
    .locals 19
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
    .line 121
    const-string v5, "ZTE_GSM"

    const-string v6, "sendNewSubmitPdu() has extraInfo"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 122
    if-nez p9, :cond_0

    .line 124
    const-string v5, "ZTE_GSM"

    const-string v6, "extraInfo is null"

    invoke-static {v5, v6}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/4 v14, -0x1

    const/4 v15, 0x0

    move-object/from16 v5, p0

    move-object/from16 v6, p1

    move-object/from16 v7, p2

    move-object/from16 v8, p3

    move-object/from16 v9, p4

    move/from16 v10, p5

    move-object/from16 v11, p6

    move-object/from16 v12, p7

    move/from16 v13, p8

    invoke-virtual/range {v5 .. v15}, Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;->sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZIZ)V

    .line 143
    :goto_0
    return-void

    .line 128
    :cond_0
    if-eqz p7, :cond_1

    const/4 v8, 0x1

    :goto_1
    invoke-static/range {p4 .. p4}, Lcom/android/internal/telephony/SmsHeader;->toByteArray(Lcom/android/internal/telephony/SmsHeader;)[B

    move-result-object v9

    move-object/from16 v0, p4

    iget v11, v0, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    move-object/from16 v0, p4

    iget v12, v0, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    move-object/from16 v5, p2

    move-object/from16 v6, p1

    move-object/from16 v7, p3

    move/from16 v10, p5

    move-object/from16 v13, p9

    invoke-static/range {v5 .. v13}, Lcom/android/internal/telephony/gsm/ZteSmsMessage;->getSubmitPduExtraInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Z[BIIILandroid/os/Bundle;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v17

    .line 131
    .local v17, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v17, :cond_2

    .line 133
    move-object/from16 v0, p0

    move-object/from16 v1, p1

    move-object/from16 v2, p2

    move-object/from16 v3, p3

    move-object/from16 v4, v17

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v16

    .line 135
    .local v16, map:Ljava/util/HashMap;
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v5

    move-object/from16 v0, p0

    move-object/from16 v1, v16

    move-object/from16 v2, p6

    move-object/from16 v3, p7

    invoke-virtual {v0, v1, v2, v3, v5}, Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v18

    .line 137
    .local v18, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 128
    .end local v16           #map:Ljava/util/HashMap;
    .end local v17           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v18           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const/4 v8, 0x0

    goto :goto_1

    .line 139
    .restart local v17       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const-string v5, "ZTE_GSM"

    const-string v6, "GsmSMSDispatcher.sendNewSubmitPdu(): getSubmitPdu() returned null"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 13
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "extraInfo"

    .prologue
    .line 35
    const-string v2, "ZTE_GSM"

    const-string v3, "sendText() has extraInfo"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 37
    if-nez p6, :cond_0

    .line 39
    const-string v2, "ZTE_GSM"

    const-string v3, "extraInfo is null"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 40
    const/4 v8, -0x1

    const/4 v9, 0x0

    move-object v2, p0

    move-object v3, p1

    move-object v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    invoke-virtual/range {v2 .. v9}, Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;->sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;IZ)V

    .line 59
    :goto_0
    return-void

    .line 44
    :cond_0
    if-eqz p5, :cond_1

    const/4 v2, 0x1

    :goto_1
    move-object/from16 v0, p3

    move-object/from16 v1, p6

    invoke-static {p2, p1, v0, v2, v1}, Lcom/android/internal/telephony/gsm/ZteSmsMessage;->getSubmitPduExtraInfo(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLandroid/os/Bundle;)Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;

    move-result-object v11

    .line 46
    .local v11, pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    if-eqz v11, :cond_2

    .line 48
    move-object/from16 v0, p3

    invoke-virtual {p0, p1, p2, v0, v11}, Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v10

    .line 50
    .local v10, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v2

    move-object/from16 v0, p4

    move-object/from16 v1, p5

    invoke-virtual {p0, v10, v0, v1, v2}, Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v12

    .line 52
    .local v12, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v12}, Lcom/android/internal/telephony/gsm/ZteGsmSMSDispatcher;->sendRawPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    goto :goto_0

    .line 44
    .end local v10           #map:Ljava/util/HashMap;
    .end local v11           #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    .end local v12           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_1
    const/4 v2, 0x0

    goto :goto_1

    .line 56
    .restart local v11       #pdu:Lcom/android/internal/telephony/gsm/SmsMessage$SubmitPdu;
    :cond_2
    const-string v2, "ZTE_GSM"

    const-string v3, "GsmSMSDispatcher.sendText(): getSubmitPdu() returned null"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
