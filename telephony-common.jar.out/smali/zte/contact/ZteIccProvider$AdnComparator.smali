.class public Lzte/contact/ZteIccProvider$AdnComparator;
.super Ljava/lang/Object;
.source "ZteIccProvider.java"

# interfaces
.implements Ljava/util/Comparator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/contact/ZteIccProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "AdnComparator"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Ljava/util/Comparator",
        "<",
        "Lcom/android/internal/telephony/uicc/AdnRecord;",
        ">;"
    }
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 72
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final compare(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;)I
    .locals 3
    .parameter "a"
    .parameter "b"

    .prologue
    .line 74
    invoke-virtual {p1}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v0

    .line 75
    .local v0, alabel:Ljava/lang/String;
    invoke-virtual {p2}, Lcom/android/internal/telephony/uicc/AdnRecord;->getAlphaTag()Ljava/lang/String;

    move-result-object v1

    .line 76
    .local v1, blabel:Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->compareToIgnoreCase(Ljava/lang/String;)I

    move-result v2

    return v2
.end method

.method public bridge synthetic compare(Ljava/lang/Object;Ljava/lang/Object;)I
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 72
    check-cast p1, Lcom/android/internal/telephony/uicc/AdnRecord;

    .end local p1
    check-cast p2, Lcom/android/internal/telephony/uicc/AdnRecord;

    .end local p2
    invoke-virtual {p0, p1, p2}, Lzte/contact/ZteIccProvider$AdnComparator;->compare(Lcom/android/internal/telephony/uicc/AdnRecord;Lcom/android/internal/telephony/uicc/AdnRecord;)I

    move-result v0

    return v0
.end method
