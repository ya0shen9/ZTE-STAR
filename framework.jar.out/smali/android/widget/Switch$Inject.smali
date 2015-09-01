.class Landroid/widget/Switch$Inject;
.super Ljava/lang/Object;
.source "Switch.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Switch;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Inject"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 116
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getTypedArrayRes(Landroid/content/Context;Landroid/util/AttributeSet;I)Landroid/content/res/TypedArray;
    .locals 5
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v4, 0x0

    .line 119
    invoke-virtual {p0}, Landroid/content/Context;->isZteApp()Z

    move-result v2

    if-eqz v2, :cond_0

    const v2, 0x101041f

    if-ne p2, v2, :cond_0

    .line 121
    sget-object v2, Lcom/android/internal/R$styleable;->Switch:[I

    const v3, 0x2010012

    invoke-virtual {p0, p1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 124
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v2, 0x2

    new-array v1, v2, [I

    fill-array-data v1, :array_0

    .line 127
    .local v1, attr:[I
    aget v2, v1, v4

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    const/4 v2, 0x1

    aget v2, v1, v2

    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 129
    const-string v2, "Switch"

    const-string v3, "fanwx: using zte theme switch widget!"

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #attr:[I
    :goto_0
    return-object v0

    :cond_0
    sget-object v2, Lcom/android/internal/R$styleable;->Switch:[I

    invoke-virtual {p0, p1, v2, p2, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    goto :goto_0

    .line 124
    nop

    :array_0
    .array-data 0x4
        0x2t 0x0t 0x0t 0x0t
        0x4t 0x0t 0x0t 0x0t
    .end array-data
.end method
