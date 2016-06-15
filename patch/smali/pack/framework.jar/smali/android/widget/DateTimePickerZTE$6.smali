.class Landroid/widget/DateTimePickerZTE$6;
.super Ljava/lang/Object;
.source "DateTimePickerZTE.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/widget/DateTimePickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/DateTimePickerZTE;


# direct methods
.method constructor <init>(Landroid/widget/DateTimePickerZTE;)V
    .locals 0

    .prologue
    .line 424
    iput-object p1, p0, Landroid/widget/DateTimePickerZTE$6;->this$0:Landroid/widget/DateTimePickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "button"    # Landroid/view/View;

    .prologue
    .line 426
    invoke-virtual {p1}, Landroid/view/View;->requestFocus()Z

    .line 427
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE$6;->this$0:Landroid/widget/DateTimePickerZTE;

    iget-object v0, p0, Landroid/widget/DateTimePickerZTE$6;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mIsAm:Z
    invoke-static {v0}, Landroid/widget/DateTimePickerZTE;->access$1000(Landroid/widget/DateTimePickerZTE;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Landroid/widget/DateTimePickerZTE;->mIsAm:Z
    invoke-static {v1, v0}, Landroid/widget/DateTimePickerZTE;->access$1002(Landroid/widget/DateTimePickerZTE;Z)Z

    .line 428
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE$6;->this$0:Landroid/widget/DateTimePickerZTE;

    # invokes: Landroid/widget/DateTimePickerZTE;->updateAmPmControl()V
    invoke-static {v0}, Landroid/widget/DateTimePickerZTE;->access$1100(Landroid/widget/DateTimePickerZTE;)V

    .line 429
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE$6;->this$0:Landroid/widget/DateTimePickerZTE;

    # invokes: Landroid/widget/DateTimePickerZTE;->onTimeChanged()V
    invoke-static {v0}, Landroid/widget/DateTimePickerZTE;->access$1200(Landroid/widget/DateTimePickerZTE;)V

    .line 430
    return-void

    .line 427
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
