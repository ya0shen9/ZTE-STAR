.class public Lcom/android/internal/app/ActionBarImpl;
.super Landroid/app/ActionBar;
.source "ActionBarImpl.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ActionBarImpl$TabImpl;,
        Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;
    }
.end annotation


# static fields
.field private static final CONTEXT_DISPLAY_NORMAL:I = 0x0

.field private static final CONTEXT_DISPLAY_SPLIT:I = 0x1

.field private static final INVALID_POSITION:I = -0x1

.field private static final TAG:Ljava/lang/String; = "ActionBarImpl"


# instance fields
.field mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

.field private mActionView:Lcom/android/internal/widget/ActionBarView;

.field private mActivity:Landroid/app/Activity;

.field private mContainerView:Lcom/android/internal/widget/ActionBarContainer;

.field private mContentAnimations:Z

.field private mContentView:Landroid/view/View;

.field private mContext:Landroid/content/Context;

.field private mContextDisplayMode:I

.field private mContextView:Lcom/android/internal/widget/ActionBarContextView;

.field private mCurWindowVisibility:I

.field private mCurrentShowAnim:Landroid/animation/Animator;

.field mDeferredDestroyActionMode:Landroid/view/ActionMode;

.field mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

.field private mDialog:Landroid/app/Dialog;

.field private mDisplayHomeAsUpSet:Z

.field final mHandler:Landroid/os/Handler;

.field private mHasEmbeddedTabs:Z

.field private mHiddenByApp:Z

.field private mHiddenBySystem:Z

.field final mHideListener:Landroid/animation/Animator$AnimatorListener;

.field private mLastMenuVisibility:Z

.field private mMenuVisibilityListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Landroid/app/ActionBar$OnMenuVisibilityListener;",
            ">;"
        }
    .end annotation
.end field

.field private mNowShowing:Z

.field private mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

.field private mSavedTabPosition:I

.field private mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

.field private mShowHideAnimationEnabled:Z

.field final mShowListener:Landroid/animation/Animator$AnimatorListener;

.field private mShowingForMode:Z

.field private mSplitView:Lcom/android/internal/widget/ActionBarContainer;

.field private mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

.field mTabSelector:Ljava/lang/Runnable;

.field private mTabs:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/app/ActionBarImpl$TabImpl;",
            ">;"
        }
    .end annotation
.end field

.field private mThemedContext:Landroid/content/Context;

.field final mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;


