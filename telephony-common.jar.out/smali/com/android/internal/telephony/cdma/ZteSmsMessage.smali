.class public Lcom/android/internal/telephony/cdma/ZteSmsMessage;
.super Lcom/android/internal/telephony/cdma/SmsMessage;
.source "ZteSmsMessage.java"


# static fields
.field private static final LOGGABLE_TAG:Ljava/lang/String; = "CDMA:SMS"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 28
    invoke-direct {p0}, Lcom/android/internal/telephony/cdma/SmsMessage;-><init>()V

    return-void
.end method

.method public static decodeBearerData(Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;)Lcom/android/internal/telephony/cdma/sms/BearerData;
    .locals 4
    .parameter "mEnvelope"

    .prologue
    .line 178
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 179
    .local v0, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const v1, 0xfdea

    iget v2, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    if-ne v1, v2, :cond_0

    .line 180
    const-string v1, "SmsMessage"

    const-string v2, "zx @@@@@@@@@ new"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 181
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    const/4 v2, 0x0

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-static {v1, v2, v3}, Lcom/android/internal/telephony/cdma/sms/ZteBearerData;->decode([BZI)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    .line 182
    const-string v1, "SmsMessage"

    const-string v2, "zx @@@@@@@@@ new gone"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    :goto_0
    const-string v1, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zx @@@@@@@@@MT raw BearerData = \'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v3}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "\'"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    return-object v0

    .line 184
    :cond_0
    const-string v1, "SmsMessage"

    const-string v2, "zx @@@@@@@@@ old"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 185
    iget-object v1, p0, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/ZteBearerData;->decode([B)Lcom/android/internal/telephony/cdma/sms/BearerData;

    move-result-object v0

    goto :goto_0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Lcom/android/internal/telephony/cdma/sms/UserData;ZLandroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 1
    .parameter "destAddr"
    .parameter "userData"
    .parameter "statusReportRequested"
    .parameter "extraInfo"

    .prologue
    .line 51
    invoke-static {p0, p2, p1, p3}, Lcom/android/internal/telephony/cdma/ZteSmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Landroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v0

    return-object v0
.end method

.method public static getSubmitPdu(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ZLcom/android/internal/telephony/SmsHeader;Landroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 2
    .parameter "scAddr"
    .parameter "destAddr"
    .parameter "message"
    .parameter "statusReportRequested"
    .parameter "smsHeader"
    .parameter "extraInfo"

    .prologue
    .line 39
    if-eqz p2, :cond_0

    if-nez p1, :cond_1

    .line 40
    :cond_0
    const/4 v1, 0x0

    .line 46
    :goto_0
    return-object v1

    .line 43
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/cdma/sms/UserData;

    invoke-direct {v0}, Lcom/android/internal/telephony/cdma/sms/UserData;-><init>()V

    .line 44
    .local v0, uData:Lcom/android/internal/telephony/cdma/sms/UserData;
    iput-object p2, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->payloadStr:Ljava/lang/String;

    .line 45
    iput-object p4, v0, Lcom/android/internal/telephony/cdma/sms/UserData;->userDataHeader:Lcom/android/internal/telephony/SmsHeader;

    .line 46
    invoke-static {p1, p3, v0, p5}, Lcom/android/internal/telephony/cdma/ZteSmsMessage;->privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Landroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    move-result-object v1

    goto :goto_0
.end method

.method static parseExtraInfo(Lcom/android/internal/telephony/cdma/sms/BearerData;Landroid/os/Bundle;)V
    .locals 8
    .parameter "bearerData"
    .parameter "info"

    .prologue
    const/4 v7, 0x1

    const/4 v6, -0x1

    .line 56
    if-nez p1, :cond_1

    .line 82
    :cond_0
    :goto_0
    return-void

    .line 57
    :cond_1
    const-string v3, "priority"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 58
    .local v1, priority:I
    const-string v3, "zhaiyushan"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "priority get is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 59
    if-eq v1, v6, :cond_2

    .line 61
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    .line 62
    iput v1, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 63
    const-string v3, "hubo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "priority get is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    :cond_2
    const-string v3, "vp"

    invoke-virtual {p1, v3, v6}, Landroid/os/Bundle;->getInt(Ljava/lang/String;I)I

    move-result v2

    .line 66
    .local v2, validPeroid:I
    if-eq v2, v6, :cond_3

    .line 68
    iput-boolean v7, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelativeSet:Z

    .line 69
    iput v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->validityPeriodRelative:I

    .line 72
    :cond_3
    const-string v3, "callbacknumber"

    const/4 v4, 0x0

    invoke-virtual {p1, v3, v4}, Landroid/os/Bundle;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 73
    .local v0, callBackNumber:Ljava/lang/String;
    const-string v3, "hubo"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "callBackNumber get is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 74
    if-eqz v0, :cond_0

    .line 77
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v3}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->callbackNumber:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    goto :goto_0
.end method

.method private static privateGetSubmitPdu(Ljava/lang/String;ZLcom/android/internal/telephony/cdma/sms/UserData;Landroid/os/Bundle;)Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    .locals 12
    .parameter "destAddrStr"
    .parameter "statusReportRequested"
    .parameter "userData"
    .parameter "extraInfo"

    .prologue
    .line 101
    invoke-static {p0}, Landroid/telephony/PhoneNumberUtils;->cdmaCheckAndProcessPlusCode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->parse(Ljava/lang/String;)Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    move-result-object v2

    .line 103
    .local v2, destAddr:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;
    if-nez v2, :cond_0

    const/4 v7, 0x0

    .line 174
    :goto_0
    return-object v7

    .line 105
    :cond_0
    new-instance v1, Lcom/android/internal/telephony/cdma/sms/BearerData;

    invoke-direct {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;-><init>()V

    .line 106
    .local v1, bearerData:Lcom/android/internal/telephony/cdma/sms/BearerData;
    const/4 v9, 0x2

    iput v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageType:I

    .line 108
    invoke-static {}, Lcom/android/internal/telephony/cdma/ZteSmsMessage;->getNextMessageId()I

    move-result v9

    iput v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->messageId:I

    .line 110
    iput-boolean p1, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->deliveryAckReq:Z

    .line 111
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userAckReq:Z

    .line 112
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->readAckReq:Z

    .line 113
    const/4 v9, 0x0

    iput-boolean v9, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->reportReq:Z

    .line 116
    invoke-static {v1, p3}, Lcom/android/internal/telephony/cdma/ZteSmsMessage;->parseExtraInfo(Lcom/android/internal/telephony/cdma/sms/BearerData;Landroid/os/Bundle;)V

    .line 118
    iput-object p2, v1, Lcom/android/internal/telephony/cdma/sms/BearerData;->userData:Lcom/android/internal/telephony/cdma/sms/UserData;

    .line 121
    invoke-static {v1}, Lcom/android/internal/telephony/cdma/sms/BearerData;->encode(Lcom/android/internal/telephony/cdma/sms/BearerData;)[B

    move-result-object v4

    .line 123
    .local v4, encodedBearerData:[B
    if-nez v4, :cond_1

    const/4 v7, 0x0

    goto :goto_0

    .line 128
    :cond_1
    const/16 v8, 0x1002

    .line 131
    .local v8, teleservice:I
    new-instance v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;

    invoke-direct {v5}, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;-><init>()V

    .line 132
    .local v5, envelope:Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;
    const/4 v9, 0x0

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->messageType:I

    .line 133
    iput v8, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    .line 134
    iput-object v2, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->destAddress:Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;

    .line 135
    const/4 v9, 0x1

    iput v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerReply:I

    .line 136
    iput-object v4, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->bearerData:[B

    .line 148
    :try_start_0
    new-instance v0, Ljava/io/ByteArrayOutputStream;

    const/16 v9, 0x64

    invoke-direct {v0, v9}, Ljava/io/ByteArrayOutputStream;-><init>(I)V

    .line 149
    .local v0, baos:Ljava/io/ByteArrayOutputStream;
    new-instance v3, Ljava/io/DataOutputStream;

    invoke-direct {v3, v0}, Ljava/io/DataOutputStream;-><init>(Ljava/io/OutputStream;)V

    .line 150
    .local v3, dos:Ljava/io/DataOutputStream;
    iget v9, v5, Lcom/android/internal/telephony/cdma/sms/SmsEnvelope;->teleService:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 151
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 152
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->writeInt(I)V

    .line 153
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->digitMode:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 154
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberMode:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 155
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->ton:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 156
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberPlan:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 157
    iget v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->numberOfDigits:I

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 158
    iget-object v9, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    const/4 v10, 0x0

    iget-object v11, v2, Lcom/android/internal/telephony/cdma/sms/CdmaSmsAddress;->origBytes:[B

    array-length v11, v11

    invoke-virtual {v3, v9, v10, v11}, Ljava/io/DataOutputStream;->write([BII)V

    .line 160
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 161
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 162
    const/4 v9, 0x0

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 163
    array-length v9, v4

    invoke-virtual {v3, v9}, Ljava/io/DataOutputStream;->write(I)V

    .line 164
    const/4 v9, 0x0

    array-length v10, v4

    invoke-virtual {v3, v4, v9, v10}, Ljava/io/DataOutputStream;->write([BII)V

    .line 165
    invoke-virtual {v3}, Ljava/io/DataOutputStream;->close()V

    .line 167
    new-instance v7, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;

    invoke-direct {v7}, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;-><init>()V

    .line 168
    .local v7, pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    invoke-virtual {v0}, Ljava/io/ByteArrayOutputStream;->toByteArray()[B

    move-result-object v9

    iput-object v9, v7, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedMessage:[B

    .line 169
    const/4 v9, 0x0

    iput-object v9, v7, Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;->encodedScAddress:[B
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto/16 :goto_0

    .line 171
    .end local v0           #baos:Ljava/io/ByteArrayOutputStream;
    .end local v3           #dos:Ljava/io/DataOutputStream;
    .end local v7           #pdu:Lcom/android/internal/telephony/cdma/SmsMessage$SubmitPdu;
    :catch_0
    move-exception v6

    .line 172
    .local v6, ex:Ljava/io/IOException;
    const-string v9, "SmsMessage"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "creating SubmitPdu failed: "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    const/4 v7, 0x0

    goto/16 :goto_0
.end method

.method public static updatePriority(Lcom/android/internal/telephony/cdma/sms/BearerData;I)I
    .locals 4
    .parameter "mBearerData"
    .parameter "priority"

    .prologue
    .line 193
    move v0, p1

    .line 195
    .local v0, pri:I
    const/4 v1, 0x1

    iget-boolean v2, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priorityIndicatorSet:Z

    if-ne v1, v2, :cond_0

    .line 197
    iget v0, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    .line 198
    const-string v1, "SmsMessage"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "zhaiyushan paraeSms:  mBearerData.priority= "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Lcom/android/internal/telephony/cdma/sms/BearerData;->priority:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    :cond_0
    return v0
.end method
