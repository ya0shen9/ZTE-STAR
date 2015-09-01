.class public Lcom/android/internal/telephony/ZteRIL;
.super Ljava/lang/Object;
.source "ZteRIL.java"


# static fields
.field static final LOG_TAG:Ljava/lang/String; = "RILJ"

.field static final RILJ_LOGD:Z = true


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static constructCdmaWriteSmsRilRequestZte(Lcom/android/internal/telephony/RILRequest;[BI)Ljava/io/IOException;
    .locals 22
    .parameter "rr"
    .parameter "pdu"
    .parameter "status"

    .prologue
    .line 23
    const/4 v12, 0x0

    .line 24
    .local v12, ret:Ljava/io/IOException;
    new-instance v7, Ljava/io/ByteArrayInputStream;

    move-object/from16 v0, p1

    invoke-direct {v7, v0}, Ljava/io/ByteArrayInputStream;-><init>([B)V

    .line 25
    .local v7, bais:Ljava/io/ByteArrayInputStream;
    new-instance v9, Ljava/io/DataInputStream;

    invoke-direct {v9, v7}, Ljava/io/DataInputStream;-><init>(Ljava/io/InputStream;)V

    .line 28
    .local v9, dis:Ljava/io/DataInputStream;
    const/16 v18, 0x0

    .line 29
    .local v18, teleServiceId:I
    const/4 v14, 0x0

    .line 30
    .local v14, servicePresent:B
    const/4 v13, 0x0

    .line 32
    .local v13, serviceCategory:I
    const/4 v2, 0x0

    .line 33
    .local v2, address_digit_mode:I
    const/4 v3, 0x0

    .line 34
    .local v3, address_nbr_mode:I
    const/4 v6, 0x0

    .line 35
    .local v6, address_ton:I
    const/4 v5, 0x0

    .line 37
    .local v5, address_nbr_plan:I
    const/16 v17, 0x0

    .line 38
    .local v17, subaddressType:I
    const/16 v16, 0x0

    .line 39
    .local v16, subaddr_odd:B
    if-eqz p2, :cond_0

    const/16 v19, 0x1

    move/from16 v0, p2

    move/from16 v1, v19

    if-ne v0, v1, :cond_2

    .line 40
    :cond_0
    :try_start_0
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    .line 41
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/os/Parcel;->writeInt(I)V

    .line 42
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Parcel;->writeByte(B)V

    .line 43
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/os/Parcel;->writeInt(I)V

    .line 44
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/os/Parcel;->writeInt(I)V

    .line 45
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/os/Parcel;->writeInt(I)V

    .line 46
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/os/Parcel;->writeInt(I)V

    .line 47
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/os/Parcel;->writeInt(I)V

    .line 48
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 49
    .local v4, address_nbr_of_digits:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    int-to-byte v0, v4

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Parcel;->writeByte(B)V

    .line 50
    const-string v19, "RILJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "address_nbr_of_digits: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 51
    const/4 v11, 0x0

    .local v11, i:I
    :goto_0
    if-ge v11, v4, :cond_1

    .line 52
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/os/Parcel;->writeByte(B)V

    .line 51
    add-int/lit8 v11, v11, 0x1

    goto :goto_0

    .line 54
    :cond_1
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    .line 56
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    .line 57
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    .line 58
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    .line 59
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Parcel;->writeInt(I)V

    .line 60
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Parcel;->writeByte(B)V

    .line 61
    const/4 v15, 0x0

    .line 62
    .local v15, subaddr_nbr_of_digits:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    const/16 v20, 0x0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Parcel;->writeByte(B)V

    .line 63
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v8

    .line 64
    .local v8, bearerDataLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 65
    const/4 v11, 0x0

    :goto_1
    if-ge v11, v8, :cond_5

    .line 66
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/os/Parcel;->writeByte(B)V

    .line 65
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 70
    .end local v4           #address_nbr_of_digits:I
    .end local v8           #bearerDataLength:I
    .end local v11           #i:I
    .end local v15           #subaddr_nbr_of_digits:I
    :cond_2
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v18

    .line 71
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 72
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v19

    move/from16 v0, v19

    int-to-byte v14, v0

    .line 73
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeByte(B)V

    .line 74
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readInt()I

    move-result v13

    .line 75
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 77
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v2

    .line 78
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 79
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v3

    .line 80
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 81
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v6

    .line 82
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v6}, Landroid/os/Parcel;->writeInt(I)V

    .line 83
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v5

    .line 84
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v5}, Landroid/os/Parcel;->writeInt(I)V

    .line 86
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v4

    .line 87
    .restart local v4       #address_nbr_of_digits:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    int-to-byte v0, v4

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Parcel;->writeByte(B)V

    .line 88
    const/4 v11, 0x0

    .restart local v11       #i:I
    :goto_2
    if-ge v11, v4, :cond_3

    .line 89
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/os/Parcel;->writeByte(B)V

    .line 88
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 93
    :cond_3
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v17

    .line 94
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v16

    .line 96
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByte(B)V

    .line 97
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v15

    .line 98
    .restart local v15       #subaddr_nbr_of_digits:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    int-to-byte v0, v15

    move/from16 v20, v0

    invoke-virtual/range {v19 .. v20}, Landroid/os/Parcel;->writeByte(B)V

    .line 99
    const/4 v11, 0x0

    :goto_3
    if-ge v11, v15, :cond_4

    .line 100
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/os/Parcel;->writeByte(B)V

    .line 99
    add-int/lit8 v11, v11, 0x1

    goto :goto_3

    .line 103
    :cond_4
    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v19

    move/from16 v0, v19

    and-int/lit16 v8, v0, 0xff

    .line 104
    .restart local v8       #bearerDataLength:I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    move-object/from16 v0, v19

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/4 v11, 0x0

    :goto_4
    if-ge v11, v8, :cond_5

    .line 106
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/android/internal/telephony/RILRequest;->mParcel:Landroid/os/Parcel;

    move-object/from16 v19, v0

    invoke-virtual {v9}, Ljava/io/DataInputStream;->readByte()B

    move-result v20

    invoke-virtual/range {v19 .. v20}, Landroid/os/Parcel;->writeByte(B)V

    .line 105
    add-int/lit8 v11, v11, 0x1

    goto :goto_4

    .line 110
    :cond_5
    const-string v19, "RILJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, " teleServiceId="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v18

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " servicePresent="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " serviceCategory="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v13}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " address_digit_mode="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " address_nbr_mode="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " address_ton="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " address_nbr_plan="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " address_nbr_of_digits="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " subaddressType="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " subaddr_odd= "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    move/from16 v1, v16

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " subaddr_nbr_of_digits="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v15}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    const-string v21, " bearerDataLength="

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v8}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 122
    if-eqz v7, :cond_6

    .line 123
    :try_start_1
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V

    .line 126
    :cond_6
    if-eqz v9, :cond_7

    .line 127
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_1

    .line 133
    .end local v4           #address_nbr_of_digits:I
    .end local v8           #bearerDataLength:I
    .end local v11           #i:I
    .end local v15           #subaddr_nbr_of_digits:I
    :cond_7
    :goto_5
    return-object v12

    .line 115
    :catch_0
    move-exception v10

    .line 116
    .local v10, ex:Ljava/io/IOException;
    :try_start_2
    invoke-virtual {v10}, Ljava/io/IOException;->printStackTrace()V

    .line 117
    move-object v12, v10

    .line 118
    const-string v19, "RILJ"

    new-instance v20, Ljava/lang/StringBuilder;

    invoke-direct/range {v20 .. v20}, Ljava/lang/StringBuilder;-><init>()V

    const-string v21, "sendSmsCdma: conversion from input stream to object failed: "

    invoke-virtual/range {v20 .. v21}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v20

    move-object/from16 v0, v20

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v20

    invoke-virtual/range {v20 .. v20}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v20

    invoke-static/range {v19 .. v20}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 122
    if-eqz v7, :cond_8

    .line 123
    :try_start_3
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V

    .line 126
    :cond_8
    if-eqz v9, :cond_7

    .line 127
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1

    goto :goto_5

    .line 129
    .end local v10           #ex:Ljava/io/IOException;
    :catch_1
    move-exception v19

    goto :goto_5

    .line 121
    :catchall_0
    move-exception v19

    .line 122
    if-eqz v7, :cond_9

    .line 123
    :try_start_4
    invoke-virtual {v7}, Ljava/io/ByteArrayInputStream;->close()V

    .line 126
    :cond_9
    if-eqz v9, :cond_a

    .line 127
    invoke-virtual {v9}, Ljava/io/DataInputStream;->close()V
    :try_end_4
    .catch Ljava/io/IOException; {:try_start_4 .. :try_end_4} :catch_2

    .line 121
    :cond_a
    :goto_6
    throw v19

    .line 129
    :catch_2
    move-exception v20

    goto :goto_6
.end method
