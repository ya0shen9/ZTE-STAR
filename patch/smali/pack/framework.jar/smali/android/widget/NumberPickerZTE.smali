.class public Landroid/widget/NumberPickerZTE;
.super Landroid/widget/LinearLayout;
.source "NumberPickerZTE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;,
        Landroid/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;,
        Landroid/widget/NumberPickerZTE$CustomEditText;,
        Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;,
        Landroid/widget/NumberPickerZTE$SetSelectionCommand;,
        Landroid/widget/NumberPickerZTE$PressedStateHelper;,
        Landroid/widget/NumberPickerZTE$InputTextFilter;,
        Landroid/widget/NumberPickerZTE$Formatter;,
        Landroid/widget/NumberPickerZTE$OnScrollListener;,
        Landroid/widget/NumberPickerZTE$OnValueChangeListener;,
        Landroid/widget/NumberPickerZTE$TwoDigitFormatter;
    }
.end annotation


# static fields
.field private static final DEFAULT_LAYOUT_RESOURCE_ID:I = 0x109006b

.field private static final DEFAULT_LONG_PRESS_UPDATE_INTERVAL:J = 0x12cL

.field private static final DIGIT_CHARACTERS:[C

.field private static final SELECTOR_ADJUSTMENT_DURATION_MILLIS:I = 0x320

.field private static final SELECTOR_MAX_FLING_VELOCITY_ADJUSTMENT:I = 0x8

.field private static final SELECTOR_MIDDLE_ITEM_INDEX:I = 0x1

.field private static final SELECTOR_WHEEL_ITEM_COUNT:I = 0x3

.field private static final SIZE_UNSPECIFIED:I = -0x1

.field private static final SNAP_SCROLL_DURATION:I = 0x12c

.field private static final TOP_AND_BOTTOM_FADING_EDGE_STRENGTH:F = 0.9f

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDERS_DISTANCE:I = 0x30

.field private static final UNSCALED_DEFAULT_SELECTION_DIVIDER_HEIGHT:I = 0x2

.field private static final sTwoDigitFormatter:Landroid/widget/NumberPickerZTE$TwoDigitFormatter;


# instance fields
.field private INPUT_DISABLE_FLAG:I

.field private displayYear:I

.field private mAccessibilityNodeProvider:Landroid/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;

.field private final mAdjustScroller:Landroid/widget/Scroller;

.field private mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

.field private mBottomSelectionDividerBottom:I

.field private mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

.field private final mComputeMaxWidth:Z

.field private mCurrentScrollOffset:I

.field private final mDecrementButton:Landroid/widget/ImageButton;

.field private mDecrementVirtualButtonPressed:Z

.field private mDisplayedValues:[Ljava/lang/String;

.field private final mFlingScroller:Landroid/widget/Scroller;

.field private mFormatter:Landroid/widget/NumberPickerZTE$Formatter;

.field private final mHasSelectorWheel:Z

.field private final mIncrementButton:Landroid/widget/ImageButton;

.field private mIncrementVirtualButtonPressed:Z

.field private mIngonreMoveEvents:Z

.field private mInitialScrollOffset:I

.field private mInputSize:F

.field private final mInputText:Landroid/widget/EditText;

.field private mLastDownEventTime:J

.field private mLastDownEventY:F

.field private mLastDownOrMoveEventY:F

.field private mLastHandledDownDpadKeyCode:I

.field private mLastHoveredChildVirtualViewId:I

.field private mLongPressUpdateInterval:J

.field private final mMaxHeight:I

.field private mMaxValue:I

.field private mMaxWidth:I

.field private mMaximumFlingVelocity:I

.field private final mMinHeight:I

.field private mMinValue:I

.field private final mMinWidth:I

.field private mMinimumFlingVelocity:I

.field private mOnScrollListener:Landroid/widget/NumberPickerZTE$OnScrollListener;

.field private mOnValueChangeListener:Landroid/widget/NumberPickerZTE$OnValueChangeListener;

.field private final mPressedStateHelper:Landroid/widget/NumberPickerZTE$PressedStateHelper;

.field private mPreviousScrollerY:I

.field private mScrollState:I

.field private mSelectedSize:F

.field private final mSelectionDivider:Landroid/graphics/drawable/Drawable;

.field private final mSelectionDividerHeight:I

.field private final mSelectionDividersDistance:I

.field private mSelectorElementHeight:I

.field private final mSelectorIndexToStringCache:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private final mSelectorIndices:[I

.field private mSelectorTextGapHeight:I

.field private final mSelectorWheelPaint:Landroid/graphics/Paint;

.field private mSetSelectionCommand:Landroid/widget/NumberPickerZTE$SetSelectionCommand;

.field private mShowSoftInputOnTap:Z

.field private final mSolidColor:I

.field private final mTextSize:I

.field private mTopSelectionDividerTop:I

.field private mTouchSlop:I

.field private mValue:I

.field private mVelocityTracker:Landroid/view/VelocityTracker;

.field private final mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

.field private mWrapSelectorWheel:Z

.field private mdividerWith:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 198
    new-instance v0, Landroid/widget/NumberPickerZTE$TwoDigitFormatter;

    invoke-direct {v0}, Landroid/widget/NumberPickerZTE$TwoDigitFormatter;-><init>()V

    sput-object v0, Landroid/widget/NumberPickerZTE;->sTwoDigitFormatter:Landroid/widget/NumberPickerZTE$TwoDigitFormatter;

    .line 2014
    const/16 v0, 0x1e

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/widget/NumberPickerZTE;->DIGIT_CHARACTERS:[C

    return-void

    nop

    :array_0
    .array-data 2
        0x30s
        0x31s
        0x32s
        0x33s
        0x34s
        0x35s
        0x36s
        0x37s
        0x38s
        0x39s
        0x660s
        0x661s
        0x662s
        0x663s
        0x664s
        0x665s
        0x666s
        0x667s
        0x668s
        0x669s
        0x6f0s
        0x6f1s
        0x6f2s
        0x6f3s
        0x6f4s
        0x6f5s
        0x6f6s
        0x6f7s
        0x6f8s
        0x6f9s
    .end array-data
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 557
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 558
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 567
    const v0, 0x1010403

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/NumberPickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 568
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 18
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 578
    invoke-direct/range {p0 .. p3}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 150
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPickerZTE;->INPUT_DISABLE_FLAG:I

    .line 251
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPickerZTE;->mdividerWith:I

    .line 306
    const-wide/16 v14, 0x12c

    move-object/from16 v0, p0

    iput-wide v14, v0, Landroid/widget/NumberPickerZTE;->mLongPressUpdateInterval:J

    .line 311
    new-instance v14, Landroid/util/SparseArray;

    invoke-direct {v14}, Landroid/util/SparseArray;-><init>()V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPickerZTE;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 316
    const/4 v14, 0x3

    new-array v14, v14, [I

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPickerZTE;->mSelectorIndices:[I

    .line 336
    const/high16 v14, -0x80000000

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPickerZTE;->mInitialScrollOffset:I

    .line 437
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPickerZTE;->mScrollState:I

    .line 488
    const/4 v14, -0x1

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPickerZTE;->mLastHandledDownDpadKeyCode:I

    .line 581
    sget-object v14, Lcom/android/internal/R$styleable;->NumberPicker:[I

    const/4 v15, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move/from16 v2, p3

    invoke-virtual {v0, v1, v14, v2, v15}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v3

    .line 583
    .local v3, "attributesArray":Landroid/content/res/TypedArray;
    const/4 v14, 0x1

    const v15, 0x109006b

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v10

    .line 586
    .local v10, "layoutResId":I
    const v14, 0x109006b

    if-eq v10, v14, :cond_0

    const/4 v14, 0x1

    :goto_0
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    .line 588
    const/4 v14, 0x0

    const/4 v15, 0x0

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPickerZTE;->mSolidColor:I

    .line 590
    const/4 v14, 0x2

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPickerZTE;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    .line 592
    const/4 v14, 0x1

    const/high16 v15, 0x40000000    # 2.0f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPickerZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    float-to-int v8, v14

    .line 595
    .local v8, "defSelectionDividerHeight":I
    const/4 v14, 0x3

    invoke-virtual {v3, v14, v8}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPickerZTE;->mSelectionDividerHeight:I

    .line 598
    const/4 v14, 0x1

    const/high16 v15, 0x42400000    # 48.0f

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPickerZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v16

    invoke-static/range {v14 .. v16}, Landroid/util/TypedValue;->applyDimension(IFLandroid/util/DisplayMetrics;)F

    move-result v14

    float-to-int v7, v14

    .line 601
    .local v7, "defSelectionDividerDistance":I
    const/4 v14, 0x4

    invoke-virtual {v3, v14, v7}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPickerZTE;->mSelectionDividersDistance:I

    .line 604
    const/4 v14, 0x5

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPickerZTE;->mMinHeight:I

    .line 607
    const/4 v14, 0x6

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPickerZTE;->mMaxHeight:I

    .line 609
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPickerZTE;->mMinHeight:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPickerZTE;->mMaxHeight:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_1

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPickerZTE;->mMinHeight:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPickerZTE;->mMaxHeight:I

    if-le v14, v15, :cond_1

    .line 611
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "minHeight > maxHeight"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 586
    .end local v7    # "defSelectionDividerDistance":I
    .end local v8    # "defSelectionDividerHeight":I
    :cond_0
    const/4 v14, 0x0

    goto :goto_0

    .line 614
    .restart local v7    # "defSelectionDividerDistance":I
    .restart local v8    # "defSelectionDividerHeight":I
    :cond_1
    const/4 v14, 0x7

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPickerZTE;->mMinWidth:I

    .line 617
    const/16 v14, 0x8

    const/4 v15, -0x1

    invoke-virtual {v3, v14, v15}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPickerZTE;->mMaxWidth:I

    .line 619
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPickerZTE;->mMinWidth:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPickerZTE;->mMaxWidth:I

    const/4 v15, -0x1

    if-eq v14, v15, :cond_2

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPickerZTE;->mMinWidth:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPickerZTE;->mMaxWidth:I

    if-le v14, v15, :cond_2

    .line 621
    new-instance v14, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v15, "minWidth > maxWidth"

    invoke-direct {v14, v15}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v14

    .line 624
    :cond_2
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPickerZTE;->mMaxWidth:I

    const/4 v15, -0x1

    if-ne v14, v15, :cond_4

    const/4 v14, 0x1

    :goto_1
    move-object/from16 v0, p0

    iput-boolean v14, v0, Landroid/widget/NumberPickerZTE;->mComputeMaxWidth:Z

    .line 626
    const/16 v14, 0x9

    invoke-virtual {v3, v14}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v14

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    .line 629
    invoke-virtual {v3}, Landroid/content/res/TypedArray;->recycle()V

    .line 631
    new-instance v14, Landroid/widget/NumberPickerZTE$PressedStateHelper;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/NumberPickerZTE$PressedStateHelper;-><init>(Landroid/widget/NumberPickerZTE;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPickerZTE;->mPressedStateHelper:Landroid/widget/NumberPickerZTE$PressedStateHelper;

    .line 638
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v14, :cond_5

    const/4 v14, 0x1

    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/NumberPickerZTE;->setWillNotDraw(Z)V

    .line 640
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPickerZTE;->getContext()Landroid/content/Context;

    move-result-object v14

    const-string v15, "layout_inflater"

    invoke-virtual {v14, v15}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/LayoutInflater;

    .line 642
    .local v9, "inflater":Landroid/view/LayoutInflater;
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v9, v10, v0, v14}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 644
    new-instance v11, Landroid/widget/NumberPickerZTE$1;

    move-object/from16 v0, p0

    invoke-direct {v11, v0}, Landroid/widget/NumberPickerZTE$1;-><init>(Landroid/widget/NumberPickerZTE;)V

    .line 656
    .local v11, "onClickListener":Landroid/view/View$OnClickListener;
    new-instance v12, Landroid/widget/NumberPickerZTE$2;

    move-object/from16 v0, p0

    invoke-direct {v12, v0}, Landroid/widget/NumberPickerZTE$2;-><init>(Landroid/widget/NumberPickerZTE;)V

    .line 670
    .local v12, "onLongClickListener":Landroid/view/View$OnLongClickListener;
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v14, :cond_6

    .line 671
    const v14, 0x10202eb

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPickerZTE;->mIncrementButton:Landroid/widget/ImageButton;

    .line 672
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPickerZTE;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 673
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPickerZTE;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v12}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 679
    :goto_3
    move-object/from16 v0, p0

    iget-boolean v14, v0, Landroid/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v14, :cond_7

    .line 680
    const v14, 0x10202ed

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/ImageButton;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPickerZTE;->mDecrementButton:Landroid/widget/ImageButton;

    .line 681
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPickerZTE;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v11}, Landroid/widget/ImageButton;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 682
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPickerZTE;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v14, v12}, Landroid/widget/ImageButton;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 688
    :goto_4
    const v14, 0x10202ec

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v14

    check-cast v14, Landroid/widget/EditText;

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    .line 689
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    new-instance v15, Landroid/widget/NumberPickerZTE$3;

    move-object/from16 v0, p0

    invoke-direct {v15, v0}, Landroid/widget/NumberPickerZTE$3;-><init>(Landroid/widget/NumberPickerZTE;)V

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 699
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const/4 v15, 0x1

    new-array v15, v15, [Landroid/text/InputFilter;

    const/16 v16, 0x0

    new-instance v17, Landroid/widget/NumberPickerZTE$InputTextFilter;

    invoke-direct/range {v17 .. v18}, Landroid/widget/NumberPickerZTE$InputTextFilter;-><init>(Landroid/widget/NumberPickerZTE;)V

    aput-object v17, v15, v16

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 703
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const/4 v15, 0x2

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 704
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const/4 v15, 0x6

    invoke-virtual {v14, v15}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 707
    invoke-static/range {p1 .. p1}, Landroid/view/ViewConfiguration;->get(Landroid/content/Context;)Landroid/view/ViewConfiguration;

    move-result-object v6

    .line 708
    .local v6, "configuration":Landroid/view/ViewConfiguration;
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledTouchSlop()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPickerZTE;->mTouchSlop:I

    .line 709
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMinimumFlingVelocity()I

    move-result v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPickerZTE;->mMinimumFlingVelocity:I

    .line 710
    invoke-virtual {v6}, Landroid/view/ViewConfiguration;->getScaledMaximumFlingVelocity()I

    move-result v14

    div-int/lit8 v14, v14, 0x8

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPickerZTE;->mMaximumFlingVelocity:I

    .line 712
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getTextSize()F

    move-result v14

    float-to-int v14, v14

    move-object/from16 v0, p0

    iput v14, v0, Landroid/widget/NumberPickerZTE;->mTextSize:I

    .line 715
    new-instance v13, Landroid/graphics/Paint;

    invoke-direct {v13}, Landroid/graphics/Paint;-><init>()V

    .line 716
    .local v13, "paint":Landroid/graphics/Paint;
    const/4 v14, 0x1

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 717
    sget-object v14, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 718
    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPickerZTE;->mTextSize:I

    int-to-float v14, v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 719
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getTypeface()Landroid/graphics/Typeface;

    move-result-object v14

    invoke-virtual {v13, v14}, Landroid/graphics/Paint;->setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;

    .line 720
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v14}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v5

    .line 721
    .local v5, "colors":Landroid/content/res/ColorStateList;
    sget-object v14, Landroid/widget/NumberPickerZTE;->ENABLED_STATE_SET:[I

    const/4 v15, -0x1

    invoke-virtual {v5, v14, v15}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v4

    .line 722
    .local v4, "color":I
    invoke-virtual {v13, v4}, Landroid/graphics/Paint;->setColor(I)V

    .line 723
    move-object/from16 v0, p0

    iput-object v13, v0, Landroid/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    .line 726
    new-instance v14, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPickerZTE;->getContext()Landroid/content/Context;

    move-result-object v15

    const/16 v16, 0x0

    const/16 v17, 0x1

    invoke-direct/range {v14 .. v17}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;Z)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    .line 727
    new-instance v14, Landroid/widget/Scroller;

    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPickerZTE;->getContext()Landroid/content/Context;

    move-result-object v15

    new-instance v16, Landroid/view/animation/DecelerateInterpolator;

    const/high16 v17, 0x40200000    # 2.5f

    invoke-direct/range {v16 .. v17}, Landroid/view/animation/DecelerateInterpolator;-><init>(F)V

    invoke-direct/range {v14 .. v16}, Landroid/widget/Scroller;-><init>(Landroid/content/Context;Landroid/view/animation/Interpolator;)V

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPickerZTE;->mAdjustScroller:Landroid/widget/Scroller;

    .line 729
    invoke-direct/range {p0 .. p0}, Landroid/widget/NumberPickerZTE;->updateInputTextView()Z

    .line 732
    invoke-virtual/range {p0 .. p0}, Landroid/widget/NumberPickerZTE;->getImportantForAccessibility()I

    move-result v14

    if-nez v14, :cond_3

    .line 733
    const/4 v14, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v0, v14}, Landroid/widget/NumberPickerZTE;->setImportantForAccessibility(I)V

    .line 735
    :cond_3
    return-void

    .line 624
    .end local v4    # "color":I
    .end local v5    # "colors":Landroid/content/res/ColorStateList;
    .end local v6    # "configuration":Landroid/view/ViewConfiguration;
    .end local v9    # "inflater":Landroid/view/LayoutInflater;
    .end local v11    # "onClickListener":Landroid/view/View$OnClickListener;
    .end local v12    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    .end local v13    # "paint":Landroid/graphics/Paint;
    :cond_4
    const/4 v14, 0x0

    goto/16 :goto_1

    .line 638
    :cond_5
    const/4 v14, 0x0

    goto/16 :goto_2

    .line 675
    .restart local v9    # "inflater":Landroid/view/LayoutInflater;
    .restart local v11    # "onClickListener":Landroid/view/View$OnClickListener;
    .restart local v12    # "onLongClickListener":Landroid/view/View$OnLongClickListener;
    :cond_6
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPickerZTE;->mIncrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_3

    .line 684
    :cond_7
    const/4 v14, 0x0

    move-object/from16 v0, p0

    iput-object v14, v0, Landroid/widget/NumberPickerZTE;->mDecrementButton:Landroid/widget/ImageButton;

    goto/16 :goto_4
.end method

.method static synthetic access$000(Landroid/widget/NumberPickerZTE;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->hideSoftInput()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/NumberPickerZTE;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/NumberPickerZTE;Ljava/lang/String;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;
    .param p1, "x1"    # Ljava/lang/String;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/widget/NumberPickerZTE;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method static synthetic access$1100(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mMaxValue:I

    return v0
.end method

.method static synthetic access$1200(Landroid/widget/NumberPickerZTE;II)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;
    .param p1, "x1"    # I
    .param p2, "x2"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1, p2}, Landroid/widget/NumberPickerZTE;->postSetSelectionCommand(II)V

    return-void
.end method

.method static synthetic access$1300(Landroid/widget/NumberPickerZTE;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/widget/NumberPickerZTE;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1302(Landroid/widget/NumberPickerZTE;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Landroid/widget/NumberPickerZTE;->mIncrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1380(Landroid/widget/NumberPickerZTE;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/widget/NumberPickerZTE;->mIncrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Landroid/widget/NumberPickerZTE;->mIncrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1400(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I

    return v0
.end method

.method static synthetic access$1500(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$1600(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mBottom:I

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/NumberPickerZTE;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/widget/NumberPickerZTE;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1702(Landroid/widget/NumberPickerZTE;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Landroid/widget/NumberPickerZTE;->mDecrementVirtualButtonPressed:Z

    return p1
.end method

.method static synthetic access$1780(Landroid/widget/NumberPickerZTE;I)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;
    .param p1, "x1"    # I

    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/widget/NumberPickerZTE;->mDecrementVirtualButtonPressed:Z

    xor-int/2addr v0, p1

    int-to-byte v0, v0

    iput-boolean v0, p0, Landroid/widget/NumberPickerZTE;->mDecrementVirtualButtonPressed:Z

    return v0
.end method

.method static synthetic access$1800(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    return v0
.end method

.method static synthetic access$200(Landroid/widget/NumberPickerZTE;Z)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/widget/NumberPickerZTE;->changeValueByOne(Z)V

    return-void
.end method

.method static synthetic access$2000(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$2100(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mBottom:I

    return v0
.end method

.method static synthetic access$2200(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$2300(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$2400(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mBottom:I

    return v0
.end method

.method static synthetic access$2500(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$2600(Landroid/widget/NumberPickerZTE;)J
    .locals 2
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget-wide v0, p0, Landroid/widget/NumberPickerZTE;->mLongPressUpdateInterval:J

    return-wide v0
.end method

.method static synthetic access$2700(Landroid/widget/NumberPickerZTE;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->showSoftInput()V

    return-void
.end method

.method static synthetic access$2802(Landroid/widget/NumberPickerZTE;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;
    .param p1, "x1"    # Z

    .prologue
    .line 90
    iput-boolean p1, p0, Landroid/widget/NumberPickerZTE;->mIngonreMoveEvents:Z

    return p1
.end method

.method static synthetic access$2900(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mScrollX:I

    return v0
.end method

.method static synthetic access$300(Landroid/widget/NumberPickerZTE;ZJ)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;
    .param p1, "x1"    # Z
    .param p2, "x2"    # J

    .prologue
    .line 90
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/NumberPickerZTE;->postChangeCurrentByOneFromLongPress(ZJ)V

    return-void
.end method

.method static synthetic access$3000(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mScrollY:I

    return v0
.end method

.method static synthetic access$3100(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mScrollX:I

    return v0
.end method

.method static synthetic access$3200(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$3300(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mLeft:I

    return v0
.end method

.method static synthetic access$3400(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mScrollY:I

    return v0
.end method

.method static synthetic access$3500(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mBottom:I

    return v0
.end method

.method static synthetic access$3600(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mTop:I

    return v0
.end method

.method static synthetic access$3700(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mScrollX:I

    return v0
.end method

.method static synthetic access$3800(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mScrollY:I

    return v0
.end method

.method static synthetic access$3900(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mScrollX:I

    return v0
.end method

.method static synthetic access$400(Landroid/widget/NumberPickerZTE;Landroid/view/View;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/widget/NumberPickerZTE;->validateInputTextView(Landroid/view/View;)V

    return-void
.end method

.method static synthetic access$4000(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$4100(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mLeft:I

    return v0
.end method

.method static synthetic access$4200(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mSelectionDividerHeight:I

    return v0
.end method

.method static synthetic access$4300(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mScrollX:I

    return v0
.end method

.method static synthetic access$4400(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mScrollX:I

    return v0
.end method

.method static synthetic access$4500(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$4600(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mLeft:I

    return v0
.end method

.method static synthetic access$4700(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mScrollX:I

    return v0
.end method

.method static synthetic access$4800(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mScrollX:I

    return v0
.end method

.method static synthetic access$4900(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$5000(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mLeft:I

    return v0
.end method

.method static synthetic access$5100(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mScrollY:I

    return v0
.end method

.method static synthetic access$5200(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mBottom:I

    return v0
.end method

.method static synthetic access$5300(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mTop:I

    return v0
.end method

.method static synthetic access$5400(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$5500(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mBottom:I

    return v0
.end method

.method static synthetic access$5600(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$5700(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mBottom:I

    return v0
.end method

.method static synthetic access$5800(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$5900(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mRight:I

    return v0
.end method

.method static synthetic access$6000(Landroid/widget/NumberPickerZTE;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6100(Landroid/widget/NumberPickerZTE;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6200(Landroid/widget/NumberPickerZTE;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6300(Landroid/widget/NumberPickerZTE;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Landroid/widget/NumberPickerZTE;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6400(Landroid/widget/NumberPickerZTE;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6500(Landroid/widget/NumberPickerZTE;Landroid/graphics/Rect;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;
    .param p1, "x1"    # Landroid/graphics/Rect;

    .prologue
    .line 90
    invoke-virtual {p0, p1}, Landroid/widget/NumberPickerZTE;->isVisibleToUser(Landroid/graphics/Rect;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$6600(Landroid/widget/NumberPickerZTE;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$6700(Landroid/widget/NumberPickerZTE;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->isVisibleToUser()Z

    move-result v0

    return v0
.end method

.method static synthetic access$6800(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mValue:I

    return v0
.end method

.method static synthetic access$6900(Landroid/widget/NumberPickerZTE;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget-boolean v0, p0, Landroid/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    return v0
.end method

.method static synthetic access$7000(Landroid/widget/NumberPickerZTE;I)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;
    .param p1, "x1"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/widget/NumberPickerZTE;->getWrappedSelectorIndex(I)I

    move-result v0

    return v0
.end method

.method static synthetic access$7100(Landroid/widget/NumberPickerZTE;)I
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    return v0
.end method

.method static synthetic access$7200(Landroid/widget/NumberPickerZTE;I)Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;
    .param p1, "x1"    # I

    .prologue
    .line 90
    invoke-direct {p0, p1}, Landroid/widget/NumberPickerZTE;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic access$800()[C
    .locals 1

    .prologue
    .line 90
    sget-object v0, Landroid/widget/NumberPickerZTE;->DIGIT_CHARACTERS:[C

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/NumberPickerZTE;)[Ljava/lang/String;
    .locals 1
    .param p0, "x0"    # Landroid/widget/NumberPickerZTE;

    .prologue
    .line 90
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method private changeValueByOne(Z)V
    .locals 6
    .param p1, "increment"    # Z

    .prologue
    const/16 v5, 0x12c

    const/4 v2, 0x1

    const/4 v1, 0x0

    .line 1655
    iget-boolean v0, p0, Landroid/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-eqz v0, :cond_2

    .line 1656
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1657
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/widget/NumberPickerZTE;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 1658
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-direct {p0, v0}, Landroid/widget/NumberPickerZTE;->moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z

    .line 1660
    :cond_0
    iput v1, p0, Landroid/widget/NumberPickerZTE;->mPreviousScrollerY:I

    .line 1661
    if-eqz p1, :cond_1

    .line 1662
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mSelectorElementHeight:I

    neg-int v4, v2

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 1666
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->invalidate()V

    .line 1674
    :goto_1
    return-void

    .line 1664
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    iget v4, p0, Landroid/widget/NumberPickerZTE;->mSelectorElementHeight:I

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    goto :goto_0

    .line 1668
    :cond_2
    if-eqz p1, :cond_3

    .line 1669
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mValue:I

    add-int/lit8 v0, v0, 0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPickerZTE;->setValueInternal(IZ)V

    goto :goto_1

    .line 1671
    :cond_3
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mValue:I

    add-int/lit8 v0, v0, -0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPickerZTE;->setValueInternal(IZ)V

    goto :goto_1
.end method

.method private decrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1775
    array-length v2, p1

    add-int/lit8 v0, v2, -0x1

    .local v0, "i":I
    :goto_0
    if-lez v0, :cond_0

    .line 1776
    add-int/lit8 v2, v0, -0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1775
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 1778
    :cond_0
    const/4 v2, 0x1

    aget v2, p1, v2

    add-int/lit8 v1, v2, -0x1

    .line 1779
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Landroid/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    if-ge v1, v2, :cond_1

    .line 1780
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mMaxValue:I

    .line 1782
    :cond_1
    const/4 v2, 0x0

    aput v1, p1, v2

    .line 1783
    invoke-direct {p0, v1}, Landroid/widget/NumberPickerZTE;->ensureCachedScrollSelectorValue(I)V

    .line 1784
    return-void
.end method

.method private ensureCachedScrollSelectorValue(I)V
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1791
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    .line 1792
    .local v0, "cache":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Ljava/lang/String;>;"
    invoke-virtual {v0, p1}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 1793
    .local v2, "scrollSelectorValue":Ljava/lang/String;
    if-eqz v2, :cond_0

    .line 1807
    :goto_0
    return-void

    .line 1796
    :cond_0
    iget v3, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    if-lt p1, v3, :cond_1

    iget v3, p0, Landroid/widget/NumberPickerZTE;->mMaxValue:I

    if-le p1, v3, :cond_2

    .line 1797
    :cond_1
    const-string v2, ""

    .line 1806
    :goto_1
    invoke-virtual {v0, p1, v2}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    goto :goto_0

    .line 1799
    :cond_2
    iget-object v3, p0, Landroid/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v3, :cond_3

    .line 1800
    iget v3, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    sub-int v1, p1, v3

    .line 1801
    .local v1, "displayedValueIndex":I
    iget-object v3, p0, Landroid/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    aget-object v2, v3, v1

    .line 1802
    goto :goto_1

    .line 1803
    .end local v1    # "displayedValueIndex":I
    :cond_3
    invoke-direct {p0, p1}, Landroid/widget/NumberPickerZTE;->formatNumber(I)Ljava/lang/String;

    move-result-object v2

    goto :goto_1
.end method

.method private ensureScrollWheelAdjusted()Z
    .locals 6

    .prologue
    const/4 v1, 0x0

    .line 2099
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mInitialScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    sub-int v4, v0, v2

    .line 2100
    .local v4, "deltaY":I
    if-eqz v4, :cond_1

    .line 2101
    iput v1, p0, Landroid/widget/NumberPickerZTE;->mPreviousScrollerY:I

    .line 2102
    invoke-static {v4}, Ljava/lang/Math;->abs(I)I

    move-result v0

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mSelectorElementHeight:I

    div-int/lit8 v2, v2, 0x2

    if-le v0, v2, :cond_0

    .line 2103
    if-lez v4, :cond_2

    iget v0, p0, Landroid/widget/NumberPickerZTE;->mSelectorElementHeight:I

    neg-int v0, v0

    :goto_0
    add-int/2addr v4, v0

    .line 2105
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mAdjustScroller:Landroid/widget/Scroller;

    const/16 v5, 0x320

    move v2, v1

    move v3, v1

    invoke-virtual/range {v0 .. v5}, Landroid/widget/Scroller;->startScroll(IIIII)V

    .line 2106
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->invalidate()V

    .line 2107
    const/4 v1, 0x1

    .line 2109
    :cond_1
    return v1

    .line 2103
    :cond_2
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mSelectorElementHeight:I

    goto :goto_0
.end method

.method private fling(I)V
    .locals 9
    .param p1, "velocityY"    # I

    .prologue
    const v8, 0x7fffffff

    const/4 v1, 0x0

    .line 1731
    iput v1, p0, Landroid/widget/NumberPickerZTE;->mPreviousScrollerY:I

    .line 1733
    if-lez p1, :cond_0

    .line 1734
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v1

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    .line 1739
    :goto_0
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->invalidate()V

    .line 1740
    return-void

    .line 1736
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    move v2, v8

    move v3, v1

    move v4, p1

    move v5, v1

    move v6, v1

    move v7, v1

    invoke-virtual/range {v0 .. v8}, Landroid/widget/Scroller;->fling(IIIIIIII)V

    goto :goto_0
.end method

.method private formatNumber(I)Ljava/lang/String;
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1810
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mFormatter:Landroid/widget/NumberPickerZTE$Formatter;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mFormatter:Landroid/widget/NumberPickerZTE$Formatter;

    invoke-interface {v0, p1}, Landroid/widget/NumberPickerZTE$Formatter;->format(I)Ljava/lang/String;

    move-result-object v0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p1}, Landroid/widget/NumberPickerZTE;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private static formatNumberWithLocale(I)Ljava/lang/String;
    .locals 5
    .param p0, "value"    # I

    .prologue
    .line 2687
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    const-string v1, "%d"

    const/4 v2, 0x1

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v0, v1, v2}, Ljava/lang/String;->format(Ljava/util/Locale;Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method private getSelectedPos(Ljava/lang/String;)I
    .locals 2
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    .line 1967
    iget-object v1, p0, Landroid/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    if-nez v1, :cond_0

    .line 1969
    :try_start_0
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 1993
    :goto_0
    return v1

    .line 1974
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget-object v1, p0, Landroid/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    array-length v1, v1

    if-ge v0, v1, :cond_2

    .line 1976
    invoke-virtual {p1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object p1

    .line 1977
    iget-object v1, p0, Landroid/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1978
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    add-int/2addr v1, v0

    goto :goto_0

    .line 1974
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 1987
    :cond_2
    :try_start_1
    invoke-static {p1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_1
    .catch Ljava/lang/NumberFormatException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v1

    goto :goto_0

    .line 1970
    .end local v0    # "i":I
    :catch_0
    move-exception v1

    .line 1993
    :goto_2
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    goto :goto_0

    .line 1988
    .restart local v0    # "i":I
    :catch_1
    move-exception v1

    goto :goto_2
.end method

.method public static final getTwoDigitFormatter()Landroid/widget/NumberPickerZTE$Formatter;
    .locals 1

    .prologue
    .line 204
    sget-object v0, Landroid/widget/NumberPickerZTE;->sTwoDigitFormatter:Landroid/widget/NumberPickerZTE$TwoDigitFormatter;

    return-object v0
.end method

.method private getWrappedSelectorIndex(I)I
    .locals 4
    .param p1, "selectorIndex"    # I

    .prologue
    .line 1746
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mMaxValue:I

    if-le p1, v0, :cond_1

    .line 1747
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPickerZTE;->mMaxValue:I

    sub-int v1, p1, v1

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    add-int/2addr v0, v1

    add-int/lit8 p1, v0, -0x1

    .line 1751
    .end local p1    # "selectorIndex":I
    :cond_0
    :goto_0
    return p1

    .line 1748
    .restart local p1    # "selectorIndex":I
    :cond_1
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    if-ge p1, v0, :cond_0

    .line 1749
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v1, p1

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mMaxValue:I

    iget v3, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v2, v3

    rem-int/2addr v1, v2

    sub-int/2addr v0, v1

    add-int/lit8 p1, v0, 0x1

    goto :goto_0
.end method

.method private hideSoftInput()V
    .locals 3

    .prologue
    .line 1207
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1208
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    iget-object v1, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1209
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1210
    iget-boolean v1, p0, Landroid/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1211
    iget-object v1, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const/4 v2, 0x4

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1214
    :cond_0
    return-void
.end method

.method private incrementSelectorIndices([I)V
    .locals 3
    .param p1, "selectorIndices"    # [I

    .prologue
    .line 1759
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    if-ge v0, v2, :cond_0

    .line 1760
    add-int/lit8 v2, v0, 0x1

    aget v2, p1, v2

    aput v2, p1, v0

    .line 1759
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1762
    :cond_0
    array-length v2, p1

    add-int/lit8 v2, v2, -0x2

    aget v2, p1, v2

    add-int/lit8 v1, v2, 0x1

    .line 1763
    .local v1, "nextScrollSelectorIndex":I
    iget-boolean v2, p0, Landroid/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-eqz v2, :cond_1

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mMaxValue:I

    if-le v1, v2, :cond_1

    .line 1764
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    .line 1766
    :cond_1
    array-length v2, p1

    add-int/lit8 v2, v2, -0x1

    aput v1, p1, v2

    .line 1767
    invoke-direct {p0, v1}, Landroid/widget/NumberPickerZTE;->ensureCachedScrollSelectorValue(I)V

    .line 1768
    return-void
.end method

.method private initializeFadingEdges()V
    .locals 2

    .prologue
    .line 1694
    const/4 v0, 0x1

    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerZTE;->setVerticalFadingEdgeEnabled(Z)V

    .line 1695
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mBottom:I

    iget v1, p0, Landroid/widget/NumberPickerZTE;->mTop:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPickerZTE;->mTextSize:I

    sub-int/2addr v0, v1

    div-int/lit8 v0, v0, 0x2

    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerZTE;->setFadingEdgeLength(I)V

    .line 1696
    return-void
.end method

.method private initializeSelectorWheel()V
    .locals 7

    .prologue
    .line 1677
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->initializeSelectorWheelIndices()V

    .line 1678
    iget-object v1, p0, Landroid/widget/NumberPickerZTE;->mSelectorIndices:[I

    .line 1679
    .local v1, "selectorIndices":[I
    array-length v5, v1

    iget v6, p0, Landroid/widget/NumberPickerZTE;->mTextSize:I

    mul-int v4, v5, v6

    .line 1680
    .local v4, "totalTextHeight":I
    iget v5, p0, Landroid/widget/NumberPickerZTE;->mBottom:I

    iget v6, p0, Landroid/widget/NumberPickerZTE;->mTop:I

    sub-int/2addr v5, v6

    sub-int/2addr v5, v4

    int-to-float v3, v5

    .line 1681
    .local v3, "totalTextGapHeight":F
    array-length v5, v1

    int-to-float v2, v5

    .line 1682
    .local v2, "textGapCount":F
    div-float v5, v3, v2

    const/high16 v6, 0x3f000000    # 0.5f

    add-float/2addr v5, v6

    float-to-int v5, v5

    iput v5, p0, Landroid/widget/NumberPickerZTE;->mSelectorTextGapHeight:I

    .line 1683
    iget v5, p0, Landroid/widget/NumberPickerZTE;->mTextSize:I

    iget v6, p0, Landroid/widget/NumberPickerZTE;->mSelectorTextGapHeight:I

    add-int/2addr v5, v6

    iput v5, p0, Landroid/widget/NumberPickerZTE;->mSelectorElementHeight:I

    .line 1686
    iget-object v5, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v5}, Landroid/widget/EditText;->getBaseline()I

    move-result v5

    iget-object v6, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v6}, Landroid/widget/EditText;->getTop()I

    move-result v6

    add-int v0, v5, v6

    .line 1687
    .local v0, "editTextTextPosition":I
    iget v5, p0, Landroid/widget/NumberPickerZTE;->mSelectorElementHeight:I

    mul-int/lit8 v5, v5, 0x1

    sub-int v5, v0, v5

    iput v5, p0, Landroid/widget/NumberPickerZTE;->mInitialScrollOffset:I

    .line 1689
    iget v5, p0, Landroid/widget/NumberPickerZTE;->mInitialScrollOffset:I

    iput v5, p0, Landroid/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    .line 1690
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->updateInputTextView()Z

    .line 1691
    return-void
.end method

.method private initializeSelectorWheelIndices()V
    .locals 5

    .prologue
    .line 1607
    iget-object v4, p0, Landroid/widget/NumberPickerZTE;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v4}, Landroid/util/SparseArray;->clear()V

    .line 1608
    iget-object v3, p0, Landroid/widget/NumberPickerZTE;->mSelectorIndices:[I

    .line 1609
    .local v3, "selectorIndices":[I
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->getValue()I

    move-result v0

    .line 1610
    .local v0, "current":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    iget-object v4, p0, Landroid/widget/NumberPickerZTE;->mSelectorIndices:[I

    array-length v4, v4

    if-ge v1, v4, :cond_1

    .line 1611
    add-int/lit8 v4, v1, -0x1

    add-int v2, v0, v4

    .line 1612
    .local v2, "selectorIndex":I
    iget-boolean v4, p0, Landroid/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-eqz v4, :cond_0

    .line 1613
    invoke-direct {p0, v2}, Landroid/widget/NumberPickerZTE;->getWrappedSelectorIndex(I)I

    move-result v2

    .line 1615
    :cond_0
    aput v2, v3, v1

    .line 1616
    aget v4, v3, v1

    invoke-direct {p0, v4}, Landroid/widget/NumberPickerZTE;->ensureCachedScrollSelectorValue(I)V

    .line 1610
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1618
    .end local v2    # "selectorIndex":I
    :cond_1
    return-void
.end method

.method private makeMeasureSpec(II)I
    .locals 5
    .param p1, "measureSpec"    # I
    .param p2, "maxSize"    # I

    .prologue
    const/high16 v3, 0x40000000    # 2.0f

    .line 1565
    const/4 v2, -0x1

    if-ne p2, v2, :cond_0

    .line 1576
    .end local p1    # "measureSpec":I
    :goto_0
    :sswitch_0
    return p1

    .line 1568
    .restart local p1    # "measureSpec":I
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 1569
    .local v1, "size":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v0

    .line 1570
    .local v0, "mode":I
    sparse-switch v0, :sswitch_data_0

    .line 1578
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Unknown measure mode: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1574
    :sswitch_1
    invoke-static {v1, p2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-static {v2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1576
    :sswitch_2
    invoke-static {p2, v3}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p1

    goto :goto_0

    .line 1570
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_1
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_0
    .end sparse-switch
.end method

.method private moveToFinalScrollerPosition(Landroid/widget/Scroller;)Z
    .locals 7
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 793
    invoke-virtual {p1, v3}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 794
    invoke-virtual {p1}, Landroid/widget/Scroller;->getFinalY()I

    move-result v5

    invoke-virtual {p1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v6

    sub-int v0, v5, v6

    .line 795
    .local v0, "amountToScroll":I
    iget v5, p0, Landroid/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    add-int/2addr v5, v0

    iget v6, p0, Landroid/widget/NumberPickerZTE;->mSelectorElementHeight:I

    rem-int v1, v5, v6

    .line 796
    .local v1, "futureScrollOffset":I
    iget v5, p0, Landroid/widget/NumberPickerZTE;->mInitialScrollOffset:I

    sub-int v2, v5, v1

    .line 797
    .local v2, "overshootAdjustment":I
    if-eqz v2, :cond_2

    .line 798
    invoke-static {v2}, Ljava/lang/Math;->abs(I)I

    move-result v5

    iget v6, p0, Landroid/widget/NumberPickerZTE;->mSelectorElementHeight:I

    div-int/lit8 v6, v6, 0x2

    if-le v5, v6, :cond_0

    .line 799
    if-lez v2, :cond_1

    .line 800
    iget v5, p0, Landroid/widget/NumberPickerZTE;->mSelectorElementHeight:I

    sub-int/2addr v2, v5

    .line 805
    :cond_0
    :goto_0
    add-int/2addr v0, v2

    .line 806
    invoke-virtual {p0, v4, v0}, Landroid/widget/NumberPickerZTE;->scrollBy(II)V

    .line 809
    :goto_1
    return v3

    .line 802
    :cond_1
    iget v5, p0, Landroid/widget/NumberPickerZTE;->mSelectorElementHeight:I

    add-int/2addr v2, v5

    goto :goto_0

    :cond_2
    move v3, v4

    .line 809
    goto :goto_1
.end method

.method private notifyChange(II)V
    .locals 2
    .param p1, "previous"    # I
    .param p2, "current"    # I

    .prologue
    .line 1896
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mOnValueChangeListener:Landroid/widget/NumberPickerZTE$OnValueChangeListener;

    if-eqz v0, :cond_0

    .line 1897
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mOnValueChangeListener:Landroid/widget/NumberPickerZTE$OnValueChangeListener;

    iget v1, p0, Landroid/widget/NumberPickerZTE;->mValue:I

    invoke-interface {v0, p0, p1, v1}, Landroid/widget/NumberPickerZTE$OnValueChangeListener;->onValueChange(Landroid/widget/NumberPickerZTE;II)V

    .line 1899
    :cond_0
    return-void
.end method

.method private onScrollStateChange(I)V
    .locals 1
    .param p1, "scrollState"    # I

    .prologue
    .line 1718
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mScrollState:I

    if-ne v0, p1, :cond_1

    .line 1725
    :cond_0
    :goto_0
    return-void

    .line 1721
    :cond_1
    iput p1, p0, Landroid/widget/NumberPickerZTE;->mScrollState:I

    .line 1722
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mOnScrollListener:Landroid/widget/NumberPickerZTE$OnScrollListener;

    if-eqz v0, :cond_0

    .line 1723
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mOnScrollListener:Landroid/widget/NumberPickerZTE$OnScrollListener;

    invoke-interface {v0, p0, p1}, Landroid/widget/NumberPickerZTE$OnScrollListener;->onScrollStateChange(Landroid/widget/NumberPickerZTE;I)V

    goto :goto_0
.end method

.method private onScrollerFinished(Landroid/widget/Scroller;)V
    .locals 2
    .param p1, "scroller"    # Landroid/widget/Scroller;

    .prologue
    .line 1702
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    if-ne p1, v0, :cond_2

    .line 1703
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->ensureScrollWheelAdjusted()Z

    move-result v0

    if-nez v0, :cond_0

    .line 1704
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->updateInputTextView()Z

    .line 1706
    :cond_0
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/NumberPickerZTE;->onScrollStateChange(I)V

    .line 1712
    :cond_1
    :goto_0
    return-void

    .line 1708
    :cond_2
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mScrollState:I

    const/4 v1, 0x1

    if-eq v0, v1, :cond_1

    .line 1709
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->updateInputTextView()Z

    goto :goto_0
.end method

.method private postBeginSoftInputOnLongPressCommand()V
    .locals 3

    .prologue
    .line 1930
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    if-nez v0, :cond_0

    .line 1931
    new-instance v0, Landroid/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;-><init>(Landroid/widget/NumberPickerZTE;)V

    iput-object v0, p0, Landroid/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    .line 1935
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v1

    int-to-long v1, v1

    invoke-virtual {p0, v0, v1, v2}, Landroid/widget/NumberPickerZTE;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1936
    return-void

    .line 1933
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postChangeCurrentByOneFromLongPress(ZJ)V
    .locals 1
    .param p1, "increment"    # Z
    .param p2, "delayMillis"    # J

    .prologue
    .line 1907
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    if-nez v0, :cond_0

    .line 1908
    new-instance v0, Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;-><init>(Landroid/widget/NumberPickerZTE;)V

    iput-object v0, p0, Landroid/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    .line 1912
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    # invokes: Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->setStep(Z)V
    invoke-static {v0, p1}, Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;->access$500(Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;Z)V

    .line 1913
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0, p2, p3}, Landroid/widget/NumberPickerZTE;->postDelayed(Ljava/lang/Runnable;J)Z

    .line 1914
    return-void

    .line 1910
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private postSetSelectionCommand(II)V
    .locals 1
    .param p1, "selectionStart"    # I
    .param p2, "selectionEnd"    # I

    .prologue
    .line 2001
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mSetSelectionCommand:Landroid/widget/NumberPickerZTE$SetSelectionCommand;

    if-nez v0, :cond_0

    .line 2002
    new-instance v0, Landroid/widget/NumberPickerZTE$SetSelectionCommand;

    invoke-direct {v0, p0}, Landroid/widget/NumberPickerZTE$SetSelectionCommand;-><init>(Landroid/widget/NumberPickerZTE;)V

    iput-object v0, p0, Landroid/widget/NumberPickerZTE;->mSetSelectionCommand:Landroid/widget/NumberPickerZTE$SetSelectionCommand;

    .line 2006
    :goto_0
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mSetSelectionCommand:Landroid/widget/NumberPickerZTE$SetSelectionCommand;

    # setter for: Landroid/widget/NumberPickerZTE$SetSelectionCommand;->mSelectionStart:I
    invoke-static {v0, p1}, Landroid/widget/NumberPickerZTE$SetSelectionCommand;->access$602(Landroid/widget/NumberPickerZTE$SetSelectionCommand;I)I

    .line 2007
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mSetSelectionCommand:Landroid/widget/NumberPickerZTE$SetSelectionCommand;

    # setter for: Landroid/widget/NumberPickerZTE$SetSelectionCommand;->mSelectionEnd:I
    invoke-static {v0, p2}, Landroid/widget/NumberPickerZTE$SetSelectionCommand;->access$702(Landroid/widget/NumberPickerZTE$SetSelectionCommand;I)I

    .line 2008
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mSetSelectionCommand:Landroid/widget/NumberPickerZTE$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerZTE;->post(Ljava/lang/Runnable;)Z

    .line 2009
    return-void

    .line 2004
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mSetSelectionCommand:Landroid/widget/NumberPickerZTE$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    goto :goto_0
.end method

.method private removeAllCallbacks()V
    .locals 1

    .prologue
    .line 1951
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1952
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1954
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mSetSelectionCommand:Landroid/widget/NumberPickerZTE$SetSelectionCommand;

    if-eqz v0, :cond_1

    .line 1955
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mSetSelectionCommand:Landroid/widget/NumberPickerZTE$SetSelectionCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1957
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_2

    .line 1958
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1960
    :cond_2
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mPressedStateHelper:Landroid/widget/NumberPickerZTE$PressedStateHelper;

    invoke-virtual {v0}, Landroid/widget/NumberPickerZTE$PressedStateHelper;->cancel()V

    .line 1961
    return-void
.end method

.method private removeBeginSoftInputCommand()V
    .locals 1

    .prologue
    .line 1942
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    if-eqz v0, :cond_0

    .line 1943
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mBeginSoftInputOnLongPressCommand:Landroid/widget/NumberPickerZTE$BeginSoftInputOnLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1945
    :cond_0
    return-void
.end method

.method private removeChangeCurrentByOneFromLongPress()V
    .locals 1

    .prologue
    .line 1920
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    if-eqz v0, :cond_0

    .line 1921
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mChangeCurrentByOneFromLongPressCommand:Landroid/widget/NumberPickerZTE$ChangeCurrentByOneFromLongPressCommand;

    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerZTE;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 1923
    :cond_0
    return-void
.end method

.method private resolveSizeAndStateRespectingMinSize(III)I
    .locals 2
    .param p1, "minSize"    # I
    .param p2, "measuredSize"    # I
    .param p3, "measureSpec"    # I

    .prologue
    .line 1594
    const/4 v1, -0x1

    if-eq p1, v1, :cond_0

    .line 1595
    invoke-static {p1, p2}, Ljava/lang/Math;->max(II)I

    move-result v0

    .line 1596
    .local v0, "desiredWidth":I
    const/4 v1, 0x0

    invoke-static {v0, p3, v1}, Landroid/widget/NumberPickerZTE;->resolveSizeAndState(III)I

    move-result p2

    .line 1598
    .end local v0    # "desiredWidth":I
    .end local p2    # "measuredSize":I
    :cond_0
    return p2
.end method

.method private setValueInternal(IZ)V
    .locals 2
    .param p1, "current"    # I
    .param p2, "notifyChange"    # Z

    .prologue
    .line 1627
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mValue:I

    if-ne v1, p1, :cond_0

    .line 1645
    :goto_0
    return-void

    .line 1631
    :cond_0
    iget-boolean v1, p0, Landroid/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-eqz v1, :cond_2

    .line 1632
    invoke-direct {p0, p1}, Landroid/widget/NumberPickerZTE;->getWrappedSelectorIndex(I)I

    move-result p1

    .line 1637
    :goto_1
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mValue:I

    .line 1638
    .local v0, "previous":I
    iput p1, p0, Landroid/widget/NumberPickerZTE;->mValue:I

    .line 1639
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->updateInputTextView()Z

    .line 1640
    if-eqz p2, :cond_1

    .line 1641
    invoke-direct {p0, v0, p1}, Landroid/widget/NumberPickerZTE;->notifyChange(II)V

    .line 1643
    :cond_1
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->initializeSelectorWheelIndices()V

    .line 1644
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->invalidate()V

    goto :goto_0

    .line 1634
    .end local v0    # "previous":I
    :cond_2
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->max(II)I

    move-result p1

    .line 1635
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mMaxValue:I

    invoke-static {p1, v1}, Ljava/lang/Math;->min(II)I

    move-result p1

    goto :goto_1
.end method

.method private showSoftInput()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1193
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1194
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_1

    .line 1195
    iget-boolean v1, p0, Landroid/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 1196
    iget-object v1, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 1198
    :cond_0
    iget-object v1, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->requestFocus()Z

    .line 1199
    iget-object v1, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->showSoftInput(Landroid/view/View;I)Z

    .line 1201
    :cond_1
    return-void
.end method

.method private tryComputeMaxWidth()V
    .locals 10

    .prologue
    .line 1220
    iget-boolean v8, p0, Landroid/widget/NumberPickerZTE;->mComputeMaxWidth:Z

    if-nez v8, :cond_1

    .line 1257
    :cond_0
    :goto_0
    return-void

    .line 1223
    :cond_1
    const/4 v4, 0x0

    .line 1224
    .local v4, "maxTextWidth":I
    iget-object v8, p0, Landroid/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    if-nez v8, :cond_6

    .line 1225
    const/4 v3, 0x0

    .line 1226
    .local v3, "maxDigitWidth":F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    const/16 v8, 0x9

    if-gt v2, v8, :cond_3

    .line 1227
    iget-object v8, p0, Landroid/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-static {v2}, Landroid/widget/NumberPickerZTE;->formatNumberWithLocale(I)Ljava/lang/String;

    move-result-object v9

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v1

    .line 1228
    .local v1, "digitWidth":F
    cmpl-float v8, v1, v3

    if-lez v8, :cond_2

    .line 1229
    move v3, v1

    .line 1226
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1232
    .end local v1    # "digitWidth":F
    :cond_3
    const/4 v5, 0x0

    .line 1233
    .local v5, "numberOfDigits":I
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mMaxValue:I

    .line 1234
    .local v0, "current":I
    :goto_2
    if-lez v0, :cond_4

    .line 1235
    add-int/lit8 v5, v5, 0x1

    .line 1236
    div-int/lit8 v0, v0, 0xa

    goto :goto_2

    .line 1238
    :cond_4
    int-to-float v8, v5

    mul-float/2addr v8, v3

    float-to-int v4, v8

    .line 1248
    .end local v0    # "current":I
    .end local v3    # "maxDigitWidth":F
    .end local v5    # "numberOfDigits":I
    :cond_5
    iget-object v8, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getPaddingLeft()I

    move-result v8

    iget-object v9, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v9}, Landroid/widget/EditText;->getPaddingRight()I

    move-result v9

    add-int/2addr v8, v9

    add-int/2addr v4, v8

    .line 1249
    iget v8, p0, Landroid/widget/NumberPickerZTE;->mMaxWidth:I

    if-eq v8, v4, :cond_0

    .line 1250
    iget v8, p0, Landroid/widget/NumberPickerZTE;->mMinWidth:I

    if-le v4, v8, :cond_8

    .line 1251
    iput v4, p0, Landroid/widget/NumberPickerZTE;->mMaxWidth:I

    .line 1255
    :goto_3
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->invalidate()V

    goto :goto_0

    .line 1240
    .end local v2    # "i":I
    :cond_6
    iget-object v8, p0, Landroid/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    array-length v7, v8

    .line 1241
    .local v7, "valueCount":I
    const/4 v2, 0x0

    .restart local v2    # "i":I
    :goto_4
    if-ge v2, v7, :cond_5

    .line 1242
    iget-object v8, p0, Landroid/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    iget-object v9, p0, Landroid/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    aget-object v9, v9, v2

    invoke-virtual {v8, v9}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;)F

    move-result v6

    .line 1243
    .local v6, "textWidth":F
    int-to-float v8, v4

    cmpl-float v8, v6, v8

    if-lez v8, :cond_7

    .line 1244
    float-to-int v4, v6

    .line 1241
    :cond_7
    add-int/lit8 v2, v2, 0x1

    goto :goto_4

    .line 1253
    .end local v6    # "textWidth":F
    .end local v7    # "valueCount":I
    :cond_8
    iget v8, p0, Landroid/widget/NumberPickerZTE;->mMinWidth:I

    iput v8, p0, Landroid/widget/NumberPickerZTE;->mMaxWidth:I

    goto :goto_3
.end method

.method private updateInputTextView()Z
    .locals 5

    .prologue
    const/4 v1, 0x1

    .line 1875
    iget v2, p0, Landroid/widget/NumberPickerZTE;->INPUT_DISABLE_FLAG:I

    if-ne v2, v1, :cond_0

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mValue:I

    iget v3, p0, Landroid/widget/NumberPickerZTE;->displayYear:I

    if-lt v2, v3, :cond_0

    .line 1877
    iget-object v2, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const-string v3, ""

    invoke-virtual {v2, v3}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 1888
    :goto_0
    return v1

    .line 1881
    :cond_0
    iget-object v2, p0, Landroid/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    if-nez v2, :cond_1

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mValue:I

    invoke-direct {p0, v2}, Landroid/widget/NumberPickerZTE;->formatNumber(I)Ljava/lang/String;

    move-result-object v0

    .line 1883
    .local v0, "text":Ljava/lang/String;
    :goto_1
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    iget-object v2, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v0, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_2

    .line 1884
    iget-object v2, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v2, v0}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1881
    .end local v0    # "text":Ljava/lang/String;
    :cond_1
    iget-object v2, p0, Landroid/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    iget v3, p0, Landroid/widget/NumberPickerZTE;->mValue:I

    iget v4, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v3, v4

    aget-object v0, v2, v3

    goto :goto_1

    .line 1888
    .restart local v0    # "text":Ljava/lang/String;
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private validateInputTextView(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 1814
    check-cast p1, Landroid/widget/TextView;

    .end local p1    # "v":Landroid/view/View;
    invoke-virtual {p1}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    .line 1815
    .local v1, "str":Ljava/lang/String;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1817
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->updateInputTextView()Z

    .line 1823
    :goto_0
    return-void

    .line 1820
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v2}, Landroid/widget/NumberPickerZTE;->getSelectedPos(Ljava/lang/String;)I

    move-result v0

    .line 1821
    .local v0, "current":I
    const/4 v2, 0x1

    invoke-direct {p0, v0, v2}, Landroid/widget/NumberPickerZTE;->setValueInternal(IZ)V

    goto :goto_0
.end method


# virtual methods
.method public computeScroll()V
    .locals 4

    .prologue
    .line 1049
    iget-object v1, p0, Landroid/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    .line 1050
    .local v1, "scroller":Landroid/widget/Scroller;
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1051
    iget-object v1, p0, Landroid/widget/NumberPickerZTE;->mAdjustScroller:Landroid/widget/Scroller;

    .line 1052
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1068
    :goto_0
    return-void

    .line 1056
    :cond_0
    invoke-virtual {v1}, Landroid/widget/Scroller;->computeScrollOffset()Z

    .line 1057
    invoke-virtual {v1}, Landroid/widget/Scroller;->getCurrY()I

    move-result v0

    .line 1058
    .local v0, "currentScrollerY":I
    iget v2, p0, Landroid/widget/NumberPickerZTE;->mPreviousScrollerY:I

    if-nez v2, :cond_1

    .line 1059
    invoke-virtual {v1}, Landroid/widget/Scroller;->getStartY()I

    move-result v2

    iput v2, p0, Landroid/widget/NumberPickerZTE;->mPreviousScrollerY:I

    .line 1061
    :cond_1
    const/4 v2, 0x0

    iget v3, p0, Landroid/widget/NumberPickerZTE;->mPreviousScrollerY:I

    sub-int v3, v0, v3

    invoke-virtual {p0, v2, v3}, Landroid/widget/NumberPickerZTE;->scrollBy(II)V

    .line 1062
    iput v0, p0, Landroid/widget/NumberPickerZTE;->mPreviousScrollerY:I

    .line 1063
    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1064
    invoke-direct {p0, v1}, Landroid/widget/NumberPickerZTE;->onScrollerFinished(Landroid/widget/Scroller;)V

    goto :goto_0

    .line 1066
    :cond_2
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->invalidate()V

    goto :goto_0
.end method

.method protected dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 10
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v9, 0x0

    const/16 v8, 0x100

    const/16 v7, 0x80

    const/16 v6, 0x40

    const/4 v5, -0x1

    .line 1000
    iget-boolean v4, p0, Landroid/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 1001
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v4

    .line 1044
    :goto_0
    return v4

    .line 1003
    :cond_0
    iget-object v4, p0, Landroid/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 1004
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v1, v4

    .line 1006
    .local v1, "eventY":I
    iget v4, p0, Landroid/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    if-ge v1, v4, :cond_2

    .line 1007
    const/4 v2, 0x3

    .line 1013
    .local v2, "hoveredVirtualViewId":I
    :goto_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 1014
    .local v0, "action":I
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v3

    check-cast v3, Landroid/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;

    .line 1016
    .local v3, "provider":Landroid/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;
    packed-switch v0, :pswitch_data_0

    .line 1044
    .end local v0    # "action":I
    .end local v1    # "eventY":I
    .end local v2    # "hoveredVirtualViewId":I
    .end local v3    # "provider":Landroid/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;
    :cond_1
    :goto_2
    :pswitch_0
    const/4 v4, 0x0

    goto :goto_0

    .line 1008
    .restart local v1    # "eventY":I
    :cond_2
    iget v4, p0, Landroid/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I

    if-le v1, v4, :cond_3

    .line 1009
    const/4 v2, 0x1

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_1

    .line 1011
    .end local v2    # "hoveredVirtualViewId":I
    :cond_3
    const/4 v2, 0x2

    .restart local v2    # "hoveredVirtualViewId":I
    goto :goto_1

    .line 1018
    .restart local v0    # "action":I
    .restart local v3    # "provider":Landroid/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;
    :pswitch_1
    invoke-virtual {v3, v2, v7}, Landroid/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1020
    iput v2, p0, Landroid/widget/NumberPickerZTE;->mLastHoveredChildVirtualViewId:I

    .line 1021
    invoke-virtual {v3, v2, v6, v9}, Landroid/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 1025
    :pswitch_2
    iget v4, p0, Landroid/widget/NumberPickerZTE;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v2, :cond_1

    iget v4, p0, Landroid/widget/NumberPickerZTE;->mLastHoveredChildVirtualViewId:I

    if-eq v4, v5, :cond_1

    .line 1027
    iget v4, p0, Landroid/widget/NumberPickerZTE;->mLastHoveredChildVirtualViewId:I

    invoke-virtual {v3, v4, v8}, Landroid/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1030
    invoke-virtual {v3, v2, v7}, Landroid/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1032
    iput v2, p0, Landroid/widget/NumberPickerZTE;->mLastHoveredChildVirtualViewId:I

    .line 1033
    invoke-virtual {v3, v2, v6, v9}, Landroid/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->performAction(IILandroid/os/Bundle;)Z

    goto :goto_2

    .line 1038
    :pswitch_3
    invoke-virtual {v3, v2, v8}, Landroid/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;->sendAccessibilityEventForVirtualView(II)V

    .line 1040
    iput v5, p0, Landroid/widget/NumberPickerZTE;->mLastHoveredChildVirtualViewId:I

    goto :goto_2

    .line 1016
    nop

    :pswitch_data_0
    .packed-switch 0x7
        :pswitch_2
        :pswitch_0
        :pswitch_1
        :pswitch_3
    .end packed-switch
.end method

.method public dispatchKeyEvent(Landroid/view/KeyEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/16 v4, 0x14

    const/4 v2, 0x1

    .line 951
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getKeyCode()I

    move-result v0

    .line 952
    .local v0, "keyCode":I
    sparse-switch v0, :sswitch_data_0

    .line 983
    :cond_0
    :goto_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchKeyEvent(Landroid/view/KeyEvent;)Z

    move-result v2

    :cond_1
    :goto_1
    return v2

    .line 955
    :sswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->removeAllCallbacks()V

    goto :goto_0

    .line 959
    :sswitch_1
    iget-boolean v1, p0, Landroid/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-eqz v1, :cond_0

    .line 962
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getAction()I

    move-result v1

    packed-switch v1, :pswitch_data_0

    goto :goto_0

    .line 964
    :pswitch_0
    iget-boolean v1, p0, Landroid/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-ne v0, v4, :cond_3

    :cond_2
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->getValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->getMaxValue()I

    move-result v3

    if-ge v1, v3, :cond_0

    .line 966
    :goto_2
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->requestFocus()Z

    .line 967
    iput v0, p0, Landroid/widget/NumberPickerZTE;->mLastHandledDownDpadKeyCode:I

    .line 968
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->removeAllCallbacks()V

    .line 969
    iget-object v1, p0, Landroid/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v1}, Landroid/widget/Scroller;->isFinished()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 970
    if-ne v0, v4, :cond_4

    move v1, v2

    :goto_3
    invoke-direct {p0, v1}, Landroid/widget/NumberPickerZTE;->changeValueByOne(Z)V

    goto :goto_1

    .line 964
    :cond_3
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->getValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->getMinValue()I

    move-result v3

    if-le v1, v3, :cond_0

    goto :goto_2

    .line 970
    :cond_4
    const/4 v1, 0x0

    goto :goto_3

    .line 976
    :pswitch_1
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mLastHandledDownDpadKeyCode:I

    if-ne v1, v0, :cond_0

    .line 977
    const/4 v1, -0x1

    iput v1, p0, Landroid/widget/NumberPickerZTE;->mLastHandledDownDpadKeyCode:I

    goto :goto_1

    .line 952
    nop

    :sswitch_data_0
    .sparse-switch
        0x13 -> :sswitch_1
        0x14 -> :sswitch_1
        0x17 -> :sswitch_0
        0x42 -> :sswitch_0
    .end sparse-switch

    .line 962
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 939
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 940
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 946
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 943
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->removeAllCallbacks()V

    goto :goto_0

    .line 940
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public dispatchTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 2
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 988
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 989
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 995
    :goto_0
    :pswitch_0
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->dispatchTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    return v1

    .line 992
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->removeAllCallbacks()V

    goto :goto_0

    .line 989
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;
    .locals 1

    .prologue
    .line 1548
    iget-boolean v0, p0, Landroid/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1549
    invoke-super {p0}, Landroid/widget/LinearLayout;->getAccessibilityNodeProvider()Landroid/view/accessibility/AccessibilityNodeProvider;

    move-result-object v0

    .line 1554
    :goto_0
    return-object v0

    .line 1551
    :cond_0
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mAccessibilityNodeProvider:Landroid/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;

    if-nez v0, :cond_1

    .line 1552
    new-instance v0, Landroid/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;

    invoke-direct {v0, p0}, Landroid/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;-><init>(Landroid/widget/NumberPickerZTE;)V

    iput-object v0, p0, Landroid/widget/NumberPickerZTE;->mAccessibilityNodeProvider:Landroid/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;

    .line 1554
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mAccessibilityNodeProvider:Landroid/widget/NumberPickerZTE$AccessibilityNodeProviderImpl;

    goto :goto_0
.end method

.method protected getBottomFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1436
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getDisplayedValues()[Ljava/lang/String;
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    return-object v0
.end method

.method public getMaxValue()I
    .locals 1

    .prologue
    .line 1362
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mMaxValue:I

    return v0
.end method

.method public getMinValue()I
    .locals 1

    .prologue
    .line 1324
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    return v0
.end method

.method public getSolidColor()I
    .locals 1

    .prologue
    .line 1116
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mSolidColor:I

    return v0
.end method

.method protected getTopFadingEdgeStrength()F
    .locals 1

    .prologue
    .line 1431
    const v0, 0x3f666666    # 0.9f

    return v0
.end method

.method public getValue()I
    .locals 1

    .prologue
    .line 1315
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mValue:I

    return v0
.end method

.method public getWrapSelectorWheel()Z
    .locals 1

    .prologue
    .line 1268
    iget-boolean v0, p0, Landroid/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    return v0
.end method

.method protected onDetachedFromWindow()V
    .locals 0

    .prologue
    .line 1441
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->removeAllCallbacks()V

    .line 1442
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 17
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1446
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v12, :cond_1

    .line 1447
    invoke-super/range {p0 .. p1}, Landroid/widget/LinearLayout;->onDraw(Landroid/graphics/Canvas;)V

    .line 1535
    :cond_0
    :goto_0
    return-void

    .line 1450
    :cond_1
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPickerZTE;->mRight:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPickerZTE;->mLeft:I

    sub-int/2addr v12, v13

    div-int/lit8 v12, v12, 0x2

    int-to-float v10, v12

    .line 1451
    .local v10, "x":F
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    int-to-float v11, v12

    .line 1454
    .local v11, "y":F
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_3

    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPickerZTE;->mScrollState:I

    if-nez v12, :cond_3

    .line 1456
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/NumberPickerZTE;->mDecrementVirtualButtonPressed:Z

    if-eqz v12, :cond_2

    .line 1457
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v13, Landroid/widget/NumberPickerZTE;->PRESSED_STATE_SET:[I

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1458
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    const/4 v14, 0x0

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPickerZTE;->mRight:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1459
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1461
    :cond_2
    move-object/from16 v0, p0

    iget-boolean v12, v0, Landroid/widget/NumberPickerZTE;->mIncrementVirtualButtonPressed:Z

    if-eqz v12, :cond_3

    .line 1462
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    sget-object v13, Landroid/widget/NumberPickerZTE;->PRESSED_STATE_SET:[I

    invoke-virtual {v12, v13}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 1463
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPickerZTE;->mRight:I

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/NumberPickerZTE;->mBottom:I

    move/from16 v16, v0

    invoke-virtual/range {v12 .. v16}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1465
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPickerZTE;->mVirtualButtonPressedDrawable:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1470
    :cond_3
    move-object/from16 v0, p0

    iget-object v6, v0, Landroid/widget/NumberPickerZTE;->mSelectorIndices:[I

    .line 1472
    .local v6, "selectorIndices":[I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPickerZTE;->INPUT_DISABLE_FLAG:I

    if-nez v12, :cond_6

    .line 1473
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_1
    array-length v12, v6

    if-ge v3, v12, :cond_7

    .line 1474
    aget v5, v6, v3

    .line 1475
    .local v5, "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPickerZTE;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1481
    .local v4, "scrollSelectorValue":Ljava/lang/String;
    const/4 v12, 0x1

    if-eq v3, v12, :cond_5

    .line 1482
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPickerZTE;->mSelectedSize:F

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1483
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1488
    :cond_4
    :goto_2
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 1473
    add-int/lit8 v3, v3, 0x1

    goto :goto_1

    .line 1484
    :cond_5
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_4

    .line 1485
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPickerZTE;->mInputSize:F

    invoke-virtual {v12, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1486
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    goto :goto_2

    .line 1491
    .end local v3    # "i":I
    .end local v4    # "scrollSelectorValue":Ljava/lang/String;
    .end local v5    # "selectorIndex":I
    :cond_6
    const-string v12, "guojingdong"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "ondraw disable mvalue-"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPickerZTE;->mValue:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1492
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPickerZTE;->mValue:I

    move-object/from16 v0, p0

    iget v13, v0, Landroid/widget/NumberPickerZTE;->displayYear:I

    if-lt v12, v13, :cond_8

    .line 1494
    const-string v12, "guojingdong"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "ondraw mvalue="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPickerZTE;->mValue:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string v14, " displayYear= "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPickerZTE;->displayYear:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1495
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPickerZTE;->displayYear:I

    invoke-static {v12}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v9

    .line 1496
    .local v9, "txt":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v9, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1497
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 1498
    const-string v12, "--"

    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v10, v11, v13}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1521
    .end local v9    # "txt":Ljava/lang/String;
    :cond_7
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPickerZTE;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    if-eqz v12, :cond_0

    .line 1523
    move-object/from16 v0, p0

    iget v8, v0, Landroid/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    .line 1524
    .local v8, "topOfTopDivider":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPickerZTE;->mSelectionDividerHeight:I

    add-int v2, v8, v12

    .line 1526
    .local v2, "bottomOfTopDivider":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPickerZTE;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPickerZTE;->mRight:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPickerZTE;->mdividerWith:I

    add-int/2addr v14, v15

    invoke-virtual {v12, v13, v8, v14, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1527
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPickerZTE;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1530
    move-object/from16 v0, p0

    iget v1, v0, Landroid/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I

    .line 1531
    .local v1, "bottomOfBottomDivider":I
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPickerZTE;->mSelectionDividerHeight:I

    sub-int v7, v1, v12

    .line 1532
    .local v7, "topOfBottomDivider":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPickerZTE;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPickerZTE;->mRight:I

    move-object/from16 v0, p0

    iget v15, v0, Landroid/widget/NumberPickerZTE;->mdividerWith:I

    add-int/2addr v14, v15

    invoke-virtual {v12, v13, v7, v14, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1533
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPickerZTE;->mSelectionDivider:Landroid/graphics/drawable/Drawable;

    move-object/from16 v0, p1

    invoke-virtual {v12, v0}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    goto/16 :goto_0

    .line 1500
    .end local v1    # "bottomOfBottomDivider":I
    .end local v2    # "bottomOfTopDivider":I
    .end local v7    # "topOfBottomDivider":I
    .end local v8    # "topOfTopDivider":I
    :cond_8
    const-string v12, "guojingdong"

    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "ondraw disable input normal mvalue="

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    move-object/from16 v0, p0

    iget v14, v0, Landroid/widget/NumberPickerZTE;->mValue:I

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-static {v12, v13}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1501
    const/4 v3, 0x0

    .restart local v3    # "i":I
    :goto_3
    array-length v12, v6

    if-ge v3, v12, :cond_7

    .line 1502
    aget v5, v6, v3

    .line 1503
    .restart local v5    # "selectorIndex":I
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPickerZTE;->mSelectorIndexToStringCache:Landroid/util/SparseArray;

    invoke-virtual {v12, v5}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 1509
    .restart local v4    # "scrollSelectorValue":Ljava/lang/String;
    const/4 v12, 0x1

    if-ne v3, v12, :cond_9

    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v12}, Landroid/widget/EditText;->getVisibility()I

    move-result v12

    if-eqz v12, :cond_a

    .line 1510
    :cond_9
    move-object/from16 v0, p0

    iget-object v12, v0, Landroid/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    move-object/from16 v0, p1

    invoke-virtual {v0, v4, v10, v11, v12}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 1512
    :cond_a
    move-object/from16 v0, p0

    iget v12, v0, Landroid/widget/NumberPickerZTE;->mSelectorElementHeight:I

    int-to-float v12, v12

    add-float/2addr v11, v12

    .line 1501
    add-int/lit8 v3, v3, 0x1

    goto :goto_3
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 1539
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1540
    const-class v0, Landroid/widget/NumberPickerZTE;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1541
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollable(Z)V

    .line 1542
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    iget v1, p0, Landroid/widget/NumberPickerZTE;->mValue:I

    add-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPickerZTE;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setScrollY(I)V

    .line 1543
    iget v0, p0, Landroid/widget/NumberPickerZTE;->mMaxValue:I

    iget v1, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v0, v1

    iget v1, p0, Landroid/widget/NumberPickerZTE;->mSelectorElementHeight:I

    mul-int/2addr v0, v1

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setMaxScrollY(I)V

    .line 1544
    return-void
.end method

.method public onInterceptTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 5
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 814
    iget-boolean v3, p0, Landroid/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-eqz v3, :cond_0

    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->isEnabled()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move v1, v2

    .line 862
    :goto_0
    return v1

    .line 817
    :cond_1
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 818
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    move v1, v2

    .line 862
    goto :goto_0

    .line 820
    :pswitch_0
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->removeAllCallbacks()V

    .line 821
    iget-object v3, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const/4 v4, 0x4

    invoke-virtual {v3, v4}, Landroid/widget/EditText;->setVisibility(I)V

    .line 822
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v3

    iput v3, p0, Landroid/widget/NumberPickerZTE;->mLastDownEventY:F

    iput v3, p0, Landroid/widget/NumberPickerZTE;->mLastDownOrMoveEventY:F

    .line 823
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v3

    iput-wide v3, p0, Landroid/widget/NumberPickerZTE;->mLastDownEventTime:J

    .line 824
    iput-boolean v2, p0, Landroid/widget/NumberPickerZTE;->mIngonreMoveEvents:Z

    .line 825
    iput-boolean v2, p0, Landroid/widget/NumberPickerZTE;->mShowSoftInputOnTap:Z

    .line 827
    iget v3, p0, Landroid/widget/NumberPickerZTE;->mLastDownEventY:F

    iget v4, p0, Landroid/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_3

    .line 828
    iget v3, p0, Landroid/widget/NumberPickerZTE;->mScrollState:I

    if-nez v3, :cond_2

    .line 829
    iget-object v3, p0, Landroid/widget/NumberPickerZTE;->mPressedStateHelper:Landroid/widget/NumberPickerZTE$PressedStateHelper;

    const/4 v4, 0x2

    invoke-virtual {v3, v4}, Landroid/widget/NumberPickerZTE$PressedStateHelper;->buttonPressDelayed(I)V

    .line 839
    :cond_2
    :goto_1
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    invoke-interface {v3, v1}, Landroid/view/ViewParent;->requestDisallowInterceptTouchEvent(Z)V

    .line 840
    iget-object v3, p0, Landroid/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_4

    .line 841
    iget-object v3, p0, Landroid/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 842
    iget-object v3, p0, Landroid/widget/NumberPickerZTE;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 843
    invoke-direct {p0, v2}, Landroid/widget/NumberPickerZTE;->onScrollStateChange(I)V

    goto :goto_0

    .line 832
    :cond_3
    iget v3, p0, Landroid/widget/NumberPickerZTE;->mLastDownEventY:F

    iget v4, p0, Landroid/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I

    int-to-float v4, v4

    cmpl-float v3, v3, v4

    if-lez v3, :cond_2

    .line 833
    iget v3, p0, Landroid/widget/NumberPickerZTE;->mScrollState:I

    if-nez v3, :cond_2

    .line 834
    iget-object v3, p0, Landroid/widget/NumberPickerZTE;->mPressedStateHelper:Landroid/widget/NumberPickerZTE$PressedStateHelper;

    invoke-virtual {v3, v1}, Landroid/widget/NumberPickerZTE$PressedStateHelper;->buttonPressDelayed(I)V

    goto :goto_1

    .line 844
    :cond_4
    iget-object v3, p0, Landroid/widget/NumberPickerZTE;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v3}, Landroid/widget/Scroller;->isFinished()Z

    move-result v3

    if-nez v3, :cond_5

    .line 845
    iget-object v2, p0, Landroid/widget/NumberPickerZTE;->mFlingScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    .line 846
    iget-object v2, p0, Landroid/widget/NumberPickerZTE;->mAdjustScroller:Landroid/widget/Scroller;

    invoke-virtual {v2, v1}, Landroid/widget/Scroller;->forceFinished(Z)V

    goto :goto_0

    .line 847
    :cond_5
    iget v3, p0, Landroid/widget/NumberPickerZTE;->mLastDownEventY:F

    iget v4, p0, Landroid/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    int-to-float v4, v4

    cmpg-float v3, v3, v4

    if-gez v3, :cond_6

    .line 848
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->hideSoftInput()V

    .line 849
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v3

    int-to-long v3, v3

    invoke-direct {p0, v2, v3, v4}, Landroid/widget/NumberPickerZTE;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 851
    :cond_6
    iget v2, p0, Landroid/widget/NumberPickerZTE;->mLastDownEventY:F

    iget v3, p0, Landroid/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I

    int-to-float v3, v3

    cmpl-float v2, v2, v3

    if-lez v2, :cond_7

    .line 852
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->hideSoftInput()V

    .line 853
    invoke-static {}, Landroid/view/ViewConfiguration;->getLongPressTimeout()I

    move-result v2

    int-to-long v2, v2

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/NumberPickerZTE;->postChangeCurrentByOneFromLongPress(ZJ)V

    goto/16 :goto_0

    .line 856
    :cond_7
    iput-boolean v1, p0, Landroid/widget/NumberPickerZTE;->mShowSoftInputOnTap:Z

    .line 857
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->postBeginSoftInputOnLongPressCommand()V

    goto/16 :goto_0

    .line 818
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
    .end packed-switch
.end method

.method protected onLayout(ZIIII)V
    .locals 10
    .param p1, "changed"    # Z
    .param p2, "left"    # I
    .param p3, "top"    # I
    .param p4, "right"    # I
    .param p5, "bottom"    # I

    .prologue
    .line 739
    iget-boolean v8, p0, Landroid/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v8, :cond_1

    .line 740
    invoke-super/range {p0 .. p5}, Landroid/widget/LinearLayout;->onLayout(ZIIII)V

    .line 764
    :cond_0
    :goto_0
    return-void

    .line 743
    :cond_1
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->getMeasuredWidth()I

    move-result v7

    .line 744
    .local v7, "msrdWdth":I
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->getMeasuredHeight()I

    move-result v6

    .line 747
    .local v6, "msrdHght":I
    iget-object v8, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredWidth()I

    move-result v3

    .line 748
    .local v3, "inptTxtMsrdWdth":I
    iget-object v8, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8}, Landroid/widget/EditText;->getMeasuredHeight()I

    move-result v2

    .line 749
    .local v2, "inptTxtMsrdHght":I
    sub-int v8, v7, v3

    div-int/lit8 v1, v8, 0x2

    .line 750
    .local v1, "inptTxtLeft":I
    sub-int v8, v6, v2

    div-int/lit8 v5, v8, 0x2

    .line 751
    .local v5, "inptTxtTop":I
    add-int v4, v1, v3

    .line 752
    .local v4, "inptTxtRight":I
    add-int v0, v5, v2

    .line 753
    .local v0, "inptTxtBottom":I
    iget-object v8, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v8, v1, v5, v4, v0}, Landroid/widget/EditText;->layout(IIII)V

    .line 755
    if-eqz p1, :cond_0

    .line 757
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->initializeSelectorWheel()V

    .line 758
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->initializeFadingEdges()V

    .line 759
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->getHeight()I

    move-result v8

    iget v9, p0, Landroid/widget/NumberPickerZTE;->mSelectionDividersDistance:I

    sub-int/2addr v8, v9

    div-int/lit8 v8, v8, 0x2

    iget v9, p0, Landroid/widget/NumberPickerZTE;->mSelectionDividerHeight:I

    sub-int/2addr v8, v9

    iput v8, p0, Landroid/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    .line 761
    iget v8, p0, Landroid/widget/NumberPickerZTE;->mTopSelectionDividerTop:I

    iget v9, p0, Landroid/widget/NumberPickerZTE;->mSelectionDividerHeight:I

    mul-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    iget v9, p0, Landroid/widget/NumberPickerZTE;->mSelectionDividersDistance:I

    add-int/2addr v8, v9

    iput v8, p0, Landroid/widget/NumberPickerZTE;->mBottomSelectionDividerBottom:I

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 6
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 768
    iget-boolean v4, p0, Landroid/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v4, :cond_0

    .line 769
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 782
    :goto_0
    return-void

    .line 773
    :cond_0
    iget v4, p0, Landroid/widget/NumberPickerZTE;->mMaxWidth:I

    invoke-direct {p0, p1, v4}, Landroid/widget/NumberPickerZTE;->makeMeasureSpec(II)I

    move-result v2

    .line 774
    .local v2, "newWidthMeasureSpec":I
    iget v4, p0, Landroid/widget/NumberPickerZTE;->mMaxHeight:I

    invoke-direct {p0, p2, v4}, Landroid/widget/NumberPickerZTE;->makeMeasureSpec(II)I

    move-result v1

    .line 775
    .local v1, "newHeightMeasureSpec":I
    invoke-super {p0, v2, v1}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 777
    iget v4, p0, Landroid/widget/NumberPickerZTE;->mMinWidth:I

    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->getMeasuredWidth()I

    move-result v5

    invoke-direct {p0, v4, v5, p1}, Landroid/widget/NumberPickerZTE;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v3

    .line 779
    .local v3, "widthSize":I
    iget v4, p0, Landroid/widget/NumberPickerZTE;->mMinHeight:I

    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->getMeasuredHeight()I

    move-result v5

    invoke-direct {p0, v4, v5, p2}, Landroid/widget/NumberPickerZTE;->resolveSizeAndStateRespectingMinSize(III)I

    move-result v0

    .line 781
    .local v0, "heightSize":I
    invoke-virtual {p0, v3, v0}, Landroid/widget/NumberPickerZTE;->setMeasuredDimension(II)V

    goto :goto_0
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 867
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->isEnabled()Z

    move-result v10

    if-eqz v10, :cond_0

    iget-boolean v10, p0, Landroid/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v10, :cond_1

    .line 868
    :cond_0
    const/4 v10, 0x0

    .line 934
    :goto_0
    return v10

    .line 870
    :cond_1
    iget-object v10, p0, Landroid/widget/NumberPickerZTE;->mVelocityTracker:Landroid/view/VelocityTracker;

    if-nez v10, :cond_2

    .line 871
    invoke-static {}, Landroid/view/VelocityTracker;->obtain()Landroid/view/VelocityTracker;

    move-result-object v10

    iput-object v10, p0, Landroid/widget/NumberPickerZTE;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 873
    :cond_2
    iget-object v10, p0, Landroid/widget/NumberPickerZTE;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10, p1}, Landroid/view/VelocityTracker;->addMovement(Landroid/view/MotionEvent;)V

    .line 874
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getActionMasked()I

    move-result v0

    .line 875
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 934
    :cond_3
    :goto_1
    const/4 v10, 0x1

    goto :goto_0

    .line 877
    :pswitch_0
    iget-boolean v10, p0, Landroid/widget/NumberPickerZTE;->mIngonreMoveEvents:Z

    if-nez v10, :cond_3

    .line 880
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v1

    .line 881
    .local v1, "currentMoveY":F
    iget v10, p0, Landroid/widget/NumberPickerZTE;->mScrollState:I

    const/4 v11, 0x1

    if-eq v10, v11, :cond_5

    .line 882
    iget v10, p0, Landroid/widget/NumberPickerZTE;->mLastDownEventY:F

    sub-float v10, v1, v10

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v2, v10

    .line 883
    .local v2, "deltaDownY":I
    iget v10, p0, Landroid/widget/NumberPickerZTE;->mTouchSlop:I

    if-le v2, v10, :cond_4

    .line 884
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->removeAllCallbacks()V

    .line 885
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/widget/NumberPickerZTE;->onScrollStateChange(I)V

    .line 892
    .end local v2    # "deltaDownY":I
    :cond_4
    :goto_2
    iput v1, p0, Landroid/widget/NumberPickerZTE;->mLastDownOrMoveEventY:F

    goto :goto_1

    .line 888
    :cond_5
    iget v10, p0, Landroid/widget/NumberPickerZTE;->mLastDownOrMoveEventY:F

    sub-float v10, v1, v10

    float-to-int v3, v10

    .line 889
    .local v3, "deltaMoveY":I
    const/4 v10, 0x0

    invoke-virtual {p0, v10, v3}, Landroid/widget/NumberPickerZTE;->scrollBy(II)V

    .line 890
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->invalidate()V

    goto :goto_2

    .line 895
    .end local v1    # "currentMoveY":F
    .end local v3    # "deltaMoveY":I
    :pswitch_1
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->removeBeginSoftInputCommand()V

    .line 896
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->removeChangeCurrentByOneFromLongPress()V

    .line 897
    iget-object v10, p0, Landroid/widget/NumberPickerZTE;->mPressedStateHelper:Landroid/widget/NumberPickerZTE$PressedStateHelper;

    invoke-virtual {v10}, Landroid/widget/NumberPickerZTE$PressedStateHelper;->cancel()V

    .line 898
    iget-object v9, p0, Landroid/widget/NumberPickerZTE;->mVelocityTracker:Landroid/view/VelocityTracker;

    .line 899
    .local v9, "velocityTracker":Landroid/view/VelocityTracker;
    const/16 v10, 0x3e8

    iget v11, p0, Landroid/widget/NumberPickerZTE;->mMaximumFlingVelocity:I

    int-to-float v11, v11

    invoke-virtual {v9, v10, v11}, Landroid/view/VelocityTracker;->computeCurrentVelocity(IF)V

    .line 900
    invoke-virtual {v9}, Landroid/view/VelocityTracker;->getYVelocity()F

    move-result v10

    float-to-int v7, v10

    .line 901
    .local v7, "initialVelocity":I
    invoke-static {v7}, Ljava/lang/Math;->abs(I)I

    move-result v10

    iget v11, p0, Landroid/widget/NumberPickerZTE;->mMinimumFlingVelocity:I

    if-le v10, v11, :cond_6

    .line 902
    invoke-direct {p0, v7}, Landroid/widget/NumberPickerZTE;->fling(I)V

    .line 903
    const/4 v10, 0x2

    invoke-direct {p0, v10}, Landroid/widget/NumberPickerZTE;->onScrollStateChange(I)V

    .line 930
    :goto_3
    iget-object v10, p0, Landroid/widget/NumberPickerZTE;->mVelocityTracker:Landroid/view/VelocityTracker;

    invoke-virtual {v10}, Landroid/view/VelocityTracker;->recycle()V

    .line 931
    const/4 v10, 0x0

    iput-object v10, p0, Landroid/widget/NumberPickerZTE;->mVelocityTracker:Landroid/view/VelocityTracker;

    goto :goto_1

    .line 905
    :cond_6
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v10

    float-to-int v6, v10

    .line 906
    .local v6, "eventY":I
    int-to-float v10, v6

    iget v11, p0, Landroid/widget/NumberPickerZTE;->mLastDownEventY:F

    sub-float/2addr v10, v11

    invoke-static {v10}, Ljava/lang/Math;->abs(F)F

    move-result v10

    float-to-int v3, v10

    .line 907
    .restart local v3    # "deltaMoveY":I
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getEventTime()J

    move-result-wide v10

    iget-wide v12, p0, Landroid/widget/NumberPickerZTE;->mLastDownEventTime:J

    sub-long v4, v10, v12

    .line 908
    .local v4, "deltaTime":J
    iget v10, p0, Landroid/widget/NumberPickerZTE;->mTouchSlop:I

    if-gt v3, v10, :cond_a

    invoke-static {}, Landroid/view/ViewConfiguration;->getTapTimeout()I

    move-result v10

    int-to-long v10, v10

    cmp-long v10, v4, v10

    if-gez v10, :cond_a

    .line 909
    iget-boolean v10, p0, Landroid/widget/NumberPickerZTE;->mShowSoftInputOnTap:Z

    if-eqz v10, :cond_8

    .line 910
    const/4 v10, 0x0

    iput-boolean v10, p0, Landroid/widget/NumberPickerZTE;->mShowSoftInputOnTap:Z

    .line 911
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->showSoftInput()V

    .line 928
    :cond_7
    :goto_4
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Landroid/widget/NumberPickerZTE;->onScrollStateChange(I)V

    goto :goto_3

    .line 913
    :cond_8
    iget v10, p0, Landroid/widget/NumberPickerZTE;->mSelectorElementHeight:I

    div-int v10, v6, v10

    add-int/lit8 v8, v10, -0x1

    .line 915
    .local v8, "selectorIndexOffset":I
    if-lez v8, :cond_9

    .line 916
    const/4 v10, 0x1

    invoke-direct {p0, v10}, Landroid/widget/NumberPickerZTE;->changeValueByOne(Z)V

    .line 917
    iget-object v10, p0, Landroid/widget/NumberPickerZTE;->mPressedStateHelper:Landroid/widget/NumberPickerZTE$PressedStateHelper;

    const/4 v11, 0x1

    invoke-virtual {v10, v11}, Landroid/widget/NumberPickerZTE$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 919
    :cond_9
    if-gez v8, :cond_7

    .line 920
    const/4 v10, 0x0

    invoke-direct {p0, v10}, Landroid/widget/NumberPickerZTE;->changeValueByOne(Z)V

    .line 921
    iget-object v10, p0, Landroid/widget/NumberPickerZTE;->mPressedStateHelper:Landroid/widget/NumberPickerZTE$PressedStateHelper;

    const/4 v11, 0x2

    invoke-virtual {v10, v11}, Landroid/widget/NumberPickerZTE$PressedStateHelper;->buttonTapped(I)V

    goto :goto_4

    .line 926
    .end local v8    # "selectorIndexOffset":I
    :cond_a
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->ensureScrollWheelAdjusted()Z

    goto :goto_4

    .line 875
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method

.method public scrollBy(II)V
    .locals 4
    .param p1, "x"    # I
    .param p2, "y"    # I

    .prologue
    const/4 v3, 0x1

    .line 1084
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mSelectorIndices:[I

    .line 1085
    .local v0, "selectorIndices":[I
    iget-boolean v1, p0, Landroid/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-nez v1, :cond_1

    if-lez p2, :cond_1

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    if-gt v1, v2, :cond_1

    .line 1087
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    .line 1112
    :cond_0
    :goto_0
    return-void

    .line 1090
    :cond_1
    iget-boolean v1, p0, Landroid/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-nez v1, :cond_2

    if-gez p2, :cond_2

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mMaxValue:I

    if-lt v1, v2, :cond_2

    .line 1092
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    goto :goto_0

    .line 1095
    :cond_2
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    add-int/2addr v1, p2

    iput v1, p0, Landroid/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    .line 1096
    :cond_3
    :goto_1
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mSelectorTextGapHeight:I

    if-le v1, v2, :cond_4

    .line 1097
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mSelectorElementHeight:I

    sub-int/2addr v1, v2

    iput v1, p0, Landroid/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    .line 1098
    invoke-direct {p0, v0}, Landroid/widget/NumberPickerZTE;->decrementSelectorIndices([I)V

    .line 1099
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Landroid/widget/NumberPickerZTE;->setValueInternal(IZ)V

    .line 1100
    iget-boolean v1, p0, Landroid/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-nez v1, :cond_3

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    if-gt v1, v2, :cond_3

    .line 1101
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    goto :goto_1

    .line 1104
    :cond_4
    :goto_2
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mInitialScrollOffset:I

    sub-int/2addr v1, v2

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mSelectorTextGapHeight:I

    neg-int v2, v2

    if-ge v1, v2, :cond_0

    .line 1105
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mSelectorElementHeight:I

    add-int/2addr v1, v2

    iput v1, p0, Landroid/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    .line 1106
    invoke-direct {p0, v0}, Landroid/widget/NumberPickerZTE;->incrementSelectorIndices([I)V

    .line 1107
    aget v1, v0, v3

    invoke-direct {p0, v1, v3}, Landroid/widget/NumberPickerZTE;->setValueInternal(IZ)V

    .line 1108
    iget-boolean v1, p0, Landroid/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-nez v1, :cond_4

    aget v1, v0, v3

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mMaxValue:I

    if-lt v1, v2, :cond_4

    .line 1109
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mInitialScrollOffset:I

    iput v1, p0, Landroid/widget/NumberPickerZTE;->mCurrentScrollOffset:I

    goto :goto_2
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 1847
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, p1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1848
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setTextColor(I)V

    .line 1849
    return-void
.end method

.method public setDisableInput(I)V
    .locals 1
    .param p1, "year"    # I

    .prologue
    .line 1838
    const/4 v0, 0x1

    iput v0, p0, Landroid/widget/NumberPickerZTE;->INPUT_DISABLE_FLAG:I

    .line 1840
    iput p1, p0, Landroid/widget/NumberPickerZTE;->displayYear:I

    .line 1841
    iput p1, p0, Landroid/widget/NumberPickerZTE;->mValue:I

    .line 1842
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->invalidate()V

    .line 1843
    invoke-virtual {p0, p1}, Landroid/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 1844
    return-void
.end method

.method public setDisplayedValues([Ljava/lang/String;)V
    .locals 2
    .param p1, "displayedValues"    # [Ljava/lang/String;

    .prologue
    .line 1413
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    if-ne v0, p1, :cond_0

    .line 1427
    :goto_0
    return-void

    .line 1416
    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    .line 1417
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mDisplayedValues:[Ljava/lang/String;

    if-eqz v0, :cond_1

    .line 1419
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const v1, 0x80001

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    .line 1424
    :goto_1
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->updateInputTextView()Z

    .line 1425
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->initializeSelectorWheelIndices()V

    .line 1426
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->tryComputeMaxWidth()V

    goto :goto_0

    .line 1422
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setRawInputType(I)V

    goto :goto_1
.end method

.method public setDividerWidth(I)V
    .locals 0
    .param p1, "width"    # I

    .prologue
    .line 1853
    iput p1, p0, Landroid/widget/NumberPickerZTE;->mdividerWith:I

    .line 1854
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 1072
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->setEnabled(Z)V

    .line 1073
    iget-boolean v0, p0, Landroid/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v0, :cond_0

    .line 1074
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mIncrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1076
    :cond_0
    iget-boolean v0, p0, Landroid/widget/NumberPickerZTE;->mHasSelectorWheel:Z

    if-nez v0, :cond_1

    .line 1077
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mDecrementButton:Landroid/widget/ImageButton;

    invoke-virtual {v0, p1}, Landroid/widget/ImageButton;->setEnabled(Z)V

    .line 1079
    :cond_1
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0, p1}, Landroid/widget/EditText;->setEnabled(Z)V

    .line 1080
    return-void
.end method

.method public setFormatter(Landroid/widget/NumberPickerZTE$Formatter;)V
    .locals 1
    .param p1, "formatter"    # Landroid/widget/NumberPickerZTE$Formatter;

    .prologue
    .line 1149
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mFormatter:Landroid/widget/NumberPickerZTE$Formatter;

    if-ne p1, v0, :cond_0

    .line 1155
    :goto_0
    return-void

    .line 1152
    :cond_0
    iput-object p1, p0, Landroid/widget/NumberPickerZTE;->mFormatter:Landroid/widget/NumberPickerZTE$Formatter;

    .line 1153
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->initializeSelectorWheelIndices()V

    .line 1154
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->updateInputTextView()Z

    goto :goto_0
.end method

.method public setInputSize(I)V
    .locals 2
    .param p1, "size"    # I

    .prologue
    .line 1857
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1858
    iget-object v0, p0, Landroid/widget/NumberPickerZTE;->mInputText:Landroid/widget/EditText;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v0

    iput v0, p0, Landroid/widget/NumberPickerZTE;->mInputSize:F

    .line 1859
    return-void
.end method

.method public setMaxValue(I)V
    .locals 3
    .param p1, "maxValue"    # I

    .prologue
    .line 1376
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mMaxValue:I

    if-ne v1, p1, :cond_0

    .line 1392
    :goto_0
    return-void

    .line 1379
    :cond_0
    if-gez p1, :cond_1

    .line 1380
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "maxValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1382
    :cond_1
    iput p1, p0, Landroid/widget/NumberPickerZTE;->mMaxValue:I

    .line 1383
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mValue:I

    if-ge v1, v2, :cond_2

    .line 1384
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mMaxValue:I

    iput v1, p0, Landroid/widget/NumberPickerZTE;->mValue:I

    .line 1386
    :cond_2
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPickerZTE;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1387
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    .line 1388
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->initializeSelectorWheelIndices()V

    .line 1389
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->updateInputTextView()Z

    .line 1390
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->tryComputeMaxWidth()V

    .line 1391
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->invalidate()V

    goto :goto_0

    .line 1386
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setMinValue(I)V
    .locals 3
    .param p1, "minValue"    # I

    .prologue
    .line 1338
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    if-ne v1, p1, :cond_0

    .line 1354
    :goto_0
    return-void

    .line 1341
    :cond_0
    if-gez p1, :cond_1

    .line 1342
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "minValue must be >= 0"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1344
    :cond_1
    iput p1, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    .line 1345
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mValue:I

    if-le v1, v2, :cond_2

    .line 1346
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    iput v1, p0, Landroid/widget/NumberPickerZTE;->mValue:I

    .line 1348
    :cond_2
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPickerZTE;->mSelectorIndices:[I

    array-length v2, v2

    if-le v1, v2, :cond_3

    const/4 v0, 0x1

    .line 1349
    .local v0, "wrapSelectorWheel":Z
    :goto_1
    invoke-virtual {p0, v0}, Landroid/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    .line 1350
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->initializeSelectorWheelIndices()V

    .line 1351
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->updateInputTextView()Z

    .line 1352
    invoke-direct {p0}, Landroid/widget/NumberPickerZTE;->tryComputeMaxWidth()V

    .line 1353
    invoke-virtual {p0}, Landroid/widget/NumberPickerZTE;->invalidate()V

    goto :goto_0

    .line 1348
    .end local v0    # "wrapSelectorWheel":Z
    :cond_3
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public setOnLongPressUpdateInterval(J)V
    .locals 0
    .param p1, "intervalMillis"    # J

    .prologue
    .line 1306
    iput-wide p1, p0, Landroid/widget/NumberPickerZTE;->mLongPressUpdateInterval:J

    .line 1307
    return-void
.end method

.method public setOnScrollListener(Landroid/widget/NumberPickerZTE$OnScrollListener;)V
    .locals 0
    .param p1, "onScrollListener"    # Landroid/widget/NumberPickerZTE$OnScrollListener;

    .prologue
    .line 1134
    iput-object p1, p0, Landroid/widget/NumberPickerZTE;->mOnScrollListener:Landroid/widget/NumberPickerZTE$OnScrollListener;

    .line 1135
    return-void
.end method

.method public setOnValueChangedListener(Landroid/widget/NumberPickerZTE$OnValueChangeListener;)V
    .locals 0
    .param p1, "onValueChangedListener"    # Landroid/widget/NumberPickerZTE$OnValueChangeListener;

    .prologue
    .line 1125
    iput-object p1, p0, Landroid/widget/NumberPickerZTE;->mOnValueChangeListener:Landroid/widget/NumberPickerZTE$OnValueChangeListener;

    .line 1126
    return-void
.end method

.method public setSelectorSize(I)V
    .locals 3
    .param p1, "size"    # I

    .prologue
    .line 1862
    new-instance v0, Landroid/widget/EditText;

    iget-object v1, p0, Landroid/widget/NumberPickerZTE;->mContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 1863
    .local v0, "temp":Landroid/widget/EditText;
    int-to-float v1, p1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 1864
    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    iput v1, p0, Landroid/widget/NumberPickerZTE;->mSelectedSize:F

    .line 1865
    iget-object v1, p0, Landroid/widget/NumberPickerZTE;->mSelectorWheelPaint:Landroid/graphics/Paint;

    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v2

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1866
    return-void
.end method

.method public setValue(I)V
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 1186
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/NumberPickerZTE;->setValueInternal(IZ)V

    .line 1187
    return-void
.end method

.method public setWrapSelectorWheel(Z)V
    .locals 3
    .param p1, "wrapSelectorWheel"    # Z

    .prologue
    .line 1289
    iget v1, p0, Landroid/widget/NumberPickerZTE;->mMaxValue:I

    iget v2, p0, Landroid/widget/NumberPickerZTE;->mMinValue:I

    sub-int/2addr v1, v2

    iget-object v2, p0, Landroid/widget/NumberPickerZTE;->mSelectorIndices:[I

    array-length v2, v2

    if-lt v1, v2, :cond_2

    const/4 v0, 0x1

    .line 1290
    .local v0, "wrappingAllowed":Z
    :goto_0
    if-eqz p1, :cond_0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean v1, p0, Landroid/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    if-eq p1, v1, :cond_1

    .line 1291
    iput-boolean p1, p0, Landroid/widget/NumberPickerZTE;->mWrapSelectorWheel:Z

    .line 1293
    :cond_1
    return-void

    .line 1289
    .end local v0    # "wrappingAllowed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method
