.class public Landroid/app/TimeDatePickerDialog;
.super Landroid/app/AlertDialog;
.source "TimeDatePickerDialog.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;
.implements Landroid/widget/TimePicker$OnTimeChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/app/TimeDatePickerDialog$OnTimeSetListener;
    }
.end annotation


# static fields
.field private static final HOUR:Ljava/lang/String; = "hour"

.field private static final IS_24_HOUR:Ljava/lang/String; = "is24hour"

.field private static final MINUTE:Ljava/lang/String; = "minute"


# instance fields
.field dateBtnOnClickListener:Landroid/view/View$OnClickListener;

.field private final mCallback:Landroid/app/TimeDatePickerDialog$OnTimeSetListener;

.field private mContext:Landroid/content/Context;

.field private final mDateChangeCallBack:Landroid/app/DateTimePickerDialog$OnDateSetListener;

.field mInitialHourOfDay:I

.field mInitialMinute:I

.field mIs24HourView:Z

.field private mModDateBtn:Landroid/widget/Button;

.field private final mTimePicker:Landroid/widget/TimePicker;


# direct methods
.method public constructor <init>(Landroid/content/Context;ILandroid/app/DateTimePickerDialog$OnDateSetListener;Landroid/app/TimeDatePickerDialog$OnTimeSetListener;IIZ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "theme"    # I
    .param p3, "dateChangeCallBack"    # Landroid/app/DateTimePickerDialog$OnDateSetListener;
    .param p4, "callBack"    # Landroid/app/TimeDatePickerDialog$OnTimeSetListener;
    .param p5, "hourOfDay"    # I
    .param p6, "minute"    # I
    .param p7, "is24HourView"    # Z

    .prologue
    .line 119
    invoke-direct {p0, p1, p2}, Landroid/app/AlertDialog;-><init>(Landroid/content/Context;I)V

    .line 76
    new-instance v3, Landroid/app/TimeDatePickerDialog$1;

    invoke-direct {v3, p0}, Landroid/app/TimeDatePickerDialog$1;-><init>(Landroid/app/TimeDatePickerDialog;)V

    iput-object v3, p0, Landroid/app/TimeDatePickerDialog;->dateBtnOnClickListener:Landroid/view/View$OnClickListener;

    .line 120
    iput-object p1, p0, Landroid/app/TimeDatePickerDialog;->mContext:Landroid/content/Context;

    .line 121
    iput-object p3, p0, Landroid/app/TimeDatePickerDialog;->mDateChangeCallBack:Landroid/app/DateTimePickerDialog$OnDateSetListener;

    .line 122
    iput-object p4, p0, Landroid/app/TimeDatePickerDialog;->mCallback:Landroid/app/TimeDatePickerDialog$OnTimeSetListener;

    .line 123
    iput p5, p0, Landroid/app/TimeDatePickerDialog;->mInitialHourOfDay:I

    .line 124
    iput p6, p0, Landroid/app/TimeDatePickerDialog;->mInitialMinute:I

    .line 125
    iput-boolean p7, p0, Landroid/app/TimeDatePickerDialog;->mIs24HourView:Z

    .line 127
    const/4 v3, 0x0

    invoke-virtual {p0, v3}, Landroid/app/AlertDialog;->setIcon(I)V

    .line 128
    const v3, 0x204002c

    invoke-virtual {p0, v3}, Landroid/app/Dialog;->setTitle(I)V

    .line 130
    invoke-virtual {p0}, Landroid/app/Dialog;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 131
    .local v1, "themeContext":Landroid/content/Context;
    const/4 v3, -0x1

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x104000a

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {p0, v3, v4, p0}, Landroid/app/AlertDialog;->setButton(ILjava/lang/CharSequence;Landroid/content/DialogInterface$OnClickListener;)V

    .line 133
    const-string v3, "layout_inflater"

    invoke-virtual {v1, v3}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 135
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v3, 0x2080001

    const/4 v4, 0x0

    invoke-virtual {v0, v3, v4}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v2

    .line 136
    .local v2, "view":Landroid/view/View;
    invoke-virtual {p0, v2}, Landroid/app/AlertDialog;->setView(Landroid/view/View;)V

    .line 137
    const v3, 0x20c0022

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/TimePicker;

    iput-object v3, p0, Landroid/app/TimeDatePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    .line 138
    const v3, 0x20c0021

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v3

    check-cast v3, Landroid/widget/Button;

    iput-object v3, p0, Landroid/app/TimeDatePickerDialog;->mModDateBtn:Landroid/widget/Button;

    .line 139
    iget-object v3, p0, Landroid/app/TimeDatePickerDialog;->mModDateBtn:Landroid/widget/Button;

    iget-object v4, p0, Landroid/app/TimeDatePickerDialog;->dateBtnOnClickListener:Landroid/view/View$OnClickListener;

    invoke-virtual {v3, v4}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 141
    iget-object v3, p0, Landroid/app/TimeDatePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget-boolean v4, p0, Landroid/app/TimeDatePickerDialog;->mIs24HourView:Z

    invoke-static {v4}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 142
    iget-object v3, p0, Landroid/app/TimeDatePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget v4, p0, Landroid/app/TimeDatePickerDialog;->mInitialHourOfDay:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 143
    iget-object v3, p0, Landroid/app/TimeDatePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget v4, p0, Landroid/app/TimeDatePickerDialog;->mInitialMinute:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 144
    iget-object v3, p0, Landroid/app/TimeDatePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3, p0}, Landroid/widget/TimePicker;->setOnTimeChangedListener(Landroid/widget/TimePicker$OnTimeChangedListener;)V

    .line 145
    invoke-direct {p0}, Landroid/app/TimeDatePickerDialog;->updateDate()V

    .line 146
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/app/DateTimePickerDialog$OnDateSetListener;Landroid/app/TimeDatePickerDialog$OnTimeSetListener;IIZ)V
    .locals 8
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dateChangeCallBack"    # Landroid/app/DateTimePickerDialog$OnDateSetListener;
    .param p3, "callBack"    # Landroid/app/TimeDatePickerDialog$OnTimeSetListener;
    .param p4, "hourOfDay"    # I
    .param p5, "minute"    # I
    .param p6, "is24HourView"    # Z

    .prologue
    .line 104
    const/4 v2, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/app/TimeDatePickerDialog;-><init>(Landroid/content/Context;ILandroid/app/DateTimePickerDialog$OnDateSetListener;Landroid/app/TimeDatePickerDialog$OnTimeSetListener;IIZ)V

    .line 105
    return-void
