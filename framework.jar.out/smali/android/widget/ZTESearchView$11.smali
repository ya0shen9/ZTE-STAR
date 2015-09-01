.class Landroid/widget/ZTESearchView$11;
.super Ljava/lang/Object;
.source "ZTESearchView.java"

# interfaces
.implements Landroid/text/TextWatcher;


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
    .line 1644
    iput-object p1, p0, Landroid/widget/ZTESearchView$11;->this$0:Landroid/widget/ZTESearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .parameter "s"

    .prologue
    .line 1654
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 1646
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .parameter "s"
    .parameter "start"
    .parameter "before"
    .parameter "after"

    .prologue
    .line 1650
    iget-object v0, p0, Landroid/widget/ZTESearchView$11;->this$0:Landroid/widget/ZTESearchView;

    #calls: Landroid/widget/ZTESearchView;->onTextChanged(Ljava/lang/CharSequence;)V
    invoke-static {v0, p1}, Landroid/widget/ZTESearchView;->access$2000(Landroid/widget/ZTESearchView;Ljava/lang/CharSequence;)V

    .line 1651
    return-void
.end method
