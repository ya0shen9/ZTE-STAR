.class public abstract Lcom/android/internal/telephony/IIccPhoneBook$Stub;
.super Landroid/os/Binder;
.source "IIccPhoneBook.java"

# interfaces
.implements Lcom/android/internal/telephony/IIccPhoneBook;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/telephony/IIccPhoneBook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "com.android.internal.telephony.IIccPhoneBook"

.field static final TRANSACTION_getAdnRecordsInEf:I = 0x1

.field static final TRANSACTION_getAdnRecordsSize:I = 0x4

.field static final TRANSACTION_getAnrRecordsSize:I = 0xf

.field static final TRANSACTION_getEmailRecordsSize:I = 0xe

.field static final TRANSACTION_getExt1RecordsSize:I = 0x11

.field static final TRANSACTION_getExtensionSize:I = 0x12

.field static final TRANSACTION_getGetAdnFileld:I = 0x13

.field static final TRANSACTION_getSimCardType:I = 0xc

.field static final TRANSACTION_getSimSize:I = 0x6

.field static final TRANSACTION_getSimTotalSize:I = 0x5

.field static final TRANSACTION_getTagRecordsSize:I = 0x10

.field static final TRANSACTION_getUsimAdnRecordsSize:I = 0x8

.field static final TRANSACTION_getUsimSize:I = 0x7

.field static final TRANSACTION_getsimcap:I = 0xd

.field static final TRANSACTION_hasLoadContacts:I = 0x14

.field static final TRANSACTION_isANRSpaceFull:I = 0x15

.field static final TRANSACTION_isEmailSpaceFull:I = 0x16

.field static final TRANSACTION_isSupportANR:I = 0x9

.field static final TRANSACTION_isSupportEmail:I = 0xa

.field static final TRANSACTION_updateAdnRecordsInEfByIndex:I = 0x3

.field static final TRANSACTION_updateAdnRecordsInEfBySearch:I = 0x2

