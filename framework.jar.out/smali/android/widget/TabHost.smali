.class public Landroid/widget/TabHost;
.super Landroid/widget/FrameLayout;
.source "TabHost.java"

# interfaces
.implements Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/TabHost$IntentContentStrategy;,
        Landroid/widget/TabHost$FactoryContentStrategy;,
        Landroid/widget/TabHost$ViewIdContentStrategy;,
        Landroid/widget/TabHost$ViewIndicatorStrategy;,
        Landroid/widget/TabHost$LabelAndIconIndicatorStrategy;,
        Landroid/widget/TabHost$LabelIndicatorStrategy;,
        Landroid/widget/TabHost$ContentStrategy;,
        Landroid/widget/TabHost$IndicatorStrategy;,
        Landroid/widget/TabHost$TabSpec;,
        Landroid/widget/TabHost$TabContentFactory;,
        Landroid/widget/TabHost$OnTabChangeListener;,
        Landroid/widget/TabHost$Inject;
    }
.end annotation


# static fields
.field private static final TABWIDGET_LOCATION_BOTTOM:I = 0x3

.field private static final TABWIDGET_LOCATION_LEFT:I = 0x0

.field private static final TABWIDGET_LOCATION_RIGHT:I = 0x2

.field private static final TABWIDGET_LOCATION_TOP:I = 0x1


# instance fields
.field protected mCurrentTab:I

.field private mCurrentView:Landroid/view/View;

.field protected mLocalActivityManager:Landroid/app/LocalActivityManager;

.field private mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

.field private mTabContent:Landroid/widget/FrameLayout;

.field private mTabKeyListener:Landroid/view/View$OnKeyListener;

.field private mTabLayoutId:I

.field private mTabSpecs:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/widget/TabHost$TabSpec;",
            ">;"
        }
    .end annotation
.end field

.field private mTabWidget:Landroid/widget/TabWidget;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .parameter "context"

    .prologue
    const/4 v2, 0x0

    .line 100
    invoke-direct {p0, p1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    .line 63
    iput-object v2, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    .line 68
    iput-object v2, p0, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 101
    invoke-direct {p0}, Landroid/widget/TabHost;->initTabHost()V

    .line 102
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/4 v2, 0x0

    .line 105
    invoke-direct {p0, p1, p2}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 57
    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    iput-object v0, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    .line 62
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    .line 63
    iput-object v2, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    .line 68
    iput-object v2, p0, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 113
    invoke-static {p1, p2}, Landroid/widget/TabHost$Inject;->getTabLayoutResId(Landroid/content/Context;Landroid/util/AttributeSet;)I

    move-result v0

    iput v0, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    .line 115
    iget v0, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    if-nez v0, :cond_0

    .line 118
    const v0, 0x10900a8

    iput v0, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    .line 121
    :cond_0
    invoke-direct {p0}, Landroid/widget/TabHost;->initTabHost()V

    .line 122
    return-void
.end method

.method static synthetic access$100(Landroid/widget/TabHost;)Landroid/widget/FrameLayout;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/TabHost;)Landroid/widget/TabWidget;
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/TabHost;)I
    .locals 1
    .parameter "x0"

    .prologue
    .line 49
    iget v0, p0, Landroid/widget/TabHost;->mTabLayoutId:I

    return v0
.end method

.method private getTabWidgetLocation()I
    .locals 3

    .prologue
    .line 332
    const/4 v0, 0x1

    .line 334
    .local v0, location:I
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->getOrientation()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 341
    iget-object v1, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getTop()I

    move-result v1

    iget-object v2, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getTop()I

    move-result v2

    if-ge v1, v2, :cond_1

    const/4 v0, 0x3

    .line 345
    :goto_0
    return v0

    .line 336
    :pswitch_0
    iget-object v1, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v1}, Landroid/widget/FrameLayout;->getLeft()I

    move-result v1

    iget-object v2, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v2}, Landroid/widget/TabWidget;->getLeft()I

    move-result v2

    if-ge v1, v2, :cond_0

    const/4 v0, 0x2

    .line 338
    :goto_1
    goto :goto_0

    .line 336
    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    .line 341
    :cond_1
    const/4 v0, 0x1

    goto :goto_0

    .line 334
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method

.method private initTabHost()V
    .locals 1

    .prologue
    .line 125
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setFocusableInTouchMode(Z)V

    .line 126
    const/high16 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setDescendantFocusability(I)V

    .line 128
    const/4 v0, -0x1

    iput v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    .line 129
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    .line 130
    return-void
.end method

