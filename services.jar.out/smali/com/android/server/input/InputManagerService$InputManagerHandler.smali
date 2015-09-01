.class final Lcom/android/server/input/InputManagerService$InputManagerHandler;
.super Landroid/os/Handler;
.source "InputManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/input/InputManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "InputManagerHandler"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/input/InputManagerService;


# direct methods
.method public constructor <init>(Lcom/android/server/input/InputManagerService;Landroid/os/Looper;)V
    .locals 2
    .parameter
    .parameter "looper"

    .prologue
    .line 1583
    iput-object p1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    .line 1584
    const/4 v0, 0x0

    const/4 v1, 0x1

    invoke-direct {p0, p2, v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;Landroid/os/Handler$Callback;Z)V

    .line 1585
    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .parameter "msg"

    .prologue
    .line 1589
    iget v0, p1, Landroid/os/Message;->what:I

    packed-switch v0, :pswitch_data_0

    .line 1611
    :goto_0
    return-void

    .line 1591
    :pswitch_0
    iget-object v1, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget-object v0, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v0, [Landroid/view/InputDevice;

    check-cast v0, [Landroid/view/InputDevice;

    #calls: Lcom/android/server/input/InputManagerService;->deliverInputDevicesChanged([Landroid/view/InputDevice;)V
    invoke-static {v1, v0}, Lcom/android/server/input/InputManagerService;->access$300(Lcom/android/server/input/InputManagerService;[Landroid/view/InputDevice;)V

    goto :goto_0

    .line 1594
    :pswitch_1
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    iget v2, p1, Landroid/os/Message;->arg2:I

    #calls: Lcom/android/server/input/InputManagerService;->handleSwitchKeyboardLayout(II)V
    invoke-static {v0, v1, v2}, Lcom/android/server/input/InputManagerService;->access$400(Lcom/android/server/input/InputManagerService;II)V

    goto :goto_0

    .line 1597
    :pswitch_2
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    #calls: Lcom/android/server/input/InputManagerService;->reloadKeyboardLayouts()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$500(Lcom/android/server/input/InputManagerService;)V

    goto :goto_0

    .line 1600
    :pswitch_3
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    #calls: Lcom/android/server/input/InputManagerService;->updateKeyboardLayouts()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$000(Lcom/android/server/input/InputManagerService;)V

    goto :goto_0

    .line 1603
    :pswitch_4
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    #calls: Lcom/android/server/input/InputManagerService;->reloadDeviceAliases()V
    invoke-static {v0}, Lcom/android/server/input/InputManagerService;->access$100(Lcom/android/server/input/InputManagerService;)V

    goto :goto_0

    .line 1607
    :pswitch_5
    iget-object v0, p0, Lcom/android/server/input/InputManagerService$InputManagerHandler;->this$0:Lcom/android/server/input/InputManagerService;

    iget v1, p1, Landroid/os/Message;->arg1:I

    #calls: Lcom/android/server/input/InputManagerService;->cancelNotify(I)V
    invoke-static {v0, v1}, Lcom/android/server/input/InputManagerService;->access$600(Lcom/android/server/input/InputManagerService;I)V

    goto :goto_0

    .line 1589
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
    .end packed-switch
.end method
