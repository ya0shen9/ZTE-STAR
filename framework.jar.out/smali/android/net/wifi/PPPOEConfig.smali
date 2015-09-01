.class public Landroid/net/wifi/PPPOEConfig;
.super Ljava/lang/Object;
.source "PPPOEConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator; = null
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/net/wifi/PPPOEConfig;",
            ">;"
        }
    .end annotation
.end field

.field public static final PPPOE_DEFAULT_INTERFACE:Ljava/lang/String; = "wlan0"

.field public static final PPPOE_DEFAULT_LCP_ECHO_FAILURE:I = 0x3

.field public static final PPPOE_DEFAULT_LCP_ECHO_INTERVAL:I = 0x14

.field public static final PPPOE_DEFAULT_MRU:I = 0x5d4

.field public static final PPPOE_DEFAULT_MSS:I = 0x584

.field public static final PPPOE_DEFAULT_MTU:I = 0x5d4

.field public static final PPPOE_DEFAULT_TIMEOUT:I = 0x50


# instance fields
.field public MSS:I

.field public interf:Ljava/lang/String;

.field public lcp_echo_failure:I

.field public lcp_echo_interval:I

.field public mru:I

.field public mtu:I

.field public password:Ljava/lang/String;

.field public timeout:I

.field public username:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 101
    new-instance v0, Landroid/net/wifi/PPPOEConfig$1;

    invoke-direct {v0}, Landroid/net/wifi/PPPOEConfig$1;-><init>()V

    sput-object v0, Landroid/net/wifi/PPPOEConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 61
    invoke-direct {p0, v0, v0}, Landroid/net/wifi/PPPOEConfig;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    .line 62
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;)V
    .locals 10
    .parameter "user"
    .parameter "pass"

    .prologue
    const/16 v6, 0x5d4

    .line 64
    const-string/jumbo v3, "wlan0"

    const/16 v4, 0x14

    const/4 v5, 0x3

    const/16 v8, 0x50

    const/16 v9, 0x584

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move v7, v6

    invoke-direct/range {v0 .. v9}, Landroid/net/wifi/PPPOEConfig;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V

    .line 67
    return-void
.end method

.method public constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;IIIIII)V
    .locals 0
    .parameter "user"
    .parameter "pass"
    .parameter "iface"
    .parameter "lcp_echo_interval"
    .parameter "lcp_echo_failure"
    .parameter "mtu"
    .parameter "mru"
    .parameter "timeout"
    .parameter "mss"

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 71
    iput-object p1, p0, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    .line 72
    iput-object p2, p0, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    .line 73
    iput-object p3, p0, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    .line 74
    iput p4, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    .line 75
    iput p5, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    .line 76
    iput p6, p0, Landroid/net/wifi/PPPOEConfig;->mtu:I

    .line 77
    iput p7, p0, Landroid/net/wifi/PPPOEConfig;->mru:I

    .line 78
    iput p8, p0, Landroid/net/wifi/PPPOEConfig;->timeout:I

    .line 79
    iput p9, p0, Landroid/net/wifi/PPPOEConfig;->MSS:I

    .line 80
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 84
    const/4 v0, 0x0

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .parameter "dest"
    .parameter "flags"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/net/wifi/PPPOEConfig;->username:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 90
    iget-object v0, p0, Landroid/net/wifi/PPPOEConfig;->password:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 91
    iget-object v0, p0, Landroid/net/wifi/PPPOEConfig;->interf:Ljava/lang/String;

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 92
    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_interval:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 93
    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->lcp_echo_failure:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 94
    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->mtu:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 95
    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->mru:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 96
    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->timeout:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 97
    iget v0, p0, Landroid/net/wifi/PPPOEConfig;->MSS:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    return-void
.end method
