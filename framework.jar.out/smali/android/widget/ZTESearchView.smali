.class public Landroid/widget/ZTESearchView;
.super Landroid/widget/LinearLayout;
.source "ZTESearchView.java"

# interfaces
.implements Landroid/view/CollapsibleActionView;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/ZTESearchView$SearchAutoComplete;,
        Landroid/widget/ZTESearchView$OnSuggestionListener;,
        Landroid/widget/ZTESearchView$OnCloseListener;,
        Landroid/widget/ZTESearchView$OnQueryTextListener;
    }
.end annotation


# static fields
.field private static final DBG:Z = false

.field private static final IME_OPTION_NO_MICROPHONE:Ljava/lang/String; = "nm"

.field private static final LOG_TAG:Ljava/lang/String; = "ZTESearchView"


# instance fields
.field private mAppSearchData:Landroid/os/Bundle;

.field private mClearingFocus:Z

.field private mCloseButton:Landroid/widget/ImageView;

.field private mCollapsedImeOptions:I

.field private mDropDownAnchor:Landroid/view/View;

.field private mExpandedInActionView:Z

.field private mIconified:Z

.field private mIconifiedByDefault:Z

.field private mMaxWidth:I

.field private mOldQueryText:Ljava/lang/CharSequence;

.field private final mOnClickListener:Landroid/view/View$OnClickListener;

.field private mOnCloseListener:Landroid/widget/ZTESearchView$OnCloseListener;

.field private final mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

.field private final mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

.field private final mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

.field private mOnQueryChangeListener:Landroid/widget/ZTESearchView$OnQueryTextListener;

.field private mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

.field private mOnSearchClickListener:Landroid/view/View$OnClickListener;

.field private mOnSuggestionListener:Landroid/widget/ZTESearchView$OnSuggestionListener;

.field private final mOutsideDrawablesCache:Ljava/util/WeakHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/WeakHashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/graphics/drawable/Drawable$ConstantState;",
            ">;"
        }
    .end annotation
.end field

.field private mQueryHint:Ljava/lang/CharSequence;

.field private mQueryRefinement:Z

.field private mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

.field private mReleaseCursorRunnable:Ljava/lang/Runnable;

.field private mSearchButton:Landroid/view/View;

.field private mSearchEditFrame:Landroid/view/View;

.field private mSearchHintIcon:Landroid/widget/ImageView;

.field private mSearchPlate:Landroid/view/View;

.field private mSearchable:Landroid/app/SearchableInfo;

.field private mShowImeRunnable:Ljava/lang/Runnable;

.field private mSubmitArea:Landroid/view/View;

.field private mSubmitButton:Landroid/view/View;

.field private mSubmitButtonEnabled:Z

.field private mSuggestionsAdapter:Landroid/widget/CursorAdapter;

.field mTextKeyListener:Landroid/view/View$OnKeyListener;

.field private mTextWatcher:Landroid/text/TextWatcher;

.field private mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

.field private mUserQuery:Ljava/lang/CharSequence;

.field private final mVoiceAppSearchIntent:Landroid/content/Intent;

.field private mVoiceButton:Landroid/view/View;

.field private mVoiceButtonEnabled:Z

