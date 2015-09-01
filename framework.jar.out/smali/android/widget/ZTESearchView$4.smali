.class Landroid/widget/ZTESearchView$4;
.super Ljava/lang/Object;
.source "ZTESearchView.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 281
    iput-object p1, p0, Landroid/widget/ZTESearchView$4;->this$0:Landroid/widget/ZTESearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .parameter "v"
    .parameter "hasFocus"

    .prologue
    .line 284
    iget-object v0, p0, Landroid/widget/ZTESearchView$4;->this$0:Landroid/widget/ZTESearchView;

    #getter for: Landroid/widget/ZTESearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Landroid/widget/ZTESearchView;->access$200(Landroid/widget/ZTESearchView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 285
    iget-object v0, p0, Landroid/widget/ZTESearchView$4;->this$0:Landroid/widget/ZTESearchView;

    #getter for: Landroid/widget/ZTESearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;
    invoke-static {v0}, Landroid/widget/ZTESearchView;->access$200(Landroid/widget/ZTESearchView;)Landroid/view/View$OnFocusChangeListener;

    move-result-object v0

    iget-object v1, p0, Landroid/widget/ZTESearchView$4;->this$0:Landroid/widget/ZTESearchView;

    invoke-interface {v0, v1, p2}, Landroid/view/View$OnFocusChangeListener;->onFocusChange(Landroid/view/View;Z)V

    .line 287
    :cond_0
    return-void
.end method
