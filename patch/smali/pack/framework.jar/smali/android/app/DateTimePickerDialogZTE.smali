.class public Landroid/app/DateTimePickerDialogZTE;
.super Landroid/app/AlertDialog;
.source "DateTimePickerDialogZTE.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/DateTimePickerZTE$OnDateChangedListener;
.implements Landroid/widget/DateTimePickerZTE$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DateTimePickerDialogZTE$OnDateSetListener;,
        Landroid/app/DateTimePickerDialogZTE$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mDateCallBack:Landroid/app/DateTimePickerDialogZTE$OnDateSetListener;

.field private final mDateTimePicker:Landroid/widget/DateTimePickerZTE;

.field mInitialHourOfDay:I

.field mInitialMinute:I

.field mIs24HourView:Z

.field private final mTimeCallback:Landroid/app/DateTimePickerDialogZTE$OnTimeSetListener;

.field private mTitleNeedsUpdate:Z

.field private tvWeekday:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/app/DateTimePickerDialogZTE$OnDateSetListener;Landroid/app/DateTimePickerDialogZTE$OnTimeSetListener;IIIIIZ)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "datecallBack"    # Landroid/app/DateTimePickerDialogZTE$OnDateSetListener;
    .param p4, "timecallBack"    # Landroid/app/DateTimePickerDialogZTE$OnTimeSetListener;
    .param p5, "year"    # I
    .param p6, "monthOfYear"    # I
    .param p7, "dayOfMonth"    # I
    .param p8, "hourOfDay"    # I
    .param p9, "minute"    # I
    .param p10, "is24HourView"    # Z

    .prologue
    .line 126
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 72
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/DateTimePickerDialogZTE;->mTitleNeedsUpdate:Z

    .line 128
    iput-object p3, p0, Landroid/app/DateTimePickerDialogZTE;->mDateCallBack:Landroid/app/DateTimePickerDialogZTE$OnDateSetListener;

    .line 129
    iput-object p4, p0, Landroid/app/DateTimePickerDialogZTE;->mTimeCallback:Landroid/app/DateTimePickerDialogZTE$OnTimeSetListener;

    .line 130
    iput p8, p0, Landroid/app/DateTimePickerDialogZTE;->mInitialHourOfDay:I

    .line 131
    iput p9, p0, Landroid/app/DateTimePickerDialogZTE;->mInitialMinute:I

    .line 132
    iput-boolean p10, p0, Landroid/app/DateTimePickerDialogZTE;->mIs24HourView:Z

    .line 134
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/app/DateTimePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    .line 136
    invoke-virtual {p0}, Landroid/app/DateTimePickerDialogZTE;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 137
    .local v1, "themeContext":Landroid/content/Context;
    const/4 v3, -0x1

    const v4, 0x1040461

    invoke-virtual {v1, v4}, Landroid/content/Context;->getText(I)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/app/DateTimePickerDialogZTE;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 138
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/app/DateTimePickerDialogZTE;->setIcon(I)V

    .line 140
    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 142
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x208001c

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 143
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/app/DateTimePickerDialogZTE;->setView(Landroid/view/View;)V

    .line 144
    const/high16 v3, 0x20c0000

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/DateTimePickerZTE;

    iput-object v3, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    .line 145
    iget-object v3, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    invoke-virtual {v3, p5, p6, p7, p0}, Landroid/widget/DateTimePickerZTE;->init(IIILandroid/widget/DateTimePickerZTE$OnDateChangedListener;)V

    .line 146
    iget-object v3, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    iget-boolean v4, p0, Landroid/app/DateTimePickerDialogZTE;->mIs24HourView:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/DateTimePickerZTE;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 147
    iget-object v3, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    iget v4, p0, Landroid/app/DateTimePickerDialogZTE;->mInitialHourOfDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/DateTimePickerZTE;->setCurrentHour(Ljava/lang/Integer;)V

    .line 148
    iget-object v3, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    iget v4, p0, Landroid/app/DateTimePickerDialogZTE;->mInitialMinute:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/DateTimePickerZTE;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 149
    iget-object v3, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    invoke-virtual {v3, p0}, Landroid/widget/DateTimePickerZTE;->setOnTimeChangedListener(Landroid/widget/DateTimePickerZTE$OnTimeChangedListener;)V

    .line 150
    const v3, 0x20c0023

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/app/DateTimePickerDialogZTE;->tvWeekday:Landroid/widget/TextView;

    .line 151
    invoke-direct {p0, p5, p6, p7}, Landroid/app/DateTimePickerDialogZTE;->updateTitle(III)V

    .line 153
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/DateTimePickerDialogZTE$OnDateSetListener;Landroid/app/DateTimePickerDialogZTE$OnTimeSetListener;IIIIIZ)V
    .locals 11
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "callBack"    # Landroid/app/DateTimePickerDialogZTE$OnDateSetListener;
    .param p3, "timecallBack"    # Landroid/app/DateTimePickerDialogZTE$OnTimeSetListener;
    .param p4, "year"    # I
    .param p5, "monthOfYear"    # I
    .param p6, "dayOfMonth"    # I
    .param p7, "hourOfDay"    # I
    .param p8, "minute"    # I
    .param p9, "is24HourView"    # Z

    .prologue
    .line 105
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move/from16 v8, p7

    move/from16 v9, p8

    move/from16 v10, p9

    invoke-direct/range {v0 .. v10}, Landroid/app/DateTimePickerDialogZTE;-><init>(Landroid/content/Context;ILandroid/app/DateTimePickerDialogZTE$OnDateSetListener;Landroid/app/DateTimePickerDialogZTE$OnTimeSetListener;IIIIIZ)V

    .line 106
    return-void
