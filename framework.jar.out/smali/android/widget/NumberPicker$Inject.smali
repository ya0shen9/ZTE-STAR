.class Landroid/widget/NumberPicker$Inject;
.super Ljava/lang/Object;
.source "NumberPicker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPicker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Inject"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 542
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getSelectionDivider(Landroid/content/Context;Landroid/util/AttributeSet;ILandroid/content/res/TypedArray;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"
    .parameter "attributesArray"

    .prologue
    const/4 v4, 0x0

    .line 545
    invoke-virtual {p0}, Landroid/content/Context;->isZteApp()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x1010403

    if-ne p2, v2, :cond_0

    .line 546
    sget-object v2, Landroidzte/R$styleable;->NumberPicker_ZTE:[I

    const v3, 0x2010019

    invoke-virtual {p0, p1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 550
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v4}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 552
    .local v1, result:Landroid/graphics/drawable/Drawable;
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 553
    if-eqz v1, :cond_0

    .line 554
    const-string v2, "NumberPicker"

    const-string v3, "fanwx: using zte theme numberpicker widget!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 560
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #result:Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    :cond_0
    const/4 v2, 0x2

    invoke-virtual {p3, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    goto :goto_0
.end method
