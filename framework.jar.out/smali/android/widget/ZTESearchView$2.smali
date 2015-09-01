.class Landroid/widget/ZTESearchView$2;
.super Ljava/lang/Object;
.source "ZTESearchView.java"

# interfaces
.implements Ljava/lang/Runnable;


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
    .line 150
    iput-object p1, p0, Landroid/widget/ZTESearchView$2;->this$0:Landroid/widget/ZTESearchView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 152
    iget-object v0, p0, Landroid/widget/ZTESearchView$2;->this$0:Landroid/widget/ZTESearchView;

    #calls: Landroid/widget/ZTESearchView;->updateFocusedState()V
    invoke-static {v0}, Landroid/widget/ZTESearchView;->access$000(Landroid/widget/ZTESearchView;)V

    .line 153
    return-void
.end method