.method private invokeOnTabChangeListener()V
    .locals 2

    .prologue
    .line 471
    iget-object v0, p0, Landroid/widget/TabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    if-eqz v0, :cond_0

    .line 472
    iget-object v0, p0, Landroid/widget/TabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    invoke-virtual {p0}, Landroid/widget/TabHost;->getCurrentTabTag()Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1}, Landroid/widget/TabHost$OnTabChangeListener;->onTabChanged(Ljava/lang/String;)V

    .line 474
    :cond_0
    return-void
.end method


# virtual methods
.method public addTab(Landroid/widget/TabHost$TabSpec;)V
    .locals 4
    .parameter "tabSpec"

    .prologue
    const/4 v3, 0x0

    .line 246
    #getter for: Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->access$200(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v1

    if-nez v1, :cond_0

    .line 247
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "you must specify a way to create the tab indicator."

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 250
    :cond_0
    #getter for: Landroid/widget/TabHost$TabSpec;->mContentStrategy:Landroid/widget/TabHost$ContentStrategy;
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->access$300(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$ContentStrategy;

    move-result-object v1

    if-nez v1, :cond_1

    .line 251
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "you must specify a way to create the tab content"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 253
    :cond_1
    #getter for: Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->access$200(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/TabHost$IndicatorStrategy;->createIndicatorView()Landroid/view/View;

    move-result-object v0

    .line 254
    .local v0, tabIndicator:Landroid/view/View;
    iget-object v1, p0, Landroid/widget/TabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v0, v1}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 258
    #getter for: Landroid/widget/TabHost$TabSpec;->mIndicatorStrategy:Landroid/widget/TabHost$IndicatorStrategy;
    invoke-static {p1}, Landroid/widget/TabHost$TabSpec;->access$200(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$IndicatorStrategy;

    move-result-object v1

    instance-of v1, v1, Landroid/widget/TabHost$ViewIndicatorStrategy;

    if-eqz v1, :cond_2

    .line 259
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1, v3}, Landroid/widget/TabWidget;->setStripEnabled(Z)V

    .line 262
    :cond_2
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1, v0}, Landroid/widget/TabWidget;->addView(Landroid/view/View;)V

    .line 263
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 265
    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    const/4 v2, -0x1

    if-ne v1, v2, :cond_3

    .line 266
    invoke-virtual {p0, v3}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 268
    :cond_3
    return-void
.end method

.method public clearAllTabs()V
    .locals 1

    .prologue
    .line 275
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v0}, Landroid/widget/TabWidget;->removeAllViews()V

    .line 276
    invoke-direct {p0}, Landroid/widget/TabHost;->initTabHost()V

    .line 277
    iget-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    invoke-virtual {v0}, Landroid/widget/FrameLayout;->removeAllViews()V

    .line 278
    iget-object v0, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->clear()V

    .line 279
    invoke-virtual {p0}, Landroid/widget/TabHost;->requestLayout()V

    .line 280
    invoke-virtual {p0}, Landroid/widget/TabHost;->invalidate()V

    .line 281
    return-void
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 6
    .parameter "event"

    .prologue
    .line 350
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v1

    .line 355
    .local v1, handled:Z
    if-nez v1, :cond_0

    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v4

    if-nez v4, :cond_0

    iget-object v4, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->isRootNamespace()Z

    move-result v4

    if-eqz v4, :cond_0

    iget-object v4, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->hasFocus()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 360
    const/16 v2, 0x13

    .line 361
    .local v2, keyCodeShouldChangeFocus:I
    const/16 v0, 0x21

    .line 362
    .local v0, directionShouldChangeFocus:I
    const/4 v3, 0x2

    .line 364
    .local v3, soundEffect:I
    invoke-direct {p0}, Landroid/widget/TabHost;->getTabWidgetLocation()I

    move-result v4

    packed-switch v4, :pswitch_data_0

    .line 382
    :pswitch_0
    const/16 v2, 0x13

    .line 383
    const/16 v0, 0x21

    .line 384
    const/4 v3, 0x2

    .line 387
    :goto_0
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v4

    if-ne v4, v2, :cond_0

    iget-object v4, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v4}, Landroid/view/View;->findFocus()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/view/View;->focusSearch(I)Landroid/view/View;

    move-result-object v4

    if-nez v4, :cond_0

    .line 389
    iget-object v4, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    iget v5, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-virtual {v4, v5}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->requestFocus()Z

    .line 390
    invoke-virtual {p0, v3}, Landroid/widget/TabHost;->playSoundEffect(I)V

    .line 391
    const/4 v1, 0x1

    .line 394
    .end local v0           #directionShouldChangeFocus:I
    .end local v1           #handled:Z
    .end local v2           #keyCodeShouldChangeFocus:I
    .end local v3           #soundEffect:I
    :cond_0
    return v1

    .line 366
    .restart local v0       #directionShouldChangeFocus:I
    .restart local v1       #handled:Z
    .restart local v2       #keyCodeShouldChangeFocus:I
    .restart local v3       #soundEffect:I
    :pswitch_1
    const/16 v2, 0x15

    .line 367
    const/16 v0, 0x11

    .line 368
    const/4 v3, 0x1

    .line 369
    goto :goto_0

    .line 371
    :pswitch_2
    const/16 v2, 0x16

    .line 372
    const/16 v0, 0x42

    .line 373
    const/4 v3, 0x3

    .line 374
    goto :goto_0

    .line 376
    :pswitch_3
    const/16 v2, 0x14

    .line 377
    const/16 v0, 0x82

    .line 378
    const/4 v3, 0x4

    .line 379
    goto :goto_0

    .line 364
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_1
        :pswitch_0
        :pswitch_2
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchWindowFocusChanged(Z)V
    .locals 1
    .parameter "hasFocus"

    .prologue
    .line 400
    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 401
    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0, p1}, Landroid/view/View;->dispatchWindowFocusChanged(Z)V

    .line 403
    :cond_0
    return-void
