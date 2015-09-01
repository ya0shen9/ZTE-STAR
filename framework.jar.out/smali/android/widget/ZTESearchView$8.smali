.class Landroid/widget/ZTESearchView$8;
.super Ljava/lang/Object;
.source "ZTESearchView.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


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
    .line 1139
    iput-object p1, p0, Landroid/widget/ZTESearchView$8;->this$0:Landroid/widget/ZTESearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "v"
    .parameter "actionId"
    .parameter "event"

    .prologue
    .line 1145
    iget-object v0, p0, Landroid/widget/ZTESearchView$8;->this$0:Landroid/widget/ZTESearchView;

    #calls: Landroid/widget/ZTESearchView;->onSubmitQuery()V
    invoke-static {v0}, Landroid/widget/ZTESearchView;->access$900(Landroid/widget/ZTESearchView;)V

    .line 1146
    const/4 v0, 0x1

    return v0
.end method
