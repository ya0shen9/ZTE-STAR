.class public Lzte/contact/simcap;
.super Ljava/lang/Object;
.source "simcap.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lzte/contact/simcap;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public anrlength:I

.field public curExt1Size:I

.field public curSimSize:I

.field public curUsimSize:I

.field public emaillength:I

.field public ext1Size:I

.field public ext1length:I

.field public numberlength:I

.field public simSize:I

.field public taglength:I

.field public usimSize:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 60
    new-instance v0, Lzte/contact/simcap$1;

    invoke-direct {v0}, Lzte/contact/simcap$1;-><init>()V

    sput-object v0, Lzte/contact/simcap;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lzte/contact/simcap;->taglength:I

    .line 16
    iput v0, p0, Lzte/contact/simcap;->numberlength:I

    .line 17
    iput v0, p0, Lzte/contact/simcap;->emaillength:I

    .line 18
    iput v0, p0, Lzte/contact/simcap;->anrlength:I

    .line 19
    iput v0, p0, Lzte/contact/simcap;->ext1length:I

    .line 20
    iput v0, p0, Lzte/contact/simcap;->ext1Size:I

    .line 21
    iput v0, p0, Lzte/contact/simcap;->curExt1Size:I

    .line 22
    iput v0, p0, Lzte/contact/simcap;->simSize:I

    .line 23
    iput v0, p0, Lzte/contact/simcap;->curSimSize:I

    .line 24
    iput v0, p0, Lzte/contact/simcap;->usimSize:I

    .line 25
    iput v0, p0, Lzte/contact/simcap;->curUsimSize:I

    .line 27
    const-string v0, "RIL_simcap"

    const-string v1, "simcap"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 28
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 2
    .parameter "pl"

    .prologue
    const/4 v0, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 15
    iput v0, p0, Lzte/contact/simcap;->taglength:I

    .line 16
    iput v0, p0, Lzte/contact/simcap;->numberlength:I

    .line 17
    iput v0, p0, Lzte/contact/simcap;->emaillength:I

    .line 18
    iput v0, p0, Lzte/contact/simcap;->anrlength:I

    .line 19
    iput v0, p0, Lzte/contact/simcap;->ext1length:I

    .line 20
    iput v0, p0, Lzte/contact/simcap;->ext1Size:I

    .line 21
    iput v0, p0, Lzte/contact/simcap;->curExt1Size:I

    .line 22
    iput v0, p0, Lzte/contact/simcap;->simSize:I

    .line 23
    iput v0, p0, Lzte/contact/simcap;->curSimSize:I

    .line 24
    iput v0, p0, Lzte/contact/simcap;->usimSize:I

    .line 25
    iput v0, p0, Lzte/contact/simcap;->curUsimSize:I

    .line 30
    const-string v0, "RIL_simcap"

    const-string v1, "simcap read"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 31
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lzte/contact/simcap;->taglength:I

    .line 32
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lzte/contact/simcap;->numberlength:I

    .line 33
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lzte/contact/simcap;->emaillength:I

    .line 34
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lzte/contact/simcap;->anrlength:I

    .line 35
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lzte/contact/simcap;->ext1length:I

    .line 36
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lzte/contact/simcap;->ext1Size:I

    .line 37
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lzte/contact/simcap;->curExt1Size:I

    .line 38
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lzte/contact/simcap;->simSize:I

    .line 39
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lzte/contact/simcap;->curSimSize:I

    .line 40
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lzte/contact/simcap;->usimSize:I

    .line 41
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Lzte/contact/simcap;->curUsimSize:I

    .line 42
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 44
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 2
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 47
    const-string v0, "RIL_simcap"

    const-string v1, "simcap write"

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 48
    iget v0, p0, Lzte/contact/simcap;->taglength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 49
    iget v0, p0, Lzte/contact/simcap;->numberlength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 50
    iget v0, p0, Lzte/contact/simcap;->emaillength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 51
    iget v0, p0, Lzte/contact/simcap;->anrlength:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 52
    iget v0, p0, Lzte/contact/simcap;->ext1length:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 53
    iget v0, p0, Lzte/contact/simcap;->ext1Size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 54
    iget v0, p0, Lzte/contact/simcap;->curExt1Size:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    iget v0, p0, Lzte/contact/simcap;->simSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 56
    iget v0, p0, Lzte/contact/simcap;->curSimSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 57
    iget v0, p0, Lzte/contact/simcap;->usimSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 58
    iget v0, p0, Lzte/contact/simcap;->curUsimSize:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 59
    return-void
.end method
