.class Landroid/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;
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
    name = "BeginSoftInputOnLongPressCommand"
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/NumberPickerZTE;


# direct methods
.method constructor <init>(Landroid/widget/NumberPickerZTE;)V
    .locals 0

    .prologue
    .line 2240
    iput-object p1, p0, Landroid/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;->this$0:Landroid/widget/NumberPickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 2244
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;->this$0:Landroid/widget/NumberPickerZTE;

    # invokes: Landroid/widget/NumberPickerZTE;->showSoftInput()V
    invoke-static {v0}, Landroid/widget/NumberPickerZTE;->access$2700(Landroid/widget/NumberPickerZTE;)V

    .line 2245
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;->this$0:Landroid/widget/NumberPickerZTE;

    const/4 v1, 0x1

    # setter for: Landroid/widget/NumberPickerZTE;->mIngonreMoveEvents:Z
    invoke-static {v0, v1}, Landroid/widget/NumberPickerZTE;->access$2802(Landroid/widget/NumberPickerZTE;Z)Z

    .line 2246
    return-void
.end method
