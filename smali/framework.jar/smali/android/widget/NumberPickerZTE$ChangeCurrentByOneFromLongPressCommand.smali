.class Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;
.super Ljava/lang/Object;
.source "NumberPickerZTE.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/NumberPickerZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "ChangeCurrentByOneFromLongPressCommand"
.end annotation


# instance fields
.field private mIncrement:Z

.field final synthetic this$0:Landroid/widget/NumberPickerZTE;


# direct methods
.method constructor <init>(Landroid/widget/NumberPickerZTE;)V
    .locals 0

    .prologue
    .line 2205
    iput-object p1, p0, Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/widget/NumberPickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method static synthetic access$500(Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;
    .param p1, "x1"    # Z

    .prologue
    .line 2205
    invoke-direct {p0, p1}, Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V

    return-void
.end method

.method private setStep(Z)V
    .locals 0
    .param p1, "increment"    # Z

    .prologue
    .line 2209
    iput-boolean p1, p0, Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    .line 2210
    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 2214
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/widget/NumberPickerZTE;

    iget-boolean v1, p0, Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->mIncrement:Z

    # invokes: Landroid/widget/NumberPickerZTE;->changeValueByOne(Z)V
    invoke-static {v0, v1}, Landroid/widget/NumberPickerZTE;->access$200(Landroid/widget/NumberPickerZTE;Z)V

    .line 2215
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/widget/NumberPickerZTE;

    iget-object v1, p0, Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->this$0:Landroid/widget/NumberPickerZTE;

    # getter for: Landroid/widget/NumberPickerZTE;->mLongPressUpdateInterval:J
    invoke-static {v1}, Landroid/widget/NumberPickerZTE;->access$2600(Landroid/widget/NumberPickerZTE;)J

    move-result-wide v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/NumberPickerZTE;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2216
    return-void
.end method
