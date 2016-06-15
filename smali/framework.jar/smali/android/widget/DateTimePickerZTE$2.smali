.class Landroid/widget/DateTimePickerZTE$2;
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
    .line 228
    iput-object p1, p0, Landroid/widget/DateTimePickerZTE$2;->this$0:Landroid/widget/DateTimePickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onValueChange(Landroid/widget/NumberPickerZTE;II)V
    .locals 9
    .param p1, "picker"    # Landroid/widget/NumberPickerZTE;
    .param p2, "oldVal"    # I
    .param p3, "newVal"    # I

    .prologue
    const/16 v8, 0xb

    const/4 v7, -0x1

    const/4 v6, 0x2

    const/4 v5, 0x5

    const/4 v4, 0x1

    .line 230
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE$2;->this$0:Landroid/widget/DateTimePickerZTE;

    # invokes: Landroid/widget/DateTimePickerZTE;->updateInputState()V
    invoke-static {v1}, Landroid/widget/DateTimePickerZTE;->access$000(Landroid/widget/DateTimePickerZTE;)V

    .line 231
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE$2;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DateTimePickerZTE;->access$200(Landroid/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/DateTimePickerZTE$2;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/DateTimePickerZTE;->access$100(Landroid/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 233
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE$2;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mDaySpinner:Landroid/widget/NumberPickerZTE;
    invoke-static {v1}, Landroid/widget/DateTimePickerZTE;->access$300(Landroid/widget/DateTimePickerZTE;)Landroid/widget/NumberPickerZTE;

    move-result-object v1

    if-ne p1, v1, :cond_2

    .line 234
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE$2;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DateTimePickerZTE;->access$200(Landroid/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v0

    .line 235
    .local v0, "maxDayOfMonth":I
    if-ne p2, v0, :cond_0

    if-ne p3, v4, :cond_0

    .line 236
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE$2;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DateTimePickerZTE;->access$200(Landroid/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5, v4}, Ljava/util/Calendar;->add(II)V

    .line 256
    .end local v0    # "maxDayOfMonth":I
    :goto_0
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE$2;->this$0:Landroid/widget/DateTimePickerZTE;

    iget-object v2, p0, Landroid/widget/DateTimePickerZTE$2;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v2}, Landroid/widget/DateTimePickerZTE;->access$200(Landroid/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/util/Calendar;->get(I)I

    move-result v2

    iget-object v3, p0, Landroid/widget/DateTimePickerZTE$2;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v3}, Landroid/widget/DateTimePickerZTE;->access$200(Landroid/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v3

    invoke-virtual {v3, v6}, Ljava/util/Calendar;->get(I)I

    move-result v3

    iget-object v4, p0, Landroid/widget/DateTimePickerZTE$2;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v4}, Landroid/widget/DateTimePickerZTE;->access$200(Landroid/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v4

    invoke-virtual {v4, v5}, Ljava/util/Calendar;->get(I)I

    move-result v4

    # invokes: Landroid/widget/DateTimePickerZTE;->setDate(III)V
    invoke-static {v1, v2, v3, v4}, Landroid/widget/DateTimePickerZTE;->access$600(Landroid/widget/DateTimePickerZTE;III)V

    .line 258
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE$2;->this$0:Landroid/widget/DateTimePickerZTE;

    # invokes: Landroid/widget/DateTimePickerZTE;->updateSpinners()V
    invoke-static {v1}, Landroid/widget/DateTimePickerZTE;->access$700(Landroid/widget/DateTimePickerZTE;)V

    .line 259
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE$2;->this$0:Landroid/widget/DateTimePickerZTE;

    # invokes: Landroid/widget/DateTimePickerZTE;->updateCalendarView()V
    invoke-static {v1}, Landroid/widget/DateTimePickerZTE;->access$800(Landroid/widget/DateTimePickerZTE;)V

    .line 260
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE$2;->this$0:Landroid/widget/DateTimePickerZTE;

    # invokes: Landroid/widget/DateTimePickerZTE;->notifyDateChanged()V
    invoke-static {v1}, Landroid/widget/DateTimePickerZTE;->access$900(Landroid/widget/DateTimePickerZTE;)V

    .line 261
    return-void

    .line 237
    .restart local v0    # "maxDayOfMonth":I
    :cond_0
    if-ne p2, v4, :cond_1

    if-ne p3, v0, :cond_1

    .line 238
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE$2;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DateTimePickerZTE;->access$200(Landroid/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v5, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 240
    :cond_1
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE$2;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DateTimePickerZTE;->access$200(Landroid/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v2, p3, p2

    invoke-virtual {v1, v5, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 242
    .end local v0    # "maxDayOfMonth":I
    :cond_2
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE$2;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;
    invoke-static {v1}, Landroid/widget/DateTimePickerZTE;->access$400(Landroid/widget/DateTimePickerZTE;)Landroid/widget/NumberPickerZTE;

    move-result-object v1

    if-ne p1, v1, :cond_5

    .line 243
    if-ne p2, v8, :cond_3

    if-nez p3, :cond_3

    .line 244
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE$2;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DateTimePickerZTE;->access$200(Landroid/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, v4}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 245
    :cond_3
    if-nez p2, :cond_4

    if-ne p3, v8, :cond_4

    .line 246
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE$2;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DateTimePickerZTE;->access$200(Landroid/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v6, v7}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 248
    :cond_4
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE$2;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DateTimePickerZTE;->access$200(Landroid/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v1

    sub-int v2, p3, p2

    invoke-virtual {v1, v6, v2}, Ljava/util/Calendar;->add(II)V

    goto :goto_0

    .line 250
    :cond_5
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE$2;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mYearSpinner:Landroid/widget/NumberPickerZTE;
    invoke-static {v1}, Landroid/widget/DateTimePickerZTE;->access$500(Landroid/widget/DateTimePickerZTE;)Landroid/widget/NumberPickerZTE;

    move-result-object v1

    if-ne p1, v1, :cond_6

    .line 251
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE$2;->this$0:Landroid/widget/DateTimePickerZTE;

    # getter for: Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;
    invoke-static {v1}, Landroid/widget/DateTimePickerZTE;->access$200(Landroid/widget/DateTimePickerZTE;)Ljava/util/Calendar;

    move-result-object v1

    invoke-virtual {v1, v4, p3}, Ljava/util/Calendar;->set(II)V

    goto/16 :goto_0

    .line 253
    :cond_6
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method