.field private final mVoiceWebSearchIntent:Landroid/content/Intent;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .parameter "context"

    .prologue
    .line 241
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/ZTESearchView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 242
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 13
    .parameter "context"
    .parameter "attrs"

    .prologue
    const/high16 v12, 0x1000

    const/4 v11, 0x1

    const/4 v10, 0x0

    const/4 v9, -0x1

    .line 245
    invoke-direct {p0, p1, p2}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 139
    new-instance v7, Landroid/widget/ZTESearchView$1;

    invoke-direct {v7, p0}, Landroid/widget/ZTESearchView$1;-><init>(Landroid/widget/ZTESearchView;)V

    iput-object v7, p0, Landroid/widget/ZTESearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    .line 150
    new-instance v7, Landroid/widget/ZTESearchView$2;

    invoke-direct {v7, p0}, Landroid/widget/ZTESearchView$2;-><init>(Landroid/widget/ZTESearchView;)V

    iput-object v7, p0, Landroid/widget/ZTESearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    .line 156
    new-instance v7, Landroid/widget/ZTESearchView$3;

    invoke-direct {v7, p0}, Landroid/widget/ZTESearchView$3;-><init>(Landroid/widget/ZTESearchView;)V

    iput-object v7, p0, Landroid/widget/ZTESearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    .line 170
    new-instance v7, Ljava/util/WeakHashMap;

    invoke-direct {v7}, Ljava/util/WeakHashMap;-><init>()V

    iput-object v7, p0, Landroid/widget/ZTESearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    .line 858
    new-instance v7, Landroid/widget/ZTESearchView$6;

    invoke-direct {v7, p0}, Landroid/widget/ZTESearchView$6;-><init>(Landroid/widget/ZTESearchView;)V

    iput-object v7, p0, Landroid/widget/ZTESearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    .line 907
    new-instance v7, Landroid/widget/ZTESearchView$7;

    invoke-direct {v7, p0}, Landroid/widget/ZTESearchView$7;-><init>(Landroid/widget/ZTESearchView;)V

    iput-object v7, p0, Landroid/widget/ZTESearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    .line 1139
    new-instance v7, Landroid/widget/ZTESearchView$8;

    invoke-direct {v7, p0}, Landroid/widget/ZTESearchView$8;-><init>(Landroid/widget/ZTESearchView;)V

    iput-object v7, p0, Landroid/widget/ZTESearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    .line 1339
    new-instance v7, Landroid/widget/ZTESearchView$9;

    invoke-direct {v7, p0}, Landroid/widget/ZTESearchView$9;-><init>(Landroid/widget/ZTESearchView;)V

    iput-object v7, p0, Landroid/widget/ZTESearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    .line 1350
    new-instance v7, Landroid/widget/ZTESearchView$10;

    invoke-direct {v7, p0}, Landroid/widget/ZTESearchView$10;-><init>(Landroid/widget/ZTESearchView;)V

    iput-object v7, p0, Landroid/widget/ZTESearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    .line 1644
    new-instance v7, Landroid/widget/ZTESearchView$11;

    invoke-direct {v7, p0}, Landroid/widget/ZTESearchView$11;-><init>(Landroid/widget/ZTESearchView;)V

    iput-object v7, p0, Landroid/widget/ZTESearchView;->mTextWatcher:Landroid/text/TextWatcher;

    .line 247
    const-string v7, "layout_inflater"

    invoke-virtual {p1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 249
    .local v3, inflater:Landroid/view/LayoutInflater;
    const v7, 0x2080003

    invoke-virtual {v3, v7, p0, v11}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 251
    const v7, 0x20c0016

    invoke-virtual {p0, v7}, Landroid/widget/ZTESearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ZTESearchView;->mSearchButton:Landroid/view/View;

    .line 252
    const v7, 0x20c001a

    invoke-virtual {p0, v7}, Landroid/widget/ZTESearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ZTESearchView$SearchAutoComplete;

    iput-object v7, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    .line 253
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v7, p0}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setSearchView(Landroid/widget/ZTESearchView;)V

    .line 255
    const v7, 0x20c0017

    invoke-virtual {p0, v7}, Landroid/widget/ZTESearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ZTESearchView;->mSearchEditFrame:Landroid/view/View;

    .line 256
    const v7, 0x20c0019

    invoke-virtual {p0, v7}, Landroid/widget/ZTESearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ZTESearchView;->mSearchPlate:Landroid/view/View;

    .line 257
    const v7, 0x20c001c

    invoke-virtual {p0, v7}, Landroid/widget/ZTESearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ZTESearchView;->mSubmitArea:Landroid/view/View;

    .line 258
    const v7, 0x20c001d

    invoke-virtual {p0, v7}, Landroid/widget/ZTESearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ZTESearchView;->mSubmitButton:Landroid/view/View;

    .line 259
    const v7, 0x20c001b

    invoke-virtual {p0, v7}, Landroid/widget/ZTESearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroid/widget/ZTESearchView;->mCloseButton:Landroid/widget/ImageView;

    .line 260
    const v7, 0x20c001e

    invoke-virtual {p0, v7}, Landroid/widget/ZTESearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ZTESearchView;->mVoiceButton:Landroid/view/View;

    .line 261
    const v7, 0x20c0018

    invoke-virtual {p0, v7}, Landroid/widget/ZTESearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ImageView;

    iput-object v7, p0, Landroid/widget/ZTESearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    .line 263
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mSearchButton:Landroid/view/View;

    iget-object v8, p0, Landroid/widget/ZTESearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 264
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mCloseButton:Landroid/widget/ImageView;

    iget-object v8, p0, Landroid/widget/ZTESearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ImageView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 265
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mSubmitButton:Landroid/view/View;

    iget-object v8, p0, Landroid/widget/ZTESearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 266
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mVoiceButton:Landroid/view/View;

    iget-object v8, p0, Landroid/widget/ZTESearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 267
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/widget/ZTESearchView;->mOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 269
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/widget/ZTESearchView;->mTextWatcher:Landroid/text/TextWatcher;

    invoke-virtual {v7, v8}, Landroid/widget/ZTESearchView$SearchAutoComplete;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 270
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/widget/ZTESearchView;->mOnEditorActionListener:Landroid/widget/TextView$OnEditorActionListener;

    invoke-virtual {v7, v8}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 271
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/widget/ZTESearchView;->mOnItemClickListener:Landroid/widget/AdapterView$OnItemClickListener;

    invoke-virtual {v7, v8}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 272
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/widget/ZTESearchView;->mOnItemSelectedListener:Landroid/widget/AdapterView$OnItemSelectedListener;

    invoke-virtual {v7, v8}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setOnItemSelectedListener(Landroid/widget/AdapterView$OnItemSelectedListener;)V

    .line 273
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/widget/ZTESearchView;->mTextKeyListener:Landroid/view/View$OnKeyListener;

    invoke-virtual {v7, v8}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 276
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    const v8, 0x2020003

    invoke-virtual {v7, v8}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setDropDownBackgroundResource(I)V

    .line 278
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    const/16 v8, 0x64

    invoke-virtual {v7, v8}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 281
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    new-instance v8, Landroid/widget/ZTESearchView$4;

    invoke-direct {v8, p0}, Landroid/widget/ZTESearchView$4;-><init>(Landroid/widget/ZTESearchView;)V

    invoke-virtual {v7, v8}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setOnFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V

    .line 290
    sget-object v7, Lcom/android/internal/R$styleable;->SearchView:[I

    invoke-virtual {p1, p2, v7, v10, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 291
    .local v0, a:Landroid/content/res/TypedArray;
    const/4 v7, 0x3

    invoke-virtual {v0, v7, v11}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/ZTESearchView;->setIconifiedByDefault(Z)V

    .line 292
    invoke-virtual {v0, v10, v9}, Landroid/content/res/TypedArray;->getDimensionPixelSize(II)I

    move-result v5

    .line 293
    .local v5, maxWidth:I
    if-eq v5, v9, :cond_0

    .line 294
    invoke-virtual {p0, v5}, Landroid/widget/ZTESearchView;->setMaxWidth(I)V

    .line 296
    :cond_0
    const/4 v7, 0x4

    invoke-virtual {v0, v7}, Landroid/content/res/TypedArray;->getText(I)Ljava/lang/CharSequence;

    move-result-object v6

    .line 297
    .local v6, queryHint:Ljava/lang/CharSequence;
    invoke-static {v6}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-nez v7, :cond_1

    .line 298
    invoke-virtual {p0, v6}, Landroid/widget/ZTESearchView;->setQueryHint(Ljava/lang/CharSequence;)V

    .line 300
    :cond_1
    const/4 v7, 0x2

    invoke-virtual {v0, v7, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v2

    .line 301
    .local v2, imeOptions:I
    if-eq v2, v9, :cond_2

    .line 302
    invoke-virtual {p0, v2}, Landroid/widget/ZTESearchView;->setImeOptions(I)V

    .line 304
    :cond_2
    invoke-virtual {v0, v11, v9}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v4

    .line 305
    .local v4, inputType:I
    if-eq v4, v9, :cond_3

    .line 306
    invoke-virtual {p0, v4}, Landroid/widget/ZTESearchView;->setInputType(I)V

    .line 309
    :cond_3
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 311
    const/4 v1, 0x1

    .line 313
    .local v1, focusable:Z
    sget-object v7, Lcom/android/internal/R$styleable;->View:[I

    invoke-virtual {p1, p2, v7, v10, v10}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 314
    const/16 v7, 0x12

    invoke-virtual {v0, v7, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    .line 315
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 316
    invoke-virtual {p0, v1}, Landroid/widget/ZTESearchView;->setFocusable(Z)V

    .line 319
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.speech.action.WEB_SEARCH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Landroid/widget/ZTESearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 320
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 321
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    const-string v8, "android.speech.extra.LANGUAGE_MODEL"

    const-string/jumbo v9, "web_search"

    invoke-virtual {v7, v8, v9}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 324
    new-instance v7, Landroid/content/Intent;

    const-string v8, "android.speech.action.RECOGNIZE_SPEECH"

    invoke-direct {v7, v8}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    iput-object v7, p0, Landroid/widget/ZTESearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    .line 325
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-virtual {v7, v12}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 327
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v7}, Landroid/widget/ZTESearchView$SearchAutoComplete;->getDropDownAnchor()I

    move-result v7

    invoke-virtual {p0, v7}, Landroid/widget/ZTESearchView;->findViewById(I)Landroid/view/View;

    move-result-object v7

    iput-object v7, p0, Landroid/widget/ZTESearchView;->mDropDownAnchor:Landroid/view/View;

    .line 328
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mDropDownAnchor:Landroid/view/View;

    if-eqz v7, :cond_4

    .line 329
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mDropDownAnchor:Landroid/view/View;

    new-instance v8, Landroid/widget/ZTESearchView$5;

    invoke-direct {v8, p0}, Landroid/widget/ZTESearchView$5;-><init>(Landroid/widget/ZTESearchView;)V

    invoke-virtual {v7, v8}, Landroid/view/View;->addOnLayoutChangeListener(Landroid/view/View$OnLayoutChangeListener;)V

    .line 338
    :cond_4
    iget-boolean v7, p0, Landroid/widget/ZTESearchView;->mIconifiedByDefault:Z

    invoke-direct {p0, v7}, Landroid/widget/ZTESearchView;->updateViewsVisibility(Z)V

    .line 339
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->updateQueryHint()V

    .line 340
    return-void
.end method

.method static synthetic access$000(Landroid/widget/ZTESearchView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->updateFocusedState()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/ZTESearchView;)Landroid/widget/CursorAdapter;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/ZTESearchView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mVoiceButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$1100(Landroid/widget/ZTESearchView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->onVoiceClicked()V

    return-void
.end method

.method static synthetic access$1200(Landroid/widget/ZTESearchView;)Landroid/widget/ZTESearchView$SearchAutoComplete;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    return-object v0
.end method

.method static synthetic access$1300(Landroid/widget/ZTESearchView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->forceSuggestionQuery()V

    return-void
.end method

.method static synthetic access$1400(Landroid/widget/ZTESearchView;)Landroid/app/SearchableInfo;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    return-object v0
.end method

.method static synthetic access$1500(Landroid/widget/ZTESearchView;Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ZTESearchView;->onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1700(Landroid/widget/ZTESearchView;ILjava/lang/String;Ljava/lang/String;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ZTESearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method static synthetic access$1800(Landroid/widget/ZTESearchView;IILjava/lang/String;)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"
    .parameter "x2"
    .parameter "x3"

    .prologue
    .line 92
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ZTESearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method static synthetic access$1900(Landroid/widget/ZTESearchView;I)Z
    .locals 1
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/widget/ZTESearchView;->onItemSelected(I)Z

    move-result v0

    return v0
.end method

.method static synthetic access$200(Landroid/widget/ZTESearchView;)Landroid/view/View$OnFocusChangeListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    return-object v0
.end method

.method static synthetic access$2000(Landroid/widget/ZTESearchView;Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/widget/ZTESearchView;->onTextChanged(Ljava/lang/CharSequence;)V

    return-void
.end method

.method static synthetic access$2100(Landroid/widget/ZTESearchView;Z)V
    .locals 0
    .parameter "x0"
    .parameter "x1"

    .prologue
    .line 92
    invoke-direct {p0, p1}, Landroid/widget/ZTESearchView;->setImeVisibility(Z)V

    return-void
.end method

.method static synthetic access$300(Landroid/widget/ZTESearchView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->adjustDropDownSizeAndPosition()V

    return-void
.end method

.method static synthetic access$400(Landroid/widget/ZTESearchView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mSearchButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/ZTESearchView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->onSearchClicked()V

    return-void
.end method

.method static synthetic access$600(Landroid/widget/ZTESearchView;)Landroid/widget/ImageView;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mCloseButton:Landroid/widget/ImageView;

    return-object v0
.end method

.method static synthetic access$700(Landroid/widget/ZTESearchView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->onCloseClicked()V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/ZTESearchView;)Landroid/view/View;
    .locals 1
    .parameter "x0"

    .prologue
    .line 92
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mSubmitButton:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$900(Landroid/widget/ZTESearchView;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 92
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->onSubmitQuery()V

    return-void
.end method

.method private adjustDropDownSizeAndPosition()V
    .locals 10

    .prologue
    const/4 v7, 0x0

    .line 1289
    iget-object v8, p0, Landroid/widget/ZTESearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    const/4 v9, 0x1

    if-le v8, v9, :cond_0

    .line 1290
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    .line 1291
    .local v5, res:Landroid/content/res/Resources;
    iget-object v8, p0, Landroid/widget/ZTESearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getPaddingLeft()I

    move-result v0

    .line 1292
    .local v0, anchorPadding:I
    new-instance v1, Landroid/graphics/Rect;

    invoke-direct {v1}, Landroid/graphics/Rect;-><init>()V

    .line 1293
    .local v1, dropDownPadding:Landroid/graphics/Rect;
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->isLayoutRtl()Z

    move-result v3

    .line 1294
    .local v3, isLayoutRtl:Z
    iget-boolean v8, p0, Landroid/widget/ZTESearchView;->mIconifiedByDefault:Z

    if-eqz v8, :cond_1

    const v8, 0x105004d

    invoke-virtual {v5, v8}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v8

    const v9, 0x105004b

    invoke-virtual {v5, v9}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v9

    add-int v2, v8, v9

    .line 1298
    .local v2, iconOffset:I
    :goto_0
    iget-object v8, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v8}, Landroid/widget/ZTESearchView$SearchAutoComplete;->getDropDownBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v8

    invoke-virtual {v8, v1}, Landroid/graphics/drawable/Drawable;->getPadding(Landroid/graphics/Rect;)Z

    .line 1300
    if-eqz v3, :cond_2

    .line 1301
    iget v8, v1, Landroid/graphics/Rect;->left:I

    neg-int v4, v8

    .line 1306
    .local v4, offset:I
    :goto_1
    iget-object v8, p0, Landroid/widget/ZTESearchView;->mContext:Landroid/content/Context;

    invoke-virtual {v8}, Landroid/content/Context;->isZteApp()Z

    move-result v8

    if-eqz v8, :cond_3

    .line 1307
    iget-object v8, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v8, v7}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1309
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    iget-object v8, p0, Landroid/widget/ZTESearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v8}, Landroid/view/View;->getWidth()I

    move-result v8

    invoke-virtual {v7, v8}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setDropDownWidth(I)V

    .line 1317
    .end local v0           #anchorPadding:I
    .end local v1           #dropDownPadding:Landroid/graphics/Rect;
    .end local v2           #iconOffset:I
    .end local v3           #isLayoutRtl:Z
    .end local v4           #offset:I
    .end local v5           #res:Landroid/content/res/Resources;
    :cond_0
    :goto_2
    return-void

    .restart local v0       #anchorPadding:I
    .restart local v1       #dropDownPadding:Landroid/graphics/Rect;
    .restart local v3       #isLayoutRtl:Z
    .restart local v5       #res:Landroid/content/res/Resources;
    :cond_1
    move v2, v7

    .line 1294
    goto :goto_0

    .line 1303
    .restart local v2       #iconOffset:I
    :cond_2
    iget v8, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v8, v2

    sub-int v4, v0, v8

    .restart local v4       #offset:I
    goto :goto_1

    .line 1311
    :cond_3
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v7, v4}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setDropDownHorizontalOffset(I)V

    .line 1312
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mDropDownAnchor:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    iget v8, v1, Landroid/graphics/Rect;->left:I

    add-int/2addr v7, v8

    iget v8, v1, Landroid/graphics/Rect;->right:I

    add-int/2addr v7, v8

    add-int/2addr v7, v2

    sub-int v6, v7, v0

    .line 1314
    .local v6, width:I
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v7, v6}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setDropDownWidth(I)V

    goto :goto_2
.end method

.method private createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;
    .locals 3
    .parameter "action"
    .parameter "data"
    .parameter "extraData"
    .parameter "query"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    .line 1473
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1474
    .local v0, intent:Landroid/content/Intent;
    const/high16 v1, 0x1000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 1478
    if-eqz p2, :cond_0

    .line 1479
    invoke-virtual {v0, p2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    .line 1481
    :cond_0
    const-string/jumbo v1, "user_query"

    iget-object v2, p0, Landroid/widget/ZTESearchView;->mUserQuery:Ljava/lang/CharSequence;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/CharSequence;)Landroid/content/Intent;

    .line 1482
    if-eqz p4, :cond_1

    .line 1483
    const-string/jumbo v1, "query"

    invoke-virtual {v0, v1, p4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1485
    :cond_1
    if-eqz p3, :cond_2

    .line 1486
    const-string v1, "intent_extra_data_key"

    invoke-virtual {v0, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1488
    :cond_2
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v1, :cond_3

    .line 1489
    const-string v1, "app_data"

    iget-object v2, p0, Landroid/widget/ZTESearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1491
    :cond_3
    if-eqz p5, :cond_4

    .line 1492
    const-string v1, "action_key"

    invoke-virtual {v0, v1, p5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1493
    const-string v1, "action_msg"

    invoke-virtual {v0, v1, p6}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1495
    :cond_4
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1496
    return-object v0
.end method

.method private createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;
    .locals 12
    .parameter "c"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    .line 1591
    :try_start_0
    const-string/jumbo v0, "suggest_intent_action"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1593
    .local v1, action:Ljava/lang/String;
    if-nez v1, :cond_0

    .line 1594
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentAction()Ljava/lang/String;

    move-result-object v1

    .line 1596
    :cond_0
    if-nez v1, :cond_1

    .line 1597
    const-string v1, "android.intent.action.SEARCH"

    .line 1601
    :cond_1
    const-string/jumbo v0, "suggest_intent_data"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v7

    .line 1602
    .local v7, data:Ljava/lang/String;
    if-nez v7, :cond_2

    .line 1603
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v0}, Landroid/app/SearchableInfo;->getSuggestIntentData()Ljava/lang/String;

    move-result-object v7

    .line 1606
    :cond_2
    if-eqz v7, :cond_3

    .line 1607
    const-string/jumbo v0, "suggest_intent_data_id"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    .line 1608
    .local v10, id:Ljava/lang/String;
    if-eqz v10, :cond_3

    .line 1609
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v0, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    const-string v5, "/"

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-static {v10}, Landroid/net/Uri;->encode(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    .line 1612
    .end local v10           #id:Ljava/lang/String;
    :cond_3
    if-nez v7, :cond_4

    const/4 v2, 0x0

    .line 1614
    .local v2, dataUri:Landroid/net/Uri;
    :goto_0
    const-string/jumbo v0, "suggest_intent_query"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 1615
    .local v4, query:Ljava/lang/String;
    const-string/jumbo v0, "suggest_intent_extra_data"

    invoke-static {p1, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .local v3, extraData:Ljava/lang/String;
    move-object v0, p0

    move v5, p2

    move-object v6, p3

    .line 1617
    invoke-direct/range {v0 .. v6}, Landroid/widget/ZTESearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v0

    .line 1627
    .end local v1           #action:Ljava/lang/String;
    .end local v2           #dataUri:Landroid/net/Uri;
    .end local v3           #extraData:Ljava/lang/String;
    .end local v4           #query:Ljava/lang/String;
    .end local v7           #data:Ljava/lang/String;
    :goto_1
    return-object v0

    .line 1612
    .restart local v1       #action:Ljava/lang/String;
    .restart local v7       #data:Ljava/lang/String;
    :cond_4
    invoke-static {v7}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 1618
    .end local v1           #action:Ljava/lang/String;
    .end local v7           #data:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 1621
    .local v8, e:Ljava/lang/RuntimeException;
    :try_start_1
    invoke-interface {p1}, Landroid/database/Cursor;->getPosition()I
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v11

    .line 1625
    .local v11, rowNum:I
    :goto_2
    const-string v0, "ZTESearchView"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "Search suggestions cursor at row "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, " returned exception."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v0, v5, v8}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 1627
    const/4 v0, 0x0

    goto :goto_1

    .line 1622
    .end local v11           #rowNum:I
    :catch_1
    move-exception v9

    .line 1623
    .local v9, e2:Ljava/lang/RuntimeException;
    const/4 v11, -0x1

    .restart local v11       #rowNum:I
    goto :goto_2
.end method

.method private createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 13
    .parameter "baseIntent"
    .parameter "searchable"

    .prologue
    .line 1518
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v8

    .line 1523
    .local v8, searchActivity:Landroid/content/ComponentName;
    new-instance v6, Landroid/content/Intent;

    const-string v10, "android.intent.action.SEARCH"

    invoke-direct {v6, v10}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1524
    .local v6, queryIntent:Landroid/content/Intent;
    invoke-virtual {v6, v8}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1525
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->getContext()Landroid/content/Context;

    move-result-object v10

    const/4 v11, 0x0

    const/high16 v12, 0x4000

    invoke-static {v10, v11, v6, v12}, Landroid/app/PendingIntent;->getActivity(Landroid/content/Context;ILandroid/content/Intent;I)Landroid/app/PendingIntent;

    move-result-object v3

    .line 1532
    .local v3, pending:Landroid/app/PendingIntent;
    new-instance v5, Landroid/os/Bundle;

    invoke-direct {v5}, Landroid/os/Bundle;-><init>()V

    .line 1533
    .local v5, queryExtras:Landroid/os/Bundle;
    iget-object v10, p0, Landroid/widget/ZTESearchView;->mAppSearchData:Landroid/os/Bundle;

    if-eqz v10, :cond_0

    .line 1534
    const-string v10, "app_data"

    iget-object v11, p0, Landroid/widget/ZTESearchView;->mAppSearchData:Landroid/os/Bundle;

    invoke-virtual {v5, v10, v11}, Landroid/os/Bundle;->putParcelable(Ljava/lang/String;Landroid/os/Parcelable;)V

    .line 1540
    :cond_0
    new-instance v9, Landroid/content/Intent;

    invoke-direct {v9, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1543
    .local v9, voiceIntent:Landroid/content/Intent;
    const-string v1, "free_form"

    .line 1544
    .local v1, languageModel:Ljava/lang/String;
    const/4 v4, 0x0

    .line 1545
    .local v4, prompt:Ljava/lang/String;
    const/4 v0, 0x0

    .line 1546
    .local v0, language:Ljava/lang/String;
    const/4 v2, 0x1

    .line 1548
    .local v2, maxResults:I
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->getResources()Landroid/content/res/Resources;

    move-result-object v7

    .line 1549
    .local v7, resources:Landroid/content/res/Resources;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    if-eqz v10, :cond_1

    .line 1550
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageModeId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 1552
    :cond_1
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    if-eqz v10, :cond_2

    .line 1553
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoicePromptTextId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    .line 1555
    :cond_2
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    if-eqz v10, :cond_3

    .line 1556
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceLanguageId()I

    move-result v10

    invoke-virtual {v7, v10}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1558
    :cond_3
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v10

    if-eqz v10, :cond_4

    .line 1559
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getVoiceMaxResults()I

    move-result v2

    .line 1561
    :cond_4
    const-string v10, "android.speech.extra.LANGUAGE_MODEL"

    invoke-virtual {v9, v10, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1562
    const-string v10, "android.speech.extra.PROMPT"

    invoke-virtual {v9, v10, v4}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1563
    const-string v10, "android.speech.extra.LANGUAGE"

    invoke-virtual {v9, v10, v0}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1564
    const-string v10, "android.speech.extra.MAX_RESULTS"

    invoke-virtual {v9, v10, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;I)Landroid/content/Intent;

    .line 1565
    const-string v11, "calling_package"

    if-nez v8, :cond_5

    const/4 v10, 0x0

    :goto_0
    invoke-virtual {v9, v11, v10}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1569
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT"

    invoke-virtual {v9, v10, v3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Parcelable;)Landroid/content/Intent;

    .line 1570
    const-string v10, "android.speech.extra.RESULTS_PENDINGINTENT_BUNDLE"

    invoke-virtual {v9, v10, v5}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Landroid/os/Bundle;)Landroid/content/Intent;

    .line 1572
    return-object v9

    .line 1565
    :cond_5
    invoke-virtual {v8}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v10

    goto :goto_0
.end method

.method private createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;
    .locals 4
    .parameter "baseIntent"
    .parameter "searchable"

    .prologue
    .line 1503
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1, p1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 1504
    .local v1, voiceIntent:Landroid/content/Intent;
    invoke-virtual {p2}, Landroid/app/SearchableInfo;->getSearchActivity()Landroid/content/ComponentName;

    move-result-object v0

    .line 1505
    .local v0, searchActivity:Landroid/content/ComponentName;
    const-string v3, "calling_package"

    if-nez v0, :cond_0

    const/4 v2, 0x0

    :goto_0
    invoke-virtual {v1, v3, v2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 1507
    return-object v1

    .line 1505
    :cond_0
    invoke-virtual {v0}, Landroid/content/ComponentName;->flattenToShortString()Ljava/lang/String;

    move-result-object v2

    goto :goto_0
.end method

.method private dismissSuggestions()V
    .locals 1

    .prologue
    .line 1179
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/ZTESearchView$SearchAutoComplete;->dismissDropDown()V

    .line 1180
    return-void
.end method

.method private forceSuggestionQuery()V
    .locals 1

    .prologue
    .line 1632
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/ZTESearchView$SearchAutoComplete;->doBeforeTextChanged()V

    .line 1633
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/ZTESearchView$SearchAutoComplete;->doAfterTextChanged()V

    .line 1634
    return-void
.end method

.method private static getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;
    .locals 2
    .parameter "c"
    .parameter "actionKey"

    .prologue
    .line 1031
    const/4 v1, 0x0

    .line 1033
    .local v1, result:Ljava/lang/String;
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v0

    .line 1034
    .local v0, column:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 1035
    invoke-static {p0, v0}, Landroid/widget/SuggestionsAdapter;->getColumnString(Landroid/database/Cursor;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 1040
    :cond_0
    if-nez v1, :cond_1

    .line 1041
    invoke-virtual {p1}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v1

    .line 1043
    :cond_1
    return-object v1
.end method

.method private getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;
    .locals 8
    .parameter "hintText"

    .prologue
    const/4 v7, 0x0

    .line 1055
    iget-boolean v3, p0, Landroid/widget/ZTESearchView;->mIconifiedByDefault:Z

    if-nez v3, :cond_0

    .line 1063
    .end local p1
    :goto_0
    return-object p1

    .line 1057
    .restart local p1
    :cond_0
    new-instance v1, Landroid/text/SpannableStringBuilder;

    const-string v3, "   "

    invoke-direct {v1, v3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 1058
    .local v1, ssb:Landroid/text/SpannableStringBuilder;
    invoke-virtual {v1, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 1059
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-direct {p0}, Landroid/widget/ZTESearchView;->getSearchIconId()I

    move-result v4

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 1060
    .local v0, searchIcon:Landroid/graphics/drawable/Drawable;
    iget-object v3, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/ZTESearchView$SearchAutoComplete;->getTextSize()F

    move-result v3

    float-to-double v3, v3

    const-wide/high16 v5, 0x3ff4

    mul-double/2addr v3, v5

    double-to-int v2, v3

    .line 1061
    .local v2, textSize:I
    invoke-virtual {v0, v7, v7, v2, v2}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1062
    new-instance v3, Landroid/text/style/ImageSpan;

    invoke-direct {v3, v0}, Landroid/text/style/ImageSpan;-><init>(Landroid/graphics/drawable/Drawable;)V

    const/4 v4, 0x1

    const/4 v5, 0x2

    const/16 v6, 0x21

    invoke-virtual {v1, v3, v4, v5, v6}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    move-object p1, v1

    .line 1063
    goto :goto_0
.end method

.method private getPreferredWidth()I
    .locals 2

    .prologue
    .line 749
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x1050039

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    return v0
.end method

.method private getSearchIconId()I
    .locals 4

    .prologue
    .line 1047
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    .line 1048
    .local v0, outValue:Landroid/util/TypedValue;
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    const v2, 0x1010417

    const/4 v3, 0x1

    invoke-virtual {v1, v2, v0, v3}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 1050
    iget v1, v0, Landroid/util/TypedValue;->resourceId:I

    return v1
.end method

.method private hasVoiceSearch()Z
    .locals 5

    .prologue
    const/4 v2, 0x0

    .line 770
    iget-object v3, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v3, :cond_1

    iget-object v3, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchEnabled()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 771
    const/4 v1, 0x0

    .line 772
    .local v1, testIntent:Landroid/content/Intent;
    iget-object v3, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v3

    if-eqz v3, :cond_2

    .line 773
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    .line 777
    :cond_0
    :goto_0
    if-eqz v1, :cond_1

    .line 778
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v3

    const/high16 v4, 0x1

    invoke-virtual {v3, v1, v4}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v0

    .line 780
    .local v0, ri:Landroid/content/pm/ResolveInfo;
    if-eqz v0, :cond_1

    const/4 v2, 0x1

    .line 783
    .end local v0           #ri:Landroid/content/pm/ResolveInfo;
    .end local v1           #testIntent:Landroid/content/Intent;
    :cond_1
    return v2

    .line 774
    .restart local v1       #testIntent:Landroid/content/Intent;
    :cond_2
    iget-object v3, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 775
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method static isLandscapeMode(Landroid/content/Context;)Z
    .locals 2
    .parameter "context"

    .prologue
    .line 1637
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v0

    iget v0, v0, Landroid/content/res/Configuration;->orientation:I

    const/4 v1, 0x2

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isSubmitAreaEnabled()Z
    .locals 1

    .prologue
    .line 787
    iget-boolean v0, p0, Landroid/widget/ZTESearchView;->mSubmitButtonEnabled:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Landroid/widget/ZTESearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    :cond_0
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->isIconified()Z

    move-result v0

    if-nez v0, :cond_1

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private launchIntent(Landroid/content/Intent;)V
    .locals 4
    .parameter "intent"

    .prologue
    .line 1428
    if-nez p1, :cond_0

    .line 1438
    :goto_0
    return-void

    .line 1434
    :cond_0
    :try_start_0
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1435
    :catch_0
    move-exception v0

    .line 1436
    .local v0, ex:Ljava/lang/RuntimeException;
    const-string v1, "ZTESearchView"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Failed launch activity: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V
    .locals 8
    .parameter "actionKey"
    .parameter "actionMsg"
    .parameter "query"

    .prologue
    const/4 v2, 0x0

    .line 1450
    const-string v1, "android.intent.action.SEARCH"

    .local v1, action:Ljava/lang/String;
    move-object v0, p0

    move-object v3, v2

    move-object v4, p3

    move v5, p1

    move-object v6, p2

    .line 1451
    invoke-direct/range {v0 .. v6}, Landroid/widget/ZTESearchView;->createIntent(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v7

    .line 1452
    .local v7, intent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0, v7}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    .line 1453
    return-void
.end method

.method private launchSuggestion(IILjava/lang/String;)Z
    .locals 3
    .parameter "position"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    .line 1411
    iget-object v2, p0, Landroid/widget/ZTESearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v2}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1412
    .local v0, c:Landroid/database/Cursor;
    if-eqz v0, :cond_0

    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 1414
    invoke-direct {p0, v0, p2, p3}, Landroid/widget/ZTESearchView;->createIntentFromSuggestion(Landroid/database/Cursor;ILjava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 1417
    .local v1, intent:Landroid/content/Intent;
    invoke-direct {p0, v1}, Landroid/widget/ZTESearchView;->launchIntent(Landroid/content/Intent;)V

    .line 1419
    const/4 v2, 0x1

    .line 1421
    .end local v1           #intent:Landroid/content/Intent;
    :goto_0
    return v2

    :cond_0
    const/4 v2, 0x0

    goto :goto_0
.end method

.method private onCloseClicked()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    .line 1183
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/ZTESearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1184
    .local v0, text:Ljava/lang/CharSequence;
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1185
    iget-boolean v1, p0, Landroid/widget/ZTESearchView;->mIconifiedByDefault:Z

    if-eqz v1, :cond_1

    .line 1187
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mOnCloseListener:Landroid/widget/ZTESearchView$OnCloseListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ZTESearchView;->mOnCloseListener:Landroid/widget/ZTESearchView$OnCloseListener;

    invoke-interface {v1}, Landroid/widget/ZTESearchView$OnCloseListener;->onClose()Z

    move-result v1

    if-nez v1, :cond_1

    .line 1189
    :cond_0
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->clearFocus()V

    .line 1191
    invoke-direct {p0, v3}, Landroid/widget/ZTESearchView;->updateViewsVisibility(Z)V

    .line 1200
    :cond_1
    :goto_0
    return-void

    .line 1195
    :cond_2
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    const-string v2, ""

    invoke-virtual {v1, v2}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1196
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/ZTESearchView$SearchAutoComplete;->requestFocus()Z

    .line 1197
    invoke-direct {p0, v3}, Landroid/widget/ZTESearchView;->setImeVisibility(Z)V

    goto :goto_0
.end method

.method private onItemClicked(IILjava/lang/String;)Z
    .locals 2
    .parameter "position"
    .parameter "actionKey"
    .parameter "actionMsg"

    .prologue
    const/4 v0, 0x0

    .line 1320
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mOnSuggestionListener:Landroid/widget/ZTESearchView$OnSuggestionListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ZTESearchView;->mOnSuggestionListener:Landroid/widget/ZTESearchView$OnSuggestionListener;

    invoke-interface {v1, p1}, Landroid/widget/ZTESearchView$OnSuggestionListener;->onSuggestionClick(I)Z

    move-result v1

    if-nez v1, :cond_1

    .line 1322
    :cond_0
    const/4 v1, 0x0

    invoke-direct {p0, p1, v0, v1}, Landroid/widget/ZTESearchView;->launchSuggestion(IILjava/lang/String;)Z

    .line 1323
    invoke-direct {p0, v0}, Landroid/widget/ZTESearchView;->setImeVisibility(Z)V

    .line 1324
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->dismissSuggestions()V

    .line 1325
    const/4 v0, 0x1

    .line 1327
    :cond_1
    return v0
.end method

.method private onItemSelected(I)Z
    .locals 1
    .parameter "position"

    .prologue
    .line 1331
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mOnSuggestionListener:Landroid/widget/ZTESearchView$OnSuggestionListener;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/widget/ZTESearchView;->mOnSuggestionListener:Landroid/widget/ZTESearchView$OnSuggestionListener;

    invoke-interface {v0, p1}, Landroid/widget/ZTESearchView$OnSuggestionListener;->onSuggestionSelect(I)Z

    move-result v0

    if-nez v0, :cond_1

    .line 1333
    :cond_0
    invoke-direct {p0, p1}, Landroid/widget/ZTESearchView;->rewriteQueryFromSuggestion(I)V

    .line 1334
    const/4 v0, 0x1

    .line 1336
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private onSearchClicked()V
    .locals 1

    .prologue
    .line 1203
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/widget/ZTESearchView;->updateViewsVisibility(Z)V

    .line 1204
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/ZTESearchView$SearchAutoComplete;->requestFocus()Z

    .line 1205
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/ZTESearchView;->setImeVisibility(Z)V

    .line 1206
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    if-eqz v0, :cond_0

    .line 1207
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    invoke-interface {v0, p0}, Landroid/view/View$OnClickListener;->onClick(Landroid/view/View;)V

    .line 1209
    :cond_0
    return-void
.end method

.method private onSubmitQuery()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 1165
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/ZTESearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    .line 1166
    .local v0, query:Ljava/lang/CharSequence;
    if-eqz v0, :cond_2

    invoke-static {v0}, Landroid/text/TextUtils;->getTrimmedLength(Ljava/lang/CharSequence;)I

    move-result v1

    if-lez v1, :cond_2

    .line 1167
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mOnQueryChangeListener:Landroid/widget/ZTESearchView$OnQueryTextListener;

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ZTESearchView;->mOnQueryChangeListener:Landroid/widget/ZTESearchView$OnQueryTextListener;

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/widget/ZTESearchView$OnQueryTextListener;->onQueryTextSubmit(Ljava/lang/String;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 1169
    :cond_0
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v1, :cond_1

    .line 1170
    const/4 v1, 0x0

    invoke-virtual {v0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, v3, v1, v2}, Landroid/widget/ZTESearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 1171
    invoke-direct {p0, v3}, Landroid/widget/ZTESearchView;->setImeVisibility(Z)V

    .line 1173
    :cond_1
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->dismissSuggestions()V

    .line 1176
    :cond_2
    return-void
.end method

.method private onSuggestionsKey(Landroid/view/View;ILandroid/view/KeyEvent;)Z
    .locals 9
    .parameter "v"
    .parameter "keyCode"
    .parameter "event"

    .prologue
    const/16 v8, 0x15

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 959
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v7, :cond_1

    .line 1016
    :cond_0
    :goto_0
    return v5

    .line 962
    :cond_1
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz v7, :cond_0

    .line 965
    invoke-virtual {p3}, Landroid/view/KeyEvent;->getAction()I

    move-result v7

    if-nez v7, :cond_0

    invoke-virtual {p3}, Landroid/view/KeyEvent;->hasNoModifiers()Z

    move-result v7

    if-eqz v7, :cond_0

    .line 968
    const/16 v7, 0x42

    if-eq p2, v7, :cond_2

    const/16 v7, 0x54

    if-eq p2, v7, :cond_2

    const/16 v7, 0x3d

    if-ne p2, v7, :cond_3

    .line 970
    :cond_2
    iget-object v6, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v6}, Landroid/widget/ZTESearchView$SearchAutoComplete;->getListSelection()I

    move-result v3

    .line 971
    .local v3, position:I
    const/4 v6, 0x0

    invoke-direct {p0, v3, v5, v6}, Landroid/widget/ZTESearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v5

    goto :goto_0

    .line 976
    .end local v3           #position:I
    :cond_3
    if-eq p2, v8, :cond_4

    const/16 v7, 0x16

    if-ne p2, v7, :cond_6

    .line 981
    :cond_4
    if-ne p2, v8, :cond_5

    move v4, v5

    .line 983
    .local v4, selPoint:I
    :goto_1
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v7, v4}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setSelection(I)V

    .line 984
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v7, v5}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setListSelection(I)V

    .line 985
    iget-object v5, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/widget/ZTESearchView$SearchAutoComplete;->clearListSelection()V

    .line 986
    iget-object v5, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v5, v6}, Landroid/widget/ZTESearchView$SearchAutoComplete;->ensureImeVisible(Z)V

    move v5, v6

    .line 988
    goto :goto_0

    .line 981
    .end local v4           #selPoint:I
    :cond_5
    iget-object v7, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v7}, Landroid/widget/ZTESearchView$SearchAutoComplete;->length()I

    move-result v4

    goto :goto_1

    .line 992
    :cond_6
    const/16 v6, 0x13

    if-ne p2, v6, :cond_7

    iget-object v6, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v6}, Landroid/widget/ZTESearchView$SearchAutoComplete;->getListSelection()I

    move-result v6

    if-eqz v6, :cond_0

    .line 999
    :cond_7
    iget-object v6, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v6, p2}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 1000
    .local v0, actionKey:Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsg()Ljava/lang/String;

    move-result-object v6

    if-nez v6, :cond_8

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getSuggestActionMsgColumn()Ljava/lang/String;

    move-result-object v6

    if-eqz v6, :cond_0

    .line 1004
    :cond_8
    iget-object v6, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v6}, Landroid/widget/ZTESearchView$SearchAutoComplete;->getListSelection()I

    move-result v3

    .line 1005
    .restart local v3       #position:I
    const/4 v6, -0x1

    if-eq v3, v6, :cond_0

    .line 1006
    iget-object v6, p0, Landroid/widget/ZTESearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v6}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v2

    .line 1007
    .local v2, c:Landroid/database/Cursor;
    invoke-interface {v2, v3}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 1008
    invoke-static {v2, v0}, Landroid/widget/ZTESearchView;->getActionKeyMessage(Landroid/database/Cursor;Landroid/app/SearchableInfo$ActionKeyInfo;)Ljava/lang/String;

    move-result-object v1

    .line 1009
    .local v1, actionMsg:Ljava/lang/String;
    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v6

    if-lez v6, :cond_0

    .line 1010
    invoke-direct {p0, v3, p2, v1}, Landroid/widget/ZTESearchView;->onItemClicked(IILjava/lang/String;)Z

    move-result v5

    goto/16 :goto_0
.end method

.method private onTextChanged(Ljava/lang/CharSequence;)V
    .locals 5
    .parameter "newText"

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 1151
    iget-object v4, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v4}, Landroid/widget/ZTESearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v1

    .line 1152
    .local v1, text:Ljava/lang/CharSequence;
    iput-object v1, p0, Landroid/widget/ZTESearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 1153
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    move v0, v2

    .line 1154
    .local v0, hasText:Z
    :goto_0
    invoke-direct {p0, v0}, Landroid/widget/ZTESearchView;->updateSubmitButton(Z)V

    .line 1155
    if-nez v0, :cond_2

    :goto_1
    invoke-direct {p0, v2}, Landroid/widget/ZTESearchView;->updateVoiceButton(Z)V

    .line 1156
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->updateCloseButton()V

    .line 1157
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->updateSubmitArea()V

    .line 1158
    iget-object v2, p0, Landroid/widget/ZTESearchView;->mOnQueryChangeListener:Landroid/widget/ZTESearchView$OnQueryTextListener;

    if-eqz v2, :cond_0

    iget-object v2, p0, Landroid/widget/ZTESearchView;->mOldQueryText:Ljava/lang/CharSequence;

    invoke-static {p1, v2}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 1159
    iget-object v2, p0, Landroid/widget/ZTESearchView;->mOnQueryChangeListener:Landroid/widget/ZTESearchView$OnQueryTextListener;

    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-interface {v2, v3}, Landroid/widget/ZTESearchView$OnQueryTextListener;->onQueryTextChange(Ljava/lang/String;)Z

    .line 1161
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    iput-object v2, p0, Landroid/widget/ZTESearchView;->mOldQueryText:Ljava/lang/CharSequence;

    .line 1162
    return-void

    .end local v0           #hasText:Z
    :cond_1
    move v0, v3

    .line 1153
    goto :goto_0

    .restart local v0       #hasText:Z
    :cond_2
    move v2, v3

    .line 1155
    goto :goto_1
.end method

.method private onVoiceClicked()V
    .locals 6

    .prologue
    .line 1213
    iget-object v4, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v4, :cond_1

    .line 1232
    :cond_0
    :goto_0
    return-void

    .line 1216
    :cond_1
    iget-object v2, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 1218
    .local v2, searchable:Landroid/app/SearchableInfo;
    :try_start_0
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchWebSearch()Z

    move-result v4

    if-eqz v4, :cond_2

    .line 1219
    iget-object v4, p0, Landroid/widget/ZTESearchView;->mVoiceWebSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Landroid/widget/ZTESearchView;->createVoiceWebSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v3

    .line 1221
    .local v3, webSearchIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v3}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_0
    .catch Landroid/content/ActivityNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1227
    .end local v3           #webSearchIntent:Landroid/content/Intent;
    :catch_0
    move-exception v1

    .line 1230
    .local v1, e:Landroid/content/ActivityNotFoundException;
    const-string v4, "ZTESearchView"

    const-string v5, "Could not find voice search activity"

    invoke-static {v4, v5}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1222
    .end local v1           #e:Landroid/content/ActivityNotFoundException;
    :cond_2
    :try_start_1
    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getVoiceSearchLaunchRecognizer()Z

    move-result v4

    if-eqz v4, :cond_0

    .line 1223
    iget-object v4, p0, Landroid/widget/ZTESearchView;->mVoiceAppSearchIntent:Landroid/content/Intent;

    invoke-direct {p0, v4, v2}, Landroid/widget/ZTESearchView;->createVoiceAppSearchIntent(Landroid/content/Intent;Landroid/app/SearchableInfo;)Landroid/content/Intent;

    move-result-object v0

    .line 1225
    .local v0, appSearchIntent:Landroid/content/Intent;
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->getContext()Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0
.end method

.method private postUpdateFocusedState()V
    .locals 1

    .prologue
    .line 819
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ZTESearchView;->post(Ljava/lang/Runnable;)Z

    .line 820
    return-void
.end method

.method private rewriteQueryFromSuggestion(I)V
    .locals 4
    .parameter "position"

    .prologue
    .line 1378
    iget-object v3, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/ZTESearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    .line 1379
    .local v2, oldQuery:Ljava/lang/CharSequence;
    iget-object v3, p0, Landroid/widget/ZTESearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3}, Landroid/widget/CursorAdapter;->getCursor()Landroid/database/Cursor;

    move-result-object v0

    .line 1380
    .local v0, c:Landroid/database/Cursor;
    if-nez v0, :cond_0

    .line 1398
    :goto_0
    return-void

    .line 1383
    :cond_0
    invoke-interface {v0, p1}, Landroid/database/Cursor;->moveToPosition(I)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 1385
    iget-object v3, p0, Landroid/widget/ZTESearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v3, v0}, Landroid/widget/CursorAdapter;->convertToString(Landroid/database/Cursor;)Ljava/lang/CharSequence;

    move-result-object v1

    .line 1386
    .local v1, newQuery:Ljava/lang/CharSequence;
    if-eqz v1, :cond_1

    .line 1389
    invoke-direct {p0, v1}, Landroid/widget/ZTESearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1392
    :cond_1
    invoke-direct {p0, v2}, Landroid/widget/ZTESearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1396
    .end local v1           #newQuery:Ljava/lang/CharSequence;
    :cond_2
    invoke-direct {p0, v2}, Landroid/widget/ZTESearchView;->setQuery(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private setImeVisibility(Z)V
    .locals 3
    .parameter "visible"

    .prologue
    .line 837
    if-eqz p1, :cond_1

    .line 838
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/ZTESearchView;->post(Ljava/lang/Runnable;)Z

    .line 848
    :cond_0
    :goto_0
    return-void

    .line 840
    :cond_1
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mShowImeRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v1}, Landroid/widget/ZTESearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 841
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "input_method"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/inputmethod/InputMethodManager;

    .line 844
    .local v0, imm:Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 845
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private setQuery(Ljava/lang/CharSequence;)V
    .locals 2
    .parameter "query"

    .prologue
    .line 1444
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    const/4 v1, 0x1

    invoke-virtual {v0, p1, v1}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;Z)V

    .line 1446
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setSelection(I)V

    .line 1447
    return-void

    .line 1446
    :cond_0
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    goto :goto_0
.end method

.method private updateCloseButton()V
    .locals 4

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 810
    iget-object v3, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v3}, Landroid/widget/ZTESearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v3

    invoke-static {v3}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v3

    if-nez v3, :cond_1

    move v0, v1

    .line 813
    .local v0, hasText:Z
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v3, p0, Landroid/widget/ZTESearchView;->mIconifiedByDefault:Z

    if-eqz v3, :cond_2

    iget-boolean v3, p0, Landroid/widget/ZTESearchView;->mExpandedInActionView:Z

    if-nez v3, :cond_2

    .line 814
    .local v1, showClose:Z
    :cond_0
    :goto_1
    iget-object v3, p0, Landroid/widget/ZTESearchView;->mCloseButton:Landroid/widget/ImageView;

    if-eqz v1, :cond_3

    :goto_2
    invoke-virtual {v3, v2}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 815
    iget-object v2, p0, Landroid/widget/ZTESearchView;->mCloseButton:Landroid/widget/ImageView;

    invoke-virtual {v2}, Landroid/widget/ImageView;->getDrawable()Landroid/graphics/drawable/Drawable;

    move-result-object v3

    if-eqz v0, :cond_4

    sget-object v2, Landroid/widget/ZTESearchView;->ENABLED_STATE_SET:[I

    :goto_3
    invoke-virtual {v3, v2}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 816
    return-void

    .end local v0           #hasText:Z
    .end local v1           #showClose:Z
    :cond_1
    move v0, v2

    .line 810
    goto :goto_0

    .restart local v0       #hasText:Z
    :cond_2
    move v1, v2

    .line 813
    goto :goto_1

    .line 814
    .restart local v1       #showClose:Z
    :cond_3
    const/16 v2, 0x8

    goto :goto_2

    .line 815
    :cond_4
    sget-object v2, Landroid/widget/ZTESearchView;->EMPTY_STATE_SET:[I

    goto :goto_3
.end method

.method private updateFocusedState()V
    .locals 3

    .prologue
    .line 823
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/ZTESearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    .line 824
    .local v0, focused:Z
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mSearchPlate:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_0

    sget-object v1, Landroid/widget/ZTESearchView;->FOCUSED_STATE_SET:[I

    :goto_0
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 825
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v2

    if-eqz v0, :cond_1

    sget-object v1, Landroid/widget/ZTESearchView;->FOCUSED_STATE_SET:[I

    :goto_1
    invoke-virtual {v2, v1}, Landroid/graphics/drawable/Drawable;->setState([I)Z

    .line 826
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->invalidate()V

    .line 827
    return-void

    .line 824
    :cond_0
    sget-object v1, Landroid/widget/ZTESearchView;->EMPTY_STATE_SET:[I

    goto :goto_0

    .line 825
    :cond_1
    sget-object v1, Landroid/widget/ZTESearchView;->EMPTY_STATE_SET:[I

    goto :goto_1
.end method

.method private updateQueryHint()V
    .locals 4

    .prologue
    .line 1067
    iget-object v2, p0, Landroid/widget/ZTESearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 1068
    iget-object v2, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    iget-object v3, p0, Landroid/widget/ZTESearchView;->mQueryHint:Ljava/lang/CharSequence;

    invoke-direct {p0, v3}, Landroid/widget/ZTESearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    .line 1081
    :cond_0
    :goto_0
    return-void

    .line 1069
    :cond_1
    iget-object v2, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_3

    .line 1070
    const/4 v0, 0x0

    .line 1071
    .local v0, hint:Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    .line 1072
    .local v1, hintId:I
    if-eqz v1, :cond_2

    .line 1073
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 1075
    :cond_2
    if-eqz v0, :cond_0

    .line 1076
    iget-object v2, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-direct {p0, v0}, Landroid/widget/ZTESearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0

    .line 1079
    .end local v0           #hint:Ljava/lang/CharSequence;
    .end local v1           #hintId:I
    :cond_3
    iget-object v2, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    const-string v3, ""

    invoke-direct {p0, v3}, Landroid/widget/ZTESearchView;->getDecoratedHint(Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setHint(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method private updateSearchAutoComplete()V
    .locals 6

    .prologue
    const/4 v2, 0x1

    .line 1087
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setDropDownAnimationStyle(I)V

    .line 1088
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    iget-object v3, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getSuggestThreshold()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setThreshold(I)V

    .line 1089
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    iget-object v3, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v3}, Landroid/app/SearchableInfo;->getImeOptions()I

    move-result v3

    invoke-virtual {v1, v3}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1090
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getInputType()I

    move-result v0

    .line 1093
    .local v0, inputType:I
    and-int/lit8 v1, v0, 0xf

    if-ne v1, v2, :cond_0

    .line 1096
    const v1, -0x10001

    and-int/2addr v0, v1

    .line 1097
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 1098
    const/high16 v1, 0x1

    or-int/2addr v0, v1

    .line 1105
    const/high16 v1, 0x8

    or-int/2addr v0, v1

    .line 1108
    :cond_0
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v1, v0}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setInputType(I)V

    .line 1109
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    if-eqz v1, :cond_1

    .line 1110
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    const/4 v3, 0x0

    invoke-virtual {v1, v3}, Landroid/widget/CursorAdapter;->changeCursor(Landroid/database/Cursor;)V

    .line 1114
    :cond_1
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1}, Landroid/app/SearchableInfo;->getSuggestAuthority()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_3

    .line 1115
    new-instance v1, Landroid/widget/ZTESuggestionsAdapter;

    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->getContext()Landroid/content/Context;

    move-result-object v3

    iget-object v4, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    iget-object v5, p0, Landroid/widget/ZTESearchView;->mOutsideDrawablesCache:Ljava/util/WeakHashMap;

    invoke-direct {v1, v3, p0, v4, v5}, Landroid/widget/ZTESuggestionsAdapter;-><init>(Landroid/content/Context;Landroid/widget/ZTESearchView;Landroid/app/SearchableInfo;Ljava/util/WeakHashMap;)V

    iput-object v1, p0, Landroid/widget/ZTESearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 1117
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    iget-object v3, p0, Landroid/widget/ZTESearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v1, v3}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 1118
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast v1, Landroid/widget/SuggestionsAdapter;

    iget-boolean v3, p0, Landroid/widget/ZTESearchView;->mQueryRefinement:Z

    if-eqz v3, :cond_2

    const/4 v2, 0x2

    :cond_2
    invoke-virtual {v1, v2}, Landroid/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 1122
    :cond_3
    return-void
.end method

.method private updateSubmitArea()V
    .locals 2

    .prologue
    .line 800
    const/16 v0, 0x8

    .line 801
    .local v0, visibility:I
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    iget-object v1, p0, Landroid/widget/ZTESearchView;->mSubmitButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Landroid/widget/ZTESearchView;->mVoiceButton:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getVisibility()I

    move-result v1

    if-nez v1, :cond_1

    .line 804
    :cond_0
    const/4 v0, 0x0

    .line 806
    :cond_1
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mSubmitArea:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 807
    return-void
.end method

.method private updateSubmitButton(Z)V
    .locals 2
    .parameter "hasText"

    .prologue
    .line 791
    const/16 v0, 0x8

    .line 792
    .local v0, visibility:I
    iget-boolean v1, p0, Landroid/widget/ZTESearchView;->mSubmitButtonEnabled:Z

    if-eqz v1, :cond_1

    invoke-direct {p0}, Landroid/widget/ZTESearchView;->isSubmitAreaEnabled()Z

    move-result v1

    if-eqz v1, :cond_1

    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->hasFocus()Z

    move-result v1

    if-eqz v1, :cond_1

    if-nez p1, :cond_0

    iget-boolean v1, p0, Landroid/widget/ZTESearchView;->mVoiceButtonEnabled:Z

    if-nez v1, :cond_1

    .line 794
    :cond_0
    const/4 v0, 0x0

    .line 796
    :cond_1
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mSubmitButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 797
    return-void
.end method

.method private updateViewsVisibility(Z)V
    .locals 7
    .parameter "collapsed"

    .prologue
    const/4 v4, 0x1

    const/16 v3, 0x8

    const/4 v2, 0x0

    .line 754
    iput-boolean p1, p0, Landroid/widget/ZTESearchView;->mIconified:Z

    .line 756
    if-eqz p1, :cond_0

    move v1, v2

    .line 758
    .local v1, visCollapsed:I
    :goto_0
    iget-object v5, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v5}, Landroid/widget/ZTESearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v5

    if-nez v5, :cond_1

    move v0, v4

    .line 760
    .local v0, hasText:Z
    :goto_1
    iget-object v5, p0, Landroid/widget/ZTESearchView;->mSearchButton:Landroid/view/View;

    invoke-virtual {v5, v1}, Landroid/view/View;->setVisibility(I)V

    .line 761
    invoke-direct {p0, v0}, Landroid/widget/ZTESearchView;->updateSubmitButton(Z)V

    .line 762
    iget-object v6, p0, Landroid/widget/ZTESearchView;->mSearchEditFrame:Landroid/view/View;

    if-eqz p1, :cond_2

    move v5, v3

    :goto_2
    invoke-virtual {v6, v5}, Landroid/view/View;->setVisibility(I)V

    .line 763
    iget-object v5, p0, Landroid/widget/ZTESearchView;->mSearchHintIcon:Landroid/widget/ImageView;

    iget-boolean v6, p0, Landroid/widget/ZTESearchView;->mIconifiedByDefault:Z

    if-eqz v6, :cond_3

    :goto_3
    invoke-virtual {v5, v3}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 764
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->updateCloseButton()V

    .line 765
    if-nez v0, :cond_4

    :goto_4
    invoke-direct {p0, v4}, Landroid/widget/ZTESearchView;->updateVoiceButton(Z)V

    .line 766
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->updateSubmitArea()V

    .line 767
    return-void

    .end local v0           #hasText:Z
    .end local v1           #visCollapsed:I
    :cond_0
    move v1, v3

    .line 756
    goto :goto_0

    .restart local v1       #visCollapsed:I
    :cond_1
    move v0, v2

    .line 758
    goto :goto_1

    .restart local v0       #hasText:Z
    :cond_2
    move v5, v2

    .line 762
    goto :goto_2

    :cond_3
    move v3, v2

    .line 763
    goto :goto_3

    :cond_4
    move v4, v2

    .line 765
    goto :goto_4
.end method

.method private updateVoiceButton(Z)V
    .locals 3
    .parameter "empty"

    .prologue
    .line 1131
    const/16 v0, 0x8

    .line 1132
    .local v0, visibility:I
    iget-boolean v1, p0, Landroid/widget/ZTESearchView;->mVoiceButtonEnabled:Z

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->isIconified()Z

    move-result v1

    if-nez v1, :cond_0

    if-eqz p1, :cond_0

    .line 1133
    const/4 v0, 0x0

    .line 1134
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mSubmitButton:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 1136
    :cond_0
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mVoiceButton:Landroid/view/View;

    invoke-virtual {v1, v0}, Landroid/view/View;->setVisibility(I)V

    .line 1137
    return-void
.end method


# virtual methods
.method public clearFocus()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 443
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ZTESearchView;->mClearingFocus:Z

    .line 444
    invoke-direct {p0, v1}, Landroid/widget/ZTESearchView;->setImeVisibility(Z)V

    .line 445
    invoke-super {p0}, Landroid/widget/LinearLayout;->clearFocus()V

    .line 446
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/ZTESearchView$SearchAutoComplete;->clearFocus()V

    .line 447
    iput-boolean v1, p0, Landroid/widget/ZTESearchView;->mClearingFocus:Z

    .line 448
    return-void
.end method

.method public getImeOptions()I
    .locals 1

    .prologue
    .line 396
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/ZTESearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    return v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 418
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/ZTESearchView$SearchAutoComplete;->getInputType()I

    move-result v0

    return v0
.end method

.method public getMaxWidth()I
    .locals 1

    .prologue
    .line 710
    iget v0, p0, Landroid/widget/ZTESearchView;->mMaxWidth:I

    return v0
.end method

.method public getQuery()Ljava/lang/CharSequence;
    .locals 1

    .prologue
    .line 505
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/ZTESearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v0

    return-object v0
.end method

.method public getQueryHint()Ljava/lang/CharSequence;
    .locals 3

    .prologue
    .line 549
    iget-object v2, p0, Landroid/widget/ZTESearchView;->mQueryHint:Ljava/lang/CharSequence;

    if-eqz v2, :cond_1

    .line 550
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 559
    :cond_0
    :goto_0
    return-object v0

    .line 551
    :cond_1
    iget-object v2, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v2, :cond_2

    .line 552
    const/4 v0, 0x0

    .line 553
    .local v0, hint:Ljava/lang/CharSequence;
    iget-object v2, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v2}, Landroid/app/SearchableInfo;->getHintId()I

    move-result v1

    .line 554
    .local v1, hintId:I
    if-eqz v1, :cond_0

    .line 555
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    goto :goto_0

    .line 559
    .end local v0           #hint:Ljava/lang/CharSequence;
    .end local v1           #hintId:I
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getSuggestionsAdapter()Landroid/widget/CursorAdapter;
    .locals 1

    .prologue
    .line 688
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    return-object v0
.end method

.method public isIconfiedByDefault()Z
    .locals 1

    .prologue
    .line 588
    iget-boolean v0, p0, Landroid/widget/ZTESearchView;->mIconifiedByDefault:Z

    return v0
.end method

.method public isIconified()Z
    .locals 1

    .prologue
    .line 616
    iget-boolean v0, p0, Landroid/widget/ZTESearchView;->mIconified:Z

    return v0
.end method

.method public isQueryRefinementEnabled()Z
    .locals 1

    .prologue
    .line 668
    iget-boolean v0, p0, Landroid/widget/ZTESearchView;->mQueryRefinement:Z

    return v0
.end method

.method public isSubmitButtonEnabled()Z
    .locals 1

    .prologue
    .line 638
    iget-boolean v0, p0, Landroid/widget/ZTESearchView;->mSubmitButtonEnabled:Z

    return v0
.end method

.method public onActionViewCollapsed()V
    .locals 2

    .prologue
    .line 1256
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->clearFocus()V

    .line 1257
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Landroid/widget/ZTESearchView;->updateViewsVisibility(Z)V

    .line 1258
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    iget v1, p0, Landroid/widget/ZTESearchView;->mCollapsedImeOptions:I

    invoke-virtual {v0, v1}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1259
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/ZTESearchView;->mExpandedInActionView:Z

    .line 1260
    return-void
.end method

.method public onActionViewExpanded()V
    .locals 3

    .prologue
    .line 1267
    iget-boolean v0, p0, Landroid/widget/ZTESearchView;->mExpandedInActionView:Z

    if-eqz v0, :cond_0

    .line 1274
    :goto_0
    return-void

    .line 1269
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/ZTESearchView;->mExpandedInActionView:Z

    .line 1270
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/ZTESearchView$SearchAutoComplete;->getImeOptions()I

    move-result v0

    iput v0, p0, Landroid/widget/ZTESearchView;->mCollapsedImeOptions:I

    .line 1271
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    iget v1, p0, Landroid/widget/ZTESearchView;->mCollapsedImeOptions:I

    const/high16 v2, 0x200

    or-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 1272
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    const-string v1, ""

    invoke-virtual {v0, v1}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 1273
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/widget/ZTESearchView;->setIconified(Z)V

    goto :goto_0
.end method

.method protected onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 831
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mUpdateDrawableStateRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ZTESearchView;->removeCallbacks(Ljava/lang/Runnable;)Z

    .line 832
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mReleaseCursorRunnable:Ljava/lang/Runnable;

    invoke-virtual {p0, v0}, Landroid/widget/ZTESearchView;->post(Ljava/lang/Runnable;)Z

    .line 833
    invoke-super {p0}, Landroid/widget/LinearLayout;->onDetachedFromWindow()V

    .line 834
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .parameter "event"

    .prologue
    .line 1278
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 1279
    const-class v0, Landroid/widget/ZTESearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 1280
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .parameter "info"

    .prologue
    .line 1284
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 1285
    const-class v0, Landroid/widget/ZTESearchView;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 1286
    return-void
.end method

.method public onKeyDown(ILandroid/view/KeyEvent;)Z
    .locals 3
    .parameter "keyCode"
    .parameter "event"

    .prologue
    .line 886
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-nez v1, :cond_0

    .line 887
    const/4 v1, 0x0

    .line 899
    :goto_0
    return v1

    .line 892
    :cond_0
    iget-object v1, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    invoke-virtual {v1, p1}, Landroid/app/SearchableInfo;->findActionKey(I)Landroid/app/SearchableInfo$ActionKeyInfo;

    move-result-object v0

    .line 893
    .local v0, actionKey:Landroid/app/SearchableInfo$ActionKeyInfo;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 894
    invoke-virtual {v0}, Landroid/app/SearchableInfo$ActionKeyInfo;->getQueryActionMsg()Ljava/lang/String;

    move-result-object v1

    iget-object v2, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v2}, Landroid/widget/ZTESearchView$SearchAutoComplete;->getText()Landroid/text/Editable;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {p0, p1, v1, v2}, Landroid/widget/ZTESearchView;->launchQuerySearch(ILjava/lang/String;Ljava/lang/String;)V

    .line 896
    const/4 v1, 0x1

    goto :goto_0

    .line 899
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onKeyDown(ILandroid/view/KeyEvent;)Z

    move-result v1

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 3
    .parameter "widthMeasureSpec"
    .parameter "heightMeasureSpec"

    .prologue
    .line 716
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->isIconified()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 717
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    .line 746
    :goto_0
    return-void

    .line 721
    :cond_0
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v1

    .line 722
    .local v1, widthMode:I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v0

    .line 724
    .local v0, width:I
    sparse-switch v1, :sswitch_data_0

    .line 744
    :cond_1
    :goto_1
    const/high16 v1, 0x4000

    .line 745
    invoke-static {v0, v1}, Landroid/view/View$MeasureSpec;->makeMeasureSpec(II)I

    move-result v2

    invoke-super {p0, v2, p2}, Landroid/widget/LinearLayout;->onMeasure(II)V

    goto :goto_0

    .line 727
    :sswitch_0
    iget v2, p0, Landroid/widget/ZTESearchView;->mMaxWidth:I

    if-lez v2, :cond_2

    .line 728
    iget v2, p0, Landroid/widget/ZTESearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 730
    :cond_2
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->getPreferredWidth()I

    move-result v2

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    .line 732
    goto :goto_1

    .line 735
    :sswitch_1
    iget v2, p0, Landroid/widget/ZTESearchView;->mMaxWidth:I

    if-lez v2, :cond_1

    .line 736
    iget v2, p0, Landroid/widget/ZTESearchView;->mMaxWidth:I

    invoke-static {v2, v0}, Ljava/lang/Math;->min(II)I

    move-result v0

    goto :goto_1

    .line 741
    :sswitch_2
    iget v2, p0, Landroid/widget/ZTESearchView;->mMaxWidth:I

    if-lez v2, :cond_3

    iget v0, p0, Landroid/widget/ZTESearchView;->mMaxWidth:I

    :goto_2
    goto :goto_1

    :cond_3
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->getPreferredWidth()I

    move-result v0

    goto :goto_2

    .line 724
    :sswitch_data_0
    .sparse-switch
        -0x80000000 -> :sswitch_0
        0x0 -> :sswitch_2
        0x40000000 -> :sswitch_1
    .end sparse-switch
.end method

.method onQueryRefine(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "queryText"

    .prologue
    .line 855
    invoke-direct {p0, p1}, Landroid/widget/ZTESearchView;->setQuery(Ljava/lang/CharSequence;)V

    .line 856
    return-void
.end method

.method public onRtlPropertiesChanged(I)V
    .locals 1
    .parameter "layoutDirection"

    .prologue
    .line 1371
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setLayoutDirection(I)V

    .line 1372
    return-void
.end method

.method onTextFocusChanged()V
    .locals 1

    .prologue
    .line 1235
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ZTESearchView;->updateViewsVisibility(Z)V

    .line 1238
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->postUpdateFocusedState()V

    .line 1239
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v0}, Landroid/widget/ZTESearchView$SearchAutoComplete;->hasFocus()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1240
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->forceSuggestionQuery()V

    .line 1242
    :cond_0
    return-void
.end method

.method public onWindowFocusChanged(Z)V
    .locals 0
    .parameter "hasWindowFocus"

    .prologue
    .line 1246
    invoke-super {p0, p1}, Landroid/widget/LinearLayout;->onWindowFocusChanged(Z)V

    .line 1248
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->postUpdateFocusedState()V

    .line 1249
    return-void
.end method

.method public requestFocus(ILandroid/graphics/Rect;)Z
    .locals 3
    .parameter "direction"
    .parameter "previouslyFocusedRect"

    .prologue
    const/4 v1, 0x0

    .line 425
    iget-boolean v2, p0, Landroid/widget/ZTESearchView;->mClearingFocus:Z

    if-eqz v2, :cond_1

    move v0, v1

    .line 436
    :cond_0
    :goto_0
    return v0

    .line 427
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->isFocusable()Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    goto :goto_0

    .line 429
    :cond_2
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->isIconified()Z

    move-result v2

    if-nez v2, :cond_3

    .line 430
    iget-object v2, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v2, p1, p2}, Landroid/widget/ZTESearchView$SearchAutoComplete;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    .line 431
    .local v0, result:Z
    if-eqz v0, :cond_0

    .line 432
    invoke-direct {p0, v1}, Landroid/widget/ZTESearchView;->updateViewsVisibility(Z)V

    goto :goto_0

    .line 436
    .end local v0           #result:Z
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/widget/LinearLayout;->requestFocus(ILandroid/graphics/Rect;)Z

    move-result v0

    goto :goto_0
.end method

.method public setAppSearchData(Landroid/os/Bundle;)V
    .locals 0
    .parameter "appSearchData"

    .prologue
    .line 373
    iput-object p1, p0, Landroid/widget/ZTESearchView;->mAppSearchData:Landroid/os/Bundle;

    .line 374
    return-void
.end method

.method public setIconified(Z)V
    .locals 0
    .parameter "iconify"

    .prologue
    .line 602
    if-eqz p1, :cond_0

    .line 603
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->onCloseClicked()V

    .line 607
    :goto_0
    return-void

    .line 605
    :cond_0
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->onSearchClicked()V

    goto :goto_0
.end method

.method public setIconifiedByDefault(Z)V
    .locals 1
    .parameter "iconified"

    .prologue
    .line 575
    iget-boolean v0, p0, Landroid/widget/ZTESearchView;->mIconifiedByDefault:Z

    if-ne v0, p1, :cond_0

    .line 579
    :goto_0
    return-void

    .line 576
    :cond_0
    iput-boolean p1, p0, Landroid/widget/ZTESearchView;->mIconifiedByDefault:Z

    .line 577
    invoke-direct {p0, p1}, Landroid/widget/ZTESearchView;->updateViewsVisibility(Z)V

    .line 578
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->updateQueryHint()V

    goto :goto_0
.end method

.method public setImeOptions(I)V
    .locals 1
    .parameter "imeOptions"

    .prologue
    .line 385
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setImeOptions(I)V

    .line 386
    return-void
.end method

.method public setInputType(I)V
    .locals 1
    .parameter "inputType"

    .prologue
    .line 408
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setInputType(I)V

    .line 409
    return-void
.end method

.method public setMaxWidth(I)V
    .locals 0
    .parameter "maxpixels"

    .prologue
    .line 697
    iput p1, p0, Landroid/widget/ZTESearchView;->mMaxWidth:I

    .line 699
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->requestLayout()V

    .line 700
    return-void
.end method

.method public setOnCloseListener(Landroid/widget/ZTESearchView$OnCloseListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 466
    iput-object p1, p0, Landroid/widget/ZTESearchView;->mOnCloseListener:Landroid/widget/ZTESearchView$OnCloseListener;

    .line 467
    return-void
.end method

.method public setOnQueryTextFocusChangeListener(Landroid/view/View$OnFocusChangeListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 475
    iput-object p1, p0, Landroid/widget/ZTESearchView;->mOnQueryTextFocusChangeListener:Landroid/view/View$OnFocusChangeListener;

    .line 476
    return-void
.end method

.method public setOnQueryTextListener(Landroid/widget/ZTESearchView$OnQueryTextListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 457
    iput-object p1, p0, Landroid/widget/ZTESearchView;->mOnQueryChangeListener:Landroid/widget/ZTESearchView$OnQueryTextListener;

    .line 458
    return-void
.end method

.method public setOnSearchClickListener(Landroid/view/View$OnClickListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 496
    iput-object p1, p0, Landroid/widget/ZTESearchView;->mOnSearchClickListener:Landroid/view/View$OnClickListener;

    .line 497
    return-void
.end method

.method public setOnSuggestionListener(Landroid/widget/ZTESearchView$OnSuggestionListener;)V
    .locals 0
    .parameter "listener"

    .prologue
    .line 484
    iput-object p1, p0, Landroid/widget/ZTESearchView;->mOnSuggestionListener:Landroid/widget/ZTESearchView$OnSuggestionListener;

    .line 485
    return-void
.end method

.method public setQuery(Ljava/lang/CharSequence;Z)V
    .locals 2
    .parameter "query"
    .parameter "submit"

    .prologue
    .line 517
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v0, p1}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setText(Ljava/lang/CharSequence;)V

    .line 518
    if-eqz p1, :cond_0

    .line 519
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    invoke-virtual {v1}, Landroid/widget/ZTESearchView$SearchAutoComplete;->length()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setSelection(I)V

    .line 520
    iput-object p1, p0, Landroid/widget/ZTESearchView;->mUserQuery:Ljava/lang/CharSequence;

    .line 524
    :cond_0
    if-eqz p2, :cond_1

    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 525
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->onSubmitQuery()V

    .line 527
    :cond_1
    return-void
.end method

.method public setQueryHint(Ljava/lang/CharSequence;)V
    .locals 0
    .parameter "hint"

    .prologue
    .line 538
    iput-object p1, p0, Landroid/widget/ZTESearchView;->mQueryHint:Ljava/lang/CharSequence;

    .line 539
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->updateQueryHint()V

    .line 540
    return-void
.end method

.method public setQueryRefinementEnabled(Z)V
    .locals 2
    .parameter "enable"

    .prologue
    .line 656
    iput-boolean p1, p0, Landroid/widget/ZTESearchView;->mQueryRefinement:Z

    .line 657
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    instance-of v0, v0, Landroid/widget/SuggestionsAdapter;

    if-eqz v0, :cond_0

    .line 658
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    check-cast v0, Landroid/widget/SuggestionsAdapter;

    if-eqz p1, :cond_1

    const/4 v1, 0x2

    :goto_0
    invoke-virtual {v0, v1}, Landroid/widget/SuggestionsAdapter;->setQueryRefinement(I)V

    .line 661
    :cond_0
    return-void

    .line 658
    :cond_1
    const/4 v1, 0x1

    goto :goto_0
.end method

.method public setSearchableInfo(Landroid/app/SearchableInfo;)V
    .locals 2
    .parameter "searchable"

    .prologue
    .line 351
    iput-object p1, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    .line 352
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mSearchable:Landroid/app/SearchableInfo;

    if-eqz v0, :cond_0

    .line 353
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->updateSearchAutoComplete()V

    .line 354
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->updateQueryHint()V

    .line 357
    :cond_0
    invoke-direct {p0}, Landroid/widget/ZTESearchView;->hasVoiceSearch()Z

    move-result v0

    iput-boolean v0, p0, Landroid/widget/ZTESearchView;->mVoiceButtonEnabled:Z

    .line 359
    iget-boolean v0, p0, Landroid/widget/ZTESearchView;->mVoiceButtonEnabled:Z

    if-eqz v0, :cond_1

    .line 362
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    const-string/jumbo v1, "nm"

    invoke-virtual {v0, v1}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setPrivateImeOptions(Ljava/lang/String;)V

    .line 364
    :cond_1
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ZTESearchView;->updateViewsVisibility(Z)V

    .line 365
    return-void
.end method

.method public setSubmitButtonEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 628
    iput-boolean p1, p0, Landroid/widget/ZTESearchView;->mSubmitButtonEnabled:Z

    .line 629
    invoke-virtual {p0}, Landroid/widget/ZTESearchView;->isIconified()Z

    move-result v0

    invoke-direct {p0, v0}, Landroid/widget/ZTESearchView;->updateViewsVisibility(Z)V

    .line 630
    return-void
.end method

.method public setSuggestionsAdapter(Landroid/widget/CursorAdapter;)V
    .locals 2
    .parameter "adapter"

    .prologue
    .line 678
    iput-object p1, p0, Landroid/widget/ZTESearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    .line 680
    iget-object v0, p0, Landroid/widget/ZTESearchView;->mQueryTextView:Landroid/widget/ZTESearchView$SearchAutoComplete;

    iget-object v1, p0, Landroid/widget/ZTESearchView;->mSuggestionsAdapter:Landroid/widget/CursorAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ZTESearchView$SearchAutoComplete;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 681
    return-void
.end method
