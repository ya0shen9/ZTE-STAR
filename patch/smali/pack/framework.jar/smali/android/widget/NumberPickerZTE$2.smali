.class Landroid/widget/NumberPickerZTE$2;
.super Ljava/lang/Object;
.source "NumberPickerZTE.java"

# interfaces
.implements Landroid/view/View$OnLongClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/NumberPickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPickerZTE;


# direct methods
.method constructor <init>(Landroid/widget/NumberPickerZTE;)V
    .locals 0

    .prologue
    .line 656
    iput-object p1, p0, Landroid/widget/NumberPickerZTE$2;->this$0:Landroid/widget/NumberPickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLongClick(Landroid/view/View;)Z
    .locals 5
    .param p1, "v"    # Landroid/view/View;

    .prologue
    const-wide/16 v3, 0x0

    const/4 v2, 0x1

    .line 658
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$2;->this$0:Landroid/widget/NumberPickerZTE;

    # invokes: Landroid/widget/NumberPickerZTE;->hideSoftInput()V
    invoke-static {v0}, Landroid/widget/NumberPickerZTE;->access$000(Landroid/widget/NumberPickerZTE;)V

    .line 659
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$2;->this$0:Landroid/widget/NumberPickerZTE;

    # getter for: Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/NumberPickerZTE;->access$100(Landroid/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->clearFocus()V

    .line 660
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x10202eb

    if-ne v0, v1, :cond_0

    .line 661
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$2;->this$0:Landroid/widget/NumberPickerZTE;

    # invokes: Landroid/widget/NumberPickerZTE;->postChangeCurrentByOneFromLongPress(ZJ)V
    invoke-static {v0, v2, v3, v4}, Landroid/widget/NumberPickerZTE;->access$300(Landroid/widget/NumberPickerZTE;ZJ)V

    .line 665
    :goto_0
    return v2

    .line 663
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$2;->this$0:Landroid/widget/NumberPickerZTE;

    const/4 v1, 0x0

    # invokes: Landroid/widget/NumberPickerZTE;->postChangeCurrentByOneFromLongPress(ZJ)V
    invoke-static {v0, v1, v3, v4}, Landroid/widget/NumberPickerZTE;->access$300(Landroid/widget/NumberPickerZTE;ZJ)V

    goto :goto_0
.end method
