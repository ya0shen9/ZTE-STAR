.class Landroid/widget/DateTimePickerZTE$5;
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
    .line 389
    iput-object p1, p0, Landroid/widget/DateTimePickerZTE$5;->this$0:Landroid/widget/DateTimePickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPickerZTE;II)V
    .locals 7
    .param p1, "spinner"    # Landroid/widget/NumberPickerZTE;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 391
    iget-object v5, p0, Landroid/widget/DateTimePickerZTE$5;->this$0:Landroid/widget/DateTimePickerZTE;

    # invokes: Landroid/widget/DateTimePickerZTE;->updateInputState()V
    invoke-static {v5}, Landroid/widget/DateTimePickerZTE;->access$000(Landroid/widget/DateTimePickerZTE;)V

    .line 392
    iget-object v5, p0, Landroid/widget/DateTimePickerZTE$5;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mMinuteSpinner:Landroid/widget/NumberPickerZTE;
    invoke-static {v5}, Landroid/widget/DateTimePickerZTE;->access$1300(Landroid/widget/DateTimePickerZTE;)Landroid/widget/NumberPickerZTE;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPickerZTE;->getMinValue()I

    move-result v1

    .line 393
    .local v1, "minValue":I
    iget-object v5, p0, Landroid/widget/DateTimePickerZTE$5;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mMinuteSpinner:Landroid/widget/NumberPickerZTE;
    invoke-static {v5}, Landroid/widget/DateTimePickerZTE;->access$1300(Landroid/widget/DateTimePickerZTE;)Landroid/widget/NumberPickerZTE;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPickerZTE;->getMaxValue()I

    move-result v0

    .line 394
    .local v0, "maxValue":I
    if-ne p2, v0, :cond_3

    if-ne p3, v1, :cond_3

    .line 395
    iget-object v5, p0, Landroid/widget/DateTimePickerZTE$5;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mHourSpinner:Landroid/widget/NumberPickerZTE;
    invoke-static {v5}, Landroid/widget/DateTimePickerZTE;->access$1400(Landroid/widget/DateTimePickerZTE;)Landroid/widget/NumberPickerZTE;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPickerZTE;->getValue()I

    move-result v5

    add-int/lit8 v2, v5, 0x1

    .line 396
    .local v2, "newHour":I
    iget-object v5, p0, Landroid/widget/DateTimePickerZTE$5;->this$0:Landroid/widget/DateTimePickerZTE;

    invoke-virtual {v5}, Landroid/widget/DateTimePickerZTE;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_0

    const/16 v5, 0xc

    if-ne v2, v5, :cond_0

    .line 397
    iget-object v5, p0, Landroid/widget/DateTimePickerZTE$5;->this$0:Landroid/widget/DateTimePickerZTE;

    iget-object v6, p0, Landroid/widget/DateTimePickerZTE$5;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mIsAm:Z
    invoke-static {v6}, Landroid/widget/DateTimePickerZTE;->access$1000(Landroid/widget/DateTimePickerZTE;)Z

    move-result v6

    if-nez v6, :cond_2

    :goto_0
    # setter for: Landroid/widget/DateTimePickerZTE;->mIsAm:Z
    invoke-static {v5, v3}, Landroid/widget/DateTimePickerZTE;->access$1002(Landroid/widget/DateTimePickerZTE;Z)Z

    .line 398
    iget-object v3, p0, Landroid/widget/DateTimePickerZTE$5;->this$0:Landroid/widget/DateTimePickerZTE;

    # invokes: Landroid/widget/DateTimePickerZTE;->updateAmPmControl()V
    invoke-static {v3}, Landroid/widget/DateTimePickerZTE;->access$1100(Landroid/widget/DateTimePickerZTE;)V

    .line 400
    :cond_0
    iget-object v3, p0, Landroid/widget/DateTimePickerZTE$5;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mHourSpinner:Landroid/widget/NumberPickerZTE;
    invoke-static {v3}, Landroid/widget/DateTimePickerZTE;->access$1400(Landroid/widget/DateTimePickerZTE;)Landroid/widget/NumberPickerZTE;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/NumberPickerZTE;->setValue(I)V

    .line 409
    .end local v2    # "newHour":I
    :cond_1
    :goto_1
    iget-object v3, p0, Landroid/widget/DateTimePickerZTE$5;->this$0:Landroid/widget/DateTimePickerZTE;

    # invokes: Landroid/widget/DateTimePickerZTE;->onTimeChanged()V
    invoke-static {v3}, Landroid/widget/DateTimePickerZTE;->access$1200(Landroid/widget/DateTimePickerZTE;)V

    .line 410
    return-void

    .restart local v2    # "newHour":I
    :cond_2
    move v3, v4

    .line 397
    goto :goto_0

    .line 401
    .end local v2    # "newHour":I
    :cond_3
    if-ne p2, v1, :cond_1

    if-ne p3, v0, :cond_1

    .line 402
    iget-object v5, p0, Landroid/widget/DateTimePickerZTE$5;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mHourSpinner:Landroid/widget/NumberPickerZTE;
    invoke-static {v5}, Landroid/widget/DateTimePickerZTE;->access$1400(Landroid/widget/DateTimePickerZTE;)Landroid/widget/NumberPickerZTE;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/NumberPickerZTE;->getValue()I

    move-result v5

    add-int/lit8 v2, v5, -0x1

    .line 403
    .restart local v2    # "newHour":I
    iget-object v5, p0, Landroid/widget/DateTimePickerZTE$5;->this$0:Landroid/widget/DateTimePickerZTE;

    invoke-virtual {v5}, Landroid/widget/DateTimePickerZTE;->is24HourView()Z

    move-result v5

    if-nez v5, :cond_4

    const/16 v5, 0xb

    if-ne v2, v5, :cond_4

    .line 404
    iget-object v5, p0, Landroid/widget/DateTimePickerZTE$5;->this$0:Landroid/widget/DateTimePickerZTE;

    iget-object v6, p0, Landroid/widget/DateTimePickerZTE$5;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mIsAm:Z
    invoke-static {v6}, Landroid/widget/DateTimePickerZTE;->access$1000(Landroid/widget/DateTimePickerZTE;)Z

    move-result v6

    if-nez v6, :cond_5

    :goto_2
    # setter for: Landroid/widget/DateTimePickerZTE;->mIsAm:Z
    invoke-static {v5, v3}, Landroid/widget/DateTimePickerZTE;->access$1002(Landroid/widget/DateTimePickerZTE;Z)Z

    .line 405
    iget-object v3, p0, Landroid/widget/DateTimePickerZTE$5;->this$0:Landroid/widget/DateTimePickerZTE;

    # invokes: Landroid/widget/DateTimePickerZTE;->updateAmPmControl()V
    invoke-static {v3}, Landroid/widget/DateTimePickerZTE;->access$1100(Landroid/widget/DateTimePickerZTE;)V

    .line 407
    :cond_4
    iget-object v3, p0, Landroid/widget/DateTimePickerZTE$5;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mHourSpinner:Landroid/widget/NumberPickerZTE;
    invoke-static {v3}, Landroid/widget/DateTimePickerZTE;->access$1400(Landroid/widget/DateTimePickerZTE;)Landroid/widget/NumberPickerZTE;

    move-result-object v3

    invoke-virtual {v3, v2}, Landroid/widget/NumberPickerZTE;->setValue(I)V

    goto :goto_1

    :cond_5
    move v3, v4

    .line 404
    goto :goto_2
.end method