.end method

.method static synthetic access$000(Landroid/app/TimeDatePickerDialog;)Landroid/content/Context;
    .locals 1
    .param p0, "x0"    # Landroid/app/TimeDatePickerDialog;

    .prologue
    .line 45
    iget-object v0, p0, Landroid/app/TimeDatePickerDialog;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic access$100(Landroid/app/TimeDatePickerDialog;)Landroid/app/DateTimePickerDialog$OnDateSetListener;
    .locals 1
    .param p0, "x0"    # Landroid/app/TimeDatePickerDialog;

    .prologue
    .line 45
    iget-object v0, p0, Landroid/app/TimeDatePickerDialog;->mDateChangeCallBack:Landroid/app/DateTimePickerDialog$OnDateSetListener;

    return-object v0
.end method

.method static synthetic access$200(Landroid/app/TimeDatePickerDialog;)Landroid/app/TimeDatePickerDialog$OnTimeSetListener;
    .locals 1
    .param p0, "x0"    # Landroid/app/TimeDatePickerDialog;

    .prologue
    .line 45
    iget-object v0, p0, Landroid/app/TimeDatePickerDialog;->mCallback:Landroid/app/TimeDatePickerDialog$OnTimeSetListener;

    return-object v0
.end method

.method private tryNotifyTimeSet()V
    .locals 4

    .prologue
    .line 185
    iget-object v0, p0, Landroid/app/TimeDatePickerDialog;->mCallback:Landroid/app/TimeDatePickerDialog$OnTimeSetListener;

    if-eqz v0, :cond_0

    .line 186
    iget-object v0, p0, Landroid/app/TimeDatePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v0}, Landroid/view/ViewGroup;->clearFocus()V

    .line 187
    iget-object v0, p0, Landroid/app/TimeDatePickerDialog;->mCallback:Landroid/app/TimeDatePickerDialog$OnTimeSetListener;

    iget-object v1, p0, Landroid/app/TimeDatePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    iget-object v2, p0, Landroid/app/TimeDatePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    iget-object v3, p0, Landroid/app/TimeDatePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v3}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Integer;->intValue()I

    move-result v3

    invoke-interface {v0, v1, v2, v3}, Landroid/app/TimeDatePickerDialog$OnTimeSetListener;->onTimeSet(Landroid/widget/TimePicker;II)V

    .line 190
    :cond_0
    return-void