.field static final TRANSACTION_updatepbRecordsInEfBySearch:I = 0xb


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 28
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 29
    const-string v0, "com.android.internal.telephony.IIccPhoneBook"

    invoke-virtual {p0, p0, v0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 30
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lcom/android/internal/telephony/IIccPhoneBook;
    .locals 2
    .parameter "obj"

    .prologue
    .line 37
    if-nez p0, :cond_0

    .line 38
    const/4 v0, 0x0

    .line 44
    :goto_0
    return-object v0

    .line 40
    :cond_0
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 41
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lcom/android/internal/telephony/IIccPhoneBook;

    if-eqz v1, :cond_1

    .line 42
    check-cast v0, Lcom/android/internal/telephony/IIccPhoneBook;

    goto :goto_0

    .line 44
    :cond_1
    new-instance v0, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 48
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 15
    .parameter "code"
    .parameter "data"
    .parameter "reply"
    .parameter "flags"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 52
    sparse-switch p1, :sswitch_data_0

    .line 316
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v1

    :goto_0
    return v1

    .line 56
    :sswitch_0
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 57
    const/4 v1, 0x1

    goto :goto_0

    .line 61
    :sswitch_1
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 63
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 64
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsInEf(I)Ljava/util/List;

    move-result-object v14

    .line 65
    .local v14, _result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 66
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeTypedList(Ljava/util/List;)V

    .line 67
    const/4 v1, 0x1

    goto :goto_0

    .line 71
    .end local v2           #_arg0:I
    .end local v14           #_result:Ljava/util/List;,"Ljava/util/List<Lcom/android/internal/telephony/uicc/AdnRecord;>;"
    :sswitch_2
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 75
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 77
    .local v3, _arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 79
    .local v4, _arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 81
    .local v5, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 83
    .local v6, _arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .local v7, _arg5:Ljava/lang/String;
    move-object v1, p0

    .line 84
    invoke-virtual/range {v1 .. v7}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Z

    move-result v13

    .line 85
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 86
    if-eqz v13, :cond_0

    const/4 v1, 0x1

    :goto_1
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 87
    const/4 v1, 0x1

    goto :goto_0

    .line 86
    :cond_0
    const/4 v1, 0x0

    goto :goto_1

    .line 91
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_arg4:Ljava/lang/String;
    .end local v7           #_arg5:Ljava/lang/String;
    .end local v13           #_result:Z
    :sswitch_3
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 95
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 97
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 99
    .restart local v4       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v5

    .line 101
    .local v5, _arg3:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .restart local v6       #_arg4:Ljava/lang/String;
    move-object v1, p0

    .line 102
    invoke-virtual/range {v1 .. v6}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updateAdnRecordsInEfByIndex(ILjava/lang/String;Ljava/lang/String;ILjava/lang/String;)Z

    move-result v13

    .line 103
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 104
    if-eqz v13, :cond_1

    const/4 v1, 0x1

    :goto_2
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 105
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 104
    :cond_1
    const/4 v1, 0x0

    goto :goto_2

    .line 109
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:I
    .end local v6           #_arg4:Ljava/lang/String;
    .end local v13           #_result:Z
    :sswitch_4
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 111
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 112
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAdnRecordsSize(I)[I

    move-result-object v13

    .line 113
    .local v13, _result:[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 115
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 119
    .end local v2           #_arg0:I
    .end local v13           #_result:[I
    :sswitch_5
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 121
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 122
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getSimTotalSize(I)I

    move-result v13

    .line 123
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 124
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 125
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 129
    .end local v2           #_arg0:I
    .end local v13           #_result:I
    :sswitch_6
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 132
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getSimSize(I)I

    move-result v13

    .line 133
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 134
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 135
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 139
    .end local v2           #_arg0:I
    .end local v13           #_result:I
    :sswitch_7
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 141
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 142
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getUsimSize(I)I

    move-result v13

    .line 143
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 144
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 145
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 149
    .end local v2           #_arg0:I
    .end local v13           #_result:I
    :sswitch_8
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 151
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 152
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getUsimAdnRecordsSize(I)I

    move-result v13

    .line 153
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 154
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 155
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 159
    .end local v2           #_arg0:I
    .end local v13           #_result:I
    :sswitch_9
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 160
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->isSupportANR()Z

    move-result v13

    .line 161
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 162
    if-eqz v13, :cond_2

    const/4 v1, 0x1

    :goto_3
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 162
    :cond_2
    const/4 v1, 0x0

    goto :goto_3

    .line 167
    .end local v13           #_result:Z
    :sswitch_a
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->isSupportEmail()Z

    move-result v13

    .line 169
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 170
    if-eqz v13, :cond_3

    const/4 v1, 0x1

    :goto_4
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 171
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 170
    :cond_3
    const/4 v1, 0x0

    goto :goto_4

    .line 175
    .end local v13           #_result:Z
    :sswitch_b
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 177
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 179
    .restart local v2       #_arg0:I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v3

    .line 181
    .restart local v3       #_arg1:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 183
    .restart local v4       #_arg2:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 185
    .local v5, _arg3:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v6

    .line 187
    .restart local v6       #_arg4:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 189
    .restart local v7       #_arg5:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v8

    .line 191
    .local v8, _arg6:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v9

    .line 193
    .local v9, _arg7:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v10

    .line 195
    .local v10, _arg8:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v11

    .line 197
    .local v11, _arg9:Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .local v12, _arg10:Ljava/lang/String;
    move-object v1, p0

    .line 198
    invoke-virtual/range {v1 .. v12}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->updatepbRecordsInEfBySearch(ILjava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v13

    .line 199
    .local v13, _result:Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 201
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 205
    .end local v2           #_arg0:I
    .end local v3           #_arg1:Ljava/lang/String;
    .end local v4           #_arg2:Ljava/lang/String;
    .end local v5           #_arg3:Ljava/lang/String;
    .end local v6           #_arg4:Ljava/lang/String;
    .end local v7           #_arg5:Ljava/lang/String;
    .end local v8           #_arg6:Ljava/lang/String;
    .end local v9           #_arg7:Ljava/lang/String;
    .end local v10           #_arg8:Ljava/lang/String;
    .end local v11           #_arg9:Ljava/lang/String;
    .end local v12           #_arg10:Ljava/lang/String;
    .end local v13           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 206
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getSimCardType()Z

    move-result v13

    .line 207
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 208
    if-eqz v13, :cond_4

    const/4 v1, 0x1

    :goto_5
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 209
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 208
    :cond_4
    const/4 v1, 0x0

    goto :goto_5

    .line 213
    .end local v13           #_result:Z
    :sswitch_d
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 215
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 216
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getsimcap(Ljava/lang/String;)Lzte/contact/simcap;

    move-result-object v13

    .line 217
    .local v13, _result:Lzte/contact/simcap;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v13, :cond_5

    .line 219
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 220
    const/4 v1, 0x1

    move-object/from16 v0, p3

    invoke-virtual {v13, v0, v1}, Lzte/contact/simcap;->writeToParcel(Landroid/os/Parcel;I)V

    .line 225
    :goto_6
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 223
    :cond_5
    const/4 v1, 0x0

    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_6

    .line 229
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v13           #_result:Lzte/contact/simcap;
    :sswitch_e
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 231
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 232
    .local v2, _arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getEmailRecordsSize(I)I

    move-result v13

    .line 233
    .local v13, _result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 234
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 235
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 239
    .end local v2           #_arg0:I
    .end local v13           #_result:I
    :sswitch_f
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 241
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 242
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getAnrRecordsSize(I)I

    move-result v13

    .line 243
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 244
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 245
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 249
    .end local v2           #_arg0:I
    .end local v13           #_result:I
    :sswitch_10
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 251
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 252
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getTagRecordsSize(I)I

    move-result v13

    .line 253
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 259
    .end local v2           #_arg0:I
    .end local v13           #_result:I
    :sswitch_11
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 262
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getExt1RecordsSize(I)I

    move-result v13

    .line 263
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 269
    .end local v2           #_arg0:I
    .end local v13           #_result:I
    :sswitch_12
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 271
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 272
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getExtensionSize(I)I

    move-result v13

    .line 273
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 274
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 275
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 279
    .end local v2           #_arg0:I
    .end local v13           #_result:I
    :sswitch_13
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 281
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 282
    .restart local v2       #_arg0:I
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->getGetAdnFileld(I)I

    move-result v13

    .line 283
    .restart local v13       #_result:I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    move-object/from16 v0, p3

    invoke-virtual {v0, v13}, Landroid/os/Parcel;->writeInt(I)V

    .line 285
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 289
    .end local v2           #_arg0:I
    .end local v13           #_result:I
    :sswitch_14
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual {p0}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->hasLoadContacts()Z

    move-result v13

    .line 291
    .local v13, _result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    if-eqz v13, :cond_6

    const/4 v1, 0x1

    :goto_7
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 292
    :cond_6
    const/4 v1, 0x0

    goto :goto_7

    .line 297
    .end local v13           #_result:Z
    :sswitch_15
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 299
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 300
    .local v2, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->isANRSpaceFull(Ljava/lang/String;)Z

    move-result v13

    .line 301
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 302
    if-eqz v13, :cond_7

    const/4 v1, 0x1

    :goto_8
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 303
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 302
    :cond_7
    const/4 v1, 0x0

    goto :goto_8

    .line 307
    .end local v2           #_arg0:Ljava/lang/String;
    .end local v13           #_result:Z
    :sswitch_16
    const-string v1, "com.android.internal.telephony.IIccPhoneBook"

    move-object/from16 v0, p2

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 309
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v2

    .line 310
    .restart local v2       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v2}, Lcom/android/internal/telephony/IIccPhoneBook$Stub;->isEmailSpaceFull(Ljava/lang/String;)Z

    move-result v13

    .line 311
    .restart local v13       #_result:Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 312
    if-eqz v13, :cond_8

    const/4 v1, 0x1

    :goto_9
    move-object/from16 v0, p3

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 313
    const/4 v1, 0x1

    goto/16 :goto_0

    .line 312
    :cond_8
    const/4 v1, 0x0

    goto :goto_9

    .line 52
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
