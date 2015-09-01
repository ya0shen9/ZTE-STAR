.class public Lcom/android/internal/telephony/ZteWapPushOverSms;
.super Ljava/lang/Object;
.source "ZteWapPushOverSms.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "WAP PUSH"

.field private static handler:Lcom/android/internal/telephony/InboundSmsHandler;

.field private static mOriginatingAddress:Ljava/lang/String;

.field private static mimeType:Ljava/lang/String;

.field private static pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

.field private static receiver:Landroid/content/BroadcastReceiver;

.field private static siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

.field private static slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 18
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static dispatchWapPduExtra(J[BIIII)Z
    .locals 8
    .parameter "binaryContentType"
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "headerLength"
    .parameter "headerStartIndex"

    .prologue
    .line 722
    const/4 v3, 0x0

    .line 723
    .local v3, dispatchedByApplication:Z
    add-int v0, p6, p5

    .line 725
    .local v0, dataIndex:I
    long-to-int v6, p0

    sparse-switch v6, :sswitch_data_0

    .line 789
    :cond_0
    :goto_0
    return v3

    .line 728
    :sswitch_0
    invoke-static {p2, p3, p4, v0}, Lcom/android/internal/telephony/ZteWapPushOverSms;->dispatchWapPdu_SI([BIII)Z

    move-result v3

    .line 729
    if-nez v3, :cond_0

    .line 730
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".invalid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    goto :goto_0

    .line 736
    :sswitch_1
    new-instance v2, Ljava/lang/String;

    const-string v6, "application/x-oma-DCD:DCD.ua"

    invoke-direct {v2, v6}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    .line 737
    .local v2, dcd_id_string:Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->getBytes()[B

    move-result-object v1

    .line 738
    .local v1, dcd_id_byte:[B
    array-length v6, v1

    if-lt p5, v6, :cond_2

    .line 739
    const/4 v4, 0x0

    .line 740
    .local v4, headerStartIndexOffset:I
    :goto_1
    array-length v6, v1

    add-int/2addr v6, v4

    if-gt v6, p5, :cond_2

    .line 742
    const/4 v5, 0x0

    .local v5, i:I
    :goto_2
    array-length v6, v1

    if-ge v5, v6, :cond_1

    .line 743
    add-int v6, p6, v4

    add-int/2addr v6, v5

    aget-byte v6, p2, v6

    aget-byte v7, v1, v5

    if-eq v6, v7, :cond_3

    .line 747
    :cond_1
    array-length v6, v1

    if-ne v5, v6, :cond_4

    .line 748
    const-string v6, "application/x-oma-DCD:DCD.ua"

    sput-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    .line 756
    .end local v4           #headerStartIndexOffset:I
    .end local v5           #i:I
    :cond_2
    invoke-static {p2, p3, p4, v0}, Lcom/android/internal/telephony/ZteWapPushOverSms;->dispatchWapPdu_SL([BIII)Z

    move-result v3

    .line 757
    if-nez v3, :cond_0

    .line 758
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v7, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, ".invalid"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    sput-object v6, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    goto :goto_0

    .line 742
    .restart local v4       #headerStartIndexOffset:I
    .restart local v5       #i:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 751
    :cond_4
    add-int/lit8 v4, v4, 0x1

    .line 752
    goto :goto_1

    .line 764
    .end local v1           #dcd_id_byte:[B
    .end local v2           #dcd_id_string:Ljava/lang/String;
    .end local v4           #headerStartIndexOffset:I
    .end local v5           #i:I
    :sswitch_2
    invoke-static {p2, p3, p4, v0}, Lcom/android/internal/telephony/ZteWapPushOverSms;->dispatchWapPdu_SYNML_NOTIFICATION([BIII)V

    .line 765
    const/4 v3, 0x1

    .line 766
    goto :goto_0

    .line 770
    :sswitch_3
    invoke-static {p2, p3, p4, v0}, Lcom/android/internal/telephony/ZteWapPushOverSms;->dispatchWapPdu_CONNECTIVITY_WBXML([BIII)V

    .line 771
    const/4 v3, 0x1

    .line 772
    goto :goto_0

    .line 776
    :sswitch_4
    invoke-static {p2, p3, p4, v0}, Lcom/android/internal/telephony/ZteWapPushOverSms;->dispatchWapPdu_EMN_WBXML([BIII)V

    .line 777
    const/4 v3, 0x1

    .line 778
    goto :goto_0

    .line 780
    :sswitch_5
    invoke-static {p2, p3, p4, v0}, Lcom/android/internal/telephony/ZteWapPushOverSms;->dispatchWapPdu_EMN_B_X_HDML([BIII)V

    .line 781
    const/4 v3, 0x1

    .line 782
    goto :goto_0

    .line 725
    nop

    :sswitch_data_0
    .sparse-switch
        0x4 -> :sswitch_5
        0x2e -> :sswitch_0
        0x30 -> :sswitch_1
        0x36 -> :sswitch_3
        0x44 -> :sswitch_2
        0x30a -> :sswitch_4
    .end sparse-switch
.end method

.method private static dispatchWapPdu_CONNECTIVITY_WBXML([BIII)V
    .locals 6
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "dataIndex"

    .prologue
    .line 664
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "CONNECTIVITY_WBXML: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 668
    .local v1, intent:Landroid/content/Intent;
    sget-object v3, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 669
    const-string v3, "data"

    invoke-virtual {v1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 670
    const-string v3, "subscription"

    sget-object v4, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v4, v4, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 673
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    .line 674
    .local v2, permission:Ljava/lang/String;
    const/16 v0, 0x13

    .line 675
    .local v0, appOp:I
    sget-object v3, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    sget-object v4, Lcom/android/internal/telephony/ZteWapPushOverSms;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 677
    return-void
.end method

.method private static dispatchWapPdu_EMN_B_X_HDML([BIII)V
    .locals 6
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "dataIndex"

    .prologue
    .line 699
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "X_HDML: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "mimetype = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    sget-object v5, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 703
    .local v1, intent:Landroid/content/Intent;
    sget-object v3, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 704
    const-string v3, "data"

    invoke-virtual {v1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 705
    const-string v3, "subscription"

    sget-object v4, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v4, v4, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 708
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    .line 709
    .local v2, permission:Ljava/lang/String;
    const/16 v0, 0x13

    .line 710
    .local v0, appOp:I
    sget-object v3, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    sget-object v4, Lcom/android/internal/telephony/ZteWapPushOverSms;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 711
    return-void
.end method

.method private static dispatchWapPdu_EMN_WBXML([BIII)V
    .locals 6
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "dataIndex"

    .prologue
    .line 683
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "EMN_WBXML: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 687
    .local v1, intent:Landroid/content/Intent;
    sget-object v3, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 688
    const-string v3, "data"

    invoke-virtual {v1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 689
    const-string v3, "subscription"

    sget-object v4, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v4, v4, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 692
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    .line 693
    .local v2, permission:Ljava/lang/String;
    const/16 v0, 0x13

    .line 694
    .local v0, appOp:I
    sget-object v3, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    sget-object v4, Lcom/android/internal/telephony/ZteWapPushOverSms;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 695
    return-void
.end method

.method private static dispatchWapPdu_SI([BIII)Z
    .locals 30
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "dataIndex"

    .prologue
    .line 33
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v26, v0

    sub-int v26, v26, p3

    move/from16 v0, v26

    new-array v11, v0, [B

    .line 34
    .local v11, data:[B
    const/16 v26, 0x0

    array-length v0, v11

    move/from16 v27, v0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v26

    move/from16 v3, v27

    invoke-static {v0, v1, v11, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 37
    const/4 v12, 0x0

    .line 38
    .local v12, index:I
    add-int/lit8 v13, v12, 0x1

    .end local v12           #index:I
    .local v13, index:I
    aget-byte v26, v11, v12

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v25, v0

    .line 39
    .local v25, wbxml_version:I
    const/16 v26, 0x1

    move/from16 v0, v26

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    const/16 v26, 0x2

    move/from16 v0, v26

    move/from16 v1, v25

    if-eq v0, v1, :cond_0

    .line 40
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push version is Not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 41
    const/16 v26, 0x0

    move v12, v13

    .line 413
    .end local v13           #index:I
    .restart local v12       #index:I
    :goto_0
    return v26

    .line 45
    .end local v12           #index:I
    .restart local v13       #index:I
    :cond_0
    new-instance v26, Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v26

    invoke-direct {v0, v11}, Lcom/android/internal/telephony/ZteWspTypeDecoder;-><init>([B)V

    sput-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    .line 48
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v26

    invoke-virtual {v0, v13}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v26

    if-nez v26, :cond_1

    .line 49
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push publicId error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 50
    const/16 v26, 0x0

    move v12, v13

    .end local v13           #index:I
    .restart local v12       #index:I
    goto :goto_0

    .line 52
    .end local v12           #index:I
    .restart local v13       #index:I
    :cond_1
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValue32()J

    move-result-wide v19

    .line 53
    .local v19, publicId:J
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int/lit8 v12, v26, 0x1

    .line 54
    .end local v13           #index:I
    .restart local v12       #index:I
    const-wide/16 v26, 0x5

    cmp-long v26, v26, v19

    if-eqz v26, :cond_2

    .line 55
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push Not SI index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 56
    const/16 v26, 0x0

    goto :goto_0

    .line 60
    :cond_2
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v26

    if-nez v26, :cond_3

    .line 61
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push charset error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 64
    :cond_3
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValue32()J

    move-result-wide v8

    .line 65
    .local v8, charSet:J
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int v12, v12, v26

    .line 67
    const-wide/16 v26, 0x6a

    cmp-long v26, v26, v8

    if-eqz v26, :cond_4

    const-wide/16 v26, 0x4

    cmp-long v26, v26, v8

    if-eqz v26, :cond_4

    const-wide/16 v26, 0x3

    cmp-long v26, v26, v8

    if-eqz v26, :cond_4

    .line 68
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push charset Not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 69
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 74
    :cond_4
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v26

    if-nez v26, :cond_5

    .line 75
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push table_strlen error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 76
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 79
    :cond_5
    const/16 v22, 0x0

    .line 80
    .local v22, table_str:Ljava/lang/String;
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValue32()J

    move-result-wide v23

    .line 81
    .local v23, table_strlen:J
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int v12, v12, v26

    .line 82
    const-wide/16 v26, 0x0

    cmp-long v26, v26, v23

    if-eqz v26, :cond_7

    .line 83
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeTextString(I)Z

    move-result v26

    if-nez v26, :cond_6

    .line 84
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push table_str error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 87
    :cond_6
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v22

    .line 90
    :cond_7
    int-to-long v0, v12

    move-wide/from16 v26, v0

    add-long v26, v26, v23

    move-wide/from16 v0, v26

    long-to-int v12, v0

    .line 92
    array-length v0, v11

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-lt v12, v0, :cond_8

    .line 93
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push No valid content index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 98
    :cond_8
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/16 v27, 0x7

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    .line 99
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 100
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->NotifyText:Ljava/lang/String;

    .line 101
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/16 v27, 0x0

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->si_id:Ljava/lang/String;

    .line 103
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const-wide/16 v27, 0x0

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->created:J

    .line 104
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const-wide/16 v27, 0x0

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->si_expired:J

    .line 106
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v26

    iput-wide v8, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->CharSet:J

    .line 108
    aget-byte v26, v11, v12

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x80

    move/from16 v26, v0

    shr-int/lit8 v7, v26, 0x7

    .line 109
    .local v7, attrTag:I
    aget-byte v26, v11, v12

    and-int/lit8 v26, v26, 0x40

    shr-int/lit8 v10, v26, 0x6

    .line 110
    .local v10, conTag:I
    aget-byte v26, v11, v12

    and-int/lit8 v4, v26, 0x3f

    .line 111
    .local v4, SI_tag:I
    const/16 v26, 0x5

    move/from16 v0, v26

    if-eq v0, v4, :cond_9

    .line 112
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push Not SI 2 index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 113
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 115
    :cond_9
    add-int v21, v7, v10

    .line 116
    .local v21, siEndTagCount:I
    add-int/lit8 v12, v12, 0x1

    .line 118
    :cond_a
    :goto_1
    array-length v0, v11

    move/from16 v26, v0

    move/from16 v0, v26

    if-ge v12, v0, :cond_23

    if-lez v21, :cond_23

    .line 120
    aget-byte v26, v11, v12

    and-int/lit8 v4, v26, 0x3f

    .line 121
    sparse-switch v4, :sswitch_data_0

    .line 355
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push not handled tag:0x%x"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 356
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 123
    :sswitch_0
    aget-byte v26, v11, v12

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xc0

    move/from16 v26, v0

    if-eqz v26, :cond_b

    .line 124
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push end tag not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 125
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 127
    :cond_b
    add-int/lit8 v12, v12, 0x1

    .line 128
    add-int/lit8 v21, v21, -0x1

    .line 129
    goto :goto_1

    .line 131
    :sswitch_1
    aget-byte v26, v11, v12

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x80

    move/from16 v26, v0

    shr-int/lit8 v7, v26, 0x7

    .line 132
    aget-byte v26, v11, v12

    and-int/lit8 v26, v26, 0x40

    shr-int/lit8 v10, v26, 0x6

    .line 133
    add-int v26, v7, v10

    move/from16 v0, v26

    int-to-long v14, v0

    .line 134
    .local v14, indicationEndTagcount:J
    add-int/lit8 v12, v12, 0x1

    .line 135
    :goto_2
    array-length v0, v11

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-gt v12, v0, :cond_a

    const-wide/16 v26, 0x0

    cmp-long v26, v14, v26

    if-lez v26, :cond_a

    .line 136
    aget-byte v26, v11, v12

    move/from16 v0, v26

    and-int/lit16 v6, v0, 0xff

    .line 137
    .local v6, attrId:I
    packed-switch v6, :pswitch_data_0

    .line 334
    :pswitch_0
    add-int/lit8 v12, v12, 0x1

    .line 335
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push attribute content type not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 139
    :pswitch_1
    const-wide/16 v26, 0x1

    sub-long v14, v14, v26

    .line 140
    add-int/lit8 v12, v12, 0x1

    .line 141
    goto :goto_2

    .line 143
    :pswitch_2
    aget-byte v26, v11, v12

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xc0

    move/from16 v26, v0

    if-eqz v26, :cond_c

    .line 144
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push string table not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 145
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 147
    :cond_c
    add-int/lit8 v12, v12, 0x1

    .line 151
    const-wide/16 v26, 0x4

    cmp-long v26, v26, v8

    if-nez v26, :cond_d

    .line 152
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeTextStringLatin1(I)Z

    move-result v26

    if-nez v26, :cond_f

    .line 153
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push latin1 text error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 156
    :cond_d
    const-wide/16 v26, 0x3

    cmp-long v26, v26, v8

    if-nez v26, :cond_e

    .line 157
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeTextStringUsAscII(I)Z

    move-result v26

    if-nez v26, :cond_f

    .line 158
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push us-ascii text error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 159
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 162
    :cond_e
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeTextString(I)Z

    move-result v26

    if-nez v26, :cond_f

    .line 163
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push utf8 text error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 164
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 168
    :cond_f
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->NotifyText:Ljava/lang/String;

    move-object/from16 v26, v0

    if-nez v26, :cond_11

    .line 169
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->NotifyText:Ljava/lang/String;

    .line 170
    if-eqz v22, :cond_10

    .line 171
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v28, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->NotifyText:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->NotifyText:Ljava/lang/String;

    .line 177
    :cond_10
    :goto_3
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int v12, v12, v26

    .line 178
    goto/16 :goto_2

    .line 173
    :cond_11
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v26

    iget-object v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->NotifyText:Ljava/lang/String;

    move-object/from16 v26, v0

    if-eqz v26, :cond_10

    .line 174
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    sget-object v28, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->NotifyText:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v28 .. v28}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->NotifyText:Ljava/lang/String;

    goto :goto_3

    .line 181
    :pswitch_3
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/16 v27, 0x5

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    .line 182
    add-int/lit8 v12, v12, 0x1

    .line 183
    goto/16 :goto_2

    .line 185
    :pswitch_4
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/16 v27, 0x6

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    .line 186
    add-int/lit8 v12, v12, 0x1

    .line 187
    goto/16 :goto_2

    .line 189
    :pswitch_5
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/16 v27, 0x7

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    .line 190
    add-int/lit8 v12, v12, 0x1

    .line 191
    goto/16 :goto_2

    .line 193
    :pswitch_6
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/16 v27, 0x8

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    .line 194
    add-int/lit8 v12, v12, 0x1

    .line 195
    goto/16 :goto_2

    .line 197
    :pswitch_7
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/16 v27, 0x9

    move/from16 v0, v27

    move-object/from16 v1, v26

    iput v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    .line 198
    add-int/lit8 v12, v12, 0x1

    .line 199
    goto/16 :goto_2

    .line 201
    :pswitch_8
    add-int/lit8 v12, v12, 0x1

    .line 202
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push data type Not support index at1:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    aget-byte v26, v11, v12

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    const/16 v27, 0xc3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_12

    .line 205
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push data type Not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 208
    :cond_12
    add-int/lit8 v12, v12, 0x1

    .line 210
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeTimeInteger(I)Z

    move-result v26

    if-nez v26, :cond_13

    .line 211
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push create time error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 215
    :cond_13
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValue32()J

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->created:J

    .line 216
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int v12, v12, v26

    .line 218
    goto/16 :goto_2

    .line 220
    :pswitch_9
    add-int/lit8 v12, v12, 0x1

    .line 221
    aget-byte v26, v11, v12

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_14

    .line 222
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push href 0x0B string type not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 223
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 225
    :cond_14
    add-int/lit8 v12, v12, 0x1

    .line 226
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUrlString(I)Z

    move-result v26

    if-nez v26, :cond_15

    .line 227
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push href 0x0B url parse error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 228
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 230
    :cond_15
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 231
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int v12, v12, v26

    .line 232
    goto/16 :goto_2

    .line 234
    :pswitch_a
    add-int/lit8 v12, v12, 0x1

    .line 235
    aget-byte v26, v11, v12

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_16

    .line 236
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push href 0x0C string type not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 237
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 239
    :cond_16
    add-int/lit8 v12, v12, 0x1

    .line 240
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUrlString(I)Z

    move-result v26

    if-nez v26, :cond_17

    .line 241
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push href 0x0C url parse error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 242
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 244
    :cond_17
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 245
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int v12, v12, v26

    .line 246
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v28, Ljava/lang/String;

    const-string v29, "http://"

    invoke-direct/range {v28 .. v29}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    goto/16 :goto_2

    .line 249
    :pswitch_b
    add-int/lit8 v12, v12, 0x1

    .line 250
    aget-byte v26, v11, v12

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_18

    .line 251
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push href 0x0D string type not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 254
    :cond_18
    add-int/lit8 v12, v12, 0x1

    .line 255
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUrlString(I)Z

    move-result v26

    if-nez v26, :cond_19

    .line 256
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push href 0x0D url parse error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 257
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 259
    :cond_19
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 260
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int v12, v12, v26

    .line 261
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v28, Ljava/lang/String;

    const-string v29, "http://www."

    invoke-direct/range {v28 .. v29}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    goto/16 :goto_2

    .line 264
    :pswitch_c
    add-int/lit8 v12, v12, 0x1

    .line 265
    aget-byte v26, v11, v12

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1a

    .line 266
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push href 0x0E string type not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 267
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 269
    :cond_1a
    add-int/lit8 v12, v12, 0x1

    .line 270
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUrlString(I)Z

    move-result v26

    if-nez v26, :cond_1b

    .line 271
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push href 0x0E url parse error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 274
    :cond_1b
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 275
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int v12, v12, v26

    .line 276
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v28, Ljava/lang/String;

    const-string v29, "https://"

    invoke-direct/range {v28 .. v29}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    goto/16 :goto_2

    .line 279
    :pswitch_d
    add-int/lit8 v12, v12, 0x1

    .line 280
    aget-byte v26, v11, v12

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1c

    .line 281
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push href 0x0F string type not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 282
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 284
    :cond_1c
    add-int/lit8 v12, v12, 0x1

    .line 285
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUrlString(I)Z

    move-result v26

    if-nez v26, :cond_1d

    .line 286
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push href 0x0F url parse error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 289
    :cond_1d
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 290
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int v12, v12, v26

    .line 291
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v28, Ljava/lang/String;

    const-string v29, "https://www."

    invoke-direct/range {v28 .. v29}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    goto/16 :goto_2

    .line 294
    :pswitch_e
    add-int/lit8 v12, v12, 0x1

    .line 297
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push data type Not support index at11:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    aget-byte v26, v11, v12

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0xff

    move/from16 v26, v0

    const/16 v27, 0xc3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_1e

    .line 300
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push data type Not support index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 301
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 304
    :cond_1e
    add-int/lit8 v12, v12, 0x1

    .line 306
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeTimeInteger(I)Z

    move-result v26

    if-nez v26, :cond_1f

    .line 307
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push si-expires error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 308
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 311
    :cond_1f
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValue32()J

    move-result-wide v27

    move-wide/from16 v0, v27

    move-object/from16 v2, v26

    iput-wide v0, v2, Lcom/android/internal/telephony/ZteWspTypeDecoder;->si_expired:J

    .line 312
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int v12, v12, v26

    .line 314
    goto/16 :goto_2

    .line 316
    :pswitch_f
    add-int/lit8 v12, v12, 0x1

    .line 317
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu_default. data[index] 41= "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    aget-byte v28, v11, v12

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    const-string v28, "index :"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    aget-byte v26, v11, v12

    const/16 v27, 0x3

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_20

    .line 319
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push SI ID type Not support or may be null string, index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 323
    :cond_20
    add-int/lit8 v12, v12, 0x1

    .line 324
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v26

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUrlString(I)Z

    move-result v26

    if-nez v26, :cond_21

    .line 325
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "Received SI push SI ID parse error index at:"

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 326
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 328
    :cond_21
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v27

    move-object/from16 v0, v27

    move-object/from16 v1, v26

    iput-object v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->si_id:Ljava/lang/String;

    .line 329
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v26 .. v26}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v26

    add-int v12, v12, v26

    .line 330
    goto/16 :goto_2

    .line 342
    .end local v6           #attrId:I
    .end local v14           #indicationEndTagcount:J
    :sswitch_2
    aget-byte v26, v11, v12

    move/from16 v0, v26

    and-int/lit16 v0, v0, 0x80

    move/from16 v26, v0

    shr-int/lit8 v7, v26, 0x7

    .line 343
    aget-byte v26, v11, v12

    and-int/lit8 v26, v26, 0x40

    shr-int/lit8 v10, v26, 0x6

    .line 344
    add-int v16, v7, v10

    .line 345
    .local v16, infoEndTagCount:I
    add-int/lit8 v12, v12, 0x1

    .line 346
    :goto_4
    array-length v0, v11

    move/from16 v26, v0

    add-int/lit8 v26, v26, -0x1

    move/from16 v0, v26

    if-gt v12, v0, :cond_a

    if-lez v16, :cond_a

    .line 347
    const/16 v26, 0x1

    aget-byte v27, v11, v12

    move/from16 v0, v27

    and-int/lit16 v0, v0, 0xff

    move/from16 v27, v0

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_22

    .line 348
    add-int/lit8 v16, v16, -0x1

    .line 350
    :cond_22
    add-int/lit8 v12, v12, 0x1

    goto :goto_4

    .line 361
    .end local v16           #infoEndTagCount:I
    :cond_23
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v26

    iget-wide v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->created:J

    move-wide/from16 v26, v0

    sget-object v28, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->si_expired:J

    move-wide/from16 v28, v0

    cmp-long v26, v26, v28

    if-lez v26, :cond_24

    .line 362
    const-string v26, "WAP PUSH"

    const-string v27, "si expired, ignor wappush message"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    const/16 v26, 0x0

    goto/16 :goto_0

    .line 366
    :cond_24
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    move/from16 v26, v0

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/16 v27, 0x9

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_26

    .line 367
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu_default. si_id = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->si_id:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 369
    const-string v26, "WAP PUSH"

    const-string v27, "delete all the push message with the same si_id"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 377
    :cond_25
    :goto_5
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI mimeType: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 378
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI transactionId: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI pduType: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    move-object/from16 v0, v27

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI pdu: "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-static {v11}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v28

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 381
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI action = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v28

    iget v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    move/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI CharSet = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->CharSet:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 383
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI href = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 384
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI NotifyText = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->NotifyText:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 385
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI si_id = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->si_id:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 386
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI address = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/ZteWapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI created = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->created:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 388
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu SI si_expired = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v28

    iget-wide v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->si_expired:J

    move-wide/from16 v28, v0

    invoke-virtual/range {v27 .. v29}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 390
    new-instance v17, Landroid/content/Intent;

    const-string v26, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 391
    .local v17, intent:Landroid/content/Intent;
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 392
    const-string v26, "transactionId"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, p1

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 393
    const-string v26, "pduType"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, p2

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 394
    const-string v26, "data"

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    invoke-virtual {v0, v1, v11}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 395
    const-string v26, "href"

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 396
    const-string v26, "action"

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v27

    iget v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    move/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 397
    const-string v26, "NotifyText"

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->NotifyText:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 398
    const-string v26, "si_id"

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->si_id:Ljava/lang/String;

    move-object/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 399
    const-string v26, "address"

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-object/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 401
    const-string v26, "created"

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->created:J

    move-wide/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 402
    const-string v26, "si_expired"

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v27

    iget-wide v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->si_expired:J

    move-wide/from16 v27, v0

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move-wide/from16 v2, v27

    invoke-virtual {v0, v1, v2, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;J)Landroid/content/Intent;

    .line 404
    const-string v26, "subscription"

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    move-object/from16 v0, v27

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v27, v0

    invoke-virtual/range {v27 .. v27}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v27

    move-object/from16 v0, v17

    move-object/from16 v1, v26

    move/from16 v2, v27

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 409
    const-string v18, "android.permission.RECEIVE_WAP_PUSH"

    .line 410
    .local v18, permission:Ljava/lang/String;
    const/16 v5, 0x13

    .line 411
    .local v5, appOp:I
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->receiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v26

    move-object/from16 v1, v17

    move-object/from16 v2, v18

    move-object/from16 v3, v27

    invoke-virtual {v0, v1, v2, v5, v3}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 413
    const/16 v26, 0x1

    goto/16 :goto_0

    .line 370
    .end local v5           #appOp:I
    .end local v17           #intent:Landroid/content/Intent;
    .end local v18           #permission:Ljava/lang/String;
    :cond_26
    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    move/from16 v26, v0

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/16 v27, 0x9

    move/from16 v0, v26

    move/from16 v1, v27

    if-eq v0, v1, :cond_27

    sget-object v26, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v26

    iget v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    move/from16 v26, v0

    sget-object v27, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/16 v27, 0x5

    move/from16 v0, v26

    move/from16 v1, v27

    if-ne v0, v1, :cond_25

    .line 372
    :cond_27
    const-string v26, "WAP PUSH"

    new-instance v27, Ljava/lang/StringBuilder;

    invoke-direct/range {v27 .. v27}, Ljava/lang/StringBuilder;-><init>()V

    const-string v28, "dispatchWapPdu_default. si_id = "

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    sget-object v28, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v28

    iget-object v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->si_id:Ljava/lang/String;

    move-object/from16 v28, v0

    invoke-virtual/range {v27 .. v28}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v27

    invoke-virtual/range {v27 .. v27}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v27

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 374
    const-string v26, "WAP PUSH"

    const-string v27, "don\'t save the push message"

    invoke-static/range {v26 .. v27}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_5

    .line 121
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x6 -> :sswitch_1
        0x7 -> :sswitch_2
    .end sparse-switch

    .line 137
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_0
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method private static dispatchWapPdu_SL([BIII)Z
    .locals 25
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "dataIndex"

    .prologue
    .line 419
    move-object/from16 v0, p0

    array-length v0, v0

    move/from16 v21, v0

    sub-int v21, v21, p3

    move/from16 v0, v21

    new-array v10, v0, [B

    .line 420
    .local v10, data:[B
    const/16 v21, 0x0

    array-length v0, v10

    move/from16 v22, v0

    move-object/from16 v0, p0

    move/from16 v1, p3

    move/from16 v2, v21

    move/from16 v3, v22

    invoke-static {v0, v1, v10, v2, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 423
    const/4 v11, 0x0

    .line 424
    .local v11, index:I
    add-int/lit8 v12, v11, 0x1

    .end local v11           #index:I
    .local v12, index:I
    aget-byte v21, v10, v11

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xff

    move/from16 v20, v0

    .line 425
    .local v20, wbxml_version:I
    const/16 v21, 0x1

    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    const/16 v21, 0x2

    move/from16 v0, v21

    move/from16 v1, v20

    if-eq v0, v1, :cond_0

    .line 426
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push version is Not support index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 427
    const/16 v21, 0x0

    move v11, v12

    .line 639
    .end local v12           #index:I
    .restart local v11       #index:I
    :goto_0
    return v21

    .line 431
    .end local v11           #index:I
    .restart local v12       #index:I
    :cond_0
    new-instance v21, Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v21

    invoke-direct {v0, v10}, Lcom/android/internal/telephony/ZteWspTypeDecoder;-><init>([B)V

    sput-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    .line 434
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v21

    invoke-virtual {v0, v12}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v21

    if-nez v21, :cond_1

    .line 435
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push publicId error index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 436
    const/16 v21, 0x0

    move v11, v12

    .end local v12           #index:I
    .restart local v11       #index:I
    goto :goto_0

    .line 438
    .end local v11           #index:I
    .restart local v12       #index:I
    :cond_1
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValue32()J

    move-result-wide v15

    .line 439
    .local v15, publicId:J
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v21

    add-int/lit8 v11, v21, 0x1

    .line 440
    .end local v12           #index:I
    .restart local v11       #index:I
    const-wide/16 v21, 0x6

    cmp-long v21, v21, v15

    if-eqz v21, :cond_2

    .line 441
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push Not SL index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    const/16 v21, 0x0

    goto :goto_0

    .line 446
    :cond_2
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v21

    if-nez v21, :cond_3

    .line 447
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push charset error index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 448
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 450
    :cond_3
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValue32()J

    move-result-wide v7

    .line 451
    .local v7, charSet:J
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v21

    add-int v11, v11, v21

    .line 453
    const-wide/16 v21, 0x6a

    cmp-long v21, v21, v7

    if-eqz v21, :cond_4

    const-wide/16 v21, 0x4

    cmp-long v21, v21, v7

    if-eqz v21, :cond_4

    .line 454
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push charset Not support index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 459
    :cond_4
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUintvarInteger(I)Z

    move-result v21

    if-nez v21, :cond_5

    .line 460
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SI push table_strlen error index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 461
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 463
    :cond_5
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValue32()J

    move-result-wide v18

    .line 464
    .local v18, table_strlen:J
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v21

    add-int v11, v11, v21

    .line 465
    const-wide/16 v21, 0x0

    cmp-long v21, v21, v18

    if-eqz v21, :cond_6

    .line 466
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push string table Not support index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 467
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 470
    :cond_6
    int-to-long v0, v11

    move-wide/from16 v21, v0

    add-long v21, v21, v18

    move-wide/from16 v0, v21

    long-to-int v11, v0

    .line 472
    array-length v0, v10

    move/from16 v21, v0

    add-int/lit8 v21, v21, -0x1

    move/from16 v0, v21

    if-lt v11, v0, :cond_7

    .line 473
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push No valid content index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 474
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 478
    :cond_7
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/16 v22, 0x5

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    .line 479
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 480
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/16 v22, 0x0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->NotifyText:Ljava/lang/String;

    .line 481
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v21

    iput-wide v7, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->CharSet:J

    .line 483
    aget-byte v21, v10, v11

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0x80

    move/from16 v21, v0

    shr-int/lit8 v6, v21, 0x7

    .line 484
    .local v6, attrTag:I
    aget-byte v21, v10, v11

    and-int/lit8 v21, v21, 0x40

    shr-int/lit8 v9, v21, 0x6

    .line 485
    .local v9, conTag:I
    aget-byte v21, v10, v11

    and-int/lit8 v4, v21, 0x3f

    .line 486
    .local v4, SL_tag:I
    const/16 v21, 0x5

    move/from16 v0, v21

    if-eq v0, v4, :cond_8

    .line 487
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push Not SI 2 index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 488
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 490
    :cond_8
    add-int v17, v6, v9

    .line 491
    .local v17, slEndTagCount:I
    add-int/lit8 v11, v11, 0x1

    .line 493
    :goto_1
    array-length v0, v10

    move/from16 v21, v0

    move/from16 v0, v21

    if-ge v11, v0, :cond_14

    if-lez v17, :cond_14

    .line 495
    aget-byte v21, v10, v11

    and-int/lit8 v4, v21, 0x3f

    .line 496
    packed-switch v4, :pswitch_data_0

    .line 588
    :pswitch_0
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push not handled tag:0x%x"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 589
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 498
    :pswitch_1
    aget-byte v21, v10, v11

    move/from16 v0, v21

    and-int/lit16 v0, v0, 0xc0

    move/from16 v21, v0

    if-eqz v21, :cond_9

    .line 499
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push end tag not support index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 500
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 502
    :cond_9
    add-int/lit8 v11, v11, 0x1

    .line 503
    add-int/lit8 v17, v17, -0x1

    .line 504
    goto :goto_1

    .line 506
    :pswitch_2
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v22, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/16 v22, 0x5

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    .line 507
    add-int/lit8 v11, v11, 0x1

    .line 508
    goto :goto_1

    .line 510
    :pswitch_3
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v22, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/16 v22, 0x6

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    .line 511
    add-int/lit8 v11, v11, 0x1

    .line 512
    goto :goto_1

    .line 514
    :pswitch_4
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v22, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/16 v22, 0x7

    move/from16 v0, v22

    move-object/from16 v1, v21

    iput v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    .line 515
    add-int/lit8 v11, v11, 0x1

    .line 516
    goto/16 :goto_1

    .line 518
    :pswitch_5
    add-int/lit8 v11, v11, 0x1

    .line 519
    aget-byte v21, v10, v11

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_a

    .line 520
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push href 0x08 string type not support index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 523
    :cond_a
    add-int/lit8 v11, v11, 0x1

    .line 524
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUrlString(I)Z

    move-result v21

    if-nez v21, :cond_b

    .line 525
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push href 0x08 url parse error index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 526
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 528
    :cond_b
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    sget-object v22, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 529
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v21

    add-int v11, v11, v21

    .line 530
    goto/16 :goto_1

    .line 532
    :pswitch_6
    add-int/lit8 v11, v11, 0x1

    .line 533
    aget-byte v21, v10, v11

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_c

    .line 534
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push href 0x09 string type not support index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 537
    :cond_c
    add-int/lit8 v11, v11, 0x1

    .line 538
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUrlString(I)Z

    move-result v21

    if-nez v21, :cond_d

    .line 539
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push href 0x09 url parse error index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 540
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 542
    :cond_d
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v23, Ljava/lang/String;

    const-string v24, "http://"

    invoke-direct/range {v23 .. v24}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 543
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v21

    add-int v11, v11, v21

    .line 544
    goto/16 :goto_1

    .line 546
    :pswitch_7
    add-int/lit8 v11, v11, 0x1

    .line 547
    aget-byte v21, v10, v11

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_e

    .line 548
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push href 0x0A string type not support index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 549
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 551
    :cond_e
    add-int/lit8 v11, v11, 0x1

    .line 552
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUrlString(I)Z

    move-result v21

    if-nez v21, :cond_f

    .line 553
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push href 0x0A url parse error index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 554
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 556
    :cond_f
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v23, Ljava/lang/String;

    const-string v24, "http://www."

    invoke-direct/range {v23 .. v24}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 557
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v21

    add-int v11, v11, v21

    .line 558
    goto/16 :goto_1

    .line 560
    :pswitch_8
    add-int/lit8 v11, v11, 0x1

    .line 561
    aget-byte v21, v10, v11

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_10

    .line 562
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push href 0x0B string type not support index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 563
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 565
    :cond_10
    add-int/lit8 v11, v11, 0x1

    .line 566
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->siPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUrlString(I)Z

    move-result v21

    if-nez v21, :cond_11

    .line 567
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push href 0x0B url parse error index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 570
    :cond_11
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v23, Ljava/lang/String;

    const-string v24, "https://"

    invoke-direct/range {v23 .. v24}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 571
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v21

    add-int v11, v11, v21

    .line 572
    goto/16 :goto_1

    .line 574
    :pswitch_9
    add-int/lit8 v11, v11, 0x1

    .line 575
    aget-byte v21, v10, v11

    const/16 v22, 0x3

    move/from16 v0, v21

    move/from16 v1, v22

    if-eq v0, v1, :cond_12

    .line 576
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push href 0x0C string type not support index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 577
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 579
    :cond_12
    add-int/lit8 v11, v11, 0x1

    .line 580
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v21

    invoke-virtual {v0, v11}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->decodeUrlString(I)Z

    move-result v21

    if-nez v21, :cond_13

    .line 581
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "Received SL push href 0x0C url parse error index at:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 582
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 584
    :cond_13
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v23, Ljava/lang/String;

    const-string v24, "https://www."

    invoke-direct/range {v23 .. v24}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v23 .. v23}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getValueString()Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    iput-object v0, v1, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    .line 585
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    invoke-virtual/range {v21 .. v21}, Lcom/android/internal/telephony/ZteWspTypeDecoder;->getDecodedDataLength()I

    move-result v21

    add-int v11, v11, v21

    .line 586
    goto/16 :goto_1

    .line 595
    :cond_14
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    const-string v22, "application/x-oma-DCD:DCD.ua"

    invoke-virtual/range {v21 .. v22}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v21

    if-eqz v21, :cond_15

    .line 597
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "SL_DCD: "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 600
    new-instance v13, Landroid/content/Intent;

    const-string v21, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 601
    .local v13, intent:Landroid/content/Intent;
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 602
    const-string v21, "href"

    sget-object v22, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 604
    const-string v14, "android.permission.RECEIVE_WAP_PUSH"

    .line 605
    .local v14, permission:Ljava/lang/String;
    const/16 v5, 0x13

    .line 606
    .local v5, appOp:I
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    sget-object v22, Lcom/android/internal/telephony/ZteWapPushOverSms;->receiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v14, v5, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 607
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 610
    .end local v5           #appOp:I
    .end local v13           #intent:Landroid/content/Intent;
    .end local v14           #permission:Ljava/lang/String;
    :cond_15
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v21

    iget v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    move/from16 v21, v0

    sget-object v22, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    const/16 v22, 0x7

    move/from16 v0, v21

    move/from16 v1, v22

    if-ne v0, v1, :cond_16

    .line 611
    const-string v21, "WAP PUSH"

    const-string v22, "Received SL push not handled when action is cache "

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    const/16 v21, 0x0

    goto/16 :goto_0

    .line 615
    :cond_16
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "dispatchWapPdu SL mimeType:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 616
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "dispatchWapPdu SL pduType:"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    move-object/from16 v0, v22

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 617
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "dispatchWapPdu SL pdu :"

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-static {v10}, Lcom/android/internal/util/HexDump;->toHexString([B)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 618
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "dispatchWapPdu SL action = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v23

    iget v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    move/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "dispatchWapPdu SL CharSet = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v23

    iget-wide v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->CharSet:J

    move-wide/from16 v23, v0

    invoke-virtual/range {v22 .. v24}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "dispatchWapPdu SL href = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v23

    iget-object v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v23, v0

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    const-string v21, "WAP PUSH"

    new-instance v22, Ljava/lang/StringBuilder;

    invoke-direct/range {v22 .. v22}, Ljava/lang/StringBuilder;-><init>()V

    const-string v23, "dispatchWapPdu SL address = "

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    sget-object v23, Lcom/android/internal/telephony/ZteWapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    invoke-virtual/range {v22 .. v23}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v22

    invoke-static/range {v21 .. v22}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    new-instance v13, Landroid/content/Intent;

    const-string v21, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    move-object/from16 v0, v21

    invoke-direct {v13, v0}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 624
    .restart local v13       #intent:Landroid/content/Intent;
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 625
    const-string v21, "transactionId"

    move-object/from16 v0, v21

    move/from16 v1, p1

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 626
    const-string v21, "pduType"

    move-object/from16 v0, v21

    move/from16 v1, p2

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 627
    const-string v21, "data"

    move-object/from16 v0, v21

    invoke-virtual {v13, v0, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 628
    const-string v21, "href"

    sget-object v22, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->href:Ljava/lang/String;

    move-object/from16 v22, v0

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 629
    const-string v21, "action"

    sget-object v22, Lcom/android/internal/telephony/ZteWapPushOverSms;->slPduDecoder:Lcom/android/internal/telephony/ZteWspTypeDecoder;

    move-object/from16 v0, v22

    iget v0, v0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->action:I

    move/from16 v22, v0

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 630
    const-string v21, "address"

    sget-object v22, Lcom/android/internal/telephony/ZteWapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 632
    const-string v21, "contentTypeParameters"

    sget-object v22, Lcom/android/internal/telephony/ZteWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/WspTypeDecoder;->getContentParameters()Ljava/util/HashMap;

    move-result-object v22

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/io/Serializable;)Landroid/content/Intent;

    .line 634
    const-string v21, "subscription"

    sget-object v22, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    move-object/from16 v0, v22

    iget-object v0, v0, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v22

    move-object/from16 v0, v21

    move/from16 v1, v22

    invoke-virtual {v13, v0, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 636
    const-string v14, "android.permission.RECEIVE_WAP_PUSH"

    .line 637
    .restart local v14       #permission:Ljava/lang/String;
    const/16 v5, 0x13

    .line 638
    .restart local v5       #appOp:I
    sget-object v21, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    sget-object v22, Lcom/android/internal/telephony/ZteWapPushOverSms;->receiver:Landroid/content/BroadcastReceiver;

    move-object/from16 v0, v21

    move-object/from16 v1, v22

    invoke-virtual {v0, v13, v14, v5, v1}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 639
    const/16 v21, 0x1

    goto/16 :goto_0

    .line 496
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
    .end packed-switch
.end method

.method private static dispatchWapPdu_SYNML_NOTIFICATION([BIII)V
    .locals 6
    .parameter "pdu"
    .parameter "transactionId"
    .parameter "pduType"
    .parameter "dataIndex"

    .prologue
    .line 646
    const-string v3, "WAP PUSH"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "SYNML_NOTIFICATION: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-static {p0}, Lcom/android/internal/telephony/uicc/IccUtils;->bytesToHexString([B)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 649
    new-instance v1, Landroid/content/Intent;

    const-string v3, "android.provider.Telephony.WAP_PUSH_RECEIVED"

    invoke-direct {v1, v3}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 650
    .local v1, intent:Landroid/content/Intent;
    sget-object v3, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    invoke-virtual {v1, v3}, Landroid/content/Intent;->setType(Ljava/lang/String;)Landroid/content/Intent;

    .line 651
    const-string v3, "data"

    invoke-virtual {v1, v3, p0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;[B)Landroid/content/Intent;

    .line 652
    const-string v3, "subscription"

    sget-object v4, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    iget-object v4, v4, Lcom/android/internal/telephony/InboundSmsHandler;->mPhone:Lcom/android/internal/telephony/PhoneBase;

    invoke-virtual {v4}, Lcom/android/internal/telephony/PhoneBase;->getSubscription()I

    move-result v4

    invoke-virtual {v1, v3, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 655
    const-string v2, "android.permission.RECEIVE_WAP_PUSH"

    .line 656
    .local v2, permission:Ljava/lang/String;
    const/16 v0, 0x13

    .line 657
    .local v0, appOp:I
    sget-object v3, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    sget-object v4, Lcom/android/internal/telephony/ZteWapPushOverSms;->receiver:Landroid/content/BroadcastReceiver;

    invoke-virtual {v3, v1, v2, v0, v4}, Lcom/android/internal/telephony/InboundSmsHandler;->dispatchIntent(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/BroadcastReceiver;)V

    .line 658
    return-void
.end method

.method public static getMimeType()Ljava/lang/String;
    .locals 1

    .prologue
    .line 794
    sget-object v0, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    return-object v0
.end method

.method public static init(Landroid/content/BroadcastReceiver;Lcom/android/internal/telephony/InboundSmsHandler;Ljava/lang/String;Lcom/android/internal/telephony/WspTypeDecoder;)V
    .locals 0
    .parameter "mReceiver"
    .parameter "tHandler"
    .parameter "tMimeType"
    .parameter "tPduDecoder"

    .prologue
    .line 714
    sput-object p0, Lcom/android/internal/telephony/ZteWapPushOverSms;->receiver:Landroid/content/BroadcastReceiver;

    .line 715
    sput-object p1, Lcom/android/internal/telephony/ZteWapPushOverSms;->handler:Lcom/android/internal/telephony/InboundSmsHandler;

    .line 716
    sput-object p2, Lcom/android/internal/telephony/ZteWapPushOverSms;->mimeType:Ljava/lang/String;

    .line 717
    sput-object p3, Lcom/android/internal/telephony/ZteWapPushOverSms;->pduDecoder:Lcom/android/internal/telephony/WspTypeDecoder;

    .line 718
    return-void
.end method

.method public static setAddress(Ljava/lang/String;)V
    .locals 0
    .parameter "address"

    .prologue
    .line 29
    sput-object p0, Lcom/android/internal/telephony/ZteWapPushOverSms;->mOriginatingAddress:Ljava/lang/String;

    .line 30
    return-void
.end method
