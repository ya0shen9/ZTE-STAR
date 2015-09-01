.class Landroid/widget/ZTESearchView$6;
.super Ljava/lang/Object;
.source "ZTESearchView.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/ZTESearchView;
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
    .line 858
    iput-object p1, p0, Landroid/widget/ZTESearchView$6;->this$0:Landroid/widget/ZTESearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 1
    .parameter "v"

    .prologue
    .line 861
    iget-object v0, p0, Landroid/widget/ZTESearchView$6;->this$0:Landroid/widget/ZTESearchView;

    #getter for: Landroid/widget/ZTESearchView;->mSearchButton:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/ZTESearchView;->access$400(Landroid/widget/ZTESearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 862
    iget-object v0, p0, Landroid/widget/ZTESearchView$6;->this$0:Landroid/widget/ZTESearchView;

    #calls: Landroid/widget/ZTESearchView;->onSearchClicked()V
    invoke-static {v0}, Landroid/widget/ZTESearchView;->access$500(Landroid/widget/ZTESearchView;)V

    .line 872
    :cond_0
    :goto_0
    return-void

    .line 863
    :cond_1
    iget-object v0, p0, Landroid/widget/ZTESearchView$6;->this$0:Landroid/widget/ZTESearchView;

    #getter for: Landroid/widget/ZTESearchView;->mCloseButton:Landroid/widget/ImageView;
    invoke-static {v0}, Landroid/widget/ZTESearchView;->access$600(Landroid/widget/ZTESearchView;)Landroid/widget/ImageView;

    move-result-object v0

    if-ne p1, v0, :cond_2

    .line 864
    iget-object v0, p0, Landroid/widget/ZTESearchView$6;->this$0:Landroid/widget/ZTESearchView;

    #calls: Landroid/widget/ZTESearchView;->onCloseClicked()V
    invoke-static {v0}, Landroid/widget/ZTESearchView;->access$700(Landroid/widget/ZTESearchView;)V

    goto :goto_0

    .line 865
    :cond_2
    iget-object v0, p0, Landroid/widget/ZTESearchView$6;->this$0:Landroid/widget/ZTESearchView;

    #getter for: Landroid/widget/ZTESearchView;->mSubmitButton:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/ZTESearchView;->access$800(Landroid/widget/ZTESearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_3

    .line 866
    iget-object v0, p0, Landroid/widget/ZTESearchView$6;->this$0:Landroid/widget/ZTESearchView;

    #calls: Landroid/widget/ZTESearchView;->onSubmitQuery()V
    invoke-static {v0}, Landroid/widget/ZTESearchView;->access$900(Landroid/widget/ZTESearchView;)V

    goto :goto_0

    .line 867
    :cond_3
    iget-object v0, p0, Landroid/widget/ZTESearchView$6;->this$0:Landroid/widget/ZTESearchView;

    #getter for: Landroid/widget/ZTESearchView;->mVoiceButton:Landroid/view/View;
    invoke-static {v0}, Landroid/widget/ZTESearchView;->access$1000(Landroid/widget/ZTESearchView;)Landroid/view/View;

    move-result-object v0

    if-ne p1, v0, :cond_4

    .line 868
    iget-object v0, p0, Landroid/widget/ZTESearchView$6;->this$0:Landroid/widget/ZTESearchView;

    #calls: Landroid/widget/ZTESearchView;->onVoiceClicked()V
    invoke-static {v0}, Landroid/widget/ZTESearchView;->access$1100(Landroid/widget/ZTESearchView;)V

    goto :goto_0

    .line 869
    :cond_4
    iget-object v0, p0, Landroid/widget/ZTESearchView$6;->this$0:Landroid/widget/ZTESearchView;

    #getter for: Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;
    invoke-static {v0}, Landroid/widget/ZTESearchView;->access$1200(Landroid/widget/ZTESearchView;)Landroid/widget/ZTESearchView$SearchAutoComplete;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 870
    iget-object v0, p0, Landroid/widget/ZTESearchView$6;->this$0:Landroid/widget/ZTESearchView;

    #calls: Landroid/widget/ZTESearchView;->forceSuggestionQuery()V
    invoke-static {v0}, Landroid/widget/ZTESearchView;->access$1300(Landroid/widget/ZTESearchView;)V

    goto :goto_0
.end method
