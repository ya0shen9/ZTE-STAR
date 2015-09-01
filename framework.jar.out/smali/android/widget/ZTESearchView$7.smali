.class Landroid/widget/ZTESearchView$7;
.super Ljava/lang/Object;
.source "ZTESearchView.java"

# interfaces
.implements Landroid/view/View$OnKeyListener;


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
    .line 907
    iput-object p1, p0, Landroid/widget/ZTESearchView$7;->this$0:Landroid/widget/ZTESearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 6
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 910
    iget-object v3, p0, Landroid/widget/ZTESearchView$7;->this$0:Landroid/widget/ZTESearchView;

    #getter for: Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v3}, Landroid/widget/ZTESearchView;->access$1400(Landroid/widget/ZTESearchView;)Landroid/app/SearchableInfo;

    move-result-object v3

    if-nez v3, :cond_1

    .line 948
    :cond_0
    :goto_0
    return v1

    .line 921
    :cond_1
    iget-object v3, p0, Landroid/widget/ZTESearchView$7;->this$0:Landroid/widget/ZTESearchView;

    #getter for: Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;
    invoke-static {v3}, Landroid/widget/ZTESearchView;->access$1200(Landroid/widget/ZTESearchView;)Landroid/widget/ZTESearchView$SearchAutoComplete;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ZTESearchView$SearchAutoComplete;->isPopupShowing()Z

    move-result v3

    if-eqz v3, :cond_2

    iget-object v3, p0, Landroid/widget/ZTESearchView$7;->this$0:Landroid/widget/ZTESearchView;

    #getter for: Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;
    invoke-static {v3}, Landroid/widget/ZTESearchView;->access$1200(Landroid/widget/ZTESearchView;)Landroid/widget/ZTESearchView$SearchAutoComplete;

    move-result-object v3

    invoke-virtual {v3}, Landroid/widget/ZTESearchView$SearchAutoComplete;->getListSelection()I

    move-result v3

    const/4 v4, -0x1

    if-eq v3, v4, :cond_2

    .line 923
    iget-object v1, p0, Landroid/widget/ZTESearchView$7;->this$0:Landroid/widget/ZTESearchView;

    #calls: Landroid/widget/ZTESearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    invoke-static {v1, p1, p2, p3}, Landroid/widget/ZTESearchView;->access$1500(Landroid/widget/ZTESearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0

    .line 928
    :cond_2
    iget-object v3, p0, Landroid/widget/ZTESearchView$7;->this$0:Landroid/widget/ZTESearchView;

    #getter for: Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;
    invoke-static {v3}, Landroid/widget/ZTESearchView;->access$1200(Landroid/widget/ZTESearchView;)Landroid/widget/ZTESearchView$SearchAutoComplete;

    move-result-object v3

    #calls: Landroid/widget/ZTESearchView$SearchAutoComplete;->isEmpty()Z
    invoke-static {v3}, Landroid/widget/ZTESearchView$SearchAutoComplete;->access$1600(Landroid/widget/ZTESearchView$SearchAutoComplete;)Z

    move-result v3

    if-nez v3, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 929
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-ne v3, v2, :cond_3

    .line 930
    const/16 v3, 0x42

    if-ne p2, v3, :cond_3

    .line 931
    invoke-virtual {p1}, Landroid/view/View;->cancelLongPress()V

    .line 934
    iget-object v3, p0, Landroid/widget/ZTESearchView$7;->this$0:Landroid/widget/ZTESearchView;

    const/4 v4, 0x0

    iget-object v5, p0, Landroid/widget/ZTESearchView$7;->this$0:Landroid/widget/ZTESearchView;

    #getter for: Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;
    invoke-static {v5}, Landroid/widget/ZTESearchView;->access$1200(Landroid/widget/ZTESearchView;)Landroid/widget/ZTESearchView$SearchAutoComplete;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/ZTESearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    #calls: Landroid/widget/ZTESearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v3, v1, v4, v5}, Landroid/widget/ZTESearchView;->access$1700(Landroid/widget/ZTESearchView;ILjava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 936
    goto :goto_0

    .line 939
    :cond_3
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v3

    if-nez v3, :cond_0

    .line 940
    iget-object v3, p0, Landroid/widget/ZTESearchView$7;->this$0:Landroid/widget/ZTESearchView;

    #getter for: Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;
    invoke-static {v3}, Landroid/widget/ZTESearchView;->access$1400(Landroid/widget/ZTESearchView;)Landroid/app/SearchableInfo;

    move-result-object v3

    invoke-virtual {v3, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 941
    .local v0, actionKey:Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 942
    iget-object v1, p0, Landroid/widget/ZTESearchView$7;->this$0:Landroid/widget/ZTESearchView;

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ZTESearchView$7;->this$0:Landroid/widget/ZTESearchView;

    #getter for: Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;
    invoke-static {v4}, Landroid/widget/ZTESearchView;->access$1200(Landroid/widget/ZTESearchView;)Landroid/widget/ZTESearchView$SearchAutoComplete;

    move-result-object v4

    invoke-virtual {v4}, Landroid/widget/ZTESearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v4

    #calls: Landroid/widget/ZTESearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    invoke-static {v1, p2, v3, v4}, Landroid/widget/ZTESearchView;->access$1700(Landroid/widget/ZTESearchView;ILjava/lang/String;Ljava/lang/String;)V

    move v1, v2

    .line 944
    goto/16 :goto_0
.end method