# direct methods
.method public constructor <init>(Landroid/app/Activity;)V
    .locals 5
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    const/4 v4, 0x1

    .line 161
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    .line 86
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 89
    const/4 v3, -0x1

    iput v3, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 98
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 109
    new-instance v3, Landroid/os/Handler;

    invoke-direct {v3}, Landroid/os/Handler;-><init>()V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mHandler:Landroid/os/Handler;

    .line 112
    const/4 v3, 0x0

    iput v3, p0, Lcom/android/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    .line 114
    iput-boolean v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z

    .line 119
    iput-boolean v4, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    .line 124
    new-instance v3, Lcom/android/internal/app/ActionBarImpl$1;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ActionBarImpl$1;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 144
    new-instance v3, Lcom/android/internal/app/ActionBarImpl$2;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ActionBarImpl$2;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 152
    new-instance v3, Lcom/android/internal/app/ActionBarImpl$3;

    invoke-direct {v3, p0}, Lcom/android/internal/app/ActionBarImpl$3;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 162
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl;->mActivity:Landroid/app/Activity;

    .line 163
    invoke-virtual {p1}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v2

    .line 164
    .local v2, "window":Landroid/view/Window;
    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    .line 165
    .local v0, "decor":Landroid/view/View;
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v3}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v3

    const/16 v4, 0x9

    invoke-virtual {v3, v4}, Landroid/view/Window;->hasFeature(I)Z

    move-result v1

    .line 166
    .local v1, "overlayMode":Z
    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->init(Landroid/view/View;)V

    .line 167
    if-nez v1, :cond_0

    .line 168
    const v3, 0x1020002

    invoke-virtual {v0, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    .line 170
    :cond_0
    return-void
.end method

.method public constructor <init>(Landroid/app/Dialog;)V
    .locals 2
    .param p1, "dialog"    # Landroid/app/Dialog;

    .prologue
    const/4 v1, 0x1

    .line 172
    invoke-direct {p0}, Landroid/app/ActionBar;-><init>()V

    .line 86
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    .line 89
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 98
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    .line 109
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHandler:Landroid/os/Handler;

    .line 112
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    .line 114
    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z

    .line 119
    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    .line 124
    new-instance v0, Lcom/android/internal/app/ActionBarImpl$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$1;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    .line 144
    new-instance v0, Lcom/android/internal/app/ActionBarImpl$2;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$2;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    .line 152
    new-instance v0, Lcom/android/internal/app/ActionBarImpl$3;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$3;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    .line 173
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl;->mDialog:Landroid/app/Dialog;

    .line 174
    invoke-virtual {p1}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->init(Landroid/view/View;)V

    .line 175
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ActionBarImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z

    return v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ActionBarImpl;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1000(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContextView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    return-object v0
.end method

.method static synthetic access$1100(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    return-object v0
.end method

.method static synthetic access$1200(Lcom/android/internal/app/ActionBarImpl;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$1300(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ScrollingTabContainerView;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarContainer;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    return-object v0
.end method

.method static synthetic access$400(Lcom/android/internal/app/ActionBarImpl;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 70
    iget v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    return v0
.end method

.method static synthetic access$502(Lcom/android/internal/app/ActionBarImpl;Landroid/animation/Animator;)Landroid/animation/Animator;
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;
    .param p1, "x1"    # Landroid/animation/Animator;

    .prologue
    .line 70
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    return-object p1
.end method

.method static synthetic access$600(Lcom/android/internal/app/ActionBarImpl;)Lcom/android/internal/widget/ActionBarOverlayLayout;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 70
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    return-object v0
.end method

.method static synthetic access$700(Lcom/android/internal/app/ActionBarImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    return v0
.end method

.method static synthetic access$800(Lcom/android/internal/app/ActionBarImpl;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ActionBarImpl;

    .prologue
    .line 70
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    return v0
.end method

.method static synthetic access$900(ZZZ)Z
    .locals 1
    .param p0, "x0"    # Z
    .param p1, "x1"    # Z
    .param p2, "x2"    # Z

    .prologue
    .line 70
    invoke-static {p0, p1, p2}, Lcom/android/internal/app/ActionBarImpl;->checkShowingFlags(ZZZ)Z

    move-result v0

    return v0
.end method

.method private static checkShowingFlags(ZZZ)Z
    .locals 1
    .param p0, "hiddenByApp"    # Z
    .param p1, "hiddenBySystem"    # Z
    .param p2, "showingForMode"    # Z

    .prologue
    const/4 v0, 0x1

    .line 660
    if-eqz p2, :cond_1

    .line 665
    :cond_0
    :goto_0
    return v0

    .line 662
    :cond_1
    if-nez p0, :cond_2

    if-eqz p1, :cond_0

    .line 663
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private cleanupTabs()V
    .locals 1

    .prologue
    .line 387
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v0, :cond_0

    .line 388
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 390
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->clear()V

    .line 391
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_1

    .line 392
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeAllTabs()V

    .line 394
    :cond_1
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 395
    return-void
.end method

.method private configureTab(Landroid/app/ActionBar$Tab;I)V
    .locals 6
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 482
    move-object v3, p1

    check-cast v3, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    .line 483
    .local v3, "tabi":Lcom/android/internal/app/ActionBarImpl$TabImpl;
    invoke-virtual {v3}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v0

    .line 485
    .local v0, "callback":Landroid/app/ActionBar$TabListener;
    if-nez v0, :cond_0

    .line 486
    new-instance v4, Ljava/lang/IllegalStateException;

    const-string v5, "Action Bar Tab must have a Callback"

    invoke-direct {v4, v5}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 489
    :cond_0
    invoke-virtual {v3, p2}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 490
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p2, v3}, Ljava/util/ArrayList;->add(ILjava/lang/Object;)V

    .line 492
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 493
    .local v1, "count":I
    add-int/lit8 v2, p2, 0x1

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_1

    .line 494
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v2}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v4, v2}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 493
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 496
    :cond_1
    return-void
.end method

.method private ensureTabsExist()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 254
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v1, :cond_0

    .line 275
    :goto_0
    return-void

    .line 258
    :cond_0
    new-instance v0, Lcom/android/internal/widget/ScrollingTabContainerView;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;-><init>(Landroid/content/Context;)V

    .line 260
    .local v0, "tabScroller":Lcom/android/internal/widget/ScrollingTabContainerView;
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-eqz v1, :cond_1

    .line 261
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 262
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 274
    :goto_1
    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    goto :goto_0

    .line 264
    :cond_1
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v1

    const/4 v2, 0x2

    if-ne v1, v2, :cond_3

    .line 265
    invoke-virtual {v0, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 266
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_2

    .line 267
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 272
    :cond_2
    :goto_2
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    goto :goto_1

    .line 270
    :cond_3
    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2
.end method

.method private hideForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 642
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mShowingForMode:Z

    if-eqz v0, :cond_1

    .line 643
    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mShowingForMode:Z

    .line 644
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 645
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 647
    :cond_0
    invoke-direct {p0, v1}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    .line 649
    :cond_1
    return-void
.end method

.method private init(Landroid/view/View;)V
    .locals 7
    .param p1, "decor"    # Landroid/view/View;

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x1

    .line 178
    invoke-virtual {p1}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    .line 179
    const v3, 0x1020316

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ActionBarOverlayLayout;

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    .line 181
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 182
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v3, p0}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setActionBar(Lcom/android/internal/app/ActionBarImpl;)V

    .line 184
    :cond_0
    const v3, 0x1020318

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ActionBarView;

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    .line 185
    const v3, 0x1020319

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ActionBarContextView;

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    .line 187
    const v3, 0x1020317

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    .line 189
    const v3, 0x102031a

    invoke-virtual {p1, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Lcom/android/internal/widget/ActionBarContainer;

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    .line 192
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    if-nez v3, :cond_2

    .line 193
    :cond_1
    new-instance v3, Ljava/lang/IllegalStateException;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, " can only be used "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, "with a compatible window decor layout"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v3, v4}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 197
    :cond_2
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    iget-object v6, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v3, v6}, Lcom/android/internal/widget/ActionBarView;->setContextView(Lcom/android/internal/widget/ActionBarContextView;)V

    .line 198
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarView;->isSplitActionBar()Z

    move-result v3

    if-eqz v3, :cond_6

    move v3, v4

    :goto_0
    iput v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    .line 202
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v1

    .line 203
    .local v1, "current":I
    and-int/lit8 v3, v1, 0x4

    if-eqz v3, :cond_7

    move v2, v4

    .line 204
    .local v2, "homeAsUp":Z
    :goto_1
    if-eqz v2, :cond_3

    .line 205
    iput-boolean v4, p0, Lcom/android/internal/app/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    .line 208
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {v3}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    .line 209
    .local v0, "abp":Lcom/android/internal/view/ActionBarPolicy;
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->enableHomeButtonByDefault()Z

    move-result v3

    if-nez v3, :cond_4

    if-eqz v2, :cond_5

    :cond_4
    move v5, v4

    :cond_5
    invoke-virtual {p0, v5}, Lcom/android/internal/app/ActionBarImpl;->setHomeButtonEnabled(Z)V

    .line 210
    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v3

    invoke-direct {p0, v3}, Lcom/android/internal/app/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    .line 211
    return-void

    .end local v0    # "abp":Lcom/android/internal/view/ActionBarPolicy;
    .end local v1    # "current":I
    .end local v2    # "homeAsUp":Z
    :cond_6
    move v3, v5

    .line 198
    goto :goto_0

    .restart local v1    # "current":I
    :cond_7
    move v2, v5

    .line 203
    goto :goto_1
.end method

.method private setHasEmbeddedTabs(Z)V
    .locals 5
    .param p1, "hasEmbeddedTabs"    # Z

    .prologue
    const/4 v4, 0x0

    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 226
    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    .line 228
    iget-boolean v3, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_1

    .line 229
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 230
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 235
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v3

    const/4 v4, 0x2

    if-ne v3, v4, :cond_2

    move v0, v1

    .line 236
    .local v0, "isInTabMode":Z
    :goto_1
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v3, :cond_0

    .line 237
    if-eqz v0, :cond_3

    .line 238
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 239
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v3, :cond_0

    .line 240
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v3}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 246
    :cond_0
    :goto_2
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    iget-boolean v4, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v4, :cond_4

    if-eqz v0, :cond_4

    :goto_3
    invoke-virtual {v3, v1}, Lcom/android/internal/widget/ActionBarView;->setCollapsable(Z)V

    .line 247
    return-void

    .line 232
    .end local v0    # "isInTabMode":Z
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarContainer;->setTabContainer(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    .line 233
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ActionBarView;->setEmbeddedTabView(Lcom/android/internal/widget/ScrollingTabContainerView;)V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 235
    goto :goto_1

    .line 243
    .restart local v0    # "isInTabMode":Z
    :cond_3
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/16 v4, 0x8

    invoke-virtual {v3, v4}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_2

    :cond_4
    move v1, v2

    .line 246
    goto :goto_3
.end method

.method private showForActionMode()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 617
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mShowingForMode:Z

    if-nez v0, :cond_1

    .line 618
    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mShowingForMode:Z

    .line 619
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v0, :cond_0

    .line 620
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->setShowingForActionMode(Z)V

    .line 622
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    .line 624
    :cond_1
    return-void
.end method

.method private updateVisibility(Z)V
    .locals 4
    .param p1, "fromSystem"    # Z

    .prologue
    .line 671
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    iget-boolean v2, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    iget-boolean v3, p0, Lcom/android/internal/app/ActionBarImpl;->mShowingForMode:Z

    invoke-static {v1, v2, v3}, Lcom/android/internal/app/ActionBarImpl;->checkShowingFlags(ZZZ)Z

    move-result v0

    .line 674
    .local v0, "shown":Z
    if-eqz v0, :cond_1

    .line 675
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    if-nez v1, :cond_0

    .line 676
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    .line 677
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->doShow(Z)V

    .line 685
    :cond_0
    :goto_0
    return-void

    .line 680
    :cond_1
    iget-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    if-eqz v1, :cond_0

    .line 681
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    .line 682
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->doHide(Z)V

    goto :goto_0
.end method


# virtual methods
.method public addOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 304
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 305
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 500
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, v0}, Lcom/android/internal/app/ActionBarImpl;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 501
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;I)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I

    .prologue
    .line 505
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v0

    invoke-virtual {p0, p1, p2, v0}, Lcom/android/internal/app/ActionBarImpl;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 506
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;IZ)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "position"    # I
    .param p3, "setSelected"    # Z

    .prologue
    .line 520
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->ensureTabsExist()V

    .line 521
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2, p3}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;IZ)V

    .line 522
    invoke-direct {p0, p1, p2}, Lcom/android/internal/app/ActionBarImpl;->configureTab(Landroid/app/ActionBar$Tab;I)V

    .line 523
    if-eqz p3, :cond_0

    .line 524
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 526
    :cond_0
    return-void
