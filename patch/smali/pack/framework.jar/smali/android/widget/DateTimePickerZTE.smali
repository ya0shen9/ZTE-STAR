.class public Landroid/widget/DateTimePickerZTE;
.super Landroid/widget/FrameLayout;
.source "DateTimePickerZTE.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/DateTimePickerZTE$SavedState;,
        Landroid/widget/DateTimePickerZTE$OnTimeChangedListener;,
        Landroid/widget/DateTimePickerZTE$OnDateChangedListener;
    }
.end annotation


# static fields
.field private static final DATE_FORMAT:Ljava/lang/String; = "MM/dd/yyyy"

.field private static final DEFAULT_CALENDAR_VIEW_SHOWN:Z = true

.field private static final DEFAULT_ENABLED_STATE:Z = true

.field private static final DEFAULT_END_YEAR:I = 0x834

.field private static final DEFAULT_SPINNERS_SHOWN:Z = true

.field private static final DEFAULT_START_YEAR:I = 0x76c

.field private static final HOURS_IN_HALF_DAY:I = 0xc

.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NO_OP_CHANGE_LISTENER:Landroid/widget/DateTimePickerZTE$OnTimeChangedListener;


# instance fields
.field private final mAmPmButton:Landroid/widget/Button;

.field private final mAmPmSpinner:Landroid/widget/NumberPickerZTE;

.field private final mAmPmSpinnerInput:Landroid/widget/EditText;

