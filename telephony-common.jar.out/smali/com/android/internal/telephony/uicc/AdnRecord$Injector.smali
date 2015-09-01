.class Lcom/android/internal/telephony/uicc/AdnRecord$Injector;
.super Ljava/lang/Object;
.source "AdnRecord.java"


# annotations
.annotation build Landroid/annotation/KiwiHook;
    value = .enum Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;
.end annotation

.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/uicc/AdnRecord;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Injector"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/telephony/uicc/AdnRecord;[B)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 41
    invoke-static {p0, p1}, Lcom/android/internal/telephony/uicc/AdnRecord$Injector;->parseAnrRecord(Lcom/android/internal/telephony/uicc/AdnRecord;[B)V

    return-void
.end method

.method static appendAnrExtRecord(Lcom/android/internal/telephony/uicc/AdnRecord;[B)V
    .locals 4
    .parameter "adnRecord"
    .parameter "anrExtRecord"

    .prologue
    const/4 v3, 0x2

    .line 384
    :try_start_0
    array-length v1, p1

    const/16 v2, 0xd

    if-eq v1, v2, :cond_1

    .line 404
    :cond_0
    :goto_0
    return-void

    .line 388
    :cond_1
    const/4 v1, 0x0

    aget-byte v1, p1, v1

    and-int/lit8 v1, v1, 0x3

    if-ne v1, v3, :cond_0

    .line 393
    const/4 v1, 0x1

    aget-byte v1, p1, v1

    and-int/lit16 v1, v1, 0xff

    const/16 v2, 0xa

    if-gt v1, v2, :cond_0

    .line 397
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x1

    aget-byte v3, p1, v3

    and-int/lit16 v3, v3, 0xff

    invoke-static {p1, v2, v3}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 399
    const/4 v1, 0x2

    const/4 v2, 0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    invoke-static {p1, v1, v2}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDFragmentToString([BII)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrRecordExt:Ljava/lang/String;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 401
    :catch_0
    move-exception v0

    .line 402
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "GSM"

    const-string v2, "Error parsing AdnRecord ext record"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method static buildAdnString(Lcom/android/internal/telephony/uicc/AdnRecord;II)[B
    .locals 10
    .parameter "adnRecord"
    .parameter "recordSize"
    .parameter "extRecId"

    .prologue
    .line 132
    add-int/lit8 v4, p1, -0xe

    .line 133
    .local v4, footerOffset:I
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MY alphaTag is :"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    iget-object v9, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string v9, ", recordSize"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 134
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    if-eqz v7, :cond_0

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    :cond_0
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    if-eqz v7, :cond_1

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-eqz v7, :cond_2

    .line 136
    :cond_1
    const-string v7, "GSM"

    const-string v8, "[buildAdnString] Empty alpha tag and number"

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 137
    new-array v0, p1, [B

    .line 138
    .local v0, adnString:[B
    const/16 p2, 0xff

    .line 139
    const/4 v5, 0x0

    .local v5, i:I
    :goto_0
    if-ge v5, p1, :cond_a

    .line 140
    const/4 v7, -0x1

    aput-byte v7, v0, v5

    .line 139
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 144
    .end local v0           #adnString:[B
    .end local v5           #i:I
    :cond_2
    new-array v0, p1, [B

    .line 145
    .restart local v0       #adnString:[B
    const/4 v5, 0x0

    .restart local v5       #i:I
    :goto_1
    if-ge v5, p1, :cond_3

    .line 146
    const/4 v7, -0x1

    aput-byte v7, v0, v5

    .line 145
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 148
    :cond_3
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    if-eqz v7, :cond_4

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const-string v8, ""

    invoke-virtual {v7, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v7

    if-nez v7, :cond_4

    .line 149
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v7}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v1

    .line 150
    .local v1, bcdNumber:[B
    array-length v7, v1

    const/16 v8, 0xb

    if-gt v7, v8, :cond_6

    .line 151
    const/4 v7, 0x0

    add-int/lit8 v8, v4, 0x1

    array-length v9, v1

    invoke-static {v1, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 154
    add-int/lit8 v7, v4, 0x0

    array-length v8, v1

    int-to-byte v8, v8

    aput-byte v8, v0, v7

    .line 156
    add-int/lit8 v7, v4, 0xc

    const/4 v8, -0x1

    aput-byte v8, v0, v7

    .line 158
    add-int/lit8 v7, v4, 0xd

    const/4 v8, -0x1

    aput-byte v8, v0, v7

    .line 174
    .end local v1           #bcdNumber:[B
    :cond_4
    :goto_2
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v7}, Lcom/android/internal/telephony/uicc/IccUtils;->stringToAdnStringField(Ljava/lang/String;)[B

    move-result-object v2

    .line 175
    .local v2, byteTag:[B
    const/4 v6, 0x0

    .line 176
    .local v6, spaceCount:I
    const/4 v5, 0x0

    :goto_3
    array-length v7, v2

    if-ge v5, v7, :cond_7

    aget-byte v7, v2, v5

    const/16 v8, 0x20

    if-ne v7, v8, :cond_5

    add-int/lit8 v6, v6, 0x1

    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 161
    .end local v2           #byteTag:[B
    .end local v6           #spaceCount:I
    .restart local v1       #bcdNumber:[B
    :cond_6
    const/4 v7, 0x0

    add-int/lit8 v8, v4, 0x1

    const/16 v9, 0xb

    invoke-static {v1, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 163
    add-int/lit8 v7, v4, 0x0

    const/16 v8, 0xb

    aput-byte v8, v0, v7

    .line 165
    add-int/lit8 v7, v4, 0xc

    const/4 v8, -0x1

    aput-byte v8, v0, v7

    .line 168
    add-int/lit8 v7, v4, 0xd

    int-to-byte v8, p2

    aput-byte v8, v0, v7

    .line 171
    const-string v7, "GSM"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string v9, "MY number > 20 extRecId="

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2

    .line 177
    .end local v1           #bcdNumber:[B
    .restart local v2       #byteTag:[B
    .restart local v6       #spaceCount:I
    :cond_7
    const/4 v5, 0x0

    :goto_4
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v7}, Ljava/lang/String;->length()I

    move-result v7

    if-ge v5, v7, :cond_9

    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {v7, v5}, Ljava/lang/String;->charAt(I)C

    move-result v7

    const/16 v8, 0x20

    if-ne v7, v8, :cond_8

    add-int/lit8 v6, v6, -0x1

    :cond_8
    add-int/lit8 v5, v5, 0x1

    goto :goto_4

    .line 178
    :cond_9
    if-eqz v6, :cond_c

    .line 180
    :try_start_0
    iget-object v7, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    const-string v8, "utf-16be"

    invoke-virtual {v7, v8}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    .line 184
    :goto_5
    const/4 v7, 0x0

    const/16 v8, -0x80

    aput-byte v8, v0, v7

    .line 185
    array-length v7, v2

    if-ge v7, v4, :cond_b

    .line 186
    const/4 v7, 0x0

    const/4 v8, 0x1

    array-length v9, v2

    invoke-static {v2, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 197
    .end local v2           #byteTag:[B
    .end local v6           #spaceCount:I
    :cond_a
    :goto_6
    iput p2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 198
    return-object v0

    .line 181
    .restart local v2       #byteTag:[B
    .restart local v6       #spaceCount:I
    :catch_0
    move-exception v3

    .line 182
    .local v3, ex:Ljava/io/UnsupportedEncodingException;
    const-string v7, "GSM"

    const-string v8, "alphaTag convert byte exception"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_5

    .line 188
    .end local v3           #ex:Ljava/io/UnsupportedEncodingException;
    :cond_b
    const/4 v7, 0x0

    const/4 v8, 0x1

    add-int/lit8 v9, v4, -0x1

    invoke-static {v2, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    .line 191
    :cond_c
    array-length v7, v2

    if-le v7, v4, :cond_d

    .line 192
    const/4 v7, 0x0

    const/4 v8, 0x0

    invoke-static {v2, v7, v0, v8, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6

    .line 194
    :cond_d
    const/4 v7, 0x0

    const/4 v8, 0x0

    array-length v9, v2

    invoke-static {v2, v7, v0, v8, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_6
.end method

.method static buildAnrEXT1String(Lcom/android/internal/telephony/uicc/AdnRecord;I)[B
    .locals 12
    .parameter "adnRecord"
    .parameter "recordSize"

    .prologue
    const/16 v11, 0xff

    const/16 v10, 0x14

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 330
    const/4 v2, 0x0

    .line 331
    .local v2, ext1AnrString:[B
    const/4 v1, 0x0

    .line 333
    .local v1, bcdLen:I
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 334
    :cond_0
    new-array v2, p1, [B

    .line 335
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 336
    aput-byte v7, v2, v4

    .line 335
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 338
    :cond_1
    iput v11, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 360
    :goto_1
    return-object v2

    .line 340
    .end local v4           #i:I
    :cond_2
    new-array v2, p1, [B

    .line 341
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    if-ge v4, p1, :cond_3

    .line 342
    aput-byte v7, v2, v4

    .line 341
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 344
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v10, :cond_5

    .line 345
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 346
    .local v0, anrEXT1Number:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v3

    .line 348
    .local v3, ext1BcdNumber:[B
    const/4 v4, 0x0

    :goto_3
    array-length v5, v3

    if-ge v4, v5, :cond_4

    .line 349
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v8, v2, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 348
    add-int/lit8 v4, v4, 0x1

    goto :goto_3

    .line 350
    :cond_4
    const/4 v5, 0x0

    aput-byte v9, v2, v5

    .line 352
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    aput-byte v5, v2, v8

    .line 354
    const/16 v5, 0xc

    aput-byte v7, v2, v5

    goto :goto_1

    .line 357
    .end local v0           #anrEXT1Number:Ljava/lang/String;
    .end local v3           #ext1BcdNumber:[B
    :cond_5
    iput v11, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    goto :goto_1
.end method

.method static buildAnrString(Lcom/android/internal/telephony/uicc/AdnRecord;IIIII)[B
    .locals 10
    .parameter "adnRecord"
    .parameter "recordSize"
    .parameter "recordNumber"
    .parameter "anrNumber"
    .parameter "sfi"
    .parameter "anrExtRecId"

    .prologue
    const/4 v9, 0x1

    const/16 v8, 0xb

    const/4 v7, -0x1

    const/16 v6, 0xf

    const/4 v5, 0x0

    .line 249
    const/4 v2, 0x0

    .line 250
    .local v2, newAnr:[B
    const/4 v0, 0x0

    .line 251
    .local v0, bcdAnr:[B
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_3

    .line 252
    :cond_0
    new-array v2, p1, [B

    .line 253
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, p1, :cond_1

    .line 254
    aput-byte v7, v2, v1

    .line 253
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 256
    :cond_1
    const/16 p5, 0xff

    .line 290
    :cond_2
    :goto_1
    iput p5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 291
    return-object v2

    .line 258
    .end local v1           #j:I
    :cond_3
    new-array v2, p1, [B

    .line 259
    const/4 v1, 0x0

    .restart local v1       #j:I
    :goto_2
    if-ge v1, p1, :cond_4

    .line 260
    aput-byte v7, v2, v1

    .line 259
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 262
    :cond_4
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    invoke-static {v3}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v0

    .line 263
    array-length v3, v0

    if-gt v3, v8, :cond_5

    .line 264
    const/4 v3, 0x2

    array-length v4, v0

    invoke-static {v0, v5, v2, v3, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 265
    aput-byte v5, v2, v5

    .line 266
    array-length v3, v0

    int-to-byte v3, v3

    aput-byte v3, v2, v9

    .line 267
    const/16 v3, 0xe

    aput-byte v7, v2, v3

    .line 269
    if-le p1, v6, :cond_2

    .line 270
    int-to-byte v3, p4

    aput-byte v3, v2, v6

    .line 273
    const/16 v3, 0x10

    int-to-byte v4, p3

    aput-byte v4, v2, v3

    goto :goto_1

    .line 277
    :cond_5
    const/4 v3, 0x2

    invoke-static {v0, v5, v2, v3, v8}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 278
    aput-byte v5, v2, v5

    .line 279
    aput-byte v8, v2, v9

    .line 280
    const/16 v3, 0xe

    int-to-byte v4, p5

    aput-byte v4, v2, v3

    .line 282
    if-le p1, v6, :cond_2

    .line 283
    int-to-byte v3, p4

    aput-byte v3, v2, v6

    .line 285
    const/16 v3, 0x10

    int-to-byte v4, p3

    aput-byte v4, v2, v3

    goto :goto_1
.end method

.method static buildEXT1String(Lcom/android/internal/telephony/uicc/AdnRecord;I)[B
    .locals 12
    .parameter "adnRecord"
    .parameter "recordSize"

    .prologue
    const/16 v11, 0xff

    const/16 v10, 0x14

    const/4 v9, 0x2

    const/4 v8, 0x1

    const/4 v7, -0x1

    .line 296
    const/4 v2, 0x0

    .line 297
    .local v2, ext1AdnString:[B
    const/4 v1, 0x0

    .line 299
    .local v1, bcdLen:I
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    if-eqz v5, :cond_0

    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    const-string v6, ""

    invoke-virtual {v5, v6}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 300
    :cond_0
    new-array v2, p1, [B

    .line 301
    const/4 v4, 0x0

    .local v4, i:I
    :goto_0
    if-ge v4, p1, :cond_1

    .line 302
    aput-byte v7, v2, v4

    .line 301
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 304
    :cond_1
    iput v11, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    .line 325
    :goto_1
    return-object v2

    .line 306
    .end local v4           #i:I
    :cond_2
    new-array v2, p1, [B

    .line 307
    const/4 v4, 0x0

    .restart local v4       #i:I
    :goto_2
    if-ge v4, p1, :cond_3

    .line 308
    aput-byte v7, v2, v4

    .line 307
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 310
    :cond_3
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->length()I

    move-result v5

    if-le v5, v10, :cond_4

    .line 311
    iget-object v5, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    iget-object v6, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {v6}, Ljava/lang/String;->length()I

    move-result v6

    invoke-virtual {v5, v10, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 312
    .local v0, EXT1Number:Ljava/lang/String;
    invoke-static {v0}, Landroid/telephony/PhoneNumberUtils;->numberToCalledPartyBCD(Ljava/lang/String;)[B

    move-result-object v3

    .line 314
    .local v3, ext1BcdNumber:[B
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    invoke-static {v3, v8, v2, v9, v5}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 315
    const/4 v5, 0x0

    aput-byte v9, v2, v5

    .line 317
    array-length v5, v3

    add-int/lit8 v5, v5, -0x1

    int-to-byte v5, v5

    aput-byte v5, v2, v8

    .line 319
    const/16 v5, 0xc

    aput-byte v7, v2, v5

    goto :goto_1

    .line 322
    .end local v0           #EXT1Number:Ljava/lang/String;
    .end local v3           #ext1BcdNumber:[B
    :cond_4
    iput v11, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mExtRecord:I

    goto :goto_1
.end method

.method static buildEmailString(Lcom/android/internal/telephony/uicc/AdnRecord;IIII)[B
    .locals 7
    .parameter "adnRecord"
    .parameter "recordSize"
    .parameter "recordNumber"
    .parameter "Emailadnnumber"
    .parameter "sfi"

    .prologue
    const/4 v6, -0x1

    const/4 v5, 0x0

    .line 203
    const/4 v2, 0x0

    .line 204
    .local v2, newEmail:[B
    const/4 v0, 0x0

    .line 206
    .local v0, bcdEmail:[B
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    aget-object v3, v3, v5

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    aget-object v3, v3, v5

    const-string v4, ""

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    .line 207
    :cond_0
    new-array v2, p1, [B

    .line 208
    const/4 v1, 0x0

    .local v1, j:I
    :goto_0
    if-ge v1, p1, :cond_3

    .line 209
    aput-byte v6, v2, v1

    .line 208
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 212
    .end local v1           #j:I
    :cond_1
    new-array v2, p1, [B

    .line 213
    const/4 v1, 0x0

    .restart local v1       #j:I
    :goto_1
    if-ge v1, p1, :cond_2

    .line 214
    aput-byte v6, v2, v1

    .line 213
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 216
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    aget-object v3, v3, v5

    invoke-static {v3}, Lcom/android/internal/telephony/uicc/IccUtils;->stringToAdnStringField(Ljava/lang/String;)[B

    move-result-object v0

    .line 217
    invoke-static {}, Lzte/contact/zteUsimPhoneBookManager;->isEMAILTYP2()Z

    move-result v3

    if-nez v3, :cond_5

    .line 218
    array-length v3, v0

    if-ge v3, p1, :cond_4

    .line 219
    array-length v3, v0

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 231
    :cond_3
    :goto_2
    return-object v2

    .line 221
    :cond_4
    invoke-static {v0, v5, v2, v5, p1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_2

    .line 223
    :cond_5
    array-length v3, v0

    add-int/lit8 v4, p1, -0x2

    if-ge v3, v4, :cond_6

    .line 224
    array-length v3, v0

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 227
    :goto_3
    add-int/lit8 v3, p1, -0x2

    int-to-byte v4, p4

    aput-byte v4, v2, v3

    .line 228
    add-int/lit8 v3, p1, -0x1

    int-to-byte v4, p3

    aput-byte v4, v2, v3

    goto :goto_2

    .line 226
    :cond_6
    add-int/lit8 v3, p1, -0x2

    invoke-static {v0, v5, v2, v5, v3}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    goto :goto_3
.end method

.method static buildIapString(IIIII)[B
    .locals 5
    .parameter "recordSizeIap"
    .parameter "IapforEmail"
    .parameter "IapforAnr"
    .parameter "Emailiniap"
    .parameter "Anriniap"

    .prologue
    const/4 v3, -0x1

    .line 236
    const/4 v0, 0x0

    .line 237
    .local v0, Iap:[B
    new-array v0, p0, [B

    .line 238
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, p0, :cond_0

    .line 239
    aput-byte v3, v0, v1

    .line 238
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 241
    :cond_0
    if-eq p3, v3, :cond_1

    int-to-byte v2, p1

    aput-byte v2, v0, p3

    .line 242
    :cond_1
    if-eq p4, v3, :cond_2

    int-to-byte v2, p2

    aput-byte v2, v0, p4

    .line 243
    :cond_2
    const-string v2, "GSM"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "buildIapString Emailiniap="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "IapforEmail= "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "Anriniap = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, "IapforAnr"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    return-object v0
.end method

.method static checkEmail(Lcom/android/internal/telephony/uicc/AdnRecord;[Ljava/lang/String;)V
    .locals 3
    .parameter "adnRecord"
    .parameter "emails"

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 44
    if-eqz p1, :cond_0

    .line 45
    aget-object v0, p1, v1

    if-eqz v0, :cond_1

    .line 46
    aget-object v0, p1, v1

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_0

    .line 47
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    .line 52
    :cond_0
    :goto_0
    return-void

    .line 49
    :cond_1
    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    goto :goto_0
.end method

.method static isEmailEqual(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 4
    .parameter "adnRecord"
    .parameter "adn"

    .prologue
    const/4 v3, 0x0

    .line 63
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    if-nez v2, :cond_0

    .line 64
    const-string v0, ""

    .line 76
    .local v0, email1:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    if-nez v2, :cond_3

    .line 77
    const-string v1, ""

    .line 89
    .local v1, email2:Ljava/lang/String;
    :goto_1
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    return v2

    .line 66
    .end local v0           #email1:Ljava/lang/String;
    .end local v1           #email2:Ljava/lang/String;
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    aget-object v2, v2, v3

    if-nez v2, :cond_1

    .line 67
    const-string v0, ""

    .restart local v0       #email1:Ljava/lang/String;
    goto :goto_0

    .line 69
    .end local v0           #email1:Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_2

    .line 70
    const-string v0, ""

    .restart local v0       #email1:Ljava/lang/String;
    goto :goto_0

    .line 72
    .end local v0           #email1:Ljava/lang/String;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    aget-object v0, v2, v3

    .restart local v0       #email1:Ljava/lang/String;
    goto :goto_0

    .line 79
    :cond_3
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    if-nez v2, :cond_4

    .line 80
    const-string v1, ""

    .restart local v1       #email2:Ljava/lang/String;
    goto :goto_1

    .line 82
    .end local v1           #email2:Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    aget-object v2, v2, v3

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_5

    .line 83
    const-string v1, ""

    .restart local v1       #email2:Ljava/lang/String;
    goto :goto_1

    .line 85
    .end local v1           #email2:Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v2

    aget-object v1, v2, v3

    .restart local v1       #email2:Ljava/lang/String;
    goto :goto_1
.end method

.method static isEmpty(Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 3
    .parameter "adnRecord"

    .prologue
    const/4 v1, 0x0

    .line 55
    const-string v0, ""

    .line 56
    .local v0, tmpEmail:Ljava/lang/String;
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    aget-object v0, v2, v1

    .line 57
    :cond_0
    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_1

    const/4 v1, 0x1

    :cond_1
    return v1
.end method

.method static isUsimEqual(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;)Z
    .locals 5
    .parameter "adnRecord"
    .parameter "adn"

    .prologue
    const/4 v2, 0x0

    .line 95
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    if-nez v3, :cond_1

    .line 96
    const-string v0, ""

    .line 108
    .local v0, email1:Ljava/lang/String;
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    if-nez v3, :cond_4

    .line 109
    const-string v1, ""

    .line 122
    .local v1, email2:Ljava/lang/String;
    :goto_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mAlphaTag:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mNumber:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getNumber()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAnr()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v2, 0x1

    :cond_0
    return v2

    .line 98
    .end local v0           #email1:Ljava/lang/String;
    .end local v1           #email2:Ljava/lang/String;
    :cond_1
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    aget-object v3, v3, v2

    if-nez v3, :cond_2

    .line 99
    const-string v0, ""

    .restart local v0       #email1:Ljava/lang/String;
    goto :goto_0

    .line 101
    .end local v0           #email1:Ljava/lang/String;
    :cond_2
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_3

    .line 102
    const-string v0, ""

    .restart local v0       #email1:Ljava/lang/String;
    goto :goto_0

    .line 104
    .end local v0           #email1:Ljava/lang/String;
    :cond_3
    iget-object v3, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->mEmails:[Ljava/lang/String;

    aget-object v0, v3, v2

    .restart local v0       #email1:Ljava/lang/String;
    goto :goto_0

    .line 111
    :cond_4
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    if-nez v3, :cond_5

    .line 112
    const-string v1, ""

    .restart local v1       #email2:Ljava/lang/String;
    goto :goto_1

    .line 114
    .end local v1           #email2:Ljava/lang/String;
    :cond_5
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    aget-object v3, v3, v2

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v3

    if-nez v3, :cond_6

    .line 115
    const-string v1, ""

    .restart local v1       #email2:Ljava/lang/String;
    goto :goto_1

    .line 117
    .end local v1           #email2:Ljava/lang/String;
    :cond_6
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getEmails()[Ljava/lang/String;

    move-result-object v3

    aget-object v1, v3, v2

    .restart local v1       #email2:Ljava/lang/String;
    goto :goto_1
.end method

.method private static parseAnrRecord(Lcom/android/internal/telephony/uicc/AdnRecord;[B)V
    .locals 4
    .parameter "adnRecord"
    .parameter "anrRecord"

    .prologue
    .line 365
    const/4 v2, 0x1

    :try_start_0
    aget-byte v2, p1, v2

    and-int/lit16 v0, v2, 0xff

    .line 366
    .local v0, anrLength:I
    const/4 v2, 0x2

    invoke-static {p1, v2, v0}, Landroid/telephony/PhoneNumberUtils;->calledPartyBCDToString([BII)Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anr:Ljava/lang/String;

    .line 367
    array-length v2, p1

    const/16 v3, 0x11

    if-ne v2, v3, :cond_0

    .line 369
    array-length v2, p1

    add-int/lit8 v2, v2, -0x3

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I

    .line 370
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrInxRecord:I

    .line 379
    .end local v0           #anrLength:I
    :goto_0
    return-void

    .line 372
    .restart local v0       #anrLength:I
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aget-byte v2, p1, v2

    and-int/lit16 v2, v2, 0xff

    iput v2, p0, Lcom/android/internal/telephony/uicc/AdnRecord;->anrExtRecord:I
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 376
    .end local v0           #anrLength:I
    :catch_0
    move-exception v1

    .line 377
    .local v1, ex:Ljava/lang/RuntimeException;
    const-string v2, "GSM"

    const-string v3, "Error parsing anrRecord"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