.end method

.method public addTab(Landroid/app/ActionBar$Tab;Z)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;
    .param p2, "setSelected"    # Z

    .prologue
    .line 510
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->ensureTabsExist()V

    .line 511
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v0, p1, p2}, Lcom/android/internal/widget/ScrollingTabContainerView;->addTab(Landroid/app/ActionBar$Tab;Z)V

    .line 512
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/app/ActionBarImpl;->configureTab(Landroid/app/ActionBar$Tab;I)V

    .line 513
    if-eqz p2, :cond_0

    .line 514
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 516
    :cond_0
    return-void
.end method

.method animateToMode(Z)V
    .locals 4
    .param p1, "toActionMode"    # Z

    .prologue
    const/16 v1, 0x8

    const/4 v2, 0x0

    .line 795
    if-eqz p1, :cond_1

    .line 796
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->showForActionMode()V

    .line 801
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    if-eqz p1, :cond_2

    move v0, v1

    :goto_1
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/ActionBarView;->animateToVisibility(I)V

    .line 802
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    if-eqz p1, :cond_3

    move v0, v2

    :goto_2
    invoke-virtual {v3, v0}, Lcom/android/internal/widget/ActionBarContextView;->animateToVisibility(I)V

    .line 803
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->hasEmbeddedTabs()Z

    move-result v0

    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->isCollapsed()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 804
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_4

    :goto_3
    invoke-virtual {v0, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToVisibility(I)V

    .line 806
    :cond_0
    return-void

    .line 798
    :cond_1
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->hideForActionMode()V

    goto :goto_0

    :cond_2
    move v0, v2

    .line 801
    goto :goto_1

    :cond_3
    move v0, v1

    .line 802
    goto :goto_2

    :cond_4
    move v1, v2

    .line 804
    goto :goto_3
.end method

.method completeDeferredDestroyActionMode()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 278
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    if-eqz v0, :cond_0

    .line 279
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    invoke-interface {v0, v1}, Landroid/view/ActionMode$Callback;->onDestroyActionMode(Landroid/view/ActionMode;)V

    .line 280
    iput-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mDeferredDestroyActionMode:Landroid/view/ActionMode;

    .line 281
    iput-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mDeferredModeDestroyCallback:Landroid/view/ActionMode$Callback;

    .line 283
    :cond_0
    return-void
.end method

.method public dispatchMenuVisibilityChanged(Z)V
    .locals 3
    .param p1, "isVisible"    # Z

    .prologue
    .line 312
    iget-boolean v2, p0, Lcom/android/internal/app/ActionBarImpl;->mLastMenuVisibility:Z

    if-ne p1, v2, :cond_1

    .line 321
    :cond_0
    return-void

    .line 315
    :cond_1
    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl;->mLastMenuVisibility:Z

    .line 317
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2}, Ljava/util/ArrayList;->size()I

    move-result v0

    .line 318
    .local v0, "count":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 319
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v2, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/app/ActionBar$OnMenuVisibilityListener;

    invoke-interface {v2, p1}, Landroid/app/ActionBar$OnMenuVisibilityListener;->onMenuVisibilityChanged(Z)V

    .line 318
    add-int/lit8 v1, v1, 0x1

    goto :goto_0
