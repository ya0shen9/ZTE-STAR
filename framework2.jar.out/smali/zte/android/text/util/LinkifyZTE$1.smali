.class final Lzte/android/text/util/LinkifyZTE$1;
.super Ljava/lang/Object;
.source "LinkifyZTE.java"

# interfaces
.implements Landroid/text/util/Linkify$TransformFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/android/text/util/LinkifyZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 31
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .parameter "match"
    .parameter "url"

    .prologue
    .line 33
    invoke-static {p1}, Lzte/android/util/PatternsZTE;->digitsAndPlusOnlyZTE(Ljava/util/regex/Matcher;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
