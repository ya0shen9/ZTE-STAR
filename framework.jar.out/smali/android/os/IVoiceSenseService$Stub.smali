.class public abstract Landroid/os/IVoiceSenseService$Stub;
.super Landroid/os/Binder;
.source "IVoiceSenseService.java"

# interfaces
.implements Landroid/os/IVoiceSenseService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/os/IVoiceSenseService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/os/IVoiceSenseService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.os.IVoiceSenseService"

.field static final TRANSACTION_abortWDB:I = 0x8

.field static final TRANSACTION_getKeyword:I = 0x3

.field static final TRANSACTION_getKeywordRDB:I = 0x5

.field static final TRANSACTION_getValue:I = 0x2

.field static final TRANSACTION_getVoiceSenseState:I = 0xd

.field static final TRANSACTION_readSysfs:I = 0xb

.field static final TRANSACTION_runSysCmd:I = 0x9

.field static final TRANSACTION_setKeyword:I = 0x4

.field static final TRANSACTION_setKeywordWDB:I = 0x6

.field static final TRANSACTION_setKeywordsWDB:I = 0x7

.field static final TRANSACTION_setValue:I = 0x1

.field static final TRANSACTION_setVoiceSenseEnabled:I = 0xc

.field static final TRANSACTION_writeSysfs:I = 0xa


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 15
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 16
    const-string v0, "android.os.IVoiceSenseService"

    invoke-virtual {p0, p0, v0}, Landroid/os/IVoiceSenseService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 17
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/os/IVoiceSenseService;
    .locals 2
    .parameter "obj"

    .prologue
    .line 24
    if-nez p0, :cond_0

    .line 25
    const/4 v0, 0x0

    .line 31
    :goto_0
    return-object v0

    .line 27
    :cond_0
    const-string v1, "android.os.IVoiceSenseService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 28
    .local v0, iin:Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/os/IVoiceSenseService;

    if-eqz v1, :cond_1

    .line 29
    check-cast v0, Landroid/os/IVoiceSenseService;

    goto :goto_0

    .line 31
    :cond_1
    new-instance v0, Landroid/os/IVoiceSenseService$Stub$Proxy;

    .end local v0           #iin:Landroid/os/IInterface;
    invoke-direct {v0, p0}, Landroid/os/IVoiceSenseService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    goto :goto_0
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 35
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 7
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
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 39
    sparse-switch p1, :sswitch_data_0

    .line 188
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v4

    :goto_0
    return v4

    .line 43
    :sswitch_0
    const-string v5, "android.os.IVoiceSenseService"

    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 48
    :sswitch_1
    const-string v5, "android.os.IVoiceSenseService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 50
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 52
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 53
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/IVoiceSenseService$Stub;->setValue(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 54
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 55
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 60
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_2
    const-string v5, "android.os.IVoiceSenseService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 62
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 63
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IVoiceSenseService$Stub;->getValue(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 64
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 65
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto :goto_0

    .line 70
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_3
    const-string v5, "android.os.IVoiceSenseService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 72
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 74
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 75
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/IVoiceSenseService$Stub;->getKeyword(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 76
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 77
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 82
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_4
    const-string v5, "android.os.IVoiceSenseService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 84
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 86
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 87
    .restart local v1       #_arg1:Ljava/lang/String;
    invoke-virtual {p0, v0, v1}, Landroid/os/IVoiceSenseService$Stub;->setKeyword(Ljava/lang/String;Ljava/lang/String;)I

    move-result v3

    .line 88
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 89
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 94
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_5
    const-string v5, "android.os.IVoiceSenseService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 96
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 97
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IVoiceSenseService$Stub;->getKeywordRDB(Ljava/lang/String;)I

    move-result v3

    .line 98
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 99
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 104
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_6
    const-string v5, "android.os.IVoiceSenseService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 106
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 108
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 109
    .local v1, _arg1:I
    invoke-virtual {p0, v0, v1}, Landroid/os/IVoiceSenseService$Stub;->setKeywordWDB(Ljava/lang/String;I)I

    move-result v3

    .line 110
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 111
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 116
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:I
    .end local v3           #_result:I
    :sswitch_7
    const-string v5, "android.os.IVoiceSenseService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 118
    invoke-virtual {p2}, Landroid/os/Parcel;->createStringArray()[Ljava/lang/String;

    move-result-object v0

    .line 120
    .local v0, _arg0:[Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v1

    .line 122
    .local v1, _arg1:[I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 123
    .local v2, _arg2:I
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IVoiceSenseService$Stub;->setKeywordsWDB([Ljava/lang/String;[II)I

    move-result v3

    .line 124
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 125
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 130
    .end local v0           #_arg0:[Ljava/lang/String;
    .end local v1           #_arg1:[I
    .end local v2           #_arg2:I
    .end local v3           #_result:I
    :sswitch_8
    const-string v5, "android.os.IVoiceSenseService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 131
    invoke-virtual {p0}, Landroid/os/IVoiceSenseService$Stub;->abortWDB()V

    .line 132
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    goto/16 :goto_0

    .line 137
    :sswitch_9
    const-string v5, "android.os.IVoiceSenseService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 140
    .local v0, _arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IVoiceSenseService$Stub;->runSysCmd(Ljava/lang/String;)I

    move-result v3

    .line 141
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 142
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 147
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:I
    :sswitch_a
    const-string v5, "android.os.IVoiceSenseService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 149
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 151
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, _arg1:Ljava/lang/String;
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 154
    .restart local v2       #_arg2:I
    invoke-virtual {p0, v0, v1, v2}, Landroid/os/IVoiceSenseService$Stub;->writeSysfs(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v3

    .line 155
    .restart local v3       #_result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 161
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v1           #_arg1:Ljava/lang/String;
    .end local v2           #_arg2:I
    .end local v3           #_result:I
    :sswitch_b
    const-string v5, "android.os.IVoiceSenseService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 163
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v0

    .line 164
    .restart local v0       #_arg0:Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/os/IVoiceSenseService$Stub;->readSysfs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 165
    .local v3, _result:Ljava/lang/String;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 166
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    goto/16 :goto_0

    .line 171
    .end local v0           #_arg0:Ljava/lang/String;
    .end local v3           #_result:Ljava/lang/String;
    :sswitch_c
    const-string v6, "android.os.IVoiceSenseService"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 173
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    move v0, v4

    .line 174
    .local v0, _arg0:Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/os/IVoiceSenseService$Stub;->setVoiceSenseEnabled(Z)Z

    move-result v3

    .line 175
    .local v3, _result:Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 176
    if-eqz v3, :cond_0

    move v5, v4

    :cond_0
    invoke-virtual {p3, v5}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .end local v0           #_arg0:Z
    .end local v3           #_result:Z
    :cond_1
    move v0, v5

    .line 173
    goto :goto_1

    .line 181
    :sswitch_d
    const-string v5, "android.os.IVoiceSenseService"

    invoke-virtual {p2, v5}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 182
    invoke-virtual {p0}, Landroid/os/IVoiceSenseService$Stub;->getVoiceSenseState()I

    move-result v3

    .line 183
    .local v3, _result:I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 184
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    goto/16 :goto_0

    .line 39
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
