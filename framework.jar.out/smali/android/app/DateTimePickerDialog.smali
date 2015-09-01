.class public Landroid/app/DateTimePickerDialog;
.super Landroid/app/AlertDialog;
.source "DateTimePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/DatePicker$OnDateChangedListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/DateTimePickerDialog$OnDateSetListener;
    }
.end annotation


# static fields
.field private static final DAY:Ljava/lang/String; = "day"

.field private static final MONTH:Ljava/lang/String; = "month"

.field private static final YEAR:Ljava/lang/String; = "year"


# instance fields
.field private final mCalendar:Ljava/util/Calendar;

.field private final mCallBack:Landroid/app/DateTimePickerDialog$OnDateSetListener;

.field private mContext:Landroid/content/Context;

.field private final mDatePicker:Landroid/widget/DatePicker;

.field private mModTimeBtn:Landroid/widget/Button;

.field private final mTimeChangeCallBack:Landroid/app/TimeDatePickerDialog$OnTimeSetListener;

.field private mTitleNeedsUpdate:Z

.field private mWeekText:Landroid/widget/TextView;

.field timeBtnOnClickListener:Landroid/view/View$OnClickListener;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/app/DateTimePickerDialog$OnDateSetListener;Landroid/app/TimeDatePickerDialog$OnTimeSetListener;III)V
    .locals 6
    .parameter "context"
    .parameter "theme"
    .parameter "callBack"
    .parameter "timeChangeCallBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 140
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 68
    const/4 v3, 0x1

    iput-boolean v3, p0, Landroid/app/DateTimePickerDialog;->mTitleNeedsUpdate:Z

    .line 70
    new-instance v3, Landroid/app/DateTimePickerDialog$1;

    invoke-direct {v3, p0}, Landroid/app/DateTimePickerDialog$1;-><init>(Landroid/app/DateTimePickerDialog;)V

    iput-object v3, p0, Landroid/app/DateTimePickerDialog;->timeBtnOnClickListener:Landroid/view/View$OnClickListener;

    .line 141
    iput-object p1, p0, Landroid/app/DateTimePickerDialog;->mContext:Landroid/content/Context;

    .line 142
    iput-object p3, p0, Landroid/app/DateTimePickerDialog;->mCallBack:Landroid/app/DateTimePickerDialog$OnDateSetListener;

    .line 143
    iput-object p4, p0, Landroid/app/DateTimePickerDialog;->mTimeChangeCallBack:Landroid/app/TimeDatePickerDialog$OnTimeSetListener;

    .line 144
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v3

    iput-object v3, p0, Landroid/app/DateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    .line 146
    invoke-virtual {p0}, Landroid/app/DateTimePickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 147
    .local v1, themeContext:Landroid/content/Context;
    const/4 v3, -0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/app/DateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 148
    const/4 v3, -0x2

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const/high16 v5, 0x104

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/app/DateTimePickerDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 149
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/app/DateTimePickerDialog;->setIcon(I)V

    .line 151
    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 153
    .local v0, inflater:Landroid/view/LayoutInflater;
    const v3, 0x2080002

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 154
    .local v2, view:Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/app/DateTimePickerDialog;->setView(Landroid/view/View;)V

    .line 155
    const/high16 v3, 0x20c

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/DatePicker;

    iput-object v3, p0, Landroid/app/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    .line 156
    iget-object v3, p0, Landroid/app/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3, p5, p6, p7, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 158
    const v3, 0x20c0001

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TextView;

    iput-object v3, p0, Landroid/app/DateTimePickerDialog;->mWeekText:Landroid/widget/TextView;

    .line 159
    const v3, 0x20c0002

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Landroid/app/DateTimePickerDialog;->mModTimeBtn:Landroid/widget/Button;

    .line 160
    iget-object v3, p0, Landroid/app/DateTimePickerDialog;->mModTimeBtn:Landroid/widget/Button;

    iget-object v4, p0, Landroid/app/DateTimePickerDialog;->timeBtnOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/widget/Button;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 161
    invoke-direct {p0}, Landroid/app/DateTimePickerDialog;->updateTitle()V

    .line 162
    invoke-direct {p0, p7}, Landroid/app/DateTimePickerDialog;->updateWeek(I)V

    .line 163
    invoke-direct {p0}, Landroid/app/DateTimePickerDialog;->updateTime()V

    .line 164
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/DateTimePickerDialog$OnDateSetListener;Landroid/app/TimeDatePickerDialog$OnTimeSetListener;III)V
    .locals 8
    .parameter "context"
    .parameter "callBack"
    .parameter "timeChangeCallBack"
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 119
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/DateTimePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DateTimePickerDialog$OnDateSetListener;Landroid/app/TimeDatePickerDialog$OnTimeSetListener;III)V

    .line 120
    return-void
