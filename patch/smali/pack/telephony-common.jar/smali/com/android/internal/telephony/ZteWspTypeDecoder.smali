.class public Lcom/android/internal/telephony/ZteWspTypeDecoder;
.super Lcom/android/internal/telephony/WspTypeDecoder;
.source "ZteWspTypeDecoder.java"


# static fields
.field public static final CONTENT_MIME_TYPE_B_PUSH_SL_DCD:Ljava/lang/String; = "application/x-oma-DCD:DCD.ua"

.field public static final CONTENT_TYPE_B_EMN_WBXML:I = 0x30a

.field public static final CONTENT_TYPE_B_PUSH_CONNECTIVITY_WBXML:I = 0x36

.field public static final CONTENT_TYPE_B_PUSH_SI:I = 0x2e

.field public static final CONTENT_TYPE_B_PUSH_SL:I = 0x30

.field public static final CONTENT_TYPE_B_PUSH_SYNML_NOTIFICATION:I = 0x44

.field public static final CONTENT_TYPE_B_X_HDML:I = 0x4

.field public static final EXECUTE_CACHE:I = 0x7

.field public static final EXECUTE_HIGH:I = 0x6

.field public static final EXECUTE_LOW:I = 0x5

.field private static final LOG_TAG:Ljava/lang/String; = "WspTypeDecoder"

.field public static final PDU_TYPE_DM:I = 0xf0

.field public static final SIGNAL_DELETE:I = 0x9

.field public static final SIGNAL_HIGH:I = 0x8

.field public static final SIGNAL_LOW:I = 0x6

.field public static final SIGNAL_MEDIUM:I = 0x7

.field public static final SIGNAL_NONE:I = 0x5


# instance fields
.field CharSet:J

.field NotifyText:Ljava/lang/String;

.field action:I

.field created:J

.field href:Ljava/lang/String;

.field si_expired:J

.field si_id:Ljava/lang/String;