.end method

.method private tryNotifyDateSet()V
    .locals 5

    .prologue
    .line 199
    iget-object v0, p0, Landroid/app/DateTimePickerDialogZTE;->mDateCallBack:Landroid/app/DateTimePickerDialogZTE$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    invoke-virtual {v0}, Landroid/widget/DateTimePickerZTE;->clearFocus()V

    .line 201
    iget-object v0, p0, Landroid/app/DateTimePickerDialogZTE;->mDateCallBack:Landroid/app/DateTimePickerDialogZTE$OnDateSetListener;

    iget-object v1, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    iget-object v2, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    invoke-virtual {v2}, Landroid/widget/DateTimePickerZTE;->getYear()I

    move-result v2

    iget-object v3, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    invoke-virtual {v3}, Landroid/widget/DateTimePickerZTE;->getMonth()I

    move-result v3

    iget-object v4, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    invoke-virtual {v4}, Landroid/widget/DateTimePickerZTE;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/DateTimePickerDialogZTE$OnDateSetListener;->onDateSet(Landroid/widget/DateTimePickerZTE;III)V

    .line 204
    :cond_0
    return-void
.end method

.method private tryNotifyTimeSet()V
    .locals 4

    .prologue
    .line 163
    iget-object v0, p0, Landroid/app/DateTimePickerDialogZTE;->mTimeCallback:Landroid/app/DateTimePickerDialogZTE$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 164
    iget-object v0, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    invoke-virtual {v0}, Landroid/widget/DateTimePickerZTE;->clearFocus()V

    .line 165
    iget-object v0, p0, Landroid/app/DateTimePickerDialogZTE;->mTimeCallback:Landroid/app/DateTimePickerDialogZTE$OnTimeSetListener;

    iget-object v1, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    iget-object v2, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    invoke-virtual {v2}, Landroid/widget/DateTimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    invoke-virtual {v3}, Landroid/widget/DateTimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/app/DateTimePickerDialogZTE$OnTimeSetListener;->onTimeSet(Landroid/widget/DateTimePickerZTE;II)V

    .line 168
    :cond_0
    return-void
.end method

.method private updateTitle(III)V
    .locals 8
    .param p1, "year"    # I
    .param p2, "month"    # I
    .param p3, "day"    # I

    .prologue
    const/4 v7, 0x5

    const/4 v6, 0x2

    const/4 v5, 0x1

    .line 214
    iget-object v1, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    invoke-virtual {v1}, Landroid/widget/DateTimePickerZTE;->getCalendarViewShown()Z

    move-result v1

    if-nez v1, :cond_1

    .line 215
    iget-object v1, p0, Landroid/app/DateTimePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v5, p1}, Ljava/util/Calendar;->set(II)V

    .line 216
    iget-object v1, p0, Landroid/app/DateTimePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v6, p2}, Ljava/util/Calendar;->set(II)V

    .line 217
    iget-object v1, p0, Landroid/app/DateTimePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v7, p3}, Ljava/util/Calendar;->set(II)V

    .line 218
    iget-object v1, p0, Landroid/app/DateTimePickerDialogZTE;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/DateTimePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const v4, 0x18016

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 225
    .local v0, "title":Ljava/lang/String;
    invoke-virtual {p0, v0}, Landroid/app/DateTimePickerDialogZTE;->setTitle(Ljava/lang/CharSequence;)V

    .line 226
    iput-boolean v5, p0, Landroid/app/DateTimePickerDialogZTE;->mTitleNeedsUpdate:Z

    .line 234
    .end local v0    # "title":Ljava/lang/String;
    :cond_0
    :goto_0
    iget-object v1, p0, Landroid/app/DateTimePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v5, p1}, Ljava/util/Calendar;->set(II)V

    .line 235
    iget-object v1, p0, Landroid/app/DateTimePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v6, p2}, Ljava/util/Calendar;->set(II)V

    .line 236
    iget-object v1, p0, Landroid/app/DateTimePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v1, v7, p3}, Ljava/util/Calendar;->set(II)V

    .line 237
    iget-object v1, p0, Landroid/app/DateTimePickerDialogZTE;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/DateTimePickerDialogZTE;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    invoke-static {v1, v2, v3, v6}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 240
    .restart local v0    # "title":Ljava/lang/String;
    iget-object v1, p0, Landroid/app/DateTimePickerDialogZTE;->tvWeekday:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 242
    return-void

    .line 228
    .end local v0    # "title":Ljava/lang/String;
    :cond_1
    iget-boolean v1, p0, Landroid/app/DateTimePickerDialogZTE;->mTitleNeedsUpdate:Z

    if-eqz v1, :cond_0

    .line 229
    const/4 v1, 0x0

    iput-boolean v1, p0, Landroid/app/DateTimePickerDialogZTE;->mTitleNeedsUpdate:Z

    .line 230
    const v1, 0x104045f

    invoke-virtual {p0, v1}, Landroid/app/DateTimePickerDialogZTE;->setTitle(I)V

    goto :goto_0
