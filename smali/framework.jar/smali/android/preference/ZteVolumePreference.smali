.class public Landroid/preference/ZteVolumePreference;
.super Landroid/preference/VolumePreference;
.source "ZteVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "ZteVolumePreference"


# instance fields
.field private mStreamType:I

.field private mZteSeekBarVolumizer:Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 54
    invoke-direct {p0, p1, p2}, Landroid/preference/VolumePreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 55
    return-void
.end method

.method private cleanup()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    .line 85
    invoke-virtual {p0}, Landroid/preference/ZteVolumePreference;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/preference/PreferenceManager;->unregisterOnActivityStopListener(Landroid/preference/PreferenceManager$OnActivityStopListener;)V

    .line 87
    iget-object v2, p0, Landroid/preference/ZteVolumePreference;->mZteSeekBarVolumizer:Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;

    if-eqz v2, :cond_2

    .line 88
    invoke-virtual {p0}, Landroid/preference/ZteVolumePreference;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    .line 89
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 90
    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v2

    invoke-virtual {v2}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v2

    const v3, 0x10202fd

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    .line 92
    .local v1, "view":Landroid/view/View;
    if-eqz v1, :cond_0

    invoke-virtual {v1, v4}, Landroid/view/View;->setOnKeyListener(Landroid/view/View$OnKeyListener;)V

    .line 94
    :cond_0
    iget-object v2, p0, Landroid/preference/ZteVolumePreference;->mZteSeekBarVolumizer:Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;->revertVolume()V

    .line 96
    .end local v1    # "view":Landroid/view/View;
    :cond_1
    iget-object v2, p0, Landroid/preference/ZteVolumePreference;->mZteSeekBarVolumizer:Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;

    invoke-virtual {v2}, Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;->stop()V

    .line 97
    iput-object v4, p0, Landroid/preference/ZteVolumePreference;->mZteSeekBarVolumizer:Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;

    .line 100
    .end local v0    # "dialog":Landroid/app/Dialog;
    :cond_2
    return-void
.end method


# virtual methods
.method protected onBindDialogView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 64
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->onBindDialogView(Landroid/view/View;)V

    .line 66
    const v1, 0x10202fd

    invoke-virtual {p1, v1}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/SeekBar;

    .line 67
    .local v0, "seekBar":Landroid/widget/SeekBar;
    new-instance v1, Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;

    invoke-virtual {p0}, Landroid/preference/ZteVolumePreference;->getContext()Landroid/content/Context;

    move-result-object v2

    iget v3, p0, Landroid/preference/ZteVolumePreference;->mStreamType:I

    invoke-direct {v1, p0, v2, v0, v3}, Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;-><init>(Landroid/preference/ZteVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V

    iput-object v1, p0, Landroid/preference/ZteVolumePreference;->mZteSeekBarVolumizer:Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;

    .line 68
    return-void
.end method

.method protected onDialogClosed(Z)V
    .locals 1
    .param p1, "positiveResult"    # Z

    .prologue
    .line 73
    if-nez p1, :cond_0

    iget-object v0, p0, Landroid/preference/ZteVolumePreference;->mZteSeekBarVolumizer:Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;

    if-eqz v0, :cond_0

    .line 74
    iget-object v0, p0, Landroid/preference/ZteVolumePreference;->mZteSeekBarVolumizer:Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;

    invoke-virtual {v0}, Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;->revertVolume()V

    .line 77
    :cond_0
    invoke-direct {p0}, Landroid/preference/ZteVolumePreference;->cleanup()V

    .line 78
    return-void
.end method

.method public setStreamType(I)V
    .locals 0
    .param p1, "streamType"    # I

    .prologue
    .line 58
    invoke-super {p0, p1}, Landroid/preference/VolumePreference;->setStreamType(I)V

    .line 59
    iput p1, p0, Landroid/preference/ZteVolumePreference;->mStreamType:I

    .line 60
    return-void
.end method