# direct methods
.method public constructor <init>([B)V
    .locals 0
    .param p1, "pdu"    # [B

    .prologue
    .line 44
    invoke-direct {p0, p1}, Lcom/android/internal/telephony/WspTypeDecoder;-><init>([B)V

    .line 46
    return-void
.end method


# virtual methods
.method public decodeTextStringLatin1(I)Z
    .locals 7
    .param p1, "startIndex"    # I

    .prologue
    .line 49
    move v1, p1

    .line 50
    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    aget-byte v2, v2, v1

    if-eqz v2, :cond_0

    .line 51
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 53
    :cond_0
    sub-int v2, v1, p1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mDataLength:I

    .line 55
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    aget-byte v2, v2, p1

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_1

    .line 56
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mDataLength:I

    add-int/lit8 v5, v5, -0x2

    const-string v6, "ISO-8859-1"

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 63
    :goto_1
    const/4 v2, 0x1

    :goto_2
    return v2

    .line 58
    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    iget v4, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mDataLength:I

    add-int/lit8 v4, v4, -0x1

    const-string v5, "ISO-8859-1"

    invoke-direct {v2, v3, p1, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mStringValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 60
    :catch_0
    move-exception v0

    .line 61
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public decodeTextStringUsAscII(I)Z
    .locals 7
    .param p1, "startIndex"    # I

    .prologue
    .line 68
    move v1, p1

    .line 69
    .local v1, "index":I
    :goto_0
    iget-object v2, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    aget-byte v2, v2, v1

    if-eqz v2, :cond_0

    .line 70
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 72
    :cond_0
    sub-int v2, v1, p1

    add-int/lit8 v2, v2, 0x1

    iput v2, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mDataLength:I

    .line 75
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    aget-byte v2, v2, p1

    const/16 v3, 0x7f

    if-ne v2, v3, :cond_1

    .line 76
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    add-int/lit8 v4, p1, 0x1

    iget v5, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mDataLength:I

    add-int/lit8 v5, v5, -0x2

    const-string v6, "US-ASCII"

    invoke-direct {v2, v3, v4, v5, v6}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 83
    :goto_1
    const/4 v2, 0x1

    :goto_2
    return v2

    .line 78
    :cond_1
    new-instance v2, Ljava/lang/String;

    iget-object v3, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    iget v4, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mDataLength:I

    add-int/lit8 v4, v4, -0x1

    const-string v5, "US-ASCII"

    invoke-direct {v2, v3, p1, v4, v5}, Ljava/lang/String;-><init>([BIILjava/lang/String;)V

    iput-object v2, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mStringValue:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_1

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Ljava/lang/Exception;
    const/4 v2, 0x0

    goto :goto_2
.end method

.method public decodeTimeInteger(I)Z
    .locals 13
    .param p1, "startIndex"    # I

    .prologue
    .line 87
    move v2, p1

    .line 89
    .local v2, "index":I
    iget-object v10, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .local v3, "index":I
    aget-byte v10, v10, v2

    and-int/lit16 v4, v10, 0xff

    .line 91
    .local v4, "len":I
    add-int/lit8 v10, v4, 0x1

    iput v10, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mDataLength:I

    .line 94
    const/4 v10, 0x2

    if-lt v4, v10, :cond_0

    const/4 v10, 0x7

    if-le v4, v10, :cond_1

    .line 95
    :cond_0
    const/4 v10, 0x0

    move v2, v3

    .line 147
    .end local v3    # "index":I
    .restart local v2    # "index":I
    :goto_0
    return v10

    .line 97
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_1
    const/4 v9, 0x0

    .line 98
    .local v9, "year":I
    const/4 v6, 0x0

    .line 99
    .local v6, "month":I
    const/4 v0, 0x0

    .line 100
    .local v0, "day":I
    const/4 v1, 0x0

    .line 101
    .local v1, "hour":I
    const/4 v5, 0x0

    .line 102
    .local v5, "minute":I
    const/4 v7, 0x0

    .line 105
    .local v7, "second":I
    const/4 v10, 0x2

    if-lt v4, v10, :cond_2

    .line 106
    iget-object v10, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-byte v10, v10, v3

    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v9

    .line 107
    const-string v10, "WspTypeDecoder"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "decodeTimeInteger year1:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    mul-int/lit8 v10, v9, 0x64

    iget-object v11, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    add-int/lit8 v3, v2, 0x1

    .end local v2    # "index":I
    .restart local v3    # "index":I
    aget-byte v11, v11, v2

    invoke-static {v11}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v11

    add-int v9, v10, v11

    .line 114
    :cond_2
    const/4 v10, 0x3

    if-lt v4, v10, :cond_3

    .line 115
    iget-object v10, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-byte v10, v10, v3

    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v6

    move v3, v2

    .line 118
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_3
    const/4 v10, 0x4

    if-lt v4, v10, :cond_4

    .line 119
    iget-object v10, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-byte v10, v10, v3

    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v0

    move v3, v2

    .line 122
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_4
    const/4 v10, 0x5

    if-lt v4, v10, :cond_5

    .line 123
    iget-object v10, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-byte v10, v10, v3

    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v1

    move v3, v2

    .line 126
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_5
    const/4 v10, 0x6

    if-lt v4, v10, :cond_6

    .line 127
    iget-object v10, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-byte v10, v10, v3

    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v5

    move v3, v2

    .line 130
    .end local v2    # "index":I
    .restart local v3    # "index":I
    :cond_6
    const/4 v10, 0x7

    if-ne v4, v10, :cond_7

    .line 131
    iget-object v10, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    add-int/lit8 v2, v3, 0x1

    .end local v3    # "index":I
    .restart local v2    # "index":I
    aget-byte v10, v10, v3

    invoke-static {v10}, Lcom/android/internal/telephony/uicc/IccUtils;->cdmaBcdByteToInt(B)I

    move-result v7

    .line 135
    :goto_1
    new-instance v8, Landroid/text/format/Time;

    const-string v10, "UTC"

    invoke-direct {v8, v10}, Landroid/text/format/Time;-><init>(Ljava/lang/String;)V

    .line 137
    .local v8, "time":Landroid/text/format/Time;
    iput v9, v8, Landroid/text/format/Time;->year:I

    .line 138
    add-int/lit8 v10, v6, -0x1

    iput v10, v8, Landroid/text/format/Time;->month:I

    .line 139
    iput v0, v8, Landroid/text/format/Time;->monthDay:I

    .line 140
    iput v1, v8, Landroid/text/format/Time;->hour:I

    .line 141
    iput v5, v8, Landroid/text/format/Time;->minute:I

    .line 142
    iput v7, v8, Landroid/text/format/Time;->second:I

    .line 144
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Landroid/text/format/Time;->toMillis(Z)J

    move-result-wide v10

    iput-wide v10, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mUnsigned32bit:J

    .line 147
    const/4 v10, 0x1

    goto/16 :goto_0

    .end local v2    # "index":I
    .end local v8    # "time":Landroid/text/format/Time;
    .restart local v3    # "index":I
    :cond_7
    move v2, v3

    .end local v3    # "index":I
    .restart local v2    # "index":I
    goto :goto_1
.end method

.method public decodeUrlString(I)Z
    .locals 12
    .param p1, "startIndex"    # I

    .prologue
    const/4 v11, 0x1

    .line 151
    move v1, p1

    .line 152
    .local v1, "index":I
    const/4 v0, 0x0

    .local v0, "Attr_Tag":I
    const/4 v2, 0x0

    .local v2, "str_len1":I
    const/4 v3, 0x0

    .line 153
    .local v3, "str_len2":I
    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 154
    const/4 v7, 0x0

    iput-object v7, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 155
    :goto_0
    iget-object v7, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    aget-byte v7, v7, v1

    if-eqz v7, :cond_0

    .line 156
    add-int/lit8 v1, v1, 0x1

    .line 157
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 160
    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    aget-byte v7, v7, p1

    const/16 v8, 0x7f

    if-ne v7, v8, :cond_1

    .line 161
    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    add-int/lit8 v9, p1, 0x1

    sub-int v10, v1, p1

    add-int/lit8 v10, v10, -0x1

    invoke-direct {v7, v8, v9, v10}, Ljava/lang/String;-><init>([BII)V

    iput-object v7, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 166
    :goto_1
    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeTextString mStringValue: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mStringValue:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 167
    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString index: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "str_len1"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 168
    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString mDataLength: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mDataLength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 170
    add-int/lit8 v1, v1, 0x1

    .line 171
    move v5, v1

    .line 172
    .local v5, "tempIndex":I
    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString mWspData[index] & 0xFF: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    iget-object v7, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    aget-byte v7, v7, v5

    and-int/lit16 v6, v7, 0xff

    .line 177
    .local v6, "tempInt":I
    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString mWspData[index] & 0xFF: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 178
    iget-object v7, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    aget-byte v7, v7, v5

    and-int/lit16 v7, v7, 0xff

    packed-switch v7, :pswitch_data_0

    .line 201
    :goto_2
    if-ne v0, v11, :cond_4

    .line 203
    add-int/lit8 v1, v1, 0x1

    .line 205
    add-int/lit8 v5, v5, 0x1

    .line 206
    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString tempIndex: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "mWspData[tempIndex]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    aget-byte v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 207
    iget-object v7, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    aget-byte v7, v7, v5

    const/4 v8, 0x3

    if-ne v7, v8, :cond_3

    .line 209
    add-int/lit8 v1, v1, 0x1

    .line 211
    add-int/lit8 v5, v5, 0x1

    .line 212
    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString mWspData[tempIndex] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    aget-byte v9, v9, v5

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 213
    const/4 v3, 0x0

    .line 214
    :goto_3
    iget-object v7, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    aget-byte v7, v7, v5

    if-eqz v7, :cond_2

    .line 216
    add-int/lit8 v5, v5, 0x1

    .line 217
    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString mWspData[index] : "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    aget-byte v9, v9, v1

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 218
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 163
    .end local v5    # "tempIndex":I
    .end local v6    # "tempInt":I
    :cond_1
    new-instance v7, Ljava/lang/String;

    iget-object v8, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    sub-int v9, v1, p1

    invoke-direct {v7, v8, p1, v9}, Ljava/lang/String;-><init>([BII)V

    iput-object v7, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mStringValue:Ljava/lang/String;

    goto/16 :goto_1

    .line 181
    .restart local v5    # "tempIndex":I
    .restart local v6    # "tempInt":I
    :pswitch_0
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mStringValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    const-string v9, ".com/"

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 182
    const/4 v0, 0x1

    .line 183
    goto/16 :goto_2

    .line 185
    :pswitch_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mStringValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    const-string v9, ".edu/"

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 186
    const/4 v0, 0x1

    .line 187
    goto/16 :goto_2

    .line 189
    :pswitch_2
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mStringValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    const-string v9, ".net/"

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 190
    const/4 v0, 0x1

    .line 191
    goto/16 :goto_2

    .line 193
    :pswitch_3
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mStringValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    new-instance v8, Ljava/lang/String;

    const-string v9, ".org/"

    invoke-direct {v8, v9}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 194
    const/4 v0, 0x1

    .line 195
    goto/16 :goto_2

    .line 221
    :cond_2
    new-instance v4, Ljava/lang/String;

    iget-object v7, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mWspData:[B

    invoke-direct {v4, v7, v1, v3}, Ljava/lang/String;-><init>([BII)V

    .line 222
    .local v4, "string2":Ljava/lang/String;
    add-int/2addr v1, v3

    .line 223
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v8, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mStringValue:Ljava/lang/String;

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    iput-object v7, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mStringValue:Ljava/lang/String;

    .line 224
    add-int/lit8 v1, v1, 0x1

    .line 230
    .end local v4    # "string2":Ljava/lang/String;
    :cond_3
    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString Attr_Tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "str_len1 ::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 231
    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString Attr_Tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "str_len2 ::"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    :cond_4
    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString mStringValue: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mStringValue:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, "index:"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 236
    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString Attr_Tag: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    sub-int v7, v1, p1

    iput v7, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mDataLength:I

    .line 239
    const-string v7, "WspTypeDecoder"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "decodeUrlString mDataLength: "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget v9, p0, Lcom/android/internal/telephony/ZteWspTypeDecoder;->mDataLength:I

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 240
    return v11

    .line 178
    :pswitch_data_0
    .packed-switch 0x85
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method