.end method

.method private updateDate()V
    .locals 4

    .prologue
    .line 164
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v0

    .line 174
    .local v0, "calendar":Ljava/util/Calendar;
    new-instance v2, Ljava/text/SimpleDateFormat;

    const-string v3, "MM   dd, yyyy    E"

    invoke-direct {v2, v3}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 175
    .local v2, "s":Ljava/text/SimpleDateFormat;
    invoke-virtual {v0}, Ljava/util/Calendar;->getTime()Ljava/util/Date;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/text/DateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 177
    .local v1, "curDate":Ljava/lang/String;
    iget-object v3, p0, Landroid/app/TimeDatePickerDialog;->mModDateBtn:Landroid/widget/Button;

    invoke-virtual {v3, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 178
    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 0
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 149
    invoke-direct {p0}, Landroid/app/TimeDatePickerDialog;->tryNotifyTimeSet()V

    .line 150
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 209
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 210
    const-string v2, "hour"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v0

    .line 211
    .local v0, "hour":I
    const-string/jumbo v2, "minute"

    invoke-virtual {p1, v2}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    .line 212
    .local v1, "minute":I
    iget-object v2, p0, Landroid/app/TimeDatePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    const-string v3, "is24hour"

    invoke-virtual {p1, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    invoke-static {v3}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setIs24HourView(Ljava/lang/Boolean;)V

    .line 213
    iget-object v2, p0, Landroid/app/TimeDatePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 214
    iget-object v2, p0, Landroid/app/TimeDatePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 215
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 200
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 201
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "hour"

    iget-object v2, p0, Landroid/app/TimeDatePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentHour()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 202
    const-string/jumbo v1, "minute"

    iget-object v2, p0, Landroid/app/TimeDatePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->getCurrentMinute()Ljava/lang/Integer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 203
    const-string v1, "is24hour"

    iget-object v2, p0, Landroid/app/TimeDatePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-virtual {v2}, Landroid/widget/TimePicker;->is24HourView()Z

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putBoolean(Ljava/lang/String;Z)V

    .line 204
    return-object v0
.end method

.method protected onStop()V
    .locals 0

    .prologue
    .line 194
    invoke-direct {p0}, Landroid/app/TimeDatePickerDialog;->tryNotifyTimeSet()V

    .line 195
    invoke-super {p0}, Landroid/app/Dialog;->onStop()V

    .line 196
    return-void
.end method

.method public onTimeChanged(Landroid/widget/TimePicker;II)V
    .locals 0
    .param p1, "view"    # Landroid/widget/TimePicker;
    .param p2, "hourOfDay"    # I
    .param p3, "minute"    # I

    .prologue
    .line 182
    return-void
.end method

.method public setDateBtnEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 158
    iget-object v0, p0, Landroid/app/TimeDatePickerDialog;->mModDateBtn:Landroid/widget/Button;

    invoke-virtual {v0, p1}, Landroid/widget/TextView;->setEnabled(Z)V

    .line 159
    return-void
.end method

.method public updateTime(II)V
    .locals 2
    .param p1, "hourOfDay"    # I
    .param p2, "minutOfHour"    # I

    .prologue
    .line 153
    iget-object v0, p0, Landroid/app/TimeDatePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentHour(Ljava/lang/Integer;)V

    .line 154
    iget-object v0, p0, Landroid/app/TimeDatePickerDialog;->mTimePicker:Landroid/widget/TimePicker;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/TimePicker;->setCurrentMinute(Ljava/lang/Integer;)V

    .line 155
    return-void
.end method
