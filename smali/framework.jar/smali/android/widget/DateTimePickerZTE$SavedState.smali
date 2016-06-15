.class Landroid/widget/DateTimePickerZTE$SavedState;
.super Landroid/view/View$BaseSavedState;
.source "DateTimePickerZTE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/DateTimePickerZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "SavedState"
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/widget/DateTimePickerZTE$SavedState;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mDay:I

.field private final mHour:I

.field private final mMinute:I

.field private final mMonth:I

.field private final mYear:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 1206
    new-instance v0, Landroid/widget/DateTimePickerZTE$SavedState$1;

    invoke-direct {v0}, Landroid/widget/DateTimePickerZTE$SavedState$1;-><init>()V

    sput-object v0, Landroid/widget/DateTimePickerZTE$SavedState;->CREATOR:Landroid/os/Parcelable$Creator;

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 1180
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcel;)V

    .line 1181
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DateTimePickerZTE$SavedState;->mYear:I

    .line 1182
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DateTimePickerZTE$SavedState;->mMonth:I

    .line 1183
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DateTimePickerZTE$SavedState;->mDay:I

    .line 1184
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DateTimePickerZTE$SavedState;->mHour:I

    .line 1185
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v0

    iput v0, p0, Landroid/widget/DateTimePickerZTE$SavedState;->mMinute:I

    .line 1186
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Landroid/widget/DateTimePickerZTE$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcel;
    .param p2, "x1"    # Landroid/widget/DateTimePickerZTE$1;

    .prologue
    .line 1153
    invoke-direct {p0, p1}, Landroid/widget/DateTimePickerZTE$SavedState;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method private constructor <init>(Landroid/os/Parcelable;IIIII)V
    .locals 0
    .param p1, "superState"    # Landroid/os/Parcelable;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I
    .param p5, "hour"    # I
    .param p6, "minute"    # I

    .prologue
    .line 1168
    invoke-direct {p0, p1}, Landroid/view/View$BaseSavedState;-><init>(Landroid/os/Parcelable;)V

    .line 1169
    iput p2, p0, Landroid/widget/DateTimePickerZTE$SavedState;->mYear:I

    .line 1170
    iput p3, p0, Landroid/widget/DateTimePickerZTE$SavedState;->mMonth:I

    .line 1171
    iput p4, p0, Landroid/widget/DateTimePickerZTE$SavedState;->mDay:I

    .line 1172
    iput p5, p0, Landroid/widget/DateTimePickerZTE$SavedState;->mHour:I

    .line 1173
    iput p6, p0, Landroid/widget/DateTimePickerZTE$SavedState;->mMinute:I

    .line 1174
    return-void
.end method

.method synthetic constructor <init>(Landroid/os/Parcelable;IIIIILandroid/widget/DateTimePickerZTE$1;)V
    .locals 0
    .param p1, "x0"    # Landroid/os/Parcelable;
    .param p2, "x1"    # I
    .param p3, "x2"    # I
    .param p4, "x3"    # I
    .param p5, "x4"    # I
    .param p6, "x5"    # I
    .param p7, "x6"    # Landroid/widget/DateTimePickerZTE$1;

    .prologue
    .line 1153
    invoke-direct/range {p0 .. p6}, Landroid/widget/DateTimePickerZTE$SavedState;-><init>(Landroid/os/Parcelable;IIIII)V

    return-void
.end method

.method static synthetic access$1600(Landroid/widget/DateTimePickerZTE$SavedState;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/DateTimePickerZTE$SavedState;

    .prologue
    .line 1153
    iget v0, p0, Landroid/widget/DateTimePickerZTE$SavedState;->mYear:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/DateTimePickerZTE$SavedState;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/DateTimePickerZTE$SavedState;

    .prologue
    .line 1153
    iget v0, p0, Landroid/widget/DateTimePickerZTE$SavedState;->mMonth:I

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/DateTimePickerZTE$SavedState;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/DateTimePickerZTE$SavedState;

    .prologue
    .line 1153
    iget v0, p0, Landroid/widget/DateTimePickerZTE$SavedState;->mDay:I

    return v0
.end method


# virtual methods
.method public getHour()I
    .locals 1

    .prologue
    .line 1188
    iget v0, p0, Landroid/widget/DateTimePickerZTE$SavedState;->mHour:I

    return v0
.end method

.method public getMinute()I
    .locals 1

    .prologue
    .line 1192
    iget v0, p0, Landroid/widget/DateTimePickerZTE$SavedState;->mMinute:I

    return v0
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 1
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 1196
    invoke-super {p0, p1, p2}, Landroid/view/View$BaseSavedState;->writeToParcel(Landroid/os/Parcel;I)V

    .line 1197
    iget v0, p0, Landroid/widget/DateTimePickerZTE$SavedState;->mYear:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1198
    iget v0, p0, Landroid/widget/DateTimePickerZTE$SavedState;->mMonth:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1199
    iget v0, p0, Landroid/widget/DateTimePickerZTE$SavedState;->mDay:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1200
    iget v0, p0, Landroid/widget/DateTimePickerZTE$SavedState;->mHour:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1201
    iget v0, p0, Landroid/widget/DateTimePickerZTE$SavedState;->mMinute:I

    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeInt(I)V

    .line 1202
    return-void
.end method
