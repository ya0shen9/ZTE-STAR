.class Landroid/widget/DateTimePickerZTE$7;
.super Ljava/lang/Object;
.source "DateTimePickerZTE.java"

# interfaces
.implements Landroid/widget/NumberPickerZTE$OnValueChangeListener;


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
    .line 440
    iput-object p1, p0, Landroid/widget/DateTimePickerZTE$7;->this$0:Landroid/widget/DateTimePickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPickerZTE;II)V
    .locals 2
    .param p1, "picker"    # Landroid/widget/NumberPickerZTE;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    .line 442
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE$7;->this$0:Landroid/widget/DateTimePickerZTE;

    # invokes: Landroid/widget/DateTimePickerZTE;->updateInputState()V
    invoke-static {v0}, Landroid/widget/DateTimePickerZTE;->access$000(Landroid/widget/DateTimePickerZTE;)V

    .line 443
    invoke-virtual {p1}, Landroid/widget/NumberPickerZTE;->requestFocus()Z

    .line 444
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE$7;->this$0:Landroid/widget/DateTimePickerZTE;

    iget-object v0, p0, Landroid/widget/DateTimePickerZTE$7;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mIsAm:Z
    invoke-static {v0}, Landroid/widget/DateTimePickerZTE;->access$1000(Landroid/widget/DateTimePickerZTE;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    # setter for: Landroid/widget/DateTimePickerZTE;->mIsAm:Z
    invoke-static {v1, v0}, Landroid/widget/DateTimePickerZTE;->access$1002(Landroid/widget/DateTimePickerZTE;Z)Z

    .line 445
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE$7;->this$0:Landroid/widget/DateTimePickerZTE;

    # invokes: Landroid/widget/DateTimePickerZTE;->updateAmPmControl()V
    invoke-static {v0}, Landroid/widget/DateTimePickerZTE;->access$1100(Landroid/widget/DateTimePickerZTE;)V

    .line 446
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE$7;->this$0:Landroid/widget/DateTimePickerZTE;

    # invokes: Landroid/widget/DateTimePickerZTE;->onTimeChanged()V
    invoke-static {v0}, Landroid/widget/DateTimePickerZTE;->access$1200(Landroid/widget/DateTimePickerZTE;)V

    .line 447
    return-void

    .line 444
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