.end method

.method public doHide(Z)V
    .locals 12
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v8, 0x2

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    const/4 v9, 0x1

    .line 748
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v5, :cond_0

    .line 749
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    .line 752
    :cond_0
    iget v5, p0, Lcom/android/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    if-nez v5, :cond_5

    iget-boolean v5, p0, Lcom/android/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_1

    if-eqz p1, :cond_5

    .line 754
    :cond_1
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v11}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 755
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setTransitioning(Z)V

    .line 756
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 757
    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v3, v5

    .line 758
    .local v3, "endingY":F
    if-eqz p1, :cond_2

    .line 759
    new-array v4, v8, [I

    fill-array-data v4, :array_0

    .line 760
    .local v4, "topLeft":[I
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 761
    aget v5, v4, v9

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 763
    .end local v4    # "topLeft":[I
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v9, [F

    aput v3, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 764
    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 765
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 766
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 767
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v8, [F

    const/4 v8, 0x0

    aput v8, v7, v10

    aput v3, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 770
    :cond_3
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_4

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v5

    if-nez v5, :cond_4

    .line 771
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v11}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 772
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v9, [F

    iget-object v8, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v8}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v8

    int-to-float v8, v8

    aput v8, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 775
    :cond_4
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    const v6, 0x10c0002

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 777
    const-wide/16 v5, 0xfa

    invoke-virtual {v1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 778
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 779
    iput-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 780
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 784
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "endingY":F
    :goto_0
    return-void

    .line 782
    :cond_5
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mHideListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 759
    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public doShow(Z)V
    .locals 12
    .param p1, "fromSystem"    # Z

    .prologue
    const/4 v11, 0x2

    const/high16 v6, 0x3f800000    # 1.0f

    const/4 v10, 0x1

    const/4 v9, 0x0

    const/4 v8, 0x0

    .line 688
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v5, :cond_0

    .line 689
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v5}, Landroid/animation/Animator;->end()V

    .line 691
    :cond_0
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 693
    iget v5, p0, Lcom/android/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    if-nez v5, :cond_6

    iget-boolean v5, p0, Lcom/android/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    if-nez v5, :cond_1

    if-eqz p1, :cond_6

    .line 695
    :cond_1
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 696
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v5

    neg-int v5, v5

    int-to-float v3, v5

    .line 697
    .local v3, "startingY":F
    if-eqz p1, :cond_2

    .line 698
    new-array v4, v11, [I

    fill-array-data v4, :array_0

    .line 699
    .local v4, "topLeft":[I
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v4}, Lcom/android/internal/widget/ActionBarContainer;->getLocationInWindow([I)V

    .line 700
    aget v5, v4, v10

    int-to-float v5, v5

    sub-float/2addr v3, v5

    .line 702
    .end local v4    # "topLeft":[I
    :cond_2
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v3}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 703
    new-instance v1, Landroid/animation/AnimatorSet;

    invoke-direct {v1}, Landroid/animation/AnimatorSet;-><init>()V

    .line 704
    .local v1, "anim":Landroid/animation/AnimatorSet;
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v0

    .line 705
    .local v0, "a":Landroid/animation/ObjectAnimator;
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mUpdateListener:Landroid/animation/ValueAnimator$AnimatorUpdateListener;

    invoke-virtual {v0, v5}, Landroid/animation/ObjectAnimator;->addUpdateListener(Landroid/animation/ValueAnimator$AnimatorUpdateListener;)V

    .line 706
    invoke-virtual {v1, v0}, Landroid/animation/AnimatorSet;->play(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    move-result-object v2

    .line 707
    .local v2, "b":Landroid/animation/AnimatorSet$Builder;
    iget-boolean v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z

    if-eqz v5, :cond_3

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_3

    .line 708
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v11, [F

    aput v3, v7, v9

    aput v8, v7, v10

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 711
    :cond_3
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_4

    iget v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    if-ne v5, v10, :cond_4

    .line 712
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    iget-object v6, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v6}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v6

    int-to-float v6, v6

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 713
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 714
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    sget-object v6, Landroid/view/View;->TRANSLATION_Y:Landroid/util/Property;

    new-array v7, v10, [F

    aput v8, v7, v9

    invoke-static {v5, v6, v7}, Landroid/animation/ObjectAnimator;->ofFloat(Ljava/lang/Object;Landroid/util/Property;[F)Landroid/animation/ObjectAnimator;

    move-result-object v5

    invoke-virtual {v2, v5}, Landroid/animation/AnimatorSet$Builder;->with(Landroid/animation/Animator;)Landroid/animation/AnimatorSet$Builder;

    .line 716
    :cond_4
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    const v6, 0x10c0003

    invoke-static {v5, v6}, Landroid/view/animation/AnimationUtils;->loadInterpolator(Landroid/content/Context;I)Landroid/view/animation/Interpolator;

    move-result-object v5

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->setInterpolator(Landroid/animation/TimeInterpolator;)V

    .line 718
    const-wide/16 v5, 0xfa

    invoke-virtual {v1, v5, v6}, Landroid/animation/AnimatorSet;->setDuration(J)Landroid/animation/AnimatorSet;

    .line 726
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    invoke-virtual {v1, v5}, Landroid/animation/AnimatorSet;->addListener(Landroid/animation/Animator$AnimatorListener;)V

    .line 727
    iput-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    .line 728
    invoke-virtual {v1}, Landroid/animation/AnimatorSet;->start()V

    .line 742
    .end local v0    # "a":Landroid/animation/ObjectAnimator;
    .end local v1    # "anim":Landroid/animation/AnimatorSet;
    .end local v2    # "b":Landroid/animation/AnimatorSet$Builder;
    .end local v3    # "startingY":F
    :goto_0
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v5, :cond_5

    .line 743
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v5}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 745
    :cond_5
    return-void

    .line 730
    :cond_6
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 731
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 732
    iget-boolean v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z

    if-eqz v5, :cond_7

    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    if-eqz v5, :cond_7

    .line 733
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContentView:Landroid/view/View;

    invoke-virtual {v5, v8}, Landroid/view/View;->setTranslationY(F)V

    .line 735
    :cond_7
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v5, :cond_8

    iget v5, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    if-ne v5, v10, :cond_8

    .line 736
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v6}, Lcom/android/internal/widget/ActionBarContainer;->setAlpha(F)V

    .line 737
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v8}, Lcom/android/internal/widget/ActionBarContainer;->setTranslationY(F)V

    .line 738
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v5, v9}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 740
    :cond_8
    iget-object v5, p0, Lcom/android/internal/app/ActionBarImpl;->mShowListener:Landroid/animation/Animator$AnimatorListener;

    const/4 v6, 0x0

    invoke-interface {v5, v6}, Landroid/animation/Animator$AnimatorListener;->onAnimationEnd(Landroid/animation/Animator;)V

    goto :goto_0

    .line 698
    nop

    :array_0
    .array-data 4
        0x0
        0x0
    .end array-data
.end method

.method public enableContentAnimations(Z)V
    .locals 0
    .param p1, "enabled"    # Z

    .prologue
    .line 605
    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl;->mContentAnimations:Z

    .line 606
    return-void
.end method

.method public getCustomView()Landroid/view/View;
    .locals 1

    .prologue
    .line 435
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getCustomNavigationView()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayOptions()I
    .locals 1

    .prologue
    .line 451
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    return v0
.end method

.method public getHeight()I
    .locals 1

    .prologue
    .line 601
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarContainer;->getHeight()I

    move-result v0

    return v0
.end method

.method public getNavigationItemCount()I
    .locals 3

    .prologue
    const/4 v1, 0x0

    .line 1167
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 1174
    :cond_0
    :goto_0
    return v1

    .line 1169
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v1}, Ljava/util/ArrayList;->size()I

    move-result v1

    goto :goto_0

    .line 1171
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarView;->getDropdownAdapter()Landroid/widget/SpinnerAdapter;

    move-result-object v0

    .line 1172
    .local v0, "adapter":Landroid/widget/SpinnerAdapter;
    if-eqz v0, :cond_0

    invoke-interface {v0}, Landroid/widget/SpinnerAdapter;->getCount()I

    move-result v1

    goto :goto_0

    .line 1167
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getNavigationMode()I
    .locals 1

    .prologue
    .line 447
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    return v0
.end method

.method public getSelectedNavigationIndex()I
    .locals 2

    .prologue
    const/4 v0, -0x1

    .line 1155
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    .line 1161
    :cond_0
    :goto_0
    return v0

    .line 1157
    :pswitch_0
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getPosition()I

    move-result v0

    goto :goto_0

    .line 1159
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getDropdownSelectedPosition()I

    move-result v0

    goto :goto_0

    .line 1155
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public getSelectedTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 596
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    return-object v0
.end method

.method public getSubtitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 443
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getSubtitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public getTabAt(I)Landroid/app/ActionBar$Tab;
    .locals 1
    .param p1, "index"    # I

    .prologue
    .line 1214
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    return-object v0
.end method

.method public getTabCount()I
    .locals 1

    .prologue
    .line 1180
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v0

    return v0
.end method

.method public getThemedContext()Landroid/content/Context;
    .locals 5

    .prologue
    .line 809
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    if-nez v3, :cond_0

    .line 810
    new-instance v1, Landroid/util/TypedValue;

    invoke-direct {v1}, Landroid/util/TypedValue;-><init>()V

    .line 811
    .local v1, "outValue":Landroid/util/TypedValue;
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v0

    .line 812
    .local v0, "currentTheme":Landroid/content/res/Resources$Theme;
    const v3, 0x1010397

    const/4 v4, 0x1

    invoke-virtual {v0, v3, v1, v4}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 814
    iget v2, v1, Landroid/util/TypedValue;->resourceId:I

    .line 816
    .local v2, "targetThemeRes":I
    if-eqz v2, :cond_1

    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getThemeResId()I

    move-result v3

    if-eq v3, v2, :cond_1

    .line 817
    new-instance v3, Landroid/view/ContextThemeWrapper;

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-direct {v3, v4, v2}, Landroid/view/ContextThemeWrapper;-><init>(Landroid/content/Context;I)V

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    .line 822
    .end local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .end local v1    # "outValue":Landroid/util/TypedValue;
    .end local v2    # "targetThemeRes":I
    :cond_0
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    return-object v3

    .line 819
    .restart local v0    # "currentTheme":Landroid/content/res/Resources$Theme;
    .restart local v1    # "outValue":Landroid/util/TypedValue;
    .restart local v2    # "targetThemeRes":I
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    iput-object v3, p0, Lcom/android/internal/app/ActionBarImpl;->mThemedContext:Landroid/content/Context;

    goto :goto_0
.end method

.method public getTitle()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getTitle()Ljava/lang/CharSequence;

    move-result-object v0

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 1229
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->hasIcon()Z

    move-result v0

    return v0
.end method

.method public hasLogo()Z
    .locals 1

    .prologue
    .line 1243
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->hasLogo()Z

    move-result v0

    return v0
.end method

.method public hasNonEmbeddedTabs()Z
    .locals 2

    .prologue
    .line 250
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v0

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 1

    .prologue
    .line 635
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    if-nez v0, :cond_0

    .line 636
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    .line 637
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    .line 639
    :cond_0
    return-void
.end method

.method public hideForSystem()V
    .locals 2

    .prologue
    const/4 v1, 0x1

    .line 652
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    if-nez v0, :cond_0

    .line 653
    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    .line 654
    invoke-direct {p0, v1}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    .line 656
    :cond_0
    return-void
.end method

.method public isShowing()Z
    .locals 1

    .prologue
    .line 787
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mNowShowing:Z

    return v0
.end method

.method public isSystemShowing()Z
    .locals 1

    .prologue
    .line 791
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isTitleTruncated()Z
    .locals 1

    .prologue
    .line 827
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->isTitleTruncated()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public newTab()Landroid/app/ActionBar$Tab;
    .locals 1

    .prologue
    .line 530
    new-instance v0, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ActionBarImpl$TabImpl;-><init>(Lcom/android/internal/app/ActionBarImpl;)V

    return-object v0
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 222
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-static {v0}, Lcom/android/internal/view/ActionBarPolicy;->get(Landroid/content/Context;)Lcom/android/internal/view/ActionBarPolicy;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/view/ActionBarPolicy;->hasEmbeddedTabs()Z

    move-result v0

    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->setHasEmbeddedTabs(Z)V

    .line 223
    return-void
.end method

.method public removeAllTabs()V
    .locals 0

    .prologue
    .line 383
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->cleanupTabs()V

    .line 384
    return-void
.end method

.method public removeOnMenuVisibilityListener(Landroid/app/ActionBar$OnMenuVisibilityListener;)V
    .locals 1
    .param p1, "listener"    # Landroid/app/ActionBar$OnMenuVisibilityListener;

    .prologue
    .line 308
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mMenuVisibilityListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 309
    return-void
.end method

.method public removeTab(Landroid/app/ActionBar$Tab;)V
    .locals 1
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    .line 535
    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->removeTabAt(I)V

    .line 536
    return-void
.end method

.method public removeTabAt(I)V
    .locals 7
    .param p1, "position"    # I

    .prologue
    .line 540
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-nez v4, :cond_1

    .line 561
    :cond_0
    :goto_0
    return-void

    .line 545
    :cond_1
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v4, :cond_3

    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v4}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getPosition()I

    move-result v3

    .line 547
    .local v3, "selectedTabPosition":I
    :goto_1
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v4, p1}, Lcom/android/internal/widget/ScrollingTabContainerView;->removeTabAt(I)V

    .line 548
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, p1}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    .line 549
    .local v2, "removedTab":Lcom/android/internal/app/ActionBarImpl$TabImpl;
    if-eqz v2, :cond_2

    .line 550
    const/4 v4, -0x1

    invoke-virtual {v2, v4}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 553
    :cond_2
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v1

    .line 554
    .local v1, "newTabCount":I
    move v0, p1

    .local v0, "i":I
    :goto_2
    if-ge v0, v1, :cond_4

    .line 555
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v4, v0}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->setPosition(I)V

    .line 554
    add-int/lit8 v0, v0, 0x1

    goto :goto_2

    .line 545
    .end local v0    # "i":I
    .end local v1    # "newTabCount":I
    .end local v2    # "removedTab":Lcom/android/internal/app/ActionBarImpl$TabImpl;
    .end local v3    # "selectedTabPosition":I
    :cond_3
    iget v3, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    goto :goto_1

    .line 558
    .restart local v0    # "i":I
    .restart local v1    # "newTabCount":I
    .restart local v2    # "removedTab":Lcom/android/internal/app/ActionBarImpl$TabImpl;
    .restart local v3    # "selectedTabPosition":I
    :cond_4
    if-ne v3, p1, :cond_0

    .line 559
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v4}, Ljava/util/ArrayList;->isEmpty()Z

    move-result v4

    if-eqz v4, :cond_5

    const/4 v4, 0x0

    :goto_3
    invoke-virtual {p0, v4}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    goto :goto_0

    :cond_5
    iget-object v4, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    const/4 v5, 0x0

    add-int/lit8 v6, p1, -0x1

    invoke-static {v5, v6}, Ljava/lang/Math;->max(II)I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    goto :goto_3
