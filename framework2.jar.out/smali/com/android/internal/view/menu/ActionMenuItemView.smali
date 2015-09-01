.class public Lcom/android/internal/view/menu/ActionMenuItemView;
.super Landroid/widget/TextView;
.source "ActionMenuItemView.java"

# interfaces
.implements Lcom/android/internal/view/menu/MenuView$ItemView;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/View$OnLongClickListener;
.implements Lcom/android/internal/view/menu/ActionMenuView$ActionMenuChildView;


# static fields
.field private static final MAX_ICON_SIZE:I = 0x20

.field private static final TAG:Ljava/lang/String; = "ActionMenuItemView"


# instance fields
.field private isMenuItemPortrait:Z

.field private isSplitActionBar:Z

.field private isZteApp:Z

.field private mAllowTextWithIcon:Z

.field private mDrawableAtTop:Z

.field private mDrawablePadding:F

.field private mExpandedFormat:Z

.field private mIcon:Landroid/graphics/drawable/Drawable;

.field private mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

.field private mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

.field private mMaxIconSize:I

.field private mMinWidth:I

.field private mSavedPaddingLeft:I

.field private mTitle:Ljava/lang/CharSequence;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 73
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 74
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .parameter "context"
    .parameter "attrs"

    .prologue
    .line 77
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 78
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 9
    .parameter "context"
    .parameter "attrs"
    .parameter "defStyle"

    .prologue
    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 81
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/TextView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 63
    const/high16 v7, 0x4080

    iput v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mDrawablePadding:F

    .line 64
    iput-boolean v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mDrawableAtTop:Z

    .line 68
    iput-boolean v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->isSplitActionBar:Z

    .line 69
    iput-boolean v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->isZteApp:Z

    .line 70
    iput-boolean v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->isMenuItemPortrait:Z

    .line 82
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 83
    .local v3, res:Landroid/content/res/Resources;
    const v7, 0x1110048

    invoke-virtual {v3, v7}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 85
    sget-object v7, Lcom/android/internal/R$styleable;->ActionMenuItemView:[I

    invoke-virtual {p1, p2, v7, v5, v5}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 87
    .local v0, a:Landroid/content/res/TypedArray;
    invoke-virtual {v0, v5, v5}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v7

    iput v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    .line 89
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 91
    invoke-virtual {v3}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v7

    iget v2, v7, Landroid/util/DisplayMetrics;->density:F

    .line 92
    .local v2, density:F
    const/high16 v7, 0x4200

    mul-float/2addr v7, v2

    const/high16 v8, 0x3f00

    add-float/2addr v7, v8

    float-to-int v7, v7

    iput v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 94
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 95
    invoke-virtual {p0, p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    .line 97
    const/4 v7, -0x1

    iput v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 103
    new-array v1, v6, [I

    const/high16 v7, 0x201

    aput v7, v1, v5

    .line 104
    .local v1, attrsSys:[I
    invoke-virtual {p1, v1}, Landroid/content/Context;->obtainStyledAttributes([I)Landroid/content/res/TypedArray;

    move-result-object v4

    .line 105
    .local v4, ta:Landroid/content/res/TypedArray;
    invoke-virtual {v4, v5, v5}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    iput-boolean v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mDrawableAtTop:Z

    .line 106
    invoke-virtual {v4}, Landroid/content/res/TypedArray;->recycle()V

    .line 108
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    const v8, 0x2060001

    invoke-virtual {v7, v8}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v7

    iput v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mDrawablePadding:F

    .line 111
    iget-boolean v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-nez v7, :cond_0

    iget-boolean v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mDrawableAtTop:Z

    if-eqz v7, :cond_1

    :cond_0
    move v5, v6

    :cond_1
    iput-boolean v5, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 117
    return-void
.end method

.method private updateTextButtonVisibility()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 186
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_2

    move v0, v1

    .line 187
    .local v0, visible:Z
    :goto_0
    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v3, :cond_0

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v3

    if-eqz v3, :cond_1

    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mDrawableAtTop:Z

    if-nez v3, :cond_0

    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eqz v3, :cond_1

    :cond_0
    move v2, v1

    :cond_1
    and-int/2addr v0, v2

    .line 190
    if-eqz v0, :cond_3

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    :goto_1
    invoke-virtual {p0, v1}, Lcom/android/internal/view/menu/ActionMenuItemView;->setText(Ljava/lang/CharSequence;)V

    .line 191
    return-void

    .end local v0           #visible:Z
    :cond_2
    move v0, v2

    .line 186
    goto :goto_0

    .line 190
    .restart local v0       #visible:Z
    :cond_3
    const/4 v1, 0x0

    goto :goto_1
.end method


# virtual methods
.method public dispatchHoverEvent(Landroid/view/MotionEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 267
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->onHoverEvent(Landroid/view/MotionEvent;)Z

    move-result v0

    return v0
.end method

.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .parameter "event"

    .prologue
    .line 251
    invoke-virtual {p0, p1}, Lcom/android/internal/view/menu/ActionMenuItemView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 252
    const/4 v0, 0x1

    return v0
.end method

.method public getItemData()Lcom/android/internal/view/menu/MenuItemImpl;
    .locals 1

    .prologue
    .line 135
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    return-object v0
.end method

.method public hasIcon()Z
    .locals 1

    .prologue
    .line 235
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mDrawableAtTop:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasText()Z
    .locals 1

    .prologue
    .line 231
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getText()Ljava/lang/CharSequence;

    move-result-object v0

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public initialize(Lcom/android/internal/view/menu/MenuItemImpl;I)V
    .locals 1
    .parameter "itemData"
    .parameter "menuType"

    .prologue
    .line 139
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    .line 141
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setIcon(Landroid/graphics/drawable/Drawable;)V

    .line 142
    invoke-virtual {p1, p0}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitleForItemView(Lcom/android/internal/view/menu/MenuView$ItemView;)Ljava/lang/CharSequence;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setTitle(Ljava/lang/CharSequence;)V

    .line 143
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->getItemId()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setId(I)V

    .line 145
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isVisible()Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setVisibility(I)V

    .line 146
    invoke-virtual {p1}, Lcom/android/internal/view/menu/MenuItemImpl;->isEnabled()Z

    move-result v0

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setEnabled(Z)V

    .line 148
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    .line 149
    const/high16 v0, 0x4190

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setTextSize(F)V

    .line 152
    :cond_0
    return-void

    .line 145
    :cond_1
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public needsDividerAfter()Z
    .locals 1

    .prologue
    .line 279
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    return v0
.end method

.method public needsDividerBefore()Z
    .locals 1

    .prologue
    .line 275
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->getIcon()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .parameter "v"

    .prologue
    .line 155
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    if-eqz v0, :cond_0

    .line 156
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    iget-object v1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-interface {v0, v1}, Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;->invokeItem(Lcom/android/internal/view/menu/MenuItemImpl;)Z

    .line 158
    :cond_0
    return-void
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "newConfig"

    .prologue
    .line 121
    invoke-super {p0, p1}, Landroid/widget/TextView;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 123
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1110048

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    iput-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mAllowTextWithIcon:Z

    .line 125
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 126
    return-void
.end method

.method public onLongClick(Landroid/view/View;)Z
    .locals 12
    .parameter "v"

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    .line 284
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v10

    if-eqz v10, :cond_0

    .line 310
    :goto_0
    return v8

    .line 289
    :cond_0
    const/4 v10, 0x2

    new-array v5, v10, [I

    .line 290
    .local v5, screenPos:[I
    new-instance v2, Landroid/graphics/Rect;

    invoke-direct {v2}, Landroid/graphics/Rect;-><init>()V

    .line 291
    .local v2, displayFrame:Landroid/graphics/Rect;
    invoke-virtual {p0, v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->getLocationOnScreen([I)V

    .line 292
    invoke-virtual {p0, v2}, Lcom/android/internal/view/menu/ActionMenuItemView;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 294
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 295
    .local v1, context:Landroid/content/Context;
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getWidth()I

    move-result v7

    .line 296
    .local v7, width:I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getHeight()I

    move-result v3

    .line 297
    .local v3, height:I
    aget v10, v5, v9

    div-int/lit8 v11, v3, 0x2

    add-int v4, v10, v11

    .line 298
    .local v4, midy:I
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    invoke-virtual {v10}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v10

    iget v6, v10, Landroid/util/DisplayMetrics;->widthPixels:I

    .line 300
    .local v6, screenWidth:I
    iget-object v10, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v10}, Lcom/android/internal/view/menu/MenuItemImpl;->getTitle()Ljava/lang/CharSequence;

    move-result-object v10

    invoke-static {v1, v10, v8}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    .line 301
    .local v0, cheatSheet:Landroid/widget/Toast;
    invoke-virtual {v2}, Landroid/graphics/Rect;->height()I

    move-result v10

    if-ge v4, v10, :cond_1

    .line 303
    const v10, 0x800035

    aget v8, v5, v8

    sub-int v8, v6, v8

    div-int/lit8 v11, v7, 0x2

    sub-int/2addr v8, v11

    invoke-virtual {v0, v10, v8, v3}, Landroid/widget/Toast;->setGravity(III)V

    .line 309
    :goto_1
    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    move v8, v9

    .line 310
    goto :goto_0

    .line 307
    :cond_1
    const/16 v10, 0x51

    invoke-virtual {v0, v10, v8, v3}, Landroid/widget/Toast;->setGravity(III)V

    goto :goto_1
.end method

.method protected onMeasure(II)V
    .locals 13
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    const/high16 v12, -0x8000

    const/high16 v11, 0x4000

    .line 315
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v7

    if-ne v7, v12, :cond_0

    .line 317
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v7

    invoke-static {v7, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result p2

    .line 320
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->hasText()Z

    move-result v3

    .line 321
    .local v3, textVisible:Z
    if-eqz v3, :cond_1

    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    if-ltz v7, :cond_1

    .line 322
    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 326
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 328
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 329
    .local v5, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v6

    .line 330
    .local v6, widthSize:I
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v1

    .line 331
    .local v1, oldMeasuredWidth:I
    if-ne v5, v12, :cond_4

    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    invoke-static {v6, v7}, Ljava/lang/Math;->min(II)I

    move-result v2

    .line 334
    .local v2, targetWidth:I
    :goto_0
    if-eq v5, v11, :cond_2

    iget v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    if-lez v7, :cond_2

    if-ge v1, v2, :cond_2

    .line 336
    invoke-static {v2, v11}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v7

    invoke-super {p0, v7, p2}, Landroid/widget/TextView;->onMeasure(II)V

    .line 340
    :cond_2
    if-nez v3, :cond_3

    iget-object v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    if-eqz v7, :cond_3

    .line 343
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getMeasuredWidth()I

    move-result v4

    .line 344
    .local v4, w:I
    iget-object v7, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v7}, Landroid/graphics/drawable/Drawable;->getBounds()Landroid/graphics/Rect;

    move-result-object v7

    invoke-virtual {v7}, Landroid/graphics/Rect;->width()I

    move-result v0

    .line 345
    .local v0, dw:I
    sub-int v7, v4, v0

    div-int/lit8 v7, v7, 0x2

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingTop()I

    move-result v8

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingRight()I

    move-result v9

    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getPaddingBottom()I

    move-result v10

    invoke-super {p0, v7, v8, v9, v10}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 347
    .end local v0           #dw:I
    .end local v4           #w:I
    :cond_3
    return-void

    .line 331
    .end local v2           #targetWidth:I
    :cond_4
    iget v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMinWidth:I

    goto :goto_0
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 2
    .parameter "event"

    .prologue
    .line 257
    invoke-super {p0, p1}, Landroid/widget/TextView;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 258
    invoke-virtual {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->getContentDescription()Ljava/lang/CharSequence;

    move-result-object v0

    .line 259
    .local v0, cdesc:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 260
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 262
    :cond_0
    return-void
.end method

.method public prefersCondensedTitle()Z
    .locals 1

    .prologue
    .line 165
    const/4 v0, 0x1

    return v0
.end method

.method public setCheckable(Z)V
    .locals 0
    .parameter "checkable"

    .prologue
    .line 170
    return-void
.end method

.method public setChecked(Z)V
    .locals 0
    .parameter "checked"

    .prologue
    .line 174
    return-void
.end method

.method public setExpandedFormat(Z)V
    .locals 1
    .parameter "expandedFormat"

    .prologue
    .line 177
    iget-boolean v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    if-eq v0, p1, :cond_0

    .line 178
    iput-boolean p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mExpandedFormat:Z

    .line 179
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    if-eqz v0, :cond_0

    .line 180
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v0}, Lcom/android/internal/view/menu/MenuItemImpl;->actionFormatChanged()V

    .line 183
    :cond_0
    return-void
.end method

.method public setIcon(Landroid/graphics/drawable/Drawable;)V
    .locals 7
    .parameter "icon"

    .prologue
    const/4 v6, 0x0

    const/4 v5, 0x0

    .line 194
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mIcon:Landroid/graphics/drawable/Drawable;

    .line 195
    if-eqz p1, :cond_2

    .line 196
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicWidth()I

    move-result v2

    .line 197
    .local v2, width:I
    invoke-virtual {p1}, Landroid/graphics/drawable/Drawable;->getIntrinsicHeight()I

    move-result v0

    .line 198
    .local v0, height:I
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v2, v3, :cond_0

    .line 199
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v2

    div-float v1, v3, v4

    .line 200
    .local v1, scale:F
    iget v2, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 201
    int-to-float v3, v0

    mul-float/2addr v3, v1

    float-to-int v0, v3

    .line 203
    .end local v1           #scale:F
    :cond_0
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    if-le v0, v3, :cond_1

    .line 204
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    int-to-float v3, v3

    int-to-float v4, v0

    div-float v1, v3, v4

    .line 205
    .restart local v1       #scale:F
    iget v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mMaxIconSize:I

    .line 206
    int-to-float v3, v2

    mul-float/2addr v3, v1

    float-to-int v2, v3

    .line 209
    .end local v1           #scale:F
    :cond_1
    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mDrawableAtTop:Z

    if-eqz v3, :cond_3

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v3

    if-eqz v3, :cond_3

    .line 210
    iget v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mDrawablePadding:F

    float-to-int v3, v3

    iget v4, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mDrawablePadding:F

    float-to-int v4, v4

    add-int/2addr v4, v0

    invoke-virtual {p1, v6, v3, v2, v4}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 217
    .end local v0           #height:I
    .end local v2           #width:I
    :cond_2
    :goto_0
    iget-boolean v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mDrawableAtTop:Z

    if-eqz v3, :cond_4

    iget-object v3, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemData:Lcom/android/internal/view/menu/MenuItemImpl;

    invoke-virtual {v3}, Lcom/android/internal/view/menu/MenuItemImpl;->showsTextAsAction()Z

    move-result v3

    if-eqz v3, :cond_4

    .line 219
    invoke-virtual {p0, v5, p1, v5, v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->setCompoundDrawables(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    .line 227
    :goto_1
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 228
    return-void

    .line 212
    .restart local v0       #height:I
    .restart local v2       #width:I
    :cond_3
    invoke-virtual {p1, v6, v6, v2, v0}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    goto :goto_0

    .line 223
    .end local v0           #height:I
    .end local v2           #width:I
    :cond_4
    invoke-virtual {p0, p1, v5, v5, v5}, Lcom/android/internal/view/menu/ActionMenuItemView;->setCompoundDrawablesWithIntrinsicBounds(Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;Landroid/graphics/drawable/Drawable;)V

    goto :goto_1
.end method

.method public setItemInvoker(Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;)V
    .locals 0
    .parameter "invoker"

    .prologue
    .line 161
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mItemInvoker:Lcom/android/internal/view/menu/MenuBuilder$ItemInvoker;

    .line 162
    return-void
.end method

.method public setPadding(IIII)V
    .locals 0
    .parameter "l"
    .parameter "t"
    .parameter "r"
    .parameter "b"

    .prologue
    .line 130
    iput p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mSavedPaddingLeft:I

    .line 131
    invoke-super {p0, p1, p2, p3, p4}, Landroid/widget/TextView;->setPadding(IIII)V

    .line 132
    return-void
.end method

.method public setShortcut(ZC)V
    .locals 0
    .parameter "showShortcut"
    .parameter "shortcutKey"

    .prologue
    .line 240
    return-void
.end method

.method public setTitle(Ljava/lang/CharSequence;)V
    .locals 1
    .parameter "title"

    .prologue
    .line 243
    iput-object p1, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    .line 245
    iget-object v0, p0, Lcom/android/internal/view/menu/ActionMenuItemView;->mTitle:Ljava/lang/CharSequence;

    invoke-virtual {p0, v0}, Lcom/android/internal/view/menu/ActionMenuItemView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 246
    invoke-direct {p0}, Lcom/android/internal/view/menu/ActionMenuItemView;->updateTextButtonVisibility()V

    .line 247
    return-void
.end method

.method public showsIcon()Z
    .locals 1

    .prologue
    .line 271
    const/4 v0, 0x1

    return v0
.end method
