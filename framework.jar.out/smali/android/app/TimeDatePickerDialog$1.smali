.class Landroid/app/TimeDatePickerDialog$1;
.super Ljava/lang/Object;
.source "TimeDatePickerDialog.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/TimeDatePickerDialog;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/TimeDatePickerDialog;


# direct methods
.method constructor <init>(Landroid/app/TimeDatePickerDialog;)V
    .locals 0
    .parameter

    .prologue
    .line 76
    iput-object p1, p0, Landroid/app/TimeDatePickerDialog$1;->this$0:Landroid/app/TimeDatePickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 8
    .parameter "v"

    .prologue
    .line 81
    invoke-static {}, Ljava/util/Calendar;->getInstance()Ljava/util/Calendar;

    move-result-object v7

    .line 82
    .local v7, calendar:Ljava/util/Calendar;
    new-instance v0, Landroid/app/DateTimePickerDialog;

    iget-object v1, p0, Landroid/app/TimeDatePickerDialog$1;->this$0:Landroid/app/TimeDatePickerDialog;

    #getter for: Landroid/app/TimeDatePickerDialog;->mContext:Landroid/content/Context;
    invoke-static {v1}, Landroid/app/TimeDatePickerDialog;->access$000(Landroid/app/TimeDatePickerDialog;)Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Landroid/app/TimeDatePickerDialog$1;->this$0:Landroid/app/TimeDatePickerDialog;

    #getter for: Landroid/app/TimeDatePickerDialog;->mDateChangeCallBack:Landroid/app/DateTimePickerDialog$OnDateSetListener;
    invoke-static {v2}, Landroid/app/TimeDatePickerDialog;->access$100(Landroid/app/TimeDatePickerDialog;)Landroid/app/DateTimePickerDialog$OnDateSetListener;

    move-result-object v2

    iget-object v3, p0, Landroid/app/TimeDatePickerDialog$1;->this$0:Landroid/app/TimeDatePickerDialog;

    #getter for: Landroid/app/TimeDatePickerDialog;->mCallback:Landroid/app/TimeDatePickerDialog$OnTimeSetListener;
    invoke-static {v3}, Landroid/app/TimeDatePickerDialog;->access$200(Landroid/app/TimeDatePickerDialog;)Landroid/app/TimeDatePickerDialog$OnTimeSetListener;

    move-result-object v3

    const/4 v4, 0x1

    invoke-virtual {v7, v4}, Ljava/util/Calendar;->get(I)I

    move-result v4

    const/4 v5, 0x2

    invoke-virtual {v7, v5}, Ljava/util/Calendar;->get(I)I

    move-result v5

    const/4 v6, 0x5

    invoke-virtual {v7, v6}, Ljava/util/Calendar;->get(I)I

    move-result v6

    invoke-direct/range {v0 .. v6}, Landroid/app/DateTimePickerDialog;-><init>(Landroid/content/Context;Landroid/app/DateTimePickerDialog$OnDateSetListener;Landroid/app/TimeDatePickerDialog$OnTimeSetListener;III)V

    .line 87
    .local v0, d:Landroid/app/DateTimePickerDialog;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/app/DateTimePickerDialog;->setTimeBtnEnabled(Z)V

    .line 88
    invoke-virtual {v0}, Landroid/app/DateTimePickerDialog;->show()V

    .line 89
    return-void
.end method
