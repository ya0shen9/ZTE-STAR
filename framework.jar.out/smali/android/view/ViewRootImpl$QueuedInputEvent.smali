.class final Landroid/view/ViewRootImpl$QueuedInputEvent;
.super Ljava/lang/Object;
.source "ViewRootImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/view/ViewRootImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "QueuedInputEvent"
.end annotation


# static fields
.field public static final FLAG_DEFERRED:I = 0x2

.field public static final FLAG_DELIVER_POST_IME:I = 0x1

.field public static final FLAG_FINISHED:I = 0x4

.field public static final FLAG_FINISHED_HANDLED:I = 0x8

.field public static final FLAG_RESYNTHESIZED:I = 0x10


# instance fields
.field public mEvent:Landroid/view/InputEvent;

.field public mFlags:I

.field public mNext:Landroid/view/ViewRootImpl$QueuedInputEvent;

.field public mReceiver:Landroid/view/InputEventReceiver;


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 5498
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Landroid/view/ViewRootImpl$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 5498
    invoke-direct {p0}, Landroid/view/ViewRootImpl$QueuedInputEvent;-><init>()V

    return-void
.end method


# virtual methods
.method public shouldSkipIme()Z
    .locals 4

    .prologue
    const/4 v1, 0x1

    .line 5513
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 5514
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-nez v0, :cond_1

    .line 5525
    :cond_0
    :goto_0
    return v1

    .line 5517
    :cond_1
    invoke-virtual {v0}, Landroid/view/inputmethod/InputMethodManager;->checkIfmCurMethodValid()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 5522
    iget v2, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mFlags:I

    and-int/lit8 v2, v2, 0x1

    if-nez v2, :cond_0

    .line 5525
    iget-object v2, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    instance-of v2, v2, Landroid/view/MotionEvent;

    if-eqz v2, :cond_2

    iget-object v2, p0, Landroid/view/ViewRootImpl$QueuedInputEvent;->mEvent:Landroid/view/InputEvent;

    const/4 v3, 0x2

    invoke-virtual {v2, v3}, Landroid/view/InputEvent;->isFromSource(I)Z

    move-result v2

    if-nez v2, :cond_0

    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method