.end method

.method static synthetic access$000(Landroid/app/DateTimePickerDialog;)Landroid/content/Context;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/app/DateTimePickerDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/DateTimePickerDialog;)Landroid/app/DateTimePickerDialog$OnDateSetListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/app/DateTimePickerDialog;->mCallBack:Landroid/app/DateTimePickerDialog$OnDateSetListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/DateTimePickerDialog;)Landroid/app/TimeDatePickerDialog$OnTimeSetListener;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/app/DateTimePickerDialog;->mTimeChangeCallBack:Landroid/app/TimeDatePickerDialog$OnTimeSetListener;

    return-object v0
.end method

.method static synthetic access$300(Landroid/app/DateTimePickerDialog;)Ljava/util/Calendar;
    .locals 1
    .parameter "x0"

    .prologue
    .line 54
    iget-object v0, p0, Landroid/app/DateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    return-object v0
.end method

.method private tryNotifyDateSet()V
    .locals 5

    .prologue
    .line 198
    iget-object v0, p0, Landroid/app/DateTimePickerDialog;->mCallBack:Landroid/app/DateTimePickerDialog$OnDateSetListener;

    if-eqz v0, :cond_0

    .line 199
    iget-object v0, p0, Landroid/app/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0}, Landroid/widget/DatePicker;->clearFocus()V

    .line 200
    iget-object v0, p0, Landroid/app/DateTimePickerDialog;->mCallBack:Landroid/app/DateTimePickerDialog$OnDateSetListener;

    iget-object v1, p0, Landroid/app/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    iget-object v2, p0, Landroid/app/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    iget-object v3, p0, Landroid/app/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3}, Landroid/widget/DatePicker;->getMonth()I

    move-result v3

    iget-object v4, p0, Landroid/app/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v4}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v4

    invoke-interface {v0, v1, v2, v3, v4}, Landroid/app/DateTimePickerDialog$OnDateSetListener;->onDateSet(Landroid/widget/DatePicker;III)V

    .line 203
    :cond_0
    return-void
.end method

.method private updateTime()V
    .locals 3

    .prologue
    .line 229
    new-instance v1, Ljava/text/SimpleDateFormat;

    const-string v2, "HH:mm"

    invoke-direct {v1, v2}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 230
    .local v1, s:Ljava/text/SimpleDateFormat;
    iget-object v2, p0, Landroid/app/DateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v0

    .line 232
    .local v0, curTime:Ljava/lang/String;
    iget-object v2, p0, Landroid/app/DateTimePickerDialog;->mModTimeBtn:Landroid/widget/Button;

    invoke-virtual {v2, v0}, Landroid/widget/Button;->setText(Ljava/lang/CharSequence;)V

    .line 233
    return-void
.end method

.method private updateTitle()V
    .locals 1

    .prologue
    .line 215
    const v0, 0x204002c

    invoke-virtual {p0, v0}, Landroid/app/DateTimePickerDialog;->setTitle(I)V

    .line 216
    return-void
.end method