.end method

.method public selectTab(Landroid/app/ActionBar$Tab;)V
    .locals 4
    .param p1, "tab"    # Landroid/app/ActionBar$Tab;

    .prologue
    const/4 v1, -0x1

    .line 565
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getNavigationMode()I

    move-result v2

    const/4 v3, 0x2

    if-eq v2, v3, :cond_2

    .line 566
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_0
    iput v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 592
    .end local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_1
    :goto_0
    return-void

    .line 570
    .restart local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_2
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mActivity:Landroid/app/Activity;

    invoke-virtual {v2}, Landroid/app/Activity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v2

    invoke-virtual {v2}, Landroid/app/FragmentTransaction;->disallowAddToBackStack()Landroid/app/FragmentTransaction;

    move-result-object v0

    .line 573
    .local v0, "trans":Landroid/app/FragmentTransaction;
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-ne v2, p1, :cond_4

    .line 574
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_3

    .line 575
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabReselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 576
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v2

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ScrollingTabContainerView;->animateToTab(I)V

    .line 589
    .end local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_3
    :goto_1
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_1

    .line 590
    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commit()I

    goto :goto_0

    .line 579
    .restart local p1    # "tab":Landroid/app/ActionBar$Tab;
    :cond_4
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    if-eqz p1, :cond_5

    invoke-virtual {p1}, Landroid/app/ActionBar$Tab;->getPosition()I

    move-result v1

    :cond_5
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setTabSelected(I)V

    .line 580
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_6

    .line 581
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabUnselected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    .line 583
    :cond_6
    check-cast p1, Lcom/android/internal/app/ActionBarImpl$TabImpl;

    .end local p1    # "tab":Landroid/app/ActionBar$Tab;
    iput-object p1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    .line 584
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    if-eqz v1, :cond_3

    .line 585
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl$TabImpl;->getCallback()Landroid/app/ActionBar$TabListener;

    move-result-object v1

    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mSelectedTab:Lcom/android/internal/app/ActionBarImpl$TabImpl;

    invoke-interface {v1, v2, v0}, Landroid/app/ActionBar$TabListener;->onTabSelected(Landroid/app/ActionBar$Tab;Landroid/app/FragmentTransaction;)V

    goto :goto_1
