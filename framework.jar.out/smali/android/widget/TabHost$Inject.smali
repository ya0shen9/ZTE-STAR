.class Landroid/widget/TabHost$Inject;
.super Ljava/lang/Object;
.source "TabHost.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/TabHost;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Inject"
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 74
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static getTabLayoutResId(Landroid/content/Context;Landroid/util/AttributeSet;)I
    .locals 5
    .parameter "context"
    .parameter "attrs"

    .prologue
    const v4, 0x1010083

    const/4 v3, 0x0

    .line 77
    invoke-virtual {p0}, Landroid/content/Context;->isZteApp()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 78
    sget-object v2, Landroidzte/R$styleable;->TabWidget_ZTE:[I

    invoke-virtual {p0, p1, v2, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 82
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v3, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 84
    .local v1, tabLayoutId:I
    const-string v2, "TabHost"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "zte tab, tabLayoutId = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 85
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 95
    :goto_0
    return v1

    .line 87
    .end local v0           #a:Landroid/content/res/TypedArray;
    .end local v1           #tabLayoutId:I
    :cond_0
    sget-object v2, Lcom/android/internal/R$styleable;->TabWidget:[I

    invoke-virtual {p0, p1, v2, v4, v3}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 91
    .restart local v0       #a:Landroid/content/res/TypedArray;
    const/4 v2, 0x4

    invoke-virtual {v0, v2, v3}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v1

    .line 93
    .restart local v1       #tabLayoutId:I
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0
.end method
