.class Lcom/android/internal/policy/impl/PhoneWindow$Inject;
.super Ljava/lang/Object;
.source "PhoneWindow.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/policy/impl/PhoneWindow;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Inject"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 3911
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getLayoutResourceCustomTitle(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 3924
    const v0, 0x2010017

    const v1, 0x1010411

    invoke-static {p0, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$Inject;->getResId(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method static getLayoutResourceTitle(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 3919
    const v0, 0x201000c

    const v1, 0x1010412

    invoke-static {p0, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$Inject;->getResId(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method static getLayoutResourceTitleIcon(Landroid/content/Context;)I
    .locals 2
    .parameter "context"

    .prologue
    .line 3913
    const v0, 0x2010018

    const v1, 0x1010410

    invoke-static {p0, v0, v1}, Lcom/android/internal/policy/impl/PhoneWindow$Inject;->getResId(Landroid/content/Context;II)I

    move-result v0

    return v0
.end method

.method static getResId(Landroid/content/Context;II)I
    .locals 4
    .parameter "context"
    .parameter "attStyle"
    .parameter "attStyleDef"

    .prologue
    const/4 v3, 0x1

    .line 3930
    invoke-virtual {p0}, Landroid/content/Context;->isZteApp()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 3931
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3932
    .local v0, res:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p1, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3933
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    const/high16 v2, 0x100

    if-le v1, v2, :cond_0

    .line 3934
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    .line 3939
    :goto_0
    return v1

    .line 3937
    .end local v0           #res:Landroid/util/TypedValue;
    :cond_0
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 3938
    .restart local v0       #res:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    invoke-virtual {v1, p2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 3939
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    goto :goto_0
.end method