.end method

.method public getCurrentTab()I
    .locals 1

    .prologue
    .line 288
    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    return v0
.end method

.method public getCurrentTabTag()Ljava/lang/String;
    .locals 2

    .prologue
    .line 292
    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 293
    iget-object v0, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-interface {v0, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v0}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v0

    .line 295
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentTabView()Landroid/view/View;
    .locals 2

    .prologue
    .line 299
    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    if-ltz v0, :cond_0

    iget v0, p0, Landroid/widget/TabHost;->mCurrentTab:I

    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 300
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    .line 302
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 306
    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    return-object v0
.end method

.method public getTabContentView()Landroid/widget/FrameLayout;
    .locals 1

    .prologue
    .line 323
    iget-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    return-object v0
.end method

.method public getTabWidget()Landroid/widget/TabWidget;
    .locals 1

    .prologue
    .line 284
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    return-object v0
.end method

.method public newTabSpec(Ljava/lang/String;)Landroid/widget/TabHost$TabSpec;
    .locals 2
    .parameter "tag"

    .prologue
    .line 137
    new-instance v0, Landroid/widget/TabHost$TabSpec;

    const/4 v1, 0x0

    invoke-direct {v0, p0, p1, v1}, Landroid/widget/TabHost$TabSpec;-><init>(Landroid/widget/TabHost;Ljava/lang/String;Landroid/widget/TabHost$1;)V

    return-object v0
.end method

.method protected onAttachedToWindow()V
    .locals 1

    .prologue
    .line 215
    invoke-super {p0}, Landroid/widget/FrameLayout;->onAttachedToWindow()V

    .line 216
    invoke-virtual {p0}, Landroid/widget/TabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 217
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->addOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 218
    return-void
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 222
    invoke-super {p0}, Landroid/widget/FrameLayout;->onDetachedFromWindow()V

    .line 223
    invoke-virtual {p0}, Landroid/widget/TabHost;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v0

    .line 224
    .local v0, treeObserver:Landroid/view/ViewTreeObserver;
    invoke-virtual {v0, p0}, Landroid/view/ViewTreeObserver;->removeOnTouchModeChangeListener(Landroid/view/ViewTreeObserver$OnTouchModeChangeListener;)V

    .line 225
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 407
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 408
    const-class v0, Landroid/widget/TabHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 409
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 413
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 414
    const-class v0, Landroid/widget/TabHost;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 415
    return-void
.end method

