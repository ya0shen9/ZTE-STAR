.class Landroid/widget/NumberPickerZTE$PressedStateHelper;
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
    name = "PressedStateHelper"
.end annotation


# static fields
.field public static final BUTTON_DECREMENT:I = 0x2

.field public static final BUTTON_INCREMENT:I = 0x1


# instance fields
.field private final MODE_PRESS:I

.field private final MODE_TAPPED:I

.field private mManagedButton:I

.field private mMode:I

.field final synthetic this$0:Landroid/widget/NumberPickerZTE;


# direct methods
.method constructor <init>(Landroid/widget/NumberPickerZTE;)V
    .locals 1

    .prologue
    .line 2112
    iput-object p1, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2116
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->MODE_PRESS:I

    .line 2117
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->MODE_TAPPED:I

    return-void
.end method


# virtual methods
.method public buttonPressDelayed(I)V
    .locals 3
    .param p1, "button"    # I

    .prologue
    .line 2137
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE$PressedStateHelper;->cancel()V

    .line 2138
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->mMode:I

    .line 2139
    iput p1, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->mManagedButton:I

    .line 2140
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/NumberPickerZTE;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2141
    return-void
.end method

.method public buttonTapped(I)V
    .locals 1
    .param p1, "button"    # I

    .prologue
    .line 2144
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE$PressedStateHelper;->cancel()V

    .line 2145
    const/4 v0, 0x2

    iput v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->mMode:I

    .line 2146
    iput p1, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->mManagedButton:I

    .line 2147
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v0, p0}, Landroid/widget/NumberPickerZTE;->post(Ljava/lang/Runnable;)Z

    .line 2148
    return-void
.end method

