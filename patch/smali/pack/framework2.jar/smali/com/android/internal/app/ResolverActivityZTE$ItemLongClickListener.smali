.class Lcom/android/internal/app/ResolverActivityZTE$ItemLongClickListener;
.super Ljava/lang/Object;
.source "ResolverActivityZTE.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ItemLongClickListener"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivityZTE;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivityZTE;)V
    .locals 0

    .prologue
    .line 764
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityZTE$ItemLongClickListener;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemLongClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)Z
    .locals 2
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)Z"
        }
    .end annotation

    .prologue
    .line 768
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityZTE$ItemLongClickListener;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    # getter for: Lcom/android/internal/app/ResolverActivityZTE;->mAdapter:Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivityZTE;->access$000(Lcom/android/internal/app/ResolverActivityZTE;)Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;

    move-result-object v1

    invoke-virtual {v1, p3}, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 769
    .local v0, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityZTE$ItemLongClickListener;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    invoke-virtual {v1, v0}, Lcom/android/internal/app/ResolverActivityZTE;->showAppDetails(Landroid/content/pm/ResolveInfo;)V

    .line 770
    const/4 v1, 0x1

    return v1
.end method
