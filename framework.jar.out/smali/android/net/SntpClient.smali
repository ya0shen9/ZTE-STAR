.class public Landroid/net/SntpClient;
.super Ljava/lang/Object;
.source "SntpClient.java"


# static fields
.field private static final NTP_MODE_CLIENT:I = 0x3

.field private static final NTP_PACKET_SIZE:I = 0x30

.field private static final NTP_PORT:I = 0x7b

.field private static final NTP_VERSION:I = 0x3

.field private static final OFFSET_1900_TO_1970:J = 0x83aa7e80L

.field private static final ORIGINATE_TIME_OFFSET:I = 0x18

.field private static final RECEIVE_TIME_OFFSET:I = 0x20

.field private static final REFERENCE_TIME_OFFSET:I = 0x10

.field private static final TAG:Ljava/lang/String; = "SntpClient"

.field private static final TRANSMIT_TIME_OFFSET:I = 0x28


# instance fields
.field AllAddresses:[Ljava/net/InetAddress;

.field private mNtpTime:J

.field private mNtpTimeReference:J

.field private mRoundTripTime:J


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 39
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private read32([BI)J
    .locals 13
    .parameter "buffer"
    .parameter "offset"

    .prologue
    const/16 v9, 0x80

    .line 211
    aget-byte v0, p1, p2

    .line 212
    .local v0, b0:B
    add-int/lit8 v8, p2, 0x1

    aget-byte v1, p1, v8

    .line 213
    .local v1, b1:B
    add-int/lit8 v8, p2, 0x2

    aget-byte v2, p1, v8

    .line 214
    .local v2, b2:B
    add-int/lit8 v8, p2, 0x3

    aget-byte v3, p1, v8

    .line 217
    .local v3, b3:B
    and-int/lit16 v8, v0, 0x80

    if-ne v8, v9, :cond_0

    and-int/lit8 v8, v0, 0x7f

    add-int/lit16 v4, v8, 0x80

    .line 218
    .local v4, i0:I
    :goto_0
    and-int/lit16 v8, v1, 0x80

    if-ne v8, v9, :cond_1

    and-int/lit8 v8, v1, 0x7f

    add-int/lit16 v5, v8, 0x80

    .line 219
    .local v5, i1:I
    :goto_1
    and-int/lit16 v8, v2, 0x80

    if-ne v8, v9, :cond_2

    and-int/lit8 v8, v2, 0x7f

    add-int/lit16 v6, v8, 0x80

    .line 220
    .local v6, i2:I
    :goto_2
    and-int/lit16 v8, v3, 0x80

    if-ne v8, v9, :cond_3

    and-int/lit8 v8, v3, 0x7f

    add-int/lit16 v7, v8, 0x80

    .line 222
    .local v7, i3:I
    :goto_3
    int-to-long v8, v4

    const/16 v10, 0x18

    shl-long/2addr v8, v10

    int-to-long v10, v5

    const/16 v12, 0x10

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v6

    const/16 v12, 0x8

    shl-long/2addr v10, v12

    add-long/2addr v8, v10

    int-to-long v10, v7

    add-long/2addr v8, v10

    return-wide v8

    .end local v4           #i0:I
    .end local v5           #i1:I
    .end local v6           #i2:I
    .end local v7           #i3:I
    :cond_0
    move v4, v0

    .line 217
    goto :goto_0

    .restart local v4       #i0:I
    :cond_1
    move v5, v1

    .line 218
    goto :goto_1

    .restart local v5       #i1:I
    :cond_2
    move v6, v2

    .line 219
    goto :goto_2

    .restart local v6       #i2:I
    :cond_3
    move v7, v3

    .line 220
    goto :goto_3
.end method

.method private readTimeStamp([BI)J
    .locals 10
    .parameter "buffer"
    .parameter "offset"

    .prologue
    const-wide/16 v6, 0x3e8

    .line 230
    invoke-direct {p0, p1, p2}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v2

    .line 231
    .local v2, seconds:J
    add-int/lit8 v4, p2, 0x4

    invoke-direct {p0, p1, v4}, Landroid/net/SntpClient;->read32([BI)J

    move-result-wide v0

    .line 232
    .local v0, fraction:J
    const-wide v4, 0x83aa7e80L

    sub-long v4, v2, v4

    mul-long/2addr v4, v6

    mul-long/2addr v6, v0

    const-wide v8, 0x100000000L

    div-long/2addr v6, v8

    add-long/2addr v4, v6

    return-wide v4
.end method

.method private writeTimeStamp([BIJ)V
    .locals 11
    .parameter "buffer"
    .parameter "offset"
    .parameter "time"

    .prologue
    .line 240
    const-wide/16 v7, 0x3e8

    div-long v5, p3, v7

    .line 241
    .local v5, seconds:J
    const-wide/16 v7, 0x3e8

    mul-long/2addr v7, v5

    sub-long v2, p3, v7

    .line 242
    .local v2, milliseconds:J
    const-wide v7, 0x83aa7e80L

    add-long/2addr v5, v7

    .line 245
    add-int/lit8 v4, p2, 0x1

    .end local p2
    .local v4, offset:I
    const/16 v7, 0x18

    shr-long v7, v5, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, p2

    .line 246
    add-int/lit8 p2, v4, 0x1

    .end local v4           #offset:I
    .restart local p2
    const/16 v7, 0x10

    shr-long v7, v5, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    .line 247
    add-int/lit8 v4, p2, 0x1

    .end local p2
    .restart local v4       #offset:I
    const/16 v7, 0x8

    shr-long v7, v5, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, p2

    .line 248
    add-int/lit8 p2, v4, 0x1

    .end local v4           #offset:I
    .restart local p2
    const/4 v7, 0x0

    shr-long v7, v5, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    .line 250
    const-wide v7, 0x100000000L

    mul-long/2addr v7, v2

    const-wide/16 v9, 0x3e8

    div-long v0, v7, v9

    .line 252
    .local v0, fraction:J
    add-int/lit8 v4, p2, 0x1

    .end local p2
    .restart local v4       #offset:I
    const/16 v7, 0x18

    shr-long v7, v0, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, p2

    .line 253
    add-int/lit8 p2, v4, 0x1

    .end local v4           #offset:I
    .restart local p2
    const/16 v7, 0x10

    shr-long v7, v0, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    .line 254
    add-int/lit8 v4, p2, 0x1

    .end local p2
    .restart local v4       #offset:I
    const/16 v7, 0x8

    shr-long v7, v0, v7

    long-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, p2

    .line 256
    add-int/lit8 p2, v4, 0x1

    .end local v4           #offset:I
    .restart local p2
    invoke-static {}, Ljava/lang/Math;->random()D

    move-result-wide v7

    const-wide v9, 0x406fe00000000000L

    mul-double/2addr v7, v9

    double-to-int v7, v7

    int-to-byte v7, v7

    aput-byte v7, p1, v4

    .line 257
    return-void
.end method


# virtual methods
.method public getNtpTime()J
    .locals 2

    .prologue
    .line 185
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTime:J

    return-wide v0
.end method

.method public getNtpTimeReference()J
    .locals 2

    .prologue
    .line 195
    iget-wide v0, p0, Landroid/net/SntpClient;->mNtpTimeReference:J

    return-wide v0
.end method

.method public getRoundTripTime()J
    .locals 2

    .prologue
    .line 204
    iget-wide v0, p0, Landroid/net/SntpClient;->mRoundTripTime:J

    return-wide v0
.end method

.method public requestTime(Ljava/lang/String;I)Z
    .locals 37
    .parameter "host"
    .parameter "timeout"

    .prologue
    .line 77
    const/16 v29, 0x0

    .line 80
    .local v29, socket:Ljava/net/DatagramSocket;
    const/4 v6, 0x0

    .line 84
    .local v6, bSuccess:Z
    :try_start_0
    invoke-static/range {p1 .. p1}, Ljava/net/InetAddress;->getAllByName(Ljava/lang/String;)[Ljava/net/InetAddress;

    move-result-object v33

    move-object/from16 v0, v33

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/net/SntpClient;->AllAddresses:[Ljava/net/InetAddress;
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 92
    const-string v33, "SntpClient"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "requestTime:IP count = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/net/SntpClient;->AllAddresses:[Ljava/net/InetAddress;

    move-object/from16 v35, v0

    move-object/from16 v0, v35

    array-length v0, v0

    move/from16 v35, v0

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 93
    move-object/from16 v0, p0

    iget-object v5, v0, Landroid/net/SntpClient;->AllAddresses:[Ljava/net/InetAddress;

    .local v5, arr$:[Ljava/net/InetAddress;
    array-length v12, v5

    .local v12, len$:I
    const/4 v11, 0x0

    .local v11, i$:I
    move-object/from16 v30, v29

    .end local v29           #socket:Ljava/net/DatagramSocket;
    .local v30, socket:Ljava/net/DatagramSocket;
    :goto_0
    if-ge v11, v12, :cond_3

    aget-object v4, v5, v11

    .line 98
    .local v4, address:Ljava/net/InetAddress;
    :try_start_1
    new-instance v29, Ljava/net/DatagramSocket;

    invoke-direct/range {v29 .. v29}, Ljava/net/DatagramSocket;-><init>()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 99
    .end local v30           #socket:Ljava/net/DatagramSocket;
    .restart local v29       #socket:Ljava/net/DatagramSocket;
    :try_start_2
    move-object/from16 v0, v29

    move/from16 v1, p2

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->setSoTimeout(I)V

    .line 104
    const/16 v33, 0x30

    move/from16 v0, v33

    new-array v7, v0, [B

    .line 105
    .local v7, buffer:[B
    new-instance v17, Ljava/net/DatagramPacket;

    array-length v0, v7

    move/from16 v33, v0

    const/16 v34, 0x7b

    move-object/from16 v0, v17

    move/from16 v1, v33

    move/from16 v2, v34

    invoke-direct {v0, v7, v1, v4, v2}, Ljava/net/DatagramPacket;-><init>([BILjava/net/InetAddress;I)V

    .line 110
    .local v17, request:Ljava/net/DatagramPacket;
    const/16 v33, 0x0

    const/16 v34, 0x1b

    aput-byte v34, v7, v33

    .line 113
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v20

    .line 114
    .local v20, requestTime:J
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v18

    .line 115
    .local v18, requestTicks:J
    const/16 v33, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v33

    move-wide/from16 v2, v20

    invoke-direct {v0, v7, v1, v2, v3}, Landroid/net/SntpClient;->writeTimeStamp([BIJ)V

    .line 117
    move-object/from16 v0, v29

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->send(Ljava/net/DatagramPacket;)V

    .line 120
    new-instance v22, Ljava/net/DatagramPacket;

    array-length v0, v7

    move/from16 v33, v0

    move-object/from16 v0, v22

    move/from16 v1, v33

    invoke-direct {v0, v7, v1}, Ljava/net/DatagramPacket;-><init>([BI)V

    .line 121
    .local v22, response:Ljava/net/DatagramPacket;
    move-object/from16 v0, v29

    move-object/from16 v1, v22

    invoke-virtual {v0, v1}, Ljava/net/DatagramSocket;->receive(Ljava/net/DatagramPacket;)V

    .line 122
    invoke-static {}, Landroid/os/SystemClock;->elapsedRealtime()J

    move-result-wide v23

    .line 123
    .local v23, responseTicks:J
    sub-long v33, v23, v18

    add-long v25, v20, v33

    .line 126
    .local v25, responseTime:J
    const/16 v33, 0x18

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v7, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v13

    .line 127
    .local v13, originateTime:J
    const/16 v33, 0x20

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v7, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v15

    .line 128
    .local v15, receiveTime:J
    const/16 v33, 0x28

    move-object/from16 v0, p0

    move/from16 v1, v33

    invoke-direct {v0, v7, v1}, Landroid/net/SntpClient;->readTimeStamp([BI)J

    move-result-wide v31

    .line 129
    .local v31, transmitTime:J
    sub-long v33, v23, v18

    sub-long v35, v31, v15

    sub-long v27, v33, v35

    .line 138
    .local v27, roundTripTime:J
    sub-long v33, v15, v13

    sub-long v35, v31, v25

    add-long v33, v33, v35

    const-wide/16 v35, 0x2

    div-long v8, v33, v35

    .line 144
    .local v8, clockOffset:J
    add-long v33, v25, v8

    move-wide/from16 v0, v33

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTime:J

    .line 145
    move-wide/from16 v0, v23

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mNtpTimeReference:J

    .line 146
    move-wide/from16 v0, v27

    move-object/from16 v2, p0

    iput-wide v0, v2, Landroid/net/SntpClient;->mRoundTripTime:J

    .line 149
    const/4 v6, 0x1

    .line 150
    const-string v33, "SntpClient"

    const-string/jumbo v34, "request time SUCCESS!"

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_2

    .line 165
    if-eqz v29, :cond_0

    .line 167
    invoke-virtual/range {v29 .. v29}, Ljava/net/DatagramSocket;->close()V

    .line 174
    .end local v4           #address:Ljava/net/InetAddress;
    .end local v7           #buffer:[B
    .end local v8           #clockOffset:J
    .end local v13           #originateTime:J
    .end local v15           #receiveTime:J
    .end local v17           #request:Ljava/net/DatagramPacket;
    .end local v18           #requestTicks:J
    .end local v20           #requestTime:J
    .end local v22           #response:Ljava/net/DatagramPacket;
    .end local v23           #responseTicks:J
    .end local v25           #responseTime:J
    .end local v27           #roundTripTime:J
    .end local v31           #transmitTime:J
    :cond_0
    :goto_1
    const-string v33, "SntpClient"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "request time bSuccess = "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    move/from16 v33, v6

    .line 175
    .end local v5           #arr$:[Ljava/net/InetAddress;
    .end local v11           #i$:I
    .end local v12           #len$:I
    :goto_2
    return v33

    .line 86
    :catch_0
    move-exception v10

    .line 88
    .local v10, e:Ljava/lang/Exception;
    const-string v33, "SntpClient"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string v35, "get AllAddresses failed: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 89
    const/16 v33, 0x0

    goto :goto_2

    .line 154
    .end local v10           #e:Ljava/lang/Exception;
    .end local v29           #socket:Ljava/net/DatagramSocket;
    .restart local v4       #address:Ljava/net/InetAddress;
    .restart local v5       #arr$:[Ljava/net/InetAddress;
    .restart local v11       #i$:I
    .restart local v12       #len$:I
    .restart local v30       #socket:Ljava/net/DatagramSocket;
    :catch_1
    move-exception v10

    move-object/from16 v29, v30

    .line 156
    .end local v30           #socket:Ljava/net/DatagramSocket;
    .restart local v10       #e:Ljava/lang/Exception;
    .restart local v29       #socket:Ljava/net/DatagramSocket;
    :goto_3
    :try_start_3
    const-string v33, "SntpClient"

    new-instance v34, Ljava/lang/StringBuilder;

    invoke-direct/range {v34 .. v34}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v35, "request time failed: "

    invoke-virtual/range {v34 .. v35}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v34

    move-object/from16 v0, v34

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v34

    invoke-virtual/range {v34 .. v34}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v34

    invoke-static/range {v33 .. v34}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 160
    const/4 v6, 0x0

    .line 165
    if-eqz v29, :cond_1

    .line 167
    invoke-virtual/range {v29 .. v29}, Ljava/net/DatagramSocket;->close()V

    .line 93
    :cond_1
    add-int/lit8 v11, v11, 0x1

    move-object/from16 v30, v29

    .end local v29           #socket:Ljava/net/DatagramSocket;
    .restart local v30       #socket:Ljava/net/DatagramSocket;
    goto/16 :goto_0

    .line 165
    .end local v10           #e:Ljava/lang/Exception;
    :catchall_0
    move-exception v33

    move-object/from16 v29, v30

    .end local v30           #socket:Ljava/net/DatagramSocket;
    .restart local v29       #socket:Ljava/net/DatagramSocket;
    :goto_4
    if-eqz v29, :cond_2

    .line 167
    invoke-virtual/range {v29 .. v29}, Ljava/net/DatagramSocket;->close()V

    :cond_2
    throw v33

    .line 165
    :catchall_1
    move-exception v33

    goto :goto_4

    .line 154
    :catch_2
    move-exception v10

    goto :goto_3

    .end local v4           #address:Ljava/net/InetAddress;
    .end local v29           #socket:Ljava/net/DatagramSocket;
    .restart local v30       #socket:Ljava/net/DatagramSocket;
    :cond_3
    move-object/from16 v29, v30

    .end local v30           #socket:Ljava/net/DatagramSocket;
    .restart local v29       #socket:Ljava/net/DatagramSocket;
    goto :goto_1
.end method
