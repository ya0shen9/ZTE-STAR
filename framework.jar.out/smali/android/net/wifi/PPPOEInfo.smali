.class public Landroid/net/wifi/PPPOEInfo;
.super Ljava/lang/Object;
.source "PPPOEInfo.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/net/wifi/PPPOEInfo$Status;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/PPPOEInfo;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field public online_time:J

.field public status:Landroid/net/wifi/PPPOEInfo$Status;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 71
    new-instance v0, Landroid/net/wifi/PPPOEInfo$1;

    invoke-direct {v0}, Landroid/net/wifi/PPPOEInfo$1;-><init>()V

    sput-object v0, Landroid/net/wifi/PPPOEInfo;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 47
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/net/wifi/PPPOEInfo$Status;J)V
    .locals 4
    .parameter "status"
    .parameter "connecttedtime"

    .prologue
    .line 50
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 51
    iput-object p1, p0, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    .line 52
    iget-object v0, p0, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    sget-object v1, Landroid/net/wifi/PPPOEInfo$Status;->ONLINE:Landroid/net/wifi/PPPOEInfo$Status;

    if-ne v0, v1, :cond_0

    .line 53
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    sub-long/2addr v0, p2

    const-wide/16 v2, 0x3e8

    div-long/2addr v0, v2

    iput-wide v0, p0, Landroid/net/wifi/PPPOEInfo;->online_time:J

    .line 57
    :goto_0
    return-void

    .line 55
    :cond_0
    const-wide/16 v0, 0x0

    iput-wide v0, p0, Landroid/net/wifi/PPPOEInfo;->online_time:J

    goto :goto_0
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 60
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 65
    iget-object v1, p0, Landroid/net/wifi/PPPOEInfo;->status:Landroid/net/wifi/PPPOEInfo$Status;

    invoke-virtual {v1}, Landroid/net/wifi/PPPOEInfo$Status;->name()Ljava/lang/String;

    move-result-object v0

    .line 66
    .local v0, status_str:Ljava/lang/String;
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 67
    iget-wide v1, p0, Landroid/net/wifi/PPPOEInfo;->online_time:J

    invoke-virtual {p1, v1, v2}, Landroid/os/Parcel;->writeLong(J)V

    .line 68
    return-void
.end method