.end method

.method public setActionBarMode(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 216
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->SetActionBarMode(Z)V

    .line 219
    return-void
.end method

.method public setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 421
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setPrimaryBackground(Landroid/graphics/drawable/Drawable;)V

    .line 422
    return-void
.end method

.method public setCustomView(I)V
    .locals 3
    .param p1, "resId"    # I

    .prologue
    .line 325
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getThemedContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    const/4 v2, 0x0

    invoke-virtual {v0, p1, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->setCustomView(Landroid/view/View;)V

    .line 326
    return-void
.end method

.method public setCustomView(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 1138
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    .line 1139
    return-void
.end method

.method public setCustomView(Landroid/view/View;Landroid/app/ActionBar$LayoutParams;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;
    .param p2, "layoutParams"    # Landroid/app/ActionBar$LayoutParams;

    .prologue
    .line 1143
    invoke-virtual {p1, p2}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 1144
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setCustomNavigationView(Landroid/view/View;)V

    .line 1145
    return-void
.end method

.method public setDefaultDisplayHomeAsUpEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 1247
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    if-nez v0, :cond_0

    .line 1248
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayHomeAsUpEnabled(Z)V

    .line 1250
    :cond_0
    return-void
.end method

.method public setDisplayHomeAsUpEnabled(Z)V
    .locals 2
    .param p1, "showHomeAsUp"    # Z

    .prologue
    const/4 v1, 0x4

    .line 340
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 341
    return-void

    .line 340
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayOptions(I)V
    .locals 1
    .param p1, "options"    # I

    .prologue
    .line 406
    and-int/lit8 v0, p1, 0x4

    if-eqz v0, :cond_0

    .line 407
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    .line 409
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 410
    return-void
.end method

.method public setDisplayOptions(II)V
    .locals 4
    .param p1, "options"    # I
    .param p2, "mask"    # I

    .prologue
    .line 413
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarView;->getDisplayOptions()I

    move-result v0

    .line 414
    .local v0, "current":I
    and-int/lit8 v1, p2, 0x4

    if-eqz v1, :cond_0

    .line 415
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mDisplayHomeAsUpSet:Z

    .line 417
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    and-int v2, p1, p2

    xor-int/lit8 v3, p2, -0x1

    and-int/2addr v3, v0

    or-int/2addr v2, v3

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarView;->setDisplayOptions(I)V

    .line 418
    return-void
.end method

.method public setDisplayShowCustomEnabled(Z)V
    .locals 2
    .param p1, "showCustom"    # Z

    .prologue
    const/16 v1, 0x10

    .line 350
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 351
    return-void

    .line 350
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowHomeEnabled(Z)V
    .locals 2
    .param p1, "showHome"    # Z

    .prologue
    const/4 v1, 0x2

    .line 335
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 336
    return-void

    .line 335
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayShowTitleEnabled(Z)V
    .locals 2
    .param p1, "showTitle"    # Z

    .prologue
    const/16 v1, 0x8

    .line 345
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 346
    return-void

    .line 345
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setDisplayUseLogoEnabled(Z)V
    .locals 2
    .param p1, "useLogo"    # Z

    .prologue
    const/4 v1, 0x1

    .line 330
    if-eqz p1, :cond_0

    move v0, v1

    :goto_0
    invoke-virtual {p0, v0, v1}, Lcom/android/internal/app/ActionBarImpl;->setDisplayOptions(II)V

    .line 331
    return-void

    .line 330
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public setHomeActionContentDescription(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 847
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setHomeActionContentDescription(I)V

    .line 848
    return-void
.end method

.method public setHomeActionContentDescription(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/CharSequence;

    .prologue
    .line 842
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setHomeActionContentDescription(Ljava/lang/CharSequence;)V

    .line 843
    return-void
.end method

.method public setHomeAsUpIndicator(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 837
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setHomeAsUpIndicator(I)V

    .line 838
    return-void
.end method

.method public setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "indicator"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 832
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setHomeAsUpIndicator(Landroid/graphics/drawable/Drawable;)V

    .line 833
    return-void
.end method

.method public setHomeButtonEnabled(Z)V
    .locals 1
    .param p1, "enable"    # Z

    .prologue
    .line 355
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setHomeButtonEnabled(Z)V

    .line 356
    return-void
.end method

.method public setIcon(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1220
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setIcon(I)V

    .line 1221
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "icon"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1225
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 1226
    return-void
.end method

.method public setListNavigationCallbacks(Landroid/widget/SpinnerAdapter;Landroid/app/ActionBar$OnNavigationListener;)V
    .locals 1
    .param p1, "adapter"    # Landroid/widget/SpinnerAdapter;
    .param p2, "callback"    # Landroid/app/ActionBar$OnNavigationListener;

    .prologue
    .line 1149
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setDropdownAdapter(Landroid/widget/SpinnerAdapter;)V

    .line 1150
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p2}, Lcom/android/internal/widget/ActionBarView;->setCallback(Landroid/app/ActionBar$OnNavigationListener;)V

    .line 1151
    return-void
.end method

.method public setLogo(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1234
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setLogo(I)V

    .line 1235
    return-void
.end method

.method public setLogo(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "logo"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1239
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setLogo(Landroid/graphics/drawable/Drawable;)V

    .line 1240
    return-void
.end method

.method public setNavigationMode(I)V
    .locals 5
    .param p1, "mode"    # I

    .prologue
    const/4 v1, 0x0

    const/4 v4, -0x1

    .line 1185
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    .line 1186
    .local v0, "oldMode":I
    packed-switch v0, :pswitch_data_0

    .line 1193
    :goto_0
    if-eq v0, p1, :cond_0

    iget-boolean v2, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v2, :cond_0

    .line 1194
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v2, :cond_0

    .line 1195
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v2}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 1198
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v2, p1}, Lcom/android/internal/widget/ActionBarView;->setNavigationMode(I)V

    .line 1199
    packed-switch p1, :pswitch_data_1

    .line 1209
    :cond_1
    :goto_1
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    const/4 v3, 0x2

    if-ne p1, v3, :cond_2

    iget-boolean v3, p0, Lcom/android/internal/app/ActionBarImpl;->mHasEmbeddedTabs:Z

    if-nez v3, :cond_2

    const/4 v1, 0x1

    :cond_2
    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ActionBarView;->setCollapsable(Z)V

    .line 1210
    return-void

    .line 1188
    :pswitch_0
    invoke-virtual {p0}, Lcom/android/internal/app/ActionBarImpl;->getSelectedNavigationIndex()I

    move-result v2

    iput v2, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    .line 1189
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 1190
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    const/16 v3, 0x8

    invoke-virtual {v2, v3}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    goto :goto_0

    .line 1201
    :pswitch_1
    invoke-direct {p0}, Lcom/android/internal/app/ActionBarImpl;->ensureTabsExist()V

    .line 1202
    iget-object v2, p0, Lcom/android/internal/app/ActionBarImpl;->mTabScrollView:Lcom/android/internal/widget/ScrollingTabContainerView;

    invoke-virtual {v2, v1}, Lcom/android/internal/widget/ScrollingTabContainerView;->setVisibility(I)V

    .line 1203
    iget v2, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    if-eq v2, v4, :cond_1

    .line 1204
    iget v2, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    invoke-virtual {p0, v2}, Lcom/android/internal/app/ActionBarImpl;->setSelectedNavigationItem(I)V

    .line 1205
    iput v4, p0, Lcom/android/internal/app/ActionBarImpl;->mSavedTabPosition:I

    goto :goto_1

    .line 1186
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_0
    .end packed-switch

    .line 1199
    :pswitch_data_1
    .packed-switch 0x2
        :pswitch_1
    .end packed-switch
.end method

.method public setSelectedNavigationItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0}, Lcom/android/internal/widget/ActionBarView;->getNavigationMode()I

    move-result v0

    packed-switch v0, :pswitch_data_0

    .line 377
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "setSelectedNavigationIndex not valid for current navigation mode"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 371
    :pswitch_0
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mTabs:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActionBar$Tab;

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->selectTab(Landroid/app/ActionBar$Tab;)V

    .line 380
    :goto_0
    return-void

    .line 374
    :pswitch_1
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setDropdownSelectedPosition(I)V

    goto :goto_0

    .line 369
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public setShowHideAnimationEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 297
    iput-boolean p1, p0, Lcom/android/internal/app/ActionBarImpl;->mShowHideAnimationEnabled:Z

    .line 298
    if-nez p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    if-eqz v0, :cond_0

    .line 299
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mCurrentShowAnim:Landroid/animation/Animator;

    invoke-virtual {v0}, Landroid/animation/Animator;->end()V

    .line 301
    :cond_0
    return-void
.end method

.method public setSplitBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 429
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v0, :cond_0

    .line 430
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setSplitBackground(Landroid/graphics/drawable/Drawable;)V

    .line 432
    :cond_0
    return-void
.end method

.method public setStackedBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 1
    .param p1, "d"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 425
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContainerView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarContainer;->setStackedBackground(Landroid/graphics/drawable/Drawable;)V

    .line 426
    return-void
.end method

.method public setSubtitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 365
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 366
    return-void
.end method

.method public setSubtitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "subtitle"    # Ljava/lang/CharSequence;

    .prologue
    .line 402
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setSubtitle(Ljava/lang/CharSequence;)V

    .line 403
    return-void
.end method

.method public setTitle(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 360
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->setTitle(Ljava/lang/CharSequence;)V

    .line 361
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .param p1, "title"    # Ljava/lang/CharSequence;

    .prologue
    .line 398
    iget-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionView:Lcom/android/internal/widget/ActionBarView;

    invoke-virtual {v0, p1}, Lcom/android/internal/widget/ActionBarView;->setTitle(Ljava/lang/CharSequence;)V

    .line 399
    return-void
.end method

.method public setWindowVisibility(I)V
    .locals 0
    .param p1, "visibility"    # I

    .prologue
    .line 286
    iput p1, p0, Lcom/android/internal/app/ActionBarImpl;->mCurWindowVisibility:I

    .line 287
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 610
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    if-eqz v0, :cond_0

    .line 611
    iput-boolean v1, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenByApp:Z

    .line 612
    invoke-direct {p0, v1}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    .line 614
    :cond_0
    return-void
.end method

.method public showForSystem()V
    .locals 1

    .prologue
    .line 627
    iget-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    if-eqz v0, :cond_0

    .line 628
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ActionBarImpl;->mHiddenBySystem:Z

    .line 629
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lcom/android/internal/app/ActionBarImpl;->updateVisibility(Z)V

    .line 631
    :cond_0
    return-void
.end method

.method public startActionMode(Landroid/view/ActionMode$Callback;)Landroid/view/ActionMode;
    .locals 3
    .param p1, "callback"    # Landroid/view/ActionMode$Callback;

    .prologue
    const/4 v2, 0x1

    .line 455
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    if-eqz v1, :cond_0

    .line 456
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    invoke-virtual {v1}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->finish()V

    .line 459
    :cond_0
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContextView;->killMode()V

    .line 460
    new-instance v0, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    invoke-direct {v0, p0, p1}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;-><init>(Lcom/android/internal/app/ActionBarImpl;Landroid/view/ActionMode$Callback;)V

    .line 461
    .local v0, "mode":Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;
    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->dispatchOnCreate()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 462
    invoke-virtual {v0}, Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;->invalidate()V

    .line 463
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    invoke-virtual {v1, v0}, Lcom/android/internal/widget/ActionBarContextView;->initForMode(Landroid/view/ActionMode;)V

    .line 464
    invoke-virtual {p0, v2}, Lcom/android/internal/app/ActionBarImpl;->animateToMode(Z)V

    .line 465
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    if-eqz v1, :cond_1

    iget v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextDisplayMode:I

    if-ne v1, v2, :cond_1

    .line 467
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarContainer;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_1

    .line 468
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mSplitView:Lcom/android/internal/widget/ActionBarContainer;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContainer;->setVisibility(I)V

    .line 469
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    if-eqz v1, :cond_1

    .line 470
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mOverlayLayout:Lcom/android/internal/widget/ActionBarOverlayLayout;

    invoke-virtual {v1}, Lcom/android/internal/widget/ActionBarOverlayLayout;->requestFitSystemWindows()V

    .line 474
    :cond_1
    iget-object v1, p0, Lcom/android/internal/app/ActionBarImpl;->mContextView:Lcom/android/internal/widget/ActionBarContextView;

    const/16 v2, 0x20

    invoke-virtual {v1, v2}, Lcom/android/internal/widget/ActionBarContextView;->sendAccessibilityEvent(I)V

    .line 475
    iput-object v0, p0, Lcom/android/internal/app/ActionBarImpl;->mActionMode:Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;

    .line 478
    .end local v0    # "mode":Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;
    :goto_0
    return-object v0

    .restart local v0    # "mode":Lcom/android/internal/app/ActionBarImpl$ActionModeImpl;
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
