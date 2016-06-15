.class Landroid/widget/NumberPickerZTE$3;
.super Ljava/lang/Object;
.source "NumberPickerZTE.java"

# interfaces
.implements Landroid/view/View$OnFocusChangeListener;


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
    .line 689
    iput-object p1, p0, Landroid/widget/NumberPickerZTE$3;->this$0:Landroid/widget/NumberPickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onFocusChange(Landroid/view/View;Z)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;
    .param p2, "hasFocus"    # Z

    .prologue
    const/4 v1, 0x0

    .line 691
    if-eqz p2, :cond_0

    .line 692
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$3;->this$0:Landroid/widget/NumberPickerZTE;

    # getter for: Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/NumberPickerZTE;->access$100(Landroid/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/EditText;->selectAll()V

    .line 697
    :goto_0
    return-void

    .line 694
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$3;->this$0:Landroid/widget/NumberPickerZTE;

    # getter for: Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;
    invoke-static {v0}, Landroid/widget/NumberPickerZTE;->access$100(Landroid/widget/NumberPickerZTE;)Landroid/widget/EditText;

    move-result-object v0

    invoke-virtual {v0, v1, v1}, Landroid/widget/EditText;->setSelection(II)V

    .line 695
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$3;->this$0:Landroid/widget/NumberPickerZTE;

    # invokes: Landroid/widget/NumberPickerZTE;->validateInputTextView(Landroid/view/View;)V
    invoke-static {v0, p1}, Landroid/widget/NumberPickerZTE;->access$400(Landroid/widget/NumberPickerZTE;Landroid/view/View;)V

    goto :goto_0
.end method