.end method


# virtual methods
.method public getDatePicker()Landroid/widget/DateTimePickerZTE;
    .locals 1

    .prologue
    .line 181
    iget-object v0, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 156
    invoke-direct {p0}, Landroid/app/DateTimePickerDialogZTE;->tryNotifyDateSet()V

    .line 157
    invoke-direct {p0}, Landroid/app/DateTimePickerDialogZTE;->tryNotifyTimeSet()V

    .line 158
    return-void
.end method

.method public onDateChanged(Landroid/widget/DateTimePickerZTE;III)V
    .locals 1
    .param p1, "view"    # Landroid/widget/DateTimePickerZTE;
    .param p2, "year"    # I
    .param p3, "month"    # I
    .param p4, "day"    # I

    .prologue
    .line 171
    iget-object v0, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    invoke-virtual {v0, p2, p3, p4, p0}, Landroid/widget/DateTimePickerZTE;->init(IIILandroid/widget/DateTimePickerZTE$OnDateChangedListener;)V

    .line 172
    invoke-direct {p0, p2, p3, p4}, Landroid/app/DateTimePickerDialogZTE;->updateTitle(III)V

    .line 173
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 258
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 259
    const-string/jumbo v5, "year"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v4

    .line 260
    .local v4, "year":I
    const-string/jumbo v5, "month"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v3

    .line 261
    .local v3, "month":I
    const-string v5, "day"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 262
    .local v0, "day":I
    iget-object v5, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    invoke-virtual {v5, v4, v3, v0, p0}, Landroid/widget/DateTimePickerZTE;->init(IIILandroid/widget/DateTimePickerZTE$OnDateChangedListener;)V

    .line 263
    const-string v5, "hour"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 264
    .local v1, "hour":I
    const-string/jumbo v5, "minute"

    invoke-virtual {p1, v5}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 265
    .local v2, "minute":I
    iget-object v5, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    const-string v6, "is24hour"

    invoke-virtual {p1, v6}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v6

    invoke-static {v6}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/DateTimePickerZTE;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 266
    iget-object v5, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/DateTimePickerZTE;->setCurrentHour(Ljava/lang/Integer;)V

    .line 267
    iget-object v5, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/DateTimePickerZTE;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 268
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 246
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 247
    .local v0, "state":Landroid/os/Bundle;
    const-string/jumbo v1, "year"

    iget-object v2, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    invoke-virtual {v2}, Landroid/widget/DateTimePickerZTE;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 248
    const-string/jumbo v1, "month"

    iget-object v2, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    invoke-virtual {v2}, Landroid/widget/DateTimePickerZTE;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 249
    const-string v1, "day"

    iget-object v2, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    invoke-virtual {v2}, Landroid/widget/DateTimePickerZTE;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 250
    const-string v1, "hour"

    iget-object v2, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    invoke-virtual {v2}, Landroid/widget/DateTimePickerZTE;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 251
    const-string/jumbo v1, "minute"

    iget-object v2, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    invoke-virtual {v2}, Landroid/widget/DateTimePickerZTE;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 252
    const-string v1, "is24hour"

    iget-object v2, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    invoke-virtual {v2}, Landroid/widget/DateTimePickerZTE;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 253
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 208
    invoke-direct {p0}, Landroid/app/DateTimePickerDialogZTE;->tryNotifyDateSet()V

    .line 209
    invoke-direct {p0}, Landroid/app/DateTimePickerDialogZTE;->tryNotifyTimeSet()V

    .line 210
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 211
    return-void
.end method

.method public onTimeChanged(Landroid/widget/DateTimePickerZTE;II)V
    .locals 0
    .param p1, "view"    # Landroid/widget/DateTimePickerZTE;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 161
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .param p1, "year"    # I
    .param p2, "monthOfYear"    # I
    .param p3, "dayOfMonth"    # I

    .prologue
    .line 192
    iget-object v0, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DateTimePickerZTE;->updateDate(III)V

    .line 193
    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minutOfHour"    # I

    .prologue
    .line 195
    iget-object v0, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/DateTimePickerZTE;->setCurrentHour(Ljava/lang/Integer;)V

    .line 196
    iget-object v0, p0, Landroid/app/DateTimePickerDialogZTE;->mDateTimePicker:Landroid/widget/DateTimePickerZTE;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/DateTimePickerZTE;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 197
    return-void
.end method