.method private updateWeek(I)V
    .locals 5
    .parameter "day"

    .prologue
    .line 219
    iget-object v1, p0, Landroid/app/DateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    const/4 v2, 0x5

    invoke-virtual {v1, v2, p1}, Ljava/util/Calendar;->set(II)V

    .line 220
    iget-object v1, p0, Landroid/app/DateTimePickerDialog;->mContext:Landroid/content/Context;

    iget-object v2, p0, Landroid/app/DateTimePickerDialog;->mCalendar:Ljava/util/Calendar;

    invoke-virtual {v2}, Ljava/util/Calendar;->getTimeInMillis()J

    move-result-wide v2

    const v4, 0x8002

    invoke-static {v1, v2, v3, v4}, Landroid/text/format/DateUtils;->formatDateTime(Landroid/content/Context;JI)Ljava/lang/String;

    move-result-object v0

    .line 223
    .local v0, title:Ljava/lang/String;
    iget-object v1, p0, Landroid/app/DateTimePickerDialog;->mWeekText:Landroid/widget/TextView;

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 224
    return-void
.end method


# virtual methods
.method public getDatePicker()Landroid/widget/DatePicker;
    .locals 1

    .prologue
    .line 180
    iget-object v0, p0, Landroid/app/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    return-object v0
.end method

.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .parameter "dialog"
    .parameter "which"

    .prologue
    .line 167
    invoke-direct {p0}, Landroid/app/DateTimePickerDialog;->tryNotifyDateSet()V

    .line 168
    return-void
.end method

.method public onDateChanged(Landroid/widget/DatePicker;III)V
    .locals 1
    .parameter "view"
    .parameter "year"
    .parameter "month"
    .parameter "day"

    .prologue
    .line 171
    iget-object v0, p0, Landroid/app/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0, p2, p3, p4, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 172
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .parameter "savedInstanceState"

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/app/AlertDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 247
    const-string/jumbo v3, "year"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v2

    .line 248
    .local v2, year:I
    const-string/jumbo v3, "month"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 249
    .local v1, month:I
    const-string v3, "day"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 250
    .local v0, day:I
    iget-object v3, p0, Landroid/app/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v3, v2, v1, v0, p0}, Landroid/widget/DatePicker;->init(IIILandroid/widget/DatePicker$OnDateChangedListener;)V

    .line 251
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 237
    invoke-super {p0}, Landroid/app/AlertDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 238
    .local v0, state:Landroid/os/Bundle;
    const-string/jumbo v1, "year"

    iget-object v2, p0, Landroid/app/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getYear()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 239
    const-string/jumbo v1, "month"

    iget-object v2, p0, Landroid/app/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 240
    const-string v1, "day"

    iget-object v2, p0, Landroid/app/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v2}, Landroid/widget/DatePicker;->getDayOfMonth()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 241
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 207
    invoke-direct {p0}, Landroid/app/DateTimePickerDialog;->tryNotifyDateSet()V

    .line 208
    invoke-super {p0}, Landroid/app/AlertDialog;->onStop()V

    .line 209
    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 0
    .parameter "arg0"
    .parameter "arg1"
    .parameter "arg2"

    .prologue
    .line 257
    return-void
.end method

.method public setTimeBtnEnabled(Z)V
    .locals 1
    .parameter "enabled"

    .prologue
    .line 211
    iget-object v0, p0, Landroid/app/DateTimePickerDialog;->mModTimeBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 212
    return-void
.end method

.method public updateDate(III)V
    .locals 1
    .parameter "year"
    .parameter "monthOfYear"
    .parameter "dayOfMonth"

    .prologue
    .line 194
    iget-object v0, p0, Landroid/app/DateTimePickerDialog;->mDatePicker:Landroid/widget/DatePicker;

    invoke-virtual {v0, p1, p2, p3}, Landroid/widget/DatePicker;->updateDate(III)V

    .line 195
    return-void
.end method
