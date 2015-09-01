.class public Lzte/android/widget/TextViewZTE;
.super Landroid/widget/TextView;
.source "TextViewZTE.java"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .parameter "context"

    .prologue
    .line 20
    invoke-direct {p0, p1}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    .line 21
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 24
    invoke-direct {p0, p1, p2}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 25
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    .line 28
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 29
    return-void
.end method

.method private addLinkify()V
    .locals 1

    .prologue
    .line 47
    invoke-virtual {p0}, Lzte/android/widget/TextViewZTE;->getAutoLinkMask()I

    move-result v0

    if-eqz v0, :cond_0

    .line 48
    invoke-virtual {p0}, Lzte/android/widget/TextViewZTE;->getAutoLinkMask()I

    move-result v0

    invoke-static {p0, v0}, Lzte/android/text/util/LinkifyZTE;->addLinksZTE(Landroid/widget/TextView;I)Z

    .line 50
    :cond_0
    return-void
.end method


# virtual methods
.method public final setTextZTE(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "text"

    .prologue
    .line 32
    invoke-virtual {p0, p1}, Lzte/android/widget/TextViewZTE;->setText(Ljava/lang/CharSequence;)V

    .line 33
    invoke-direct {p0}, Lzte/android/widget/TextViewZTE;->addLinkify()V

    .line 34
    return-void
.end method

.method public final setTextZTE(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V
    .locals 0
    .parameter "text"
    .parameter "type"

    .prologue
    .line 37
    invoke-virtual {p0, p1, p2}, Lzte/android/widget/TextViewZTE;->setText(Ljava/lang/CharSequence;Landroid/widget/TextView$BufferType;)V

    .line 38
    invoke-direct {p0}, Lzte/android/widget/TextViewZTE;->addLinkify()V

    .line 39
    return-void
.end method

.method public final setTextZTE([CII)V
    .locals 0
    .parameter "text"
    .parameter "start"
    .parameter "len"

    .prologue
    .line 42
    invoke-virtual {p0, p1, p2, p3}, Lzte/android/widget/TextViewZTE;->setText([CII)V

    .line 43
    invoke-direct {p0}, Lzte/android/widget/TextViewZTE;->addLinkify()V

    .line 44
    return-void
.end method
