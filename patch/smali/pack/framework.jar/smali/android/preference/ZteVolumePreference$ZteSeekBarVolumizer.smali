.class public Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;
.super Landroid/preference/VolumePreference$SeekBarVolumizer;
.source "ZteVolumePreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/preference/ZteVolumePreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "ZteSeekBarVolumizer"
.end annotation


# instance fields
.field private hasTouch:Z

.field private mAudioManager:Landroid/media/AudioManager;

.field private mOriginalStreamVolume:I

.field private mStreamType:I

.field final synthetic this$0:Landroid/preference/ZteVolumePreference;


# direct methods
.method public constructor <init>(Landroid/preference/ZteVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;I)V
    .locals 6
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "seekBar"    # Landroid/widget/SeekBar;
    .param p4, "streamType"    # I

    .prologue
    .line 113
    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    move v4, p4

    invoke-direct/range {v0 .. v5}, Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;-><init>(Landroid/preference/ZteVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    .line 114
    return-void
.end method

.method public constructor <init>(Landroid/preference/ZteVolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V
    .locals 2
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "seekBar"    # Landroid/widget/SeekBar;
    .param p4, "streamType"    # I
    .param p5, "defaultUri"    # Landroid/net/Uri;

    .prologue
    .line 117
    iput-object p1, p0, Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;->this$0:Landroid/preference/ZteVolumePreference;

    .line 118
    invoke-direct/range {p0 .. p5}, Landroid/preference/VolumePreference$SeekBarVolumizer;-><init>(Landroid/preference/VolumePreference;Landroid/content/Context;Landroid/widget/SeekBar;ILandroid/net/Uri;)V

    .line 120
    iput p4, p0, Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;->mStreamType:I

    .line 121
    const-string v0, "audio"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/media/AudioManager;

    iput-object v0, p0, Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    .line 122
    iget-object v0, p0, Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v0, v1}, Landroid/media/AudioManager;->getStreamVolume(I)I

    move-result v0

    iput v0, p0, Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;->mOriginalStreamVolume:I

    .line 123
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;->hasTouch:Z

    .line 124
    return-void
.end method


# virtual methods
.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromTouch"    # Z

    .prologue
    .line 128
    iput-boolean p3, p0, Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;->hasTouch:Z

    .line 129
    const-string v0, "ZteVolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "onProgressChanged mStreamType= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " progress= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    invoke-super {p0, p1, p2, p3}, Landroid/preference/VolumePreference$SeekBarVolumizer;->onProgressChanged(Landroid/widget/SeekBar;IZ)V

    .line 131
    return-void
.end method

.method public revertVolume()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    .line 134
    const-string v0, "ZteVolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "revertVolume hasTouch = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;->hasTouch:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    iget-boolean v0, p0, Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;->hasTouch:Z

    if-eqz v0, :cond_0

    .line 136
    iput-boolean v3, p0, Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;->hasTouch:Z

    .line 137
    const-string v0, "ZteVolumePreference"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "revertVolume mStreamType = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;->mStreamType:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " mOriginalStreamVolume= "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 138
    iget-object v0, p0, Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;->mAudioManager:Landroid/media/AudioManager;

    iget v1, p0, Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;->mStreamType:I

    iget v2, p0, Landroid/preference/ZteVolumePreference$ZteSeekBarVolumizer;->mOriginalStreamVolume:I

    invoke-virtual {v0, v1, v2, v3}, Landroid/media/AudioManager;->setStreamVolume(III)V

    .line 140
    :cond_0
    return-void
.end method
