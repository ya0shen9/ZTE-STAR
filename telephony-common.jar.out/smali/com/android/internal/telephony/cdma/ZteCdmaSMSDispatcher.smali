.class public Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;
.super Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;
.source "ZteCdmaSMSDispatcher.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ZTE_CDMA"

.field private static mIndex:I

.field private static mTeleserviceId:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 29
    sput v0, Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;->mTeleserviceId:I

    .line 30
    sput v0, Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;->mIndex:I

    return-void
.end method

.method public constructor <init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V
    .locals 2
    .parameter "phone"
    .parameter "usageMonitor"
    .parameter "imsSMSDispatcher"

    .prologue
    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/android/internal/telephony/cdma/CdmaSMSDispatcher;-><init>(Lcom/android/internal/telephony/PhoneBase;Lcom/android/internal/telephony/SmsUsageMonitor;Lcom/android/internal/telephony/ImsSMSDispatcher;)V

    .line 35
    const-string v0, "ZTE_CDMA"

    const-string v1, "ZteCdmaSMSDispatcher created"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 36
    return-void
.end method

.method public static getIndex()I
    .locals 1

    .prologue
    .line 203
    sget v0, Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;->mIndex:I

    return v0
.end method

.method public static getPdu([BII)[B
    .locals 13
    .parameter "pdu"
    .parameter "referenceNumber"
    .parameter "index"

    .prologue
    .line 140
    const/4 v8, 0x0

    .line 141
    .local v8, subParamID:B
    const/4 v9, 0x0

    .line 142
    .local v9, subParamLen:I
    const/4 v3, 0x0

    .line 143
    .local v3, msgID:I
    const/4 v4, 0x0

    .line 144
    .local v4, msgTemp:I
    const/4 v2, 0x0

    .line 145
    .local v2, msgHeadID:I
    const/4 v6, 0x0

    .line 146
    .local v6, numField:I
    const/4 v7, 0x0

    .line 149
    .local v7, push_pdu:[B
    const v10, 0xfdea

    sget v11, Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;->mTeleserviceId:I

    if-ne v10, v11, :cond_5

    .line 150
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .local v1, index:I
    aget-byte v8, p0, p2

    .line 151
    if-eqz v8, :cond_0

    .line 152
    const-string v10, "ZTE_CDMA"

    const-string v11, "WAP SMS SUBPARAMETER_ID failed!."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 153
    const/4 v10, 0x0

    move p2, v1

    .line 198
    .end local v1           #index:I
    .restart local p2
    :goto_0
    return-object v10

    .line 156
    .end local p2
    .restart local v1       #index:I
    :cond_0
    add-int/lit8 p2, v1, 0x1

    .end local v1           #index:I
    .restart local p2
    aget-byte v9, p0, v1

    .line 157
    const/4 v10, 0x3

    if-eq v9, v10, :cond_1

    .line 158
    const-string v10, "ZTE_CDMA"

    const-string v11, "WAP SUBPARAM_LEN failed!."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/4 v10, 0x0

    goto :goto_0

    .line 162
    :cond_1
    aget-byte v10, p0, p2

    and-int/lit16 v5, v10, 0xf0

    .line 163
    .local v5, msgType:I
    shr-int/lit8 v5, v5, 0x4

    .line 164
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #index:I
    aget-byte v10, p0, p2

    and-int/lit8 v3, v10, 0xf

    .line 165
    shl-int/lit8 v10, v3, 0xc

    const v11, 0xf000

    and-int v3, v10, v11

    .line 166
    add-int/lit8 p2, v1, 0x1

    .end local v1           #index:I
    .restart local p2
    aget-byte v4, p0, v1

    .line 167
    shl-int/lit8 v10, v4, 0x4

    and-int/lit16 v4, v10, 0xff0

    .line 168
    or-int/2addr v3, v4

    .line 169
    aget-byte v10, p0, p2

    and-int/lit16 v4, v10, 0xf0

    .line 170
    shr-int/lit8 v10, v4, 0x4

    and-int/lit8 v10, v10, 0xf

    or-int/2addr v3, v10

    .line 171
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #index:I
    aget-byte v10, p0, p2

    and-int/lit8 v2, v10, 0x4

    .line 172
    add-int/lit8 p2, v1, 0x1

    .end local v1           #index:I
    .restart local p2
    aget-byte v8, p0, v1

    .line 173
    const/4 v10, 0x1

    if-eq v8, v10, :cond_2

    .line 174
    const-string v10, "ZTE_CDMA"

    const-string v11, "WAP SMS SUBPARAMETER_ID failed!."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 175
    const/4 v10, 0x0

    goto :goto_0

    .line 178
    :cond_2
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #index:I
    aget-byte v10, p0, p2

    and-int/lit16 v9, v10, 0xff

    .line 179
    aget-byte v10, p0, v1

    and-int/lit16 v10, v10, 0xf8

    shr-int/lit8 v10, v10, 0x3

    if-eqz v10, :cond_3

    .line 180
    const-string v10, "ZTE_CDMA"

    const-string v11, "WAP SMS MESSAGE_ENCODING failed!."

    invoke-static {v10, v11}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    const/4 v10, 0x0

    move p2, v1

    .end local v1           #index:I
    .restart local p2
    goto :goto_0

    .line 184
    .end local p2
    .restart local v1       #index:I
    :cond_3
    new-array v7, v9, [B

    .line 185
    const/4 v0, 0x0

    .local v0, i:I
    move p2, v1

    .end local v1           #index:I
    .restart local p2
    :goto_1
    add-int/lit8 v10, v9, -0x1

    if-ge v0, v10, :cond_4

    .line 186
    aget-byte v10, p0, p2

    and-int/lit8 v10, v10, 0x7

    shl-int/lit8 v10, v10, 0x5

    and-int/lit16 v10, v10, 0xe0

    add-int/lit8 v11, p2, 0x1

    aget-byte v11, p0, v11

    and-int/lit16 v11, v11, 0xf8

    shr-int/lit8 v11, v11, 0x3

    and-int/lit8 v11, v11, 0x1f

    or-int/2addr v10, v11

    int-to-byte v10, v10

    aput-byte v10, v7, v0

    .line 187
    add-int/lit8 p2, p2, 0x1

    .line 185
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 189
    :cond_4
    const/4 p2, 0x0

    .line 190
    add-int/lit8 v1, p2, 0x1

    .end local p2
    .restart local v1       #index:I
    aget-byte v10, v7, p2

    and-int/lit16 v6, v10, 0xff

    move p2, v1

    .line 197
    .end local v0           #i:I
    .end local v1           #index:I
    .end local v5           #msgType:I
    .restart local p2
    :goto_2
    sput p2, Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;->mIndex:I

    move-object v10, v7

    .line 198
    goto/16 :goto_0

    .line 192
    :cond_5
    array-length v10, p0

    new-array v7, v10, [B

    .line 193
    const/4 v10, 0x0

    const/4 v11, 0x0

    array-length v12, p0

    invoke-static {p0, v10, v7, v11, v12}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 194
    const/4 p2, 0x0

    .line 195
    move v3, p1

    goto :goto_2
.end method

.method public static setTeleservice(I)V
    .locals 0
    .parameter "teleService"

    .prologue
    .line 137
    sput p0, Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;->mTeleserviceId:I

    .line 138
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
    .line 53
    .local p3, parts:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Ljava/lang/String;>;"
    .local p4, sentIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    .local p5, deliveryIntents:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Landroid/app/PendingIntent;>;"
    const-string v1, "ZTE_CDMA"

    const-string v2, "sendMultipartText() has extraInfo"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 54
    invoke-static {}, Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;->getNextConcatenatedRef()I

    move-result v1

    and-int/lit16 v0, v1, 0xff

    move/from16 v16, v0

    .line 55
    .local v16, refNumber:I
    invoke-virtual/range {p3 .. p3}, Ljava/util/ArrayList;->size()I

    move-result v15

    .line 56
    .local v15, msgCount:I
    const/4 v6, 0x0

    .line 58
    .local v6, encoding:I
    move-object/from16 v0, p0

    iput v15, v0, Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;->mRemainingMessages:I

    .line 60
    new-array v13, v15, [Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    .line 61
    .local v13, encodingForParts:[Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    const/4 v14, 0x0

    .local v14, i:I
    :goto_0
    if-ge v14, v15, :cond_2

    .line 62
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/CharSequence;

    const/4 v2, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v0, v1, v2}, Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;->calculateLength(Ljava/lang/CharSequence;Z)Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;

    move-result-object v12

    .line 63
    .local v12, details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    iget v1, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    if-eq v6, v1, :cond_1

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    if-ne v6, v1, :cond_1

    .line 66
    :cond_0
    iget v6, v12, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->codeUnitSize:I

    .line 68
    :cond_1
    aput-object v12, v13, v14

    .line 61
    add-int/lit8 v14, v14, 0x1

    goto :goto_0

    .line 71
    .end local v12           #details:Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;
    :cond_2
    const/4 v14, 0x0

    :goto_1
    if-ge v14, v15, :cond_7

    .line 72
    new-instance v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    invoke-direct {v11}, Lcom/android/internal/telephony/SmsHeader$ConcatRef;-><init>()V

    .line 73
    .local v11, concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    move/from16 v0, v16

    iput v0, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->refNumber:I

    .line 74
    add-int/lit8 v1, v14, 0x1

    iput v1, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->seqNumber:I

    .line 75
    iput v15, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->msgCount:I

    .line 82
    const/4 v1, 0x1

    iput-boolean v1, v11, Lcom/android/internal/telephony/SmsHeader$ConcatRef;->isEightBits:Z

    .line 83
    new-instance v5, Lcom/android/internal/telephony/SmsHeader;

    invoke-direct {v5}, Lcom/android/internal/telephony/SmsHeader;-><init>()V

    .line 84
    .local v5, smsHeader:Lcom/android/internal/telephony/SmsHeader;
    iput-object v11, v5, Lcom/android/internal/telephony/SmsHeader;->concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;

    .line 87
    const/4 v1, 0x1

    if-ne v6, v1, :cond_3

    .line 88
    aget-object v1, v13, v14

    iget v1, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageTable:I

    iput v1, v5, Lcom/android/internal/telephony/SmsHeader;->languageTable:I

    .line 89
    aget-object v1, v13, v14

    iget v1, v1, Lcom/android/internal/telephony/GsmAlphabet$TextEncodingDetails;->languageShiftTable:I

    iput v1, v5, Lcom/android/internal/telephony/SmsHeader;->languageShiftTable:I

    .line 92
    :cond_3
    const/4 v7, 0x0

    .line 93
    .local v7, sentIntent:Landroid/app/PendingIntent;
    if-eqz p4, :cond_4

    invoke-virtual/range {p4 .. p4}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v14, :cond_4

    .line 94
    move-object/from16 v0, p4

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v7

    .end local v7           #sentIntent:Landroid/app/PendingIntent;
    check-cast v7, Landroid/app/PendingIntent;

    .line 97
    .restart local v7       #sentIntent:Landroid/app/PendingIntent;
    :cond_4
    const/4 v8, 0x0

    .line 98
    .local v8, deliveryIntent:Landroid/app/PendingIntent;
    if-eqz p5, :cond_5

    invoke-virtual/range {p5 .. p5}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-le v1, v14, :cond_5

    .line 99
    move-object/from16 v0, p5

    invoke-virtual {v0, v14}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v8

    .end local v8           #deliveryIntent:Landroid/app/PendingIntent;
    check-cast v8, Landroid/app/PendingIntent;

    .line 102
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

    invoke-virtual/range {v1 .. v10}, Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;->sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLandroid/os/Bundle;)V

    .line 71
    add-int/lit8 v14, v14, 0x1

    goto :goto_1

    .line 102
    :cond_6
    const/4 v9, 0x0

    goto :goto_2

    .line 105
    .end local v5           #smsHeader:Lcom/android/internal/telephony/SmsHeader;
    .end local v7           #sentIntent:Landroid/app/PendingIntent;
    .end local v8           #deliveryIntent:Landroid/app/PendingIntent;
    .end local v11           #concatRef:Lcom/android/internal/telephony/SmsHeader$ConcatRef;
    :cond_7
    return-void
.end method

.method protected sendNewSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsHeader;ILandroid/app/PendingIntent;Landroid/app/PendingIntent;ZLandroid/os/Bundle;)V
    .locals 6
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
    .line 110
    const-string v4, "ZTE_CDMA"

    const-string v5, "sendNewSubmitPdu() has extraInfo"

    invoke-static {v4, v5}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    new-instance v3, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v3}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 112
    .local v3, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p3, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 113
    iput-object p4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 114
    const/4 v4, 0x1

    if-ne p5, v4, :cond_0

    .line 116
    const/4 v4, 0x2

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    .line 120
    :goto_0
    const/4 v4, 0x1

    iput-boolean v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncodingSet:Z

    .line 126
    if-eqz p7, :cond_1

    if-eqz p8, :cond_1

    const/4 v4, 0x1

    :goto_1
    invoke-static {p1, v3, v4, p9}, Lcom/android/internal/telephony/cdma/ZteSmsMessage;->getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLandroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    .line 129
    .local v1, submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v1}, Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v0

    .line 131
    .local v0, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v0, p6, p7, v4}, Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v2

    .line 133
    .local v2, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 134
    return-void

    .line 118
    .end local v0           #map:Ljava/util/HashMap;
    .end local v1           #submitPdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v2           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v4, 0x4

    iput v4, v3, Lcom/android/internal/telephony/cdma/sms/UserData;->msgEncoding:I

    goto :goto_0

    .line 126
    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method public sendText(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Landroid/os/Bundle;)V
    .locals 9
    .parameter "destAddr"
    .parameter "scAddr"
    .parameter "text"
    .parameter "sentIntent"
    .parameter "deliveryIntent"
    .parameter "extraInfo"

    .prologue
    .line 40
    const-string v0, "ZTE_CDMA"

    const-string v1, "sendText() has extraInfo"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    if-eqz p5, :cond_0

    const/4 v3, 0x1

    :goto_0
    const/4 v4, 0x0

    move-object v0, p2

    move-object v1, p1

    move-object v2, p3

    move-object v5, p6

    invoke-static/range {v0 .. v5}, Lcom/android/internal/telephony/cdma/ZteSmsMessage;->getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Landroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v7

    .line 44
    .local v7, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {p0, p1, p2, p3, v7}, Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;->getSmsTrackerMap(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Lcom/android/internal/telephony/SmsMessageBase$SubmitPduBase;)Ljava/util/HashMap;

    move-result-object v6

    .line 45
    .local v6, map:Ljava/util/HashMap;
    invoke-virtual {p0}, Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;->getFormat()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v6, p4, p5, v0}, Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;->getSmsTracker(Ljava/util/HashMap;Landroid/app/PendingIntent;Landroid/app/PendingIntent;Ljava/lang/String;)Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;

    move-result-object v8

    .line 47
    .local v8, tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    invoke-virtual {p0, v8}, Lcom/android/internal/telephony/cdma/ZteCdmaSMSDispatcher;->sendSubmitPdu(Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;)V

    .line 48
    return-void

    .line 41
    .end local v6           #map:Ljava/util/HashMap;
    .end local v7           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .end local v8           #tracker:Lcom/android/internal/telephony/SMSDispatcher$SmsTracker;
    :cond_0
    const/4 v3, 0x0

    goto :goto_0
.end method
