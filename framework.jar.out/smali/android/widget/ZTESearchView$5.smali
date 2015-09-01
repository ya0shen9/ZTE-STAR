.class Landroid/widget/ZTESearchView$5;
.super Ljava/lang/Object;
.source "ZTESearchView.java"

# interfaces
.implements Landroid/view/View$OnLayoutChangeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/ZTESearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/ZTESearchView;


# direct methods
.method constructor <init>(Landroid/widget/ZTESearchView;)V
    .locals 0
    .parameter

    .prologue
    .line 329
    iput-object p1, p0, Landroid/widget/ZTESearchView$5;->this$0:Landroid/widget/ZTESearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLayoutChange(Landroid/view/View;IIIIIIII)V
    .locals 1
    .parameter "v"
    .parameter "left"
    .parameter "top"
    .parameter "right"
    .parameter "bottom"
    .parameter "oldLeft"
    .parameter "oldTop"
    .parameter "oldRight"
    .parameter "oldBottom"

    .prologue
    .line 333
    iget-object v0, p0, Landroid/widget/ZTESearchView$5;->this$0:Landroid/widget/ZTESearchView;

    #calls: Landroid/widget/ZTESearchView;->adjustDropDownSizeAndPosition()V
    invoke-static {v0}, Landroid/widget/ZTESearchView;->access$300(Landroid/widget/ZTESearchView;)V

    .line 334
    return-void
.end method
