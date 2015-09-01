.class public Lcom/android/internal/telephony/WapPushOverSms;
.super Ljava/lang/Object;
.source "WapPushOverSms.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# static fields
.field private static final DBG:Z = true

.field private static final TAG:Ljava/lang/String; = "WAP PUSH"


# instance fields
.field private final mContext:Landroid/content/Context;

.field private volatile mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .parameter "context"

    .prologue
    .line 71
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    iput-object p1, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    .line 73
    new-instance v1, Landroid/content/Intent;

    const-class v2, Lcom/android/internal/telephony/IWapPushManager;

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 74
    .local v1, intent:Landroid/content/Intent;
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/Intent;->resolveSystemService(Landroid/content/pm/PackageManager;I)Landroid/content/ComponentName;

    move-result-object v0

    .line 75
    .local v0, comp:Landroid/content/ComponentName;
    invoke-virtual {v1, v0}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 76
    if-eqz v0, :cond_0

    const/4 v2, 0x1

    invoke-virtual {p1, v1, p0, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v2

    if-nez v2, :cond_1

    .line 77
    :cond_0
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager failed"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 81
    :goto_0
    return-void

    .line 79
    :cond_1
    const-string v2, "WAP PUSH"

    const-string v3, "bindService() for wappush manager succeeded"

    invoke-static {v2, v3}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method


# virtual methods
.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I
    .locals 31
    .parameter "pdu"
    .parameter "receiver"
    .parameter "handler"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_CODE:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 104
    const-string v6, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Rx: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-static/range {p1 .. p1}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/16 v18, 0x0

    .line 108
    .local v18, index:I
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .local v19, index:I
    :try_start_0
    aget-byte v6, p1, v18
    :try_end_0
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_0 .. :try_end_0} :catch_2

    and-int/lit16 v7, v6, 0xff

    .line 109
    .local v7, transactionId:I
    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    :try_start_1
    aget-byte v6, p1, v19

    and-int/lit16 v8, v6, 0xff

    .line 111
    .local v8, pduType:I
    const/4 v6, 0x6

    if-eq v8, v6, :cond_1

    const/16 v6, 0xf0

    if-eq v8, v6, :cond_1

    const/4 v6, 0x7

    if-eq v8, v6, :cond_1

    .line 114
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v29, 0x10e004a

    move/from16 v0, v29

    invoke-virtual {v6, v0}, Landroid/content/res/Resources;->getInteger(I)I
    :try_end_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_1 .. :try_end_1} :catch_0

    move-result v18

    .line 116
    const/4 v6, -0x1

    move/from16 v0, v18

    if-eq v0, v6, :cond_0

    .line 117
    add-int/lit8 v19, v18, 0x1

    .end local v18           #index:I
    .restart local v19       #index:I
    :try_start_2
    aget-byte v6, p1, v18
    :try_end_2
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    and-int/lit16 v7, v6, 0xff

    .line 118
    add-int/lit8 v18, v19, 0x1

    .end local v19           #index:I
    .restart local v18       #index:I
    :try_start_3
    aget-byte v6, p1, v19

    and-int/lit16 v8, v6, 0xff

    .line 120
    const-string v6, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "index = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " PDU Type = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " transactionID = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 124
    const/4 v6, 0x6

    if-eq v8, v6, :cond_1

    const/4 v6, 0x7

    if-eq v8, v6, :cond_1

    .line 126
    const-string v6, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 127
    const/4 v6, 0x1

    .line 287
    .end local v7           #transactionId:I
    .end local v8           #pduType:I
    :goto_0
    return v6

    .line 130
    .restart local v7       #transactionId:I
    .restart local v8       #pduType:I
    :cond_0
    const-string v6, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Received non-PUSH WAP PDU. Type = "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    const/4 v6, 0x1

    goto :goto_0

    .line 135
    :cond_1
    new-instance v23, Lcom/android/internal/telephony/WspTypeDecoder;

    move-object/from16 v0, v23

    move-object/from16 v1, p1

    invoke-direct {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 143
    .local v23, pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v6

    if-nez v6, :cond_2

    .line 144
    const-string v6, "WAP PUSH"

    const-string v29, "Received PDU. Header Length error."

    move-object/from16 v0, v29

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/4 v6, 0x2

    goto :goto_0

    .line 147
    :cond_2
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v29

    move-wide/from16 v0, v29

    long-to-int v9, v0

    .line 148
    .local v9, headerLength:I
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v6

    add-int v18, v18, v6

    .line 150
    move/from16 v10, v18

    .line 164
    .local v10, headerStartIndex:I
    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeContentType(I)Z

    move-result v6

    if-nez v6, :cond_3

    .line 165
    const-string v6, "WAP PUSH"

    const-string v29, "Received PDU. Header Content-Type error."

    move-object/from16 v0, v29

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    const/4 v6, 0x2

    goto :goto_0

    .line 169
    :cond_3
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v22

    .line 170
    .local v22, mimeType:Ljava/lang/String;
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v4

    .line 171
    .local v4, binaryContentType:J
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getDecodedDataLength()I

    move-result v6

    add-int v18, v18, v6

    .line 173
    new-array v0, v9, [B

    move-object/from16 v17, v0

    .line 174
    .local v17, header:[B
    const/4 v6, 0x0

    move-object/from16 v0, v17

    array-length v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    move/from16 v2, v29

    invoke-static {v0, v10, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 178
    if-eqz v22, :cond_4

    const-string v6, "application/vnd.wap.coc"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_4

    .line 179
    move-object/from16 v21, p1

    .line 187
    .local v21, intentData:[B
    :goto_1
    move-object/from16 v0, p2

    move-object/from16 v1, p3

    move-object/from16 v2, v22

    move-object/from16 v3, v23

    invoke-static {v0, v1, v2, v3}, Lcom/android/internal/telephony/ZteWapPushOverSms;->init(Landroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Lcom/android/internal/telephony/WspTypeDecoder;)V

    move-object/from16 v6, p1

    .line 188
    invoke-static/range {v4 .. v10}, Lcom/android/internal/telephony/ZteWapPushOverSms;->dispatchWapPduExtra(J[BIIII)Z

    move-result v6

    const/16 v29, 0x1

    move/from16 v0, v29

    if-ne v6, v0, :cond_5

    .line 190
    const/4 v6, -0x1

    goto/16 :goto_0

    .line 181
    .end local v21           #intentData:[B
    :cond_4
    add-int v15, v10, v9

    .line 182
    .local v15, dataIndex:I
    move-object/from16 v0, p1

    array-length v6, v0

    sub-int/2addr v6, v15

    new-array v0, v6, [B

    move-object/from16 v21, v0

    .line 183
    .restart local v21       #intentData:[B
    const/4 v6, 0x0

    move-object/from16 v0, v21

    array-length v0, v0

    move/from16 v29, v0

    move-object/from16 v0, p1

    move-object/from16 v1, v21

    move/from16 v2, v29

    invoke-static {v0, v15, v1, v6, v2}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V
    :try_end_3
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_3 .. :try_end_3} :catch_0

    goto :goto_1

    .line 283
    .end local v4           #binaryContentType:J
    .end local v8           #pduType:I
    .end local v9           #headerLength:I
    .end local v10           #headerStartIndex:I
    .end local v15           #dataIndex:I
    .end local v17           #header:[B
    .end local v21           #intentData:[B
    .end local v22           #mimeType:Ljava/lang/String;
    .end local v23           #pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    :catch_0
    move-exception v11

    .line 286
    .end local v7           #transactionId:I
    .local v11, aie:Ljava/lang/ArrayIndexOutOfBoundsException;
    :goto_2
    const-string v6, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "ignoring dispatchWapPdu() array index exception: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/4 v6, 0x2

    goto/16 :goto_0

    .line 192
    .end local v11           #aie:Ljava/lang/ArrayIndexOutOfBoundsException;
    .restart local v4       #binaryContentType:J
    .restart local v7       #transactionId:I
    .restart local v8       #pduType:I
    .restart local v9       #headerLength:I
    .restart local v10       #headerStartIndex:I
    .restart local v17       #header:[B
    .restart local v21       #intentData:[B
    .restart local v22       #mimeType:Ljava/lang/String;
    .restart local v23       #pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    :cond_5
    :try_start_4
    invoke-static {}, Lcom/android/internal/telephony/ZteWapPushOverSms;->getMimeType()Ljava/lang/String;

    move-result-object v22

    .line 201
    add-int v6, v18, v9

    add-int/lit8 v6, v6, -0x1

    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1, v6}, Lcom/android/internal/telephony/WspTypeDecoder;->seekXWapApplicationId(II)Z

    move-result v6

    if-eqz v6, :cond_a

    .line 202
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v29

    move-wide/from16 v0, v29

    long-to-int v0, v0

    move/from16 v18, v0

    .line 203
    move-object/from16 v0, v23

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Lcom/android/internal/telephony/WspTypeDecoder;->decodeXWapApplicationId(I)Z

    .line 204
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v27

    .line 205
    .local v27, wapAppId:Ljava/lang/String;
    if-nez v27, :cond_6

    .line 206
    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getValue32()J

    move-result-wide v29

    move-wide/from16 v0, v29

    long-to-int v6, v0

    invoke-static {v6}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v27

    .line 209
    :cond_6
    if-nez v22, :cond_8

    invoke-static {v4, v5}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v14

    .line 211
    .local v14, contentType:Ljava/lang/String;
    :goto_3
    const-string v6, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "appid found: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move-object/from16 v1, v27

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, ":"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_4 .. :try_end_4} :catch_0

    .line 214
    const/16 v26, 0x1

    .line 215
    .local v26, processFurther:Z
    :try_start_5
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    move-object/from16 v28, v0

    .line 217
    .local v28, wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    if-nez v28, :cond_9

    .line 218
    const-string v6, "WAP PUSH"

    const-string v29, "wap push manager not found!"

    move-object/from16 v0, v29

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    :cond_7
    :goto_4
    if-nez v26, :cond_a

    .line 238
    const/4 v6, 0x1

    goto/16 :goto_0

    .end local v14           #contentType:Ljava/lang/String;
    .end local v26           #processFurther:Z
    .end local v28           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_8
    move-object/from16 v14, v22

    .line 209
    goto :goto_3

    .line 220
    .restart local v14       #contentType:Ljava/lang/String;
    .restart local v26       #processFurther:Z
    .restart local v28       #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :cond_9
    new-instance v20, Landroid/content/Intent;

    invoke-direct/range {v20 .. v20}, Landroid/content/Intent;-><init>()V

    .line 221
    .local v20, intent:Landroid/content/Intent;
    const-string v6, "transactionId"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 222
    const-string v6, "pduType"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 223
    const-string v6, "header"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 224
    const-string v6, "data"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 225
    const-string v6, "contentTypeParameters"

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 227
    const-string v6, "subscription"

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v29

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 230
    move-object/from16 v0, v28

    move-object/from16 v1, v27

    move-object/from16 v2, v20

    invoke-interface {v0, v1, v14, v2}, Lcom/android/internal/telephony/IWapPushManager;->processMessage(Ljava/lang/String;Ljava/lang/String;Landroid/content/Intent;)I

    move-result v25

    .line 231
    .local v25, procRet:I
    const-string v6, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "procRet:"

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    move-object/from16 v0, v29

    move/from16 v1, v25

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catch Landroid/os/RemoteException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_5 .. :try_end_5} :catch_0

    .line 232
    and-int/lit8 v6, v25, 0x1

    if-lez v6, :cond_7

    const v6, 0x8000

    and-int v6, v6, v25

    if-nez v6, :cond_7

    .line 234
    const/16 v26, 0x0

    goto :goto_4

    .line 240
    .end local v20           #intent:Landroid/content/Intent;
    .end local v25           #procRet:I
    .end local v28           #wapPushMan:Lcom/android/internal/telephony/IWapPushManager;
    :catch_1
    move-exception v16

    .line 241
    .local v16, e:Landroid/os/RemoteException;
    :try_start_6
    const-string v6, "WAP PUSH"

    const-string v29, "remote func failed..."

    move-object/from16 v0, v29

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    .end local v14           #contentType:Ljava/lang/String;
    .end local v16           #e:Landroid/os/RemoteException;
    .end local v26           #processFurther:Z
    .end local v27           #wapAppId:Ljava/lang/String;
    :cond_a
    const-string v6, "WAP PUSH"

    const-string v29, "fall back to existing handler"

    move-object/from16 v0, v29

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 246
    if-nez v22, :cond_b

    .line 247
    const-string v6, "WAP PUSH"

    const-string v29, "Header Content-Type error."

    move-object/from16 v0, v29

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    const/4 v6, 0x2

    goto/16 :goto_0

    .line 254
    :cond_b
    const-string v6, "application/vnd.wap.mms-message"

    move-object/from16 v0, v22

    invoke-virtual {v0, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_d

    .line 255
    const-string v24, "android.permission.RECEIVE_MMS"

    .line 256
    .local v24, permission:Ljava/lang/String;
    const/16 v12, 0x12

    .line 262
    .local v12, appOp:I
    :goto_5
    new-instance v20, Landroid/content/Intent;

    const-string v6, "android.provider.Telephony.WAP_PUSH_DELIVER"

    move-object/from16 v0, v20

    invoke-direct {v0, v6}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 263
    .restart local v20       #intent:Landroid/content/Intent;
    move-object/from16 v0, v20

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 264
    const-string v6, "transactionId"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v7}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 265
    const-string v6, "pduType"

    move-object/from16 v0, v20

    invoke-virtual {v0, v6, v8}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 266
    const-string v6, "header"

    move-object/from16 v0, v20

    move-object/from16 v1, v17

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 267
    const-string v6, "data"

    move-object/from16 v0, v20

    move-object/from16 v1, v21

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 268
    const-string v6, "contentTypeParameters"

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v29

    move-object/from16 v0, v20

    move-object/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 269
    const-string v6, "subscription"

    invoke-virtual/range {p3 .. p3}, Lcom/android/internal/telephony/InboundSmsHandler;->getPhone()Lcom/android/internal/telephony/PhoneBase;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v29

    move-object/from16 v0, v20

    move/from16 v1, v29

    invoke-virtual {v0, v6, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 273
    move-object/from16 v0, p0

    iget-object v6, v0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    const/16 v29, 0x1

    move/from16 v0, v29

    invoke-static {v6, v0}, Lcom/android/internal/telephony/SmsApplication;->getDefaultMmsApplication(Landroid/content/Context;Z)Landroid/content/ComponentName;

    move-result-object v13

    .line 274
    .local v13, componentName:Landroid/content/ComponentName;
    if-eqz v13, :cond_c

    .line 276
    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 277
    const-string v6, "WAP PUSH"

    new-instance v29, Ljava/lang/StringBuilder;

    invoke-direct/range {v29 .. v29}, Ljava/lang/StringBuilder;-><init>()V

    const-string v30, "Delivering MMS to: "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Landroid/content/ComponentName;->getPackageName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    const-string v30, " "

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual {v13}, Landroid/content/ComponentName;->getClassName()Ljava/lang/String;

    move-result-object v30

    invoke-virtual/range {v29 .. v30}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v29

    invoke-virtual/range {v29 .. v29}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v29

    move-object/from16 v0, v29

    invoke-static {v6, v0}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 281
    :cond_c
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move-object/from16 v2, v24

    move-object/from16 v3, p2

    invoke-virtual {v0, v1, v2, v12, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 282
    const/4 v6, -0x1

    goto/16 :goto_0

    .line 258
    .end local v12           #appOp:I
    .end local v13           #componentName:Landroid/content/ComponentName;
    .end local v20           #intent:Landroid/content/Intent;
    .end local v24           #permission:Ljava/lang/String;
    :cond_d
    const-string v24, "android.permission.RECEIVE_WAP_PUSH"
    :try_end_6
    .catch Ljava/lang/ArrayIndexOutOfBoundsException; {:try_start_6 .. :try_end_6} :catch_0

    .line 259
    .restart local v24       #permission:Ljava/lang/String;
    const/16 v12, 0x13

    .restart local v12       #appOp:I
    goto/16 :goto_5

    .line 283
    .end local v4           #binaryContentType:J
    .end local v7           #transactionId:I
    .end local v8           #pduType:I
    .end local v9           #headerLength:I
    .end local v10           #headerStartIndex:I
    .end local v12           #appOp:I
    .end local v17           #header:[B
    .end local v18           #index:I
    .end local v21           #intentData:[B
    .end local v22           #mimeType:Ljava/lang/String;
    .end local v23           #pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;
    .end local v24           #permission:Ljava/lang/String;
    .restart local v19       #index:I
    :catch_2
    move-exception v11

    move/from16 v18, v19

    .end local v19           #index:I
    .restart local v18       #index:I
    goto/16 :goto_2
.end method

.method public dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;)I
    .locals 2
    .parameter "pdu"
    .parameter "receiver"
    .parameter "handler"
    .parameter "address"
    .annotation build Landroid/annotation/KiwiHook;
        value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
    .end annotation

    .prologue
    .line 48
    const-string v0, "WAP PUSH"

    const-string v1, "liuliwei: dispatchWapPdu"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    invoke-static {p4}, Lcom/android/internal/telephony/ZteWapPushOverSms;->setAddress(Ljava/lang/String;)V

    .line 51
    invoke-virtual {p0, p1, p2, p3}, Lcom/android/internal/telephony/WapPushOverSms;->dispatchWapPdu([BLandroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;)I

    move-result v0

    return v0
.end method

.method dispose()V
    .locals 2

    .prologue
    .line 84
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    if-eqz v0, :cond_0

    .line 85
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: unbind wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    iget-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 90
    :goto_0
    return-void

    .line 88
    :cond_0
    const-string v0, "WAP PUSH"

    const-string v1, "dispose: not bound to a wappush manager"

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .parameter "name"
    .parameter "service"

    .prologue
    .line 61
    invoke-static {p2}, Lcom/android/internal/telephony/IWapPushManager$Stub;->asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IWapPushManager;

    move-result-object v0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 62
    const-string v0, "WAP PUSH"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "wappush manager connected to "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 63
    return-void
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .parameter "name"

    .prologue
    .line 67
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/android/internal/telephony/WapPushOverSms;->mWapPushManager:Lcom/android/internal/telephony/IWapPushManager;

    .line 68
    const-string v0, "WAP PUSH"

    const-string v1, "wappush manager disconnected."

    invoke-static {v0, v1}, Landroid/telephony/Rlog;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    return-void
.end method