.method public onTouchModeChanged(Z)V
    .locals 2
    .parameter "isInTouchMode"

    .prologue
    .line 231
    if-nez p1, :cond_1

    .line 234
    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->isFocused()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 235
    :cond_0
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->getChildTabViewAt(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->requestFocus()Z

    .line 238
    :cond_1
    return-void
.end method

.method public sendAccessibilityEvent(I)V
    .locals 0
    .parameter "eventType"

    .prologue
    .line 198
    return-void
.end method

.method public setCurrentTab(I)V
    .locals 5
    .parameter "index"

    .prologue
    const/4 v4, -0x1

    .line 418
    if-ltz p1, :cond_0

    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-lt p1, v1, :cond_1

    .line 458
    :cond_0
    :goto_0
    return-void

    .line 422
    :cond_1
    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    if-eq p1, v1, :cond_0

    .line 427
    iget v1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    if-eq v1, v4, :cond_2

    .line 428
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    iget v2, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-interface {v1, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost$TabSpec;

    #getter for: Landroid/widget/TabHost$TabSpec;->mContentStrategy:Landroid/widget/TabHost$ContentStrategy;
    invoke-static {v1}, Landroid/widget/TabHost$TabSpec;->access$300(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/TabHost$ContentStrategy;->tabClosed()V

    .line 431
    :cond_2
    iput p1, p0, Landroid/widget/TabHost;->mCurrentTab:I

    .line 432
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/widget/TabHost$TabSpec;

    .line 436
    .local v0, spec:Landroid/widget/TabHost$TabSpec;
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    iget v2, p0, Landroid/widget/TabHost;->mCurrentTab:I

    invoke-virtual {v1, v2}, Landroid/widget/TabWidget;->focusCurrentTab(I)V

    .line 439
    #getter for: Landroid/widget/TabHost$TabSpec;->mContentStrategy:Landroid/widget/TabHost$ContentStrategy;
    invoke-static {v0}, Landroid/widget/TabHost$TabSpec;->access$300(Landroid/widget/TabHost$TabSpec;)Landroid/widget/TabHost$ContentStrategy;

    move-result-object v1

    invoke-interface {v1}, Landroid/widget/TabHost$ContentStrategy;->getContentView()Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    .line 441
    iget-object v1, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    if-nez v1, :cond_3

    .line 442
    iget-object v1, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    iget-object v2, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    new-instance v3, Landroid/view/ViewGroup$LayoutParams;

    invoke-direct {v3, v4, v4}, Landroid/view/ViewGroup$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v2, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 450
    :cond_3
    iget-object v1, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    invoke-virtual {v1}, Landroid/widget/TabWidget;->hasFocus()Z

    move-result v1

    if-nez v1, :cond_4

    .line 453
    iget-object v1, p0, Landroid/widget/TabHost;->mCurrentView:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->requestFocus()Z

    .line 457
    :cond_4
    invoke-direct {p0}, Landroid/widget/TabHost;->invokeOnTabChangeListener()V

    goto :goto_0
.end method

.method public setCurrentTabByTag(Ljava/lang/String;)V
    .locals 2
    .parameter "tag"

    .prologue
    .line 311
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 312
    iget-object v1, p0, Landroid/widget/TabHost;->mTabSpecs:Ljava/util/List;

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/widget/TabHost$TabSpec;

    invoke-virtual {v1}, Landroid/widget/TabHost$TabSpec;->getTag()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 313
    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->setCurrentTab(I)V

    .line 317
    :cond_0
    return-void

    .line 311
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0
.end method

.method public setOnTabChangedListener(Landroid/widget/TabHost$OnTabChangeListener;)V
    .locals 0
    .parameter "l"

    .prologue
    .line 467
    iput-object p1, p0, Landroid/widget/TabHost;->mOnTabChangeListener:Landroid/widget/TabHost$OnTabChangeListener;

    .line 468
    return-void
.end method

.method public setup()V
    .locals 2

    .prologue
    .line 152
    const v0, 0x1020013

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TabWidget;

    iput-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    .line 153
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    if-nez v0, :cond_0

    .line 154
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a TabWidget whose id attribute is \'android.R.id.tabs\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 160
    :cond_0
    new-instance v0, Landroid/widget/TabHost$1;

    invoke-direct {v0, p0}, Landroid/widget/TabHost$1;-><init>(Landroid/widget/TabHost;)V

    iput-object v0, p0, Landroid/widget/TabHost;->mTabKeyListener:Landroid/view/View$OnKeyListener;

    .line 178
    iget-object v0, p0, Landroid/widget/TabHost;->mTabWidget:Landroid/widget/TabWidget;

    new-instance v1, Landroid/widget/TabHost$2;

    invoke-direct {v1, p0}, Landroid/widget/TabHost$2;-><init>(Landroid/widget/TabHost;)V

    invoke-virtual {v0, v1}, Landroid/widget/TabWidget;->setTabSelectionListener(Landroid/widget/TabWidget$OnTabSelectionChanged;)V

    .line 187
    const v0, 0x1020011

    invoke-virtual {p0, v0}, Landroid/widget/TabHost;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/FrameLayout;

    iput-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    .line 188
    iget-object v0, p0, Landroid/widget/TabHost;->mTabContent:Landroid/widget/FrameLayout;

    if-nez v0, :cond_1

    .line 189
    new-instance v0, Ljava/lang/RuntimeException;

    const-string v1, "Your TabHost must have a FrameLayout whose id attribute is \'android.R.id.tabcontent\'"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 193
    :cond_1
    return-void
.end method

.method public setup(Landroid/app/LocalActivityManager;)V
    .locals 0
    .parameter "activityGroup"

    .prologue
    .line 208
    invoke-virtual {p0}, Landroid/widget/TabHost;->setup()V

    .line 209
    iput-object p1, p0, Landroid/widget/TabHost;->mLocalActivityManager:Landroid/app/LocalActivityManager;

    .line 210
    return-void
.end method