.method public cancel()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 2123
    iput v4, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->mMode:I

    .line 2124
    iput v4, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->mManagedButton:I

    .line 2125
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v0, p0}, Landroid/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 2126
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # getter for: Landroid/widget/NumberPickerZTE;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Landroid/widget/NumberPickerZTE;->access$1300(Landroid/widget/NumberPickerZTE;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 2127
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # setter for: Landroid/widget/NumberPickerZTE;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v4}, Landroid/widget/NumberPickerZTE;->access$1302(Landroid/widget/NumberPickerZTE;Z)Z

    .line 2128
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    iget-object v1, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # getter for: Landroid/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Landroid/widget/NumberPickerZTE;->access$1400(Landroid/widget/NumberPickerZTE;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # getter for: Landroid/widget/NumberPickerZTE;->mRight:I
    invoke-static {v2}, Landroid/widget/NumberPickerZTE;->access$1500(Landroid/widget/NumberPickerZTE;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # getter for: Landroid/widget/NumberPickerZTE;->mBottom:I
    invoke-static {v3}, Landroid/widget/NumberPickerZTE;->access$1600(Landroid/widget/NumberPickerZTE;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/NumberPickerZTE;->invalidate(IIII)V

    .line 2130
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # setter for: Landroid/widget/NumberPickerZTE;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v4}, Landroid/widget/NumberPickerZTE;->access$1702(Landroid/widget/NumberPickerZTE;Z)Z

    .line 2131
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # getter for: Landroid/widget/NumberPickerZTE;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Landroid/widget/NumberPickerZTE;->access$1700(Landroid/widget/NumberPickerZTE;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 2132
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    iget-object v1, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # getter for: Landroid/widget/NumberPickerZTE;->mRight:I
    invoke-static {v1}, Landroid/widget/NumberPickerZTE;->access$1800(Landroid/widget/NumberPickerZTE;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # getter for: Landroid/widget/NumberPickerZTE;->mTopSelectionDividerTop:I
    invoke-static {v2}, Landroid/widget/NumberPickerZTE;->access$1900(Landroid/widget/NumberPickerZTE;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/NumberPickerZTE;->invalidate(IIII)V

    .line 2134
    :cond_1
    return-void
.end method

.method public run()V
    .locals 5

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 2152
    iget v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->mMode:I

    packed-switch v0, :pswitch_data_0

    .line 2186
    :goto_0
    return-void

    .line 2154
    :pswitch_0
    iget v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_1

    goto :goto_0

    .line 2156
    :pswitch_1
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # setter for: Landroid/widget/NumberPickerZTE;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Landroid/widget/NumberPickerZTE;->access$1302(Landroid/widget/NumberPickerZTE;Z)Z

    .line 2157
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    iget-object v1, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # getter for: Landroid/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Landroid/widget/NumberPickerZTE;->access$1400(Landroid/widget/NumberPickerZTE;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # getter for: Landroid/widget/NumberPickerZTE;->mRight:I
    invoke-static {v2}, Landroid/widget/NumberPickerZTE;->access$2000(Landroid/widget/NumberPickerZTE;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # getter for: Landroid/widget/NumberPickerZTE;->mBottom:I
    invoke-static {v3}, Landroid/widget/NumberPickerZTE;->access$2100(Landroid/widget/NumberPickerZTE;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/NumberPickerZTE;->invalidate(IIII)V

    goto :goto_0

    .line 2160
    :pswitch_2
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # setter for: Landroid/widget/NumberPickerZTE;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Landroid/widget/NumberPickerZTE;->access$1702(Landroid/widget/NumberPickerZTE;Z)Z

    .line 2161
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    iget-object v1, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # getter for: Landroid/widget/NumberPickerZTE;->mRight:I
    invoke-static {v1}, Landroid/widget/NumberPickerZTE;->access$2200(Landroid/widget/NumberPickerZTE;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # getter for: Landroid/widget/NumberPickerZTE;->mTopSelectionDividerTop:I
    invoke-static {v2}, Landroid/widget/NumberPickerZTE;->access$1900(Landroid/widget/NumberPickerZTE;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/NumberPickerZTE;->invalidate(IIII)V

    goto :goto_0

    .line 2166
    :pswitch_3
    iget v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->mManagedButton:I

    packed-switch v0, :pswitch_data_2

    goto :goto_0

    .line 2168
    :pswitch_4
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # getter for: Landroid/widget/NumberPickerZTE;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0}, Landroid/widget/NumberPickerZTE;->access$1300(Landroid/widget/NumberPickerZTE;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2169
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/NumberPickerZTE;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2172
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # ^= operator for: Landroid/widget/NumberPickerZTE;->mIncrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Landroid/widget/NumberPickerZTE;->access$1380(Landroid/widget/NumberPickerZTE;I)Z

    .line 2173
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    iget-object v1, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # getter for: Landroid/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I
    invoke-static {v1}, Landroid/widget/NumberPickerZTE;->access$1400(Landroid/widget/NumberPickerZTE;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # getter for: Landroid/widget/NumberPickerZTE;->mRight:I
    invoke-static {v2}, Landroid/widget/NumberPickerZTE;->access$2300(Landroid/widget/NumberPickerZTE;)I

    move-result v2

    iget-object v3, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # getter for: Landroid/widget/NumberPickerZTE;->mBottom:I
    invoke-static {v3}, Landroid/widget/NumberPickerZTE;->access$2400(Landroid/widget/NumberPickerZTE;)I

    move-result v3

    invoke-virtual {v0, v4, v1, v2, v3}, Landroid/widget/NumberPickerZTE;->invalidate(IIII)V

    goto :goto_0

    .line 2176
    :pswitch_5
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # getter for: Landroid/widget/NumberPickerZTE;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0}, Landroid/widget/NumberPickerZTE;->access$1700(Landroid/widget/NumberPickerZTE;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 2177
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    invoke-static {}, Landroid/view/ViewConfiguration;->getPressedStateDuration()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {v0, p0, v1, v2}, Landroid/widget/NumberPickerZTE;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 2180
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # ^= operator for: Landroid/widget/NumberPickerZTE;->mDecrementVirtualButtonPressed:Z
    invoke-static {v0, v3}, Landroid/widget/NumberPickerZTE;->access$1780(Landroid/widget/NumberPickerZTE;I)Z

    .line 2181
    iget-object v0, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    iget-object v1, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # getter for: Landroid/widget/NumberPickerZTE;->mRight:I
    invoke-static {v1}, Landroid/widget/NumberPickerZTE;->access$2500(Landroid/widget/NumberPickerZTE;)I

    move-result v1

    iget-object v2, p0, Landroid/widget/NumberPickerZTE$PressedStateHelper;->this$0:Landroid/widget/NumberPickerZTE;

    # getter for: Landroid/widget/NumberPickerZTE;->mTopSelectionDividerTop:I
    invoke-static {v2}, Landroid/widget/NumberPickerZTE;->access$1900(Landroid/widget/NumberPickerZTE;)I

    move-result v2

    invoke-virtual {v0, v4, v4, v1, v2}, Landroid/widget/NumberPickerZTE;->invalidate(IIII)V

    goto/16 :goto_0

    .line 2152
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_3
    .end packed-switch

    .line 2154
    :pswitch_data_1
    .packed-switch 0x1
        :pswitch_1
        :pswitch_2
    .end packed-switch

    .line 2166
    :pswitch_data_2
    .packed-switch 0x1
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