.field private final mAmPmStrings:[Ljava/lang/String;

.field private final mCalendarView:Landroid/widget/CalendarView;

.field private mCurrentDate:Ljava/util/Calendar;

.field private mCurrentLocale:Ljava/util/Locale;

.field private final mDateFormat:Ljava/text/DateFormat;

.field private final mDaySpinner:Landroid/widget/NumberPickerZTE;

.field private final mDaySpinnerInput:Landroid/widget/EditText;

.field private final mDividerSpinner:Landroid/widget/NumberPickerZTE;

.field private final mHourSpinner:Landroid/widget/NumberPickerZTE;

.field private final mHourSpinnerInput:Landroid/widget/EditText;

.field private mIs24HourView:Z

.field private mIsAm:Z

.field private mIsEnabled:Z

.field private mMaxDate:Ljava/util/Calendar;

.field private mMinDate:Ljava/util/Calendar;

.field private final mMinuteSpinner:Landroid/widget/NumberPickerZTE;

.field private final mMinuteSpinnerInput:Landroid/widget/EditText;

.field private final mMonthSpinner:Landroid/widget/NumberPickerZTE;

.field private final mMonthSpinnerInput:Landroid/widget/EditText;

.field private mNumberOfMonths:I

.field private mOnDateChangedListener:Landroid/widget/DateTimePickerZTE$OnDateChangedListener;

.field private mOnTimeChangedListener:Landroid/widget/DateTimePickerZTE$OnTimeChangedListener;

.field private mShortMonths:[Ljava/lang/String;

.field private final mSpinners:Landroid/widget/LinearLayout;

.field private mTempCalendar:Ljava/util/Calendar;

.field private mTempDate:Ljava/util/Calendar;

.field private final mYearSpinner:Landroid/widget/NumberPickerZTE;

.field private final mYearSpinnerInput:Landroid/widget/EditText;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 74
    const-class v0, Landroid/widget/DatePicker;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Landroid/widget/DateTimePickerZTE;->LOG_TAG:Ljava/lang/String;

    .line 128
    new-instance v0, Landroid/widget/DateTimePickerZTE$1;

    invoke-direct {v0}, Landroid/widget/DateTimePickerZTE$1;-><init>()V

    sput-object v0, Landroid/widget/DateTimePickerZTE;->NO_OP_CHANGE_LISTENER:Landroid/widget/DateTimePickerZTE$OnTimeChangedListener;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 195
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Landroid/widget/DateTimePickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 196
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 199
    const v0, 0x101035c

    invoke-direct {p0, p1, p2, v0}, Landroid/widget/DateTimePickerZTE;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 200
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 21
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 203
    invoke-direct/range {p0 .. p3}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 112
    new-instance v17, Ljava/text/SimpleDateFormat;

    const-string v18, "MM/dd/yyyy"

    invoke-direct/range {v17 .. v18}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateTimePickerZTE;->mDateFormat:Ljava/text/DateFormat;

    .line 124
    const/16 v17, 0x1

    move/from16 v0, v17

    move-object/from16 v1, p0

    iput-boolean v0, v1, Landroid/widget/DateTimePickerZTE;->mIsEnabled:Z

    .line 206
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v1}, Landroid/widget/DateTimePickerZTE;->setCurrentLocale(Ljava/util/Locale;)V

    .line 208
    sget-object v17, Lcom/android/internal/R$styleable;->DatePicker:[I

    const/16 v18, 0x0

    move-object/from16 v0, p1

    move-object/from16 v1, p2

    move-object/from16 v2, v17

    move/from16 v3, p3

    move/from16 v4, v18

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v6

    .line 210
    .local v6, "attributesArray":Landroid/content/res/TypedArray;
    const/16 v17, 0x4

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v15

    .line 212
    .local v15, "spinnersShown":Z
    const/16 v17, 0x5

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v7

    .line 214
    .local v7, "calendarViewShown":Z
    const/16 v17, 0x0

    const/16 v18, 0x76c

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v16

    .line 216
    .local v16, "startYear":I
    const/16 v17, 0x1

    const/16 v18, 0x834

    move/from16 v0, v17

    move/from16 v1, v18

    invoke-virtual {v6, v0, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v9

    .line 217
    .local v9, "endYear":I
    const/16 v17, 0x2

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v13

    .line 218
    .local v13, "minDate":Ljava/lang/String;
    const/16 v17, 0x3

    move/from16 v0, v17

    invoke-virtual {v6, v0}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v12

    .line 221
    .local v12, "maxDate":Ljava/lang/String;
    const v11, 0x208001d

    .line 222
    .local v11, "layoutResourceId":I
    invoke-virtual {v6}, Landroid/content/res/TypedArray;->recycle()V

    .line 224
    const-string v17, "layout_inflater"

    move-object/from16 v0, p1

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/view/LayoutInflater;

    .line 226
    .local v10, "inflater":Landroid/view/LayoutInflater;
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v10, v11, v0, v1}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    .line 228
    new-instance v14, Landroid/widget/DateTimePickerZTE$2;

    move-object/from16 v0, p0

    invoke-direct {v14, v0}, Landroid/widget/DateTimePickerZTE$2;-><init>(Landroid/widget/DateTimePickerZTE;)V

    .line 264
    .local v14, "onChangeListener":Landroid/widget/NumberPickerZTE$OnValueChangeListener;
    const-string v17, "guojingdong"

    const-string v18, "androidzte.R.id.pickers=34340916"

    invoke-static/range {v17 .. v18}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 265
    const v17, 0x20c0034

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/DateTimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/LinearLayout;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateTimePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    .line 269
    const v17, 0x20c002d

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/DateTimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/CalendarView;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateTimePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    .line 270
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/DateTimePickerZTE$3;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/DateTimePickerZTE$3;-><init>(Landroid/widget/DateTimePickerZTE;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/CalendarView;->setOnDateChangeListener(Landroid/widget/CalendarView$OnDateChangeListener;)V

    .line 279
    const v17, 0x20c0030

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/DateTimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/NumberPickerZTE;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateTimePickerZTE;->mDaySpinner:Landroid/widget/NumberPickerZTE;

    .line 281
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mDaySpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x64

    invoke-virtual/range {v17 .. v19}, Landroid/widget/NumberPickerZTE;->setOnLongPressUpdateInterval(J)V

    .line 282
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mDaySpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/NumberPickerZTE;->setOnValueChangedListener(Landroid/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 283
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mDaySpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const v18, 0x10202ec

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateTimePickerZTE;->mDaySpinnerInput:Landroid/widget/EditText;

    .line 284
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mDaySpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const/16 v18, 0x19

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setInputSize(I)V

    .line 285
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mDaySpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const/16 v18, 0x12

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 287
    const v17, 0x20c002f

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/DateTimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/NumberPickerZTE;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    .line 288
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setMinValue(I)V

    .line 289
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget v0, v0, Landroid/widget/DateTimePickerZTE;->mNumberOfMonths:I

    move/from16 v18, v0

    add-int/lit8 v18, v18, -0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 291
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mShortMonths:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 292
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const-wide/16 v18, 0xc8

    invoke-virtual/range {v17 .. v19}, Landroid/widget/NumberPickerZTE;->setOnLongPressUpdateInterval(J)V

    .line 293
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/NumberPickerZTE;->setOnValueChangedListener(Landroid/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 294
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const v18, 0x10202ec

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateTimePickerZTE;->mMonthSpinnerInput:Landroid/widget/EditText;

    .line 295
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const/16 v18, 0x19

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setInputSize(I)V

    .line 296
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const/16 v18, 0x12

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 299
    const v17, 0x20c002e

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/DateTimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/NumberPickerZTE;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateTimePickerZTE;->mYearSpinner:Landroid/widget/NumberPickerZTE;

    .line 300
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mYearSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x64

    invoke-virtual/range {v17 .. v19}, Landroid/widget/NumberPickerZTE;->setOnLongPressUpdateInterval(J)V

    .line 301
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mYearSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v14}, Landroid/widget/NumberPickerZTE;->setOnValueChangedListener(Landroid/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 302
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mYearSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const v18, 0x10202ec

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateTimePickerZTE;->mYearSpinnerInput:Landroid/widget/EditText;

    .line 303
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mYearSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const/16 v18, 0x19

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setInputSize(I)V

    .line 304
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mYearSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const/16 v18, 0x12

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 309
    if-nez v15, :cond_4

    if-nez v7, :cond_4

    .line 310
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/DateTimePickerZTE;->setSpinnersShown(Z)V

    .line 317
    :goto_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->clear()V

    .line 318
    invoke-static {v13}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_5

    .line 319
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v13, v1}, Landroid/widget/DateTimePickerZTE;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 320
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    .line 325
    :cond_0
    :goto_1
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/DateTimePickerZTE;->setMinDate(J)V

    .line 328
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->clear()V

    .line 329
    invoke-static {v12}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v17

    if-nez v17, :cond_6

    .line 330
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-direct {v0, v12, v1}, Landroid/widget/DateTimePickerZTE;->parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z

    move-result v17

    if-nez v17, :cond_1

    .line 331
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xb

    const/16 v19, 0x1f

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v1, v2}, Ljava/util/Calendar;->set(III)V

    .line 336
    :cond_1
    :goto_2
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v17, v0

    invoke-virtual/range {v17 .. v17}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v17

    move-object/from16 v0, p0

    move-wide/from16 v1, v17

    invoke-virtual {v0, v1, v2}, Landroid/widget/DateTimePickerZTE;->setMaxDate(J)V

    .line 339
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v17, v0

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v18

    invoke-virtual/range {v17 .. v19}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 340
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v17

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v18, v0

    const/16 v19, 0x2

    invoke-virtual/range {v18 .. v19}, Ljava/util/Calendar;->get(I)I

    move-result v18

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    move-object/from16 v19, v0

    const/16 v20, 0x5

    invoke-virtual/range {v19 .. v20}, Ljava/util/Calendar;->get(I)I

    move-result v19

    const/16 v20, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    move/from16 v2, v18

    move/from16 v3, v19

    move-object/from16 v4, v20

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/widget/DateTimePickerZTE;->init(IIILandroid/widget/DateTimePickerZTE$OnDateChangedListener;)V

    .line 348
    const v17, 0x20c0035

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/DateTimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/NumberPickerZTE;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateTimePickerZTE;->mHourSpinner:Landroid/widget/NumberPickerZTE;

    .line 349
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mHourSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/DateTimePickerZTE$4;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/DateTimePickerZTE$4;-><init>(Landroid/widget/DateTimePickerZTE;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setOnValueChangedListener(Landroid/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 362
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mHourSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const v18, 0x10202ec

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateTimePickerZTE;->mHourSpinnerInput:Landroid/widget/EditText;

    .line 363
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mHourSpinnerInput:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 364
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mHourSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const/16 v18, 0x19

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setInputSize(I)V

    .line 365
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mHourSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const/16 v18, 0x12

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 372
    const v17, 0x20c0031

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/DateTimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/NumberPickerZTE;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateTimePickerZTE;->mDividerSpinner:Landroid/widget/NumberPickerZTE;

    .line 373
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mDividerSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const/16 v18, 0x19

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setInputSize(I)V

    .line 374
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mDividerSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setMinValue(I)V

    .line 375
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mDividerSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 376
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v8, v0, [Ljava/lang/String;

    const/16 v17, 0x0

    const-string v18, ":"

    aput-object v18, v8, v17

    .line 377
    .local v8, "divider":[Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mDividerSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    move-object/from16 v0, v17

    invoke-virtual {v0, v8}, Landroid/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 378
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mDividerSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 382
    const v17, 0x20c0032

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/DateTimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/NumberPickerZTE;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateTimePickerZTE;->mMinuteSpinner:Landroid/widget/NumberPickerZTE;

    .line 383
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mMinuteSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setMinValue(I)V

    .line 384
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mMinuteSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const/16 v18, 0x3b

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 385
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mMinuteSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const/16 v18, 0x19

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setInputSize(I)V

    .line 386
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mMinuteSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const/16 v18, 0x12

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 387
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mMinuteSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const-wide/16 v18, 0x64

    invoke-virtual/range {v17 .. v19}, Landroid/widget/NumberPickerZTE;->setOnLongPressUpdateInterval(J)V

    .line 388
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mMinuteSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    invoke-static {}, Landroid/widget/NumberPickerZTE;->getTwoDigitFormatter()Landroid/widget/NumberPickerZTE$Formatter;

    move-result-object v18

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setFormatter(Landroid/widget/NumberPickerZTE$Formatter;)V

    .line 389
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mMinuteSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/DateTimePickerZTE$5;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/DateTimePickerZTE$5;-><init>(Landroid/widget/DateTimePickerZTE;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setOnValueChangedListener(Landroid/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 412
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mMinuteSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const v18, 0x10202ec

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateTimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    .line 413
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x5

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setImeOptions(I)V

    .line 416
    new-instance v17, Ljava/text/DateFormatSymbols;

    invoke-direct/range {v17 .. v17}, Ljava/text/DateFormatSymbols;-><init>()V

    invoke-virtual/range {v17 .. v17}, Ljava/text/DateFormatSymbols;->getAmPmStrings()[Ljava/lang/String;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateTimePickerZTE;->mAmPmStrings:[Ljava/lang/String;

    .line 419
    const v17, 0x20c0033

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/DateTimePickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v5

    .line 420
    .local v5, "amPmView":Landroid/view/View;
    instance-of v0, v5, Landroid/widget/Button;

    move/from16 v17, v0

    if-eqz v17, :cond_7

    .line 421
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateTimePickerZTE;->mAmPmSpinner:Landroid/widget/NumberPickerZTE;

    .line 422
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateTimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 423
    check-cast v5, Landroid/widget/Button;

    .end local v5    # "amPmView":Landroid/view/View;
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/DateTimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    .line 424
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/DateTimePickerZTE$6;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/DateTimePickerZTE$6;-><init>(Landroid/widget/DateTimePickerZTE;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 454
    :goto_3
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimePickerZTE;->updateHourControl()V

    .line 455
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimePickerZTE;->updateAmPmControl()V

    .line 457
    sget-object v17, Landroid/widget/DateTimePickerZTE;->NO_OP_CHANGE_LISTENER:Landroid/widget/DateTimePickerZTE$OnTimeChangedListener;

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/DateTimePickerZTE;->setOnTimeChangedListener(Landroid/widget/DateTimePickerZTE$OnTimeChangedListener;)V

    .line 460
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xb

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/DateTimePickerZTE;->setCurrentHour(Ljava/lang/Integer;)V

    .line 461
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xc

    invoke-virtual/range {v17 .. v18}, Ljava/util/Calendar;->get(I)I

    move-result v17

    invoke-static/range {v17 .. v17}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    move-object/from16 v0, p0

    move-object/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/DateTimePickerZTE;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 463
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimePickerZTE;->reorderSpinners()V

    .line 466
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimePickerZTE;->isEnabled()Z

    move-result v17

    if-nez v17, :cond_2

    .line 467
    const/16 v17, 0x0

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/DateTimePickerZTE;->setEnabled(Z)V

    .line 471
    :cond_2
    invoke-direct/range {p0 .. p0}, Landroid/widget/DateTimePickerZTE;->setContentDescriptions()V

    .line 475
    invoke-virtual/range {p0 .. p0}, Landroid/widget/DateTimePickerZTE;->getImportantForAccessibility()I

    move-result v17

    if-nez v17, :cond_3

    .line 476
    const/16 v17, 0x1

    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v1}, Landroid/widget/DateTimePickerZTE;->setImportantForAccessibility(I)V

    .line 478
    :cond_3
    return-void

    .line 312
    .end local v8    # "divider":[Ljava/lang/String;
    :cond_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v15}, Landroid/widget/DateTimePickerZTE;->setSpinnersShown(Z)V

    .line 313
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/widget/DateTimePickerZTE;->setCalendarViewShown(Z)V

    goto/16 :goto_0

    .line 323
    :cond_5
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x1

    move-object/from16 v0, v17

    move/from16 v1, v16

    move/from16 v2, v18

    move/from16 v3, v19

    invoke-virtual {v0, v1, v2, v3}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_1

    .line 334
    :cond_6
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    move-object/from16 v17, v0

    const/16 v18, 0xb

    const/16 v19, 0x1f

    move-object/from16 v0, v17

    move/from16 v1, v18

    move/from16 v2, v19

    invoke-virtual {v0, v9, v1, v2}, Ljava/util/Calendar;->set(III)V

    goto/16 :goto_2

    .line 433
    .restart local v5    # "amPmView":Landroid/view/View;
    .restart local v8    # "divider":[Ljava/lang/String;
    :cond_7
    const/16 v17, 0x0

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateTimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    .line 434
    check-cast v5, Landroid/widget/NumberPickerZTE;

    .end local v5    # "amPmView":Landroid/view/View;
    move-object/from16 v0, p0

    iput-object v5, v0, Landroid/widget/DateTimePickerZTE;->mAmPmSpinner:Landroid/widget/NumberPickerZTE;

    .line 435
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mAmPmSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setMinValue(I)V

    .line 436
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mAmPmSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const/16 v18, 0x1

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 437
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mAmPmSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const/16 v18, 0xd

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setInputSize(I)V

    .line 438
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mAmPmSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const/16 v18, 0xd

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setSelectorSize(I)V

    .line 439
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mAmPmSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mAmPmStrings:[Ljava/lang/String;

    move-object/from16 v18, v0

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 440
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mAmPmSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    new-instance v18, Landroid/widget/DateTimePickerZTE$7;

    move-object/from16 v0, v18

    move-object/from16 v1, p0

    invoke-direct {v0, v1}, Landroid/widget/DateTimePickerZTE$7;-><init>(Landroid/widget/DateTimePickerZTE;)V

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->setOnValueChangedListener(Landroid/widget/NumberPickerZTE$OnValueChangeListener;)V

    .line 449
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mAmPmSpinner:Landroid/widget/NumberPickerZTE;

    move-object/from16 v17, v0

    const v18, 0x10202ec

    invoke-virtual/range {v17 .. v18}, Landroid/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v17

    check-cast v17, Landroid/widget/EditText;

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Landroid/widget/DateTimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    .line 450
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/widget/DateTimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    move-object/from16 v17, v0

    const/16 v18, 0x6

    invoke-virtual/range {v17 .. v18}, Landroid/widget/EditText;->setImeOptions(I)V

    goto/16 :goto_3
.end method

.method static synthetic access$000(Landroid/widget/DateTimePickerZTE;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DateTimePickerZTE;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/widget/DateTimePickerZTE;->updateInputState()V

    return-void
.end method

.method static synthetic access$100(Landroid/widget/DateTimePickerZTE;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DateTimePickerZTE;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$1000(Landroid/widget/DateTimePickerZTE;)Z
    .locals 1
    .param p0, "x0"    # Landroid/widget/DateTimePickerZTE;

    .prologue
    .line 72
    iget-boolean v0, p0, Landroid/widget/DateTimePickerZTE;->mIsAm:Z

    return v0
.end method

.method static synthetic access$1002(Landroid/widget/DateTimePickerZTE;Z)Z
    .locals 0
    .param p0, "x0"    # Landroid/widget/DateTimePickerZTE;
    .param p1, "x1"    # Z

    .prologue
    .line 72
    iput-boolean p1, p0, Landroid/widget/DateTimePickerZTE;->mIsAm:Z

    return p1
.end method

.method static synthetic access$1100(Landroid/widget/DateTimePickerZTE;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DateTimePickerZTE;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/widget/DateTimePickerZTE;->updateAmPmControl()V

    return-void
.end method

.method static synthetic access$1200(Landroid/widget/DateTimePickerZTE;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DateTimePickerZTE;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/widget/DateTimePickerZTE;->onTimeChanged()V

    return-void
.end method

.method static synthetic access$1300(Landroid/widget/DateTimePickerZTE;)Landroid/widget/NumberPickerZTE;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DateTimePickerZTE;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mMinuteSpinner:Landroid/widget/NumberPickerZTE;

    return-object v0
.end method

.method static synthetic access$1400(Landroid/widget/DateTimePickerZTE;)Landroid/widget/NumberPickerZTE;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DateTimePickerZTE;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mHourSpinner:Landroid/widget/NumberPickerZTE;

    return-object v0
.end method

.method static synthetic access$200(Landroid/widget/DateTimePickerZTE;)Ljava/util/Calendar;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DateTimePickerZTE;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    return-object v0
.end method

.method static synthetic access$300(Landroid/widget/DateTimePickerZTE;)Landroid/widget/NumberPickerZTE;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DateTimePickerZTE;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mDaySpinner:Landroid/widget/NumberPickerZTE;

    return-object v0
.end method

.method static synthetic access$400(Landroid/widget/DateTimePickerZTE;)Landroid/widget/NumberPickerZTE;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DateTimePickerZTE;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    return-object v0
.end method

.method static synthetic access$500(Landroid/widget/DateTimePickerZTE;)Landroid/widget/NumberPickerZTE;
    .locals 1
    .param p0, "x0"    # Landroid/widget/DateTimePickerZTE;

    .prologue
    .line 72
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mYearSpinner:Landroid/widget/NumberPickerZTE;

    return-object v0
.end method

.method static synthetic access$600(Landroid/widget/DateTimePickerZTE;III)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DateTimePickerZTE;
    .param p1, "x1"    # I
    .param p2, "x2"    # I
    .param p3, "x3"    # I

    .prologue
    .line 72
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DateTimePickerZTE;->setDate(III)V

    return-void
.end method

.method static synthetic access$700(Landroid/widget/DateTimePickerZTE;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DateTimePickerZTE;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/widget/DateTimePickerZTE;->updateSpinners()V

    return-void
.end method

.method static synthetic access$800(Landroid/widget/DateTimePickerZTE;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DateTimePickerZTE;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/widget/DateTimePickerZTE;->updateCalendarView()V

    return-void
.end method

.method static synthetic access$900(Landroid/widget/DateTimePickerZTE;)V
    .locals 0
    .param p0, "x0"    # Landroid/widget/DateTimePickerZTE;

    .prologue
    .line 72
    invoke-direct {p0}, Landroid/widget/DateTimePickerZTE;->notifyDateChanged()V

    return-void
.end method

.method private getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;
    .locals 3
    .param p1, "oldCalendar"    # Ljava/util/Calendar;
    .param p2, "locale"    # Ljava/util/Locale;

    .prologue
    .line 751
    if-nez p1, :cond_0

    .line 752
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 757
    :goto_0
    return-object v2

    .line 754
    :cond_0
    invoke-virtual {p1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v0

    .line 755
    .local v0, "currentTimeMillis":J
    invoke-static {p2}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v2

    .line 756
    .local v2, "newCalendar":Ljava/util/Calendar;
    invoke-virtual {v2, v0, v1}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private isNewDate(III)Z
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    const/4 v0, 0x1

    .line 870
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1, v0}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p1, :cond_0

    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v1, p3, :cond_0

    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v1, p2, :cond_1

    :cond_0
    :goto_0
    return v0

    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private notifyDateChanged()V
    .locals 4

    .prologue
    .line 1052
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/DateTimePickerZTE;->sendAccessibilityEvent(I)V

    .line 1053
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mOnDateChangedListener:Landroid/widget/DateTimePickerZTE$OnDateChangedListener;

    if-eqz v0, :cond_0

    .line 1054
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mOnDateChangedListener:Landroid/widget/DateTimePickerZTE$OnDateChangedListener;

    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->getYear()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->getMonth()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->getDayOfMonth()I

    move-result v3

    invoke-interface {v0, p0, v1, v2, v3}, Landroid/widget/DateTimePickerZTE$OnDateChangedListener;->onDateChanged(Landroid/widget/DateTimePickerZTE;III)V

    .line 1056
    :cond_0
    return-void
.end method

.method private onTimeChanged()V
    .locals 3

    .prologue
    .line 659
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Landroid/widget/DateTimePickerZTE;->sendAccessibilityEvent(I)V

    .line 660
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mOnTimeChangedListener:Landroid/widget/DateTimePickerZTE$OnTimeChangedListener;

    if-eqz v0, :cond_0

    .line 661
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mOnTimeChangedListener:Landroid/widget/DateTimePickerZTE$OnTimeChangedListener;

    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-interface {v0, p0, v1, v2}, Landroid/widget/DateTimePickerZTE$OnTimeChangedListener;->onTimeChanged(Landroid/widget/DateTimePickerZTE;II)V

    .line 663
    :cond_0
    return-void
.end method

.method private parseDate(Ljava/lang/String;Ljava/util/Calendar;)Z
    .locals 4
    .param p1, "date"    # Ljava/lang/String;
    .param p2, "outDate"    # Ljava/util/Calendar;

    .prologue
    .line 861
    :try_start_0
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mDateFormat:Ljava/text/DateFormat;

    invoke-virtual {v1, p1}, Ljava/text/DateFormat;->parse(Ljava/lang/String;)Ljava/util/Date;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/util/Calendar;->setTime(Ljava/util/Date;)V
    :try_end_0
    .catch Ljava/text/ParseException; {:try_start_0 .. :try_end_0} :catch_0

    .line 862
    const/4 v1, 0x1

    .line 865
    :goto_0
    return v1

    .line 863
    :catch_0
    move-exception v0

    .line 864
    .local v0, "e":Ljava/text/ParseException;
    sget-object v1, Landroid/widget/DateTimePickerZTE;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Date: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, " not in format: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string v3, "MM/dd/yyyy"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 865
    const/4 v1, 0x0

    goto :goto_0
.end method

.method private reorderSpinners()V
    .locals 5

    .prologue
    .line 767
    iget-object v3, p0, Landroid/widget/DateTimePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v3}, Landroid/widget/LinearLayout;->removeAllViews()V

    .line 768
    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->getContext()Landroid/content/Context;

    move-result-object v3

    invoke-static {v3}, Landroid/text/format/DateFormat;->getDateFormatOrder(Landroid/content/Context;)[C

    move-result-object v1

    .line 769
    .local v1, "order":[C
    array-length v2, v1

    .line 770
    .local v2, "spinnerCount":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v2, :cond_0

    .line 771
    aget-char v3, v1, v0

    sparse-switch v3, :sswitch_data_0

    .line 785
    new-instance v3, Ljava/lang/IllegalArgumentException;

    invoke-direct {v3}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v3

    .line 773
    :sswitch_0
    iget-object v3, p0, Landroid/widget/DateTimePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/widget/DateTimePickerZTE;->mDaySpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 774
    iget-object v3, p0, Landroid/widget/DateTimePickerZTE;->mDaySpinner:Landroid/widget/NumberPickerZTE;

    invoke-direct {p0, v3, v2, v0}, Landroid/widget/DateTimePickerZTE;->setImeOptions(Landroid/widget/NumberPickerZTE;II)V

    .line 770
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 777
    :sswitch_1
    iget-object v3, p0, Landroid/widget/DateTimePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 778
    iget-object v3, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    invoke-direct {p0, v3, v2, v0}, Landroid/widget/DateTimePickerZTE;->setImeOptions(Landroid/widget/NumberPickerZTE;II)V

    goto :goto_1

    .line 781
    :sswitch_2
    iget-object v3, p0, Landroid/widget/DateTimePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/widget/DateTimePickerZTE;->mYearSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 782
    iget-object v3, p0, Landroid/widget/DateTimePickerZTE;->mYearSpinner:Landroid/widget/NumberPickerZTE;

    invoke-direct {p0, v3, v2, v0}, Landroid/widget/DateTimePickerZTE;->setImeOptions(Landroid/widget/NumberPickerZTE;II)V

    goto :goto_1

    .line 788
    :cond_0
    iget-object v3, p0, Landroid/widget/DateTimePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/widget/DateTimePickerZTE;->mHourSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 789
    iget-object v3, p0, Landroid/widget/DateTimePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/widget/DateTimePickerZTE;->mDividerSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 790
    iget-object v3, p0, Landroid/widget/DateTimePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/widget/DateTimePickerZTE;->mMinuteSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 791
    iget-object v3, p0, Landroid/widget/DateTimePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    iget-object v4, p0, Landroid/widget/DateTimePickerZTE;->mAmPmSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 793
    return-void

    .line 771
    :sswitch_data_0
    .sparse-switch
        0x4d -> :sswitch_1
        0x64 -> :sswitch_0
        0x79 -> :sswitch_2
    .end sparse-switch
.end method

.method private setContentDescriptions()V
    .locals 4

    .prologue
    const v3, 0x10202ed

    const v2, 0x10202eb

    .line 1078
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mDaySpinner:Landroid/widget/NumberPickerZTE;

    const v1, 0x10404fc

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1080
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mDaySpinner:Landroid/widget/NumberPickerZTE;

    const v1, 0x10404fd

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1083
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    const v1, 0x10404fa

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1085
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    const v1, 0x10404fb

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1088
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mYearSpinner:Landroid/widget/NumberPickerZTE;

    const v1, 0x10404fe

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1090
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mYearSpinner:Landroid/widget/NumberPickerZTE;

    const v1, 0x10404ff

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1092
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mMinuteSpinner:Landroid/widget/NumberPickerZTE;

    const v1, 0x10404f4

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1094
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mMinuteSpinner:Landroid/widget/NumberPickerZTE;

    const v1, 0x10404f5

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1097
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mHourSpinner:Landroid/widget/NumberPickerZTE;

    const v1, 0x10404f6

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1099
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mHourSpinner:Landroid/widget/NumberPickerZTE;

    const v1, 0x10404f7

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1102
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mAmPmSpinner:Landroid/widget/NumberPickerZTE;

    if-eqz v0, :cond_0

    .line 1103
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mAmPmSpinner:Landroid/widget/NumberPickerZTE;

    const v1, 0x10404f8

    invoke-direct {p0, v0, v2, v1}, Landroid/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1105
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mAmPmSpinner:Landroid/widget/NumberPickerZTE;

    const v1, 0x10404f9

    invoke-direct {p0, v0, v3, v1}, Landroid/widget/DateTimePickerZTE;->trySetContentDescription(Landroid/view/View;II)V

    .line 1108
    :cond_0
    return-void
.end method

.method private setCurrentLocale(Ljava/util/Locale;)V
    .locals 3
    .param p1, "locale"    # Ljava/util/Locale;

    .prologue
    .line 723
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mCurrentLocale:Ljava/util/Locale;

    invoke-virtual {p1, v1}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 742
    :goto_0
    return-void

    .line 727
    :cond_0
    iput-object p1, p0, Landroid/widget/DateTimePickerZTE;->mCurrentLocale:Ljava/util/Locale;

    .line 729
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DateTimePickerZTE;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    .line 730
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DateTimePickerZTE;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMinDate:Ljava/util/Calendar;

    .line 731
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DateTimePickerZTE;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMaxDate:Ljava/util/Calendar;

    .line 732
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-direct {p0, v1, p1}, Landroid/widget/DateTimePickerZTE;->getCalendarForLocale(Ljava/util/Calendar;Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    .line 734
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    const/4 v2, 0x2

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v1

    add-int/lit8 v1, v1, 0x1

    iput v1, p0, Landroid/widget/DateTimePickerZTE;->mNumberOfMonths:I

    .line 735
    iget v1, p0, Landroid/widget/DateTimePickerZTE;->mNumberOfMonths:I

    new-array v1, v1, [Ljava/lang/String;

    iput-object v1, p0, Landroid/widget/DateTimePickerZTE;->mShortMonths:[Ljava/lang/String;

    .line 736
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    iget v1, p0, Landroid/widget/DateTimePickerZTE;->mNumberOfMonths:I

    if-ge v0, v1, :cond_1

    .line 739
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mShortMonths:[Ljava/lang/String;

    add-int/lit8 v2, v0, 0x1

    invoke-static {v2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 736
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 741
    :cond_1
    invoke-static {p1}, Ljava/util/Calendar;->getInstance(Ljava/util/Locale;)Ljava/util/Calendar;

    move-result-object v1

    iput-object v1, p0, Landroid/widget/DateTimePickerZTE;->mTempCalendar:Ljava/util/Calendar;

    goto :goto_0
.end method

.method private setDate(III)V
    .locals 3
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 876
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2, p3}, Ljava/util/Calendar;->set(III)V

    .line 877
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 878
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 882
    :cond_0
    :goto_0
    return-void

    .line 879
    :cond_1
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 880
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    goto :goto_0
.end method

.method private setImeOptions(Landroid/widget/NumberPickerZTE;II)V
    .locals 3
    .param p1, "spinner"    # Landroid/widget/NumberPickerZTE;
    .param p2, "spinnerCount"    # I
    .param p3, "spinnerIndex"    # I

    .prologue
    .line 1067
    add-int/lit8 v2, p2, -0x1

    if-ge p3, v2, :cond_0

    .line 1068
    const/4 v0, 0x5

    .line 1072
    .local v0, "imeOptions":I
    :goto_0
    const v2, 0x10202ec

    invoke-virtual {p1, v2}, Landroid/widget/NumberPickerZTE;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 1073
    .local v1, "input":Landroid/widget/TextView;
    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setImeOptions(I)V

    .line 1074
    return-void

    .line 1070
    .end local v0    # "imeOptions":I
    .end local v1    # "input":Landroid/widget/TextView;
    :cond_0
    const/4 v0, 0x6

    .restart local v0    # "imeOptions":I
    goto :goto_0
.end method

.method private trySetContentDescription(Landroid/view/View;II)V
    .locals 2
    .param p1, "root"    # Landroid/view/View;
    .param p2, "viewId"    # I
    .param p3, "contDescResId"    # I

    .prologue
    .line 1111
    invoke-virtual {p1, p2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    .line 1112
    .local v0, "target":Landroid/view/View;
    if-eqz v0, :cond_0

    .line 1113
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mContext:Landroid/content/Context;

    invoke-virtual {v1, p3}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/View;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 1115
    :cond_0
    return-void
.end method

.method private updateAmPmControl()V
    .locals 4

    .prologue
    const/16 v3, 0x8

    const/4 v1, 0x0

    .line 639
    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->is24HourView()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 640
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mAmPmSpinner:Landroid/widget/NumberPickerZTE;

    if-eqz v1, :cond_0

    .line 641
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mAmPmSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPickerZTE;->setVisibility(I)V

    .line 655
    :goto_0
    const/4 v1, 0x4

    invoke-virtual {p0, v1}, Landroid/widget/DateTimePickerZTE;->sendAccessibilityEvent(I)V

    .line 656
    return-void

    .line 643
    :cond_0
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v1, v3}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0

    .line 646
    :cond_1
    iget-boolean v2, p0, Landroid/widget/DateTimePickerZTE;->mIsAm:Z

    if-eqz v2, :cond_2

    move v0, v1

    .line 647
    .local v0, "index":I
    :goto_1
    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mAmPmSpinner:Landroid/widget/NumberPickerZTE;

    if-eqz v2, :cond_3

    .line 648
    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mAmPmSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v2, v0}, Landroid/widget/NumberPickerZTE;->setValue(I)V

    .line 649
    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mAmPmSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v2, v1}, Landroid/widget/NumberPickerZTE;->setVisibility(I)V

    goto :goto_0

    .line 646
    .end local v0    # "index":I
    :cond_2
    const/4 v0, 0x1

    goto :goto_1

    .line 651
    .restart local v0    # "index":I
    :cond_3
    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    iget-object v3, p0, Landroid/widget/DateTimePickerZTE;->mAmPmStrings:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 652
    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setVisibility(I)V

    goto :goto_0
.end method

.method private updateCalendarView()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 935
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/widget/CalendarView;->setDate(JZZ)V

    .line 936
    return-void
.end method

.method private updateHourControl()V
    .locals 2

    .prologue
    .line 627
    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->is24HourView()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 628
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mHourSpinner:Landroid/widget/NumberPickerZTE;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerZTE;->setMinValue(I)V

    .line 629
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mHourSpinner:Landroid/widget/NumberPickerZTE;

    const/16 v1, 0x17

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 630
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mHourSpinner:Landroid/widget/NumberPickerZTE;

    invoke-static {}, Landroid/widget/NumberPickerZTE;->getTwoDigitFormatter()Landroid/widget/NumberPickerZTE$Formatter;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerZTE;->setFormatter(Landroid/widget/NumberPickerZTE$Formatter;)V

    .line 636
    :goto_0
    return-void

    .line 632
    :cond_0
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mHourSpinner:Landroid/widget/NumberPickerZTE;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerZTE;->setMinValue(I)V

    .line 633
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mHourSpinner:Landroid/widget/NumberPickerZTE;

    const/16 v1, 0xc

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 634
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mHourSpinner:Landroid/widget/NumberPickerZTE;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerZTE;->setFormatter(Landroid/widget/NumberPickerZTE$Formatter;)V

    goto :goto_0
.end method

.method private updateInputState()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 1123
    invoke-static {}, Landroid/view/inputmethod/InputMethodManager;->peekInstance()Landroid/view/inputmethod/InputMethodManager;

    move-result-object v0

    .line 1124
    .local v0, "inputMethodManager":Landroid/view/inputmethod/InputMethodManager;
    if-eqz v0, :cond_0

    .line 1125
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1126
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mYearSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 1127
    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 1148
    :cond_0
    :goto_0
    return-void

    .line 1128
    :cond_1
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1129
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 1130
    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 1131
    :cond_2
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 1132
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mDaySpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 1133
    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 1134
    :cond_3
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1135
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mHourSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 1136
    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 1137
    :cond_4
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_5

    .line 1138
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMinuteSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 1139
    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0

    .line 1140
    :cond_5
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v0, v1}, Landroid/view/inputmethod/InputMethodManager;->isActive(Landroid/view/View;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1141
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mAmPmSpinnerInput:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->clearFocus()V

    .line 1142
    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->getWindowToken()Landroid/os/IBinder;

    move-result-object v1

    invoke-virtual {v0, v1, v2}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    goto :goto_0
.end method

.method private updateSpinners()V
    .locals 8

    .prologue
    const/4 v3, 0x0

    const/4 v7, 0x2

    const/4 v6, 0x5

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 886
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 887
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mDaySpinner:Landroid/widget/NumberPickerZTE;

    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPickerZTE;->setMinValue(I)V

    .line 888
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mDaySpinner:Landroid/widget/NumberPickerZTE;

    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 889
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mDaySpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    .line 890
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 891
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPickerZTE;->setMinValue(I)V

    .line 892
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 893
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    .line 914
    :goto_0
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mShortMonths:[Ljava/lang/String;

    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v2}, Landroid/widget/NumberPickerZTE;->getMinValue()I

    move-result v2

    iget-object v3, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v3}, Landroid/widget/NumberPickerZTE;->getMaxValue()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-static {v1, v2, v3}, Ljava/util/Arrays;->copyOfRange([Ljava/lang/Object;II)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Ljava/lang/String;

    .line 916
    .local v0, "displayedValues":[Ljava/lang/String;
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v1, v0}, Landroid/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 919
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mYearSpinner:Landroid/widget/NumberPickerZTE;

    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPickerZTE;->setMinValue(I)V

    .line 920
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mYearSpinner:Landroid/widget/NumberPickerZTE;

    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 921
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mYearSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    .line 925
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mYearSpinner:Landroid/widget/NumberPickerZTE;

    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v5}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPickerZTE;->setValue(I)V

    .line 927
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPickerZTE;->setValue(I)V

    .line 928
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mDaySpinner:Landroid/widget/NumberPickerZTE;

    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPickerZTE;->setValue(I)V

    .line 929
    return-void

    .line 894
    .end local v0    # "displayedValues":[Ljava/lang/String;
    :cond_0
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 895
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mDaySpinner:Landroid/widget/NumberPickerZTE;

    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPickerZTE;->setMinValue(I)V

    .line 896
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mDaySpinner:Landroid/widget/NumberPickerZTE;

    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 897
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mDaySpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    .line 898
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 899
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->getActualMinimum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPickerZTE;->setMinValue(I)V

    .line 900
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v7}, Ljava/util/Calendar;->get(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 901
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0

    .line 903
    :cond_1
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mDaySpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPickerZTE;->setMinValue(I)V

    .line 904
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mDaySpinner:Landroid/widget/NumberPickerZTE;

    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v2, v6}, Ljava/util/Calendar;->getActualMaximum(I)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 905
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mDaySpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    .line 906
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v1, v3}, Landroid/widget/NumberPickerZTE;->setDisplayedValues([Ljava/lang/String;)V

    .line 907
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v1, v4}, Landroid/widget/NumberPickerZTE;->setMinValue(I)V

    .line 908
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    const/16 v2, 0xb

    invoke-virtual {v1, v2}, Landroid/widget/NumberPickerZTE;->setMaxValue(I)V

    .line 909
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v1, v5}, Landroid/widget/NumberPickerZTE;->setWrapSelectorWheel(Z)V

    goto/16 :goto_0
.end method


# virtual methods
.method public dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 583
    invoke-virtual {p0, p1}, Landroid/widget/DateTimePickerZTE;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 584
    const/4 v0, 0x1

    return v0
.end method

.method protected dispatchRestoreInstanceState(Landroid/util/SparseArray;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/util/SparseArray",
            "<",
            "Landroid/os/Parcelable;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 815
    .local p1, "container":Landroid/util/SparseArray;, "Landroid/util/SparseArray<Landroid/os/Parcelable;>;"
    invoke-virtual {p0, p1}, Landroid/widget/DateTimePickerZTE;->dispatchThawSelfOnly(Landroid/util/SparseArray;)V

    .line 816
    return-void
.end method

.method public getCalendarView()Landroid/widget/CalendarView;
    .locals 1

    .prologue
    .line 687
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    return-object v0
.end method

.method public getCalendarViewShown()Z
    .locals 1

    .prologue
    .line 677
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getVisibility()I

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getCurrentHour()Ljava/lang/Integer;
    .locals 2

    .prologue
    .line 945
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mHourSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v1}, Landroid/widget/NumberPickerZTE;->getValue()I

    move-result v0

    .line 946
    .local v0, "currentHour":I
    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->is24HourView()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 947
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    .line 951
    :goto_0
    return-object v1

    .line 948
    :cond_0
    iget-boolean v1, p0, Landroid/widget/DateTimePickerZTE;->mIsAm:Z

    if-eqz v1, :cond_1

    .line 949
    rem-int/lit8 v1, v0, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0

    .line 951
    :cond_1
    rem-int/lit8 v1, v0, 0xc

    add-int/lit8 v1, v1, 0xc

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    goto :goto_0
.end method

.method public getCurrentMinute()Ljava/lang/Integer;
    .locals 1

    .prologue
    .line 1011
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mMinuteSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v0}, Landroid/widget/NumberPickerZTE;->getValue()I

    move-result v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v0

    return-object v0
.end method

.method public getDayOfMonth()I
    .locals 2

    .prologue
    .line 1045
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x5

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getMaxDate()J
    .locals 2

    .prologue
    .line 527
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getMaxDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMinDate()J
    .locals 2

    .prologue
    .line 491
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0}, Landroid/widget/CalendarView;->getMinDate()J

    move-result-wide v0

    return-wide v0
.end method

.method public getMonth()I
    .locals 2

    .prologue
    .line 1038
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x2

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public getSpinnersShown()Z
    .locals 1

    .prologue
    .line 705
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    invoke-virtual {v0}, Landroid/widget/LinearLayout;->isShown()Z

    move-result v0

    return v0
.end method

.method public getYear()I
    .locals 2

    .prologue
    .line 1031
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->get(I)I

    move-result v0

    return v0
.end method

.method public init(IIILandroid/widget/DateTimePickerZTE$OnDateChangedListener;)V
    .locals 0
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I
    .param p4, "onDateChangedListener"    # Landroid/widget/DateTimePickerZTE$OnDateChangedListener;

    .prologue
    .line 847
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DateTimePickerZTE;->setDate(III)V

    .line 848
    invoke-direct {p0}, Landroid/widget/DateTimePickerZTE;->updateSpinners()V

    .line 849
    invoke-direct {p0}, Landroid/widget/DateTimePickerZTE;->updateCalendarView()V

    .line 850
    iput-object p4, p0, Landroid/widget/DateTimePickerZTE;->mOnDateChangedListener:Landroid/widget/DateTimePickerZTE$OnDateChangedListener;

    .line 851
    return-void
.end method

.method public is24HourView()Z
    .locals 1

    .prologue
    .line 1004
    iget-boolean v0, p0, Landroid/widget/DateTimePickerZTE;->mIs24HourView:Z

    return v0
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 578
    iget-boolean v0, p0, Landroid/widget/DateTimePickerZTE;->mIsEnabled:Z

    return v0
.end method

.method protected onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 666
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 667
    iget-object v0, p1, Landroid/content/res/Configuration;->locale:Ljava/util/Locale;

    invoke-direct {p0, v0}, Landroid/widget/DateTimePickerZTE;->setCurrentLocale(Ljava/util/Locale;)V

    .line 668
    return-void
.end method

.method public onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 1
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 617
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 618
    const-class v0, Landroid/widget/DateTimePickerZTE;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 619
    return-void
.end method

.method public onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V
    .locals 1
    .param p1, "info"    # Landroid/view/accessibility/AccessibilityNodeInfo;

    .prologue
    .line 623
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onInitializeAccessibilityNodeInfo(Landroid/view/accessibility/AccessibilityNodeInfo;)V

    .line 624
    const-class v0, Landroid/widget/DateTimePickerZTE;

    invoke-virtual {v0}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/view/accessibility/AccessibilityNodeInfo;->setClassName(Ljava/lang/CharSequence;)V

    .line 625
    return-void
.end method

.method public onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V
    .locals 5
    .param p1, "event"    # Landroid/view/accessibility/AccessibilityEvent;

    .prologue
    .line 589
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->onPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 591
    const/16 v0, 0x15

    .line 592
    .local v0, "flags":I
    iget-boolean v2, p0, Landroid/widget/DateTimePickerZTE;->mIs24HourView:Z

    if-eqz v2, :cond_0

    .line 593
    or-int/lit16 v0, v0, 0x80

    .line 597
    :goto_0
    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    const/16 v3, 0xb

    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 598
    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    const/16 v3, 0xc

    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I

    move-result v4

    invoke-virtual {v2, v3, v4}, Ljava/util/Calendar;->set(II)V

    .line 599
    iget-object v2, p0, Landroid/widget/DateTimePickerZTE;->mContext:Landroid/content/Context;

    iget-object v3, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    invoke-virtual {v3}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v3

    invoke-static {v2, v3, v4, v0}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v1

    .line 603
    .local v1, "selectedDateUtterance":Ljava/lang/String;
    invoke-virtual {p1}, Landroid/view/accessibility/AccessibilityEvent;->getText()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 613
    return-void

    .line 595
    .end local v1    # "selectedDateUtterance":Ljava/lang/String;
    :cond_0
    or-int/lit8 v0, v0, 0x40

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 826
    move-object v0, p1

    check-cast v0, Landroid/widget/DateTimePickerZTE$SavedState;

    .line 827
    .local v0, "ss":Landroid/widget/DateTimePickerZTE$SavedState;
    invoke-virtual {v0}, Landroid/widget/DateTimePickerZTE$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/widget/FrameLayout;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 828
    # getter for: Landroid/widget/DateTimePickerZTE$SavedState;->mYear:I
    invoke-static {v0}, Landroid/widget/DateTimePickerZTE$SavedState;->access$1600(Landroid/widget/DateTimePickerZTE$SavedState;)I

    move-result v1

    # getter for: Landroid/widget/DateTimePickerZTE$SavedState;->mMonth:I
    invoke-static {v0}, Landroid/widget/DateTimePickerZTE$SavedState;->access$1700(Landroid/widget/DateTimePickerZTE$SavedState;)I

    move-result v2

    # getter for: Landroid/widget/DateTimePickerZTE$SavedState;->mDay:I
    invoke-static {v0}, Landroid/widget/DateTimePickerZTE$SavedState;->access$1800(Landroid/widget/DateTimePickerZTE$SavedState;)I

    move-result v3

    invoke-direct {p0, v1, v2, v3}, Landroid/widget/DateTimePickerZTE;->setDate(III)V

    .line 829
    invoke-direct {p0}, Landroid/widget/DateTimePickerZTE;->updateSpinners()V

    .line 830
    invoke-direct {p0}, Landroid/widget/DateTimePickerZTE;->updateCalendarView()V

    .line 831
    invoke-virtual {v0}, Landroid/widget/DateTimePickerZTE$SavedState;->getHour()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/DateTimePickerZTE;->setCurrentHour(Ljava/lang/Integer;)V

    .line 832
    invoke-virtual {v0}, Landroid/widget/DateTimePickerZTE$SavedState;->getMinute()I

    move-result v1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/DateTimePickerZTE;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 833
    return-void
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 8

    .prologue
    .line 820
    invoke-super {p0}, Landroid/widget/FrameLayout;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 821
    .local v1, "superState":Landroid/os/Parcelable;
    new-instance v0, Landroid/widget/DateTimePickerZTE$SavedState;

    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->getYear()I

    move-result v2

    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->getMonth()I

    move-result v3

    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->getDayOfMonth()I

    move-result v4

    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Integer;->intValue()I

    move-result v5

    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/Integer;->intValue()I

    move-result v6

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v7}, Landroid/widget/DateTimePickerZTE$SavedState;-><init>(Landroid/os/Parcelable;IIIIILandroid/widget/DateTimePickerZTE$1;)V

    return-object v0
.end method

.method public setCalendarViewShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 696
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/CalendarView;->setVisibility(I)V

    .line 697
    return-void

    .line 696
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public setCurrentHour(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentHour"    # Ljava/lang/Integer;

    .prologue
    const/16 v1, 0xc

    .line 960
    if-eqz p1, :cond_0

    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_1

    .line 980
    :cond_0
    :goto_0
    return-void

    .line 963
    :cond_1
    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->is24HourView()Z

    move-result v0

    if-nez v0, :cond_3

    .line 965
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-lt v0, v1, :cond_4

    .line 966
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/widget/DateTimePickerZTE;->mIsAm:Z

    .line 967
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-le v0, v1, :cond_2

    .line 968
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    add-int/lit8 v0, v0, -0xc

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    .line 976
    :cond_2
    :goto_1
    invoke-direct {p0}, Landroid/widget/DateTimePickerZTE;->updateAmPmControl()V

    .line 978
    :cond_3
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mHourSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerZTE;->setValue(I)V

    .line 979
    invoke-direct {p0}, Landroid/widget/DateTimePickerZTE;->onTimeChanged()V

    goto :goto_0

    .line 971
    :cond_4
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/widget/DateTimePickerZTE;->mIsAm:Z

    .line 972
    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    if-nez v0, :cond_2

    .line 973
    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    goto :goto_1
.end method

.method public setCurrentMinute(Ljava/lang/Integer;)V
    .locals 2
    .param p1, "currentMinute"    # Ljava/lang/Integer;

    .prologue
    .line 1018
    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v0

    if-ne p1, v0, :cond_0

    .line 1023
    :goto_0
    return-void

    .line 1021
    :cond_0
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mMinuteSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {p1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/widget/NumberPickerZTE;->setValue(I)V

    .line 1022
    invoke-direct {p0}, Landroid/widget/DateTimePickerZTE;->onTimeChanged()V

    goto :goto_0
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 554
    iget-boolean v0, p0, Landroid/widget/DateTimePickerZTE;->mIsEnabled:Z

    if-ne v0, p1, :cond_0

    .line 574
    :goto_0
    return-void

    .line 557
    :cond_0
    invoke-super {p0, p1}, Landroid/widget/FrameLayout;->setEnabled(Z)V

    .line 558
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mDaySpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 559
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mMonthSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 560
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mYearSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 561
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1}, Landroid/widget/CalendarView;->setEnabled(Z)V

    .line 562
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mMinuteSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 566
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mHourSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 567
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mAmPmSpinner:Landroid/widget/NumberPickerZTE;

    if-eqz v0, :cond_1

    .line 568
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mAmPmSpinner:Landroid/widget/NumberPickerZTE;

    invoke-virtual {v0, p1}, Landroid/widget/NumberPickerZTE;->setEnabled(Z)V

    .line 572
    :goto_1
    iput-boolean p1, p0, Landroid/widget/DateTimePickerZTE;->mIsEnabled:Z

    goto :goto_0

    .line 570
    :cond_1
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mAmPmButton:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    goto :goto_1
.end method

.method public setIs24HourView(Ljava/lang/Boolean;)V
    .locals 3
    .param p1, "is24HourView"    # Ljava/lang/Boolean;

    .prologue
    .line 988
    iget-boolean v1, p0, Landroid/widget/DateTimePickerZTE;->mIs24HourView:Z

    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-ne v1, v2, :cond_0

    .line 998
    :goto_0
    return-void

    .line 991
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    iput-boolean v1, p0, Landroid/widget/DateTimePickerZTE;->mIs24HourView:Z

    .line 993
    invoke-virtual {p0}, Landroid/widget/DateTimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v0

    .line 994
    .local v0, "currentHour":I
    invoke-direct {p0}, Landroid/widget/DateTimePickerZTE;->updateHourControl()V

    .line 996
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/DateTimePickerZTE;->setCurrentHour(Ljava/lang/Integer;)V

    .line 997
    invoke-direct {p0}, Landroid/widget/DateTimePickerZTE;->updateAmPmControl()V

    goto :goto_0
.end method

.method public setMaxDate(J)V
    .locals 4
    .param p1, "maxDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 538
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 539
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 550
    :goto_0
    return-void

    .line 543
    :cond_0
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 544
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMaxDate(J)V

    .line 545
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->after(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 546
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMaxDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 547
    invoke-direct {p0}, Landroid/widget/DateTimePickerZTE;->updateCalendarView()V

    .line 549
    :cond_1
    invoke-direct {p0}, Landroid/widget/DateTimePickerZTE;->updateSpinners()V

    goto :goto_0
.end method

.method public setMinDate(J)V
    .locals 4
    .param p1, "minDate"    # J

    .prologue
    const/4 v3, 0x6

    const/4 v2, 0x1

    .line 502
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 503
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v2}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v2}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-ne v0, v1, :cond_0

    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mTempDate:Ljava/util/Calendar;

    invoke-virtual {v0, v3}, Ljava/util/Calendar;->get(I)I

    move-result v0

    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1, v3}, Ljava/util/Calendar;->get(I)I

    move-result v1

    if-eq v0, v1, :cond_0

    .line 514
    :goto_0
    return-void

    .line 507
    :cond_0
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, p1, p2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 508
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mCalendarView:Landroid/widget/CalendarView;

    invoke-virtual {v0, p1, p2}, Landroid/widget/CalendarView;->setMinDate(J)V

    .line 509
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v0, v1}, Ljava/util/Calendar;->before(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 510
    iget-object v0, p0, Landroid/widget/DateTimePickerZTE;->mCurrentDate:Ljava/util/Calendar;

    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mMinDate:Ljava/util/Calendar;

    invoke-virtual {v1}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/util/Calendar;->setTimeInMillis(J)V

    .line 511
    invoke-direct {p0}, Landroid/widget/DateTimePickerZTE;->updateCalendarView()V

    .line 513
    :cond_1
    invoke-direct {p0}, Landroid/widget/DateTimePickerZTE;->updateSpinners()V

    goto :goto_0
.end method

.method public setOnTimeChangedListener(Landroid/widget/DateTimePickerZTE$OnTimeChangedListener;)V
    .locals 0
    .param p1, "onTimeChangedListener"    # Landroid/widget/DateTimePickerZTE$OnTimeChangedListener;

    .prologue
    .line 938
    iput-object p1, p0, Landroid/widget/DateTimePickerZTE;->mOnTimeChangedListener:Landroid/widget/DateTimePickerZTE$OnTimeChangedListener;

    .line 939
    return-void
.end method

.method public setSpinnersShown(Z)V
    .locals 2
    .param p1, "shown"    # Z

    .prologue
    .line 714
    iget-object v1, p0, Landroid/widget/DateTimePickerZTE;->mSpinners:Landroid/widget/LinearLayout;

    if-eqz p1, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 715
    return-void

    .line 714
    :cond_0
    const/16 v0, 0x8

    goto :goto_0
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 803
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DateTimePickerZTE;->isNewDate(III)Z

    move-result v0

    if-nez v0, :cond_0

    .line 810
    :goto_0
    return-void

    .line 806
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/DateTimePickerZTE;->setDate(III)V

    .line 807
    invoke-direct {p0}, Landroid/widget/DateTimePickerZTE;->updateSpinners()V

    .line 808
    invoke-direct {p0}, Landroid/widget/DateTimePickerZTE;->updateCalendarView()V

    .line 809
    invoke-direct {p0}, Landroid/widget/DateTimePickerZTE;->notifyDateChanged()V

    goto :goto_0
.end method
