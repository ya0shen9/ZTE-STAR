.class Landroid/app/ListActivityZTE$2;
.super Ljava/lang/Object;
.source "ListActivityZTE.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ListActivityZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/ListActivityZTE;


# direct methods
.method constructor <init>(Landroid/app/ListActivityZTE;)V
    .locals 0

    .prologue
    .line 316
    iput-object p1, p0, Landroid/app/ListActivityZTE$2;->this$0:Landroid/app/ListActivityZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 6
    .param p2, "v"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .line 319
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    iget-object v0, p0, Landroid/app/ListActivityZTE$2;->this$0:Landroid/app/ListActivityZTE;

    move-object v1, p1

    check-cast v1, Landroid/widget/ListView;

    move-object v2, p2

    move v3, p3

    move-wide v4, p4

    invoke-virtual/range {v0 .. v5}, Landroid/app/ListActivityZTE;->onListItemClick(Landroid/widget/ListView;Landroid/view/View;IJ)V

    .line 320
    return-void
.end method
