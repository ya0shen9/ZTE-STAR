.class public final Lcom/android/internal/widget/LockPatternUtils$ZteExt;
.super Ljava/lang/Object;
.source "LockPatternUtils.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/widget/LockPatternUtils;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x11
    name = "ZteExt"
.end annotation


# static fields
.field private static final KEY_SOUND_LOCK:Ljava/lang/String; = "soundlockvalue"

.field private static final VOICE_PRINT_FILE:Ljava/lang/String; = "/data/data/zte.com.cn.vocalprint/files"


# instance fields
.field final synthetic this$0:Lcom/android/internal/widget/LockPatternUtils;


# direct methods
.method public constructor <init>(Lcom/android/internal/widget/LockPatternUtils;)V
    .locals 0

    .prologue
    .line 1657
    iput-object p1, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private checkVoicePrintPackageDataExist()Z
    .locals 6

    .prologue
    .line 1860
    const/4 v0, 0x1

    .line 1861
    .local v0, "bExist":Z
    const-string v3, "vigi"

    const-string v4, "checkVoicePrintPackageDataExist"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1863
    :try_start_0
    new-instance v2, Ljava/io/File;

    const-string v3, "/data/data/zte.com.cn.vocalprint/files"

    invoke-direct {v2, v3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 1864
    .local v2, "voice_file":Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v0

    .line 1865
    const-string v3, "vigi"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "voice_file = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string v5, ", bExist = "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1877
    .end local v2    # "voice_file":Ljava/io/File;
    :goto_0
    if-nez v0, :cond_0

    .line 1879
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    # getter for: Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->access$400(Lcom/android/internal/widget/LockPatternUtils;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "soundlockvalue"

    const/4 v5, 0x0

    invoke-static {v3, v4, v5}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1882
    :cond_0
    return v0

    .line 1872
    :catch_0
    move-exception v1

    .line 1873
    .local v1, "e":Ljava/lang/Exception;
    const-string v3, "vigi"

    const-string v4, "checkVoicePrintPackageDataExist"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method public getNextAlarmTime()J
    .locals 6

    .prologue
    .line 1933
    iget-object v2, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    # getter for: Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;
    invoke-static {v2}, Lcom/android/internal/widget/LockPatternUtils;->access$1100(Lcom/android/internal/widget/LockPatternUtils;)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    const-string v3, "next_alarm_time"

    const-wide/16 v4, 0x0

    invoke-static {v2, v3, v4, v5}, Landroid/provider/Settings$System;->getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J

    move-result-wide v0

    .line 1935
    .local v0, "nextAlarm":J
    return-wide v0
.end method

.method public isSoundLockInstalled()Z
    .locals 5

    .prologue
    const/4 v2, 0x1

    .line 1917
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    # getter for: Lcom/android/internal/widget/LockPatternUtils;->mContext:Landroid/content/Context;
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->access$1100(Lcom/android/internal/widget/LockPatternUtils;)Landroid/content/Context;

    move-result-object v3

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 1919
    .local v1, "pm":Landroid/content/pm/PackageManager;
    :try_start_0
    const-string v3, "com.android.zte.soudunlock"

    const/4 v4, 0x1

    invoke-virtual {v1, v3, v4}, Landroid/content/pm/PackageManager;->getPackageInfo(Ljava/lang/String;I)Landroid/content/pm/PackageInfo;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1924
    const-string v3, "LockPatternUtils"

    const-string v4, "Soundlock isinstalled"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1925
    :goto_0
    return v2

    .line 1920
    :catch_0
    move-exception v0

    .line 1921
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v2, "LockPatternUtils"

    const-string v3, "Soundlock name not found"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1922
    const/4 v2, 0x0

    goto :goto_0
.end method

.method public saveLockPassword(Ljava/lang/String;IZZ)V
    .locals 6
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z
    .param p4, "isSoundLock"    # Z

    .prologue
    .line 1726
    iget-object v0, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I
    invoke-static {v0}, Lcom/android/internal/widget/LockPatternUtils;->access$000(Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v5

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    invoke-virtual/range {v0 .. v5}, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->saveLockPassword(Ljava/lang/String;IZZI)V

    .line 1727
    return-void
.end method

.method public saveLockPassword(Ljava/lang/String;IZZI)V
    .locals 28
    .param p1, "password"    # Ljava/lang/String;
    .param p2, "quality"    # I
    .param p3, "isFallback"    # Z
    .param p4, "isSoundLock"    # Z
    .param p5, "userHandle"    # I

    .prologue
    .line 1742
    :try_start_0
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->access$100(Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v3

    move-object/from16 v0, p1

    move/from16 v1, p5

    invoke-interface {v3, v0, v1}, Lcom/android/internal/widget/ILockSettings;->setLockPassword(Ljava/lang/String;I)V

    .line 1743
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v2

    .line 1744
    .local v2, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_a

    .line 1745
    if-nez p5, :cond_0

    .line 1747
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->updateEncryptionPassword(Ljava/lang/String;)V
    invoke-static {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->access$600(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;)V

    .line 1751
    :cond_0
    invoke-static/range {p1 .. p1}, Lcom/android/internal/widget/LockPatternUtils;->computePasswordQuality(Ljava/lang/String;)I

    move-result v22

    .line 1752
    .local v22, "computedQuality":I
    if-nez p3, :cond_7

    .line 1753
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 1754
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    const-string v4, "lockscreen.password_type"

    move/from16 v0, p2

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-long v11, v11

    move/from16 v0, p5

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V
    invoke-static {v3, v4, v11, v12, v0}, Lcom/android/internal/widget/LockPatternUtils;->access$700(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JI)V

    .line 1755
    if-eqz v22, :cond_6

    .line 1756
    const/4 v5, 0x0

    .line 1757
    .local v5, "letters":I
    const/4 v6, 0x0

    .line 1758
    .local v6, "uppercase":I
    const/4 v7, 0x0

    .line 1759
    .local v7, "lowercase":I
    const/4 v8, 0x0

    .line 1760
    .local v8, "numbers":I
    const/4 v9, 0x0

    .line 1761
    .local v9, "symbols":I
    const/4 v10, 0x0

    .line 1762
    .local v10, "nonletter":I
    const/16 v24, 0x0

    .local v24, "i":I
    :goto_0
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    move/from16 v0, v24

    if-ge v0, v3, :cond_4

    .line 1763
    move-object/from16 v0, p1

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Ljava/lang/String;->charAt(I)C

    move-result v21

    .line 1764
    .local v21, "c":C
    const/16 v3, 0x41

    move/from16 v0, v21

    if-lt v0, v3, :cond_1

    const/16 v3, 0x5a

    move/from16 v0, v21

    if-gt v0, v3, :cond_1

    .line 1765
    add-int/lit8 v5, v5, 0x1

    .line 1766
    add-int/lit8 v6, v6, 0x1

    .line 1762
    :goto_1
    add-int/lit8 v24, v24, 0x1

    goto :goto_0

    .line 1767
    :cond_1
    const/16 v3, 0x61

    move/from16 v0, v21

    if-lt v0, v3, :cond_2

    const/16 v3, 0x7a

    move/from16 v0, v21

    if-gt v0, v3, :cond_2

    .line 1768
    add-int/lit8 v5, v5, 0x1

    .line 1769
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 1770
    :cond_2
    const/16 v3, 0x30

    move/from16 v0, v21

    if-lt v0, v3, :cond_3

    const/16 v3, 0x39

    move/from16 v0, v21

    if-gt v0, v3, :cond_3

    .line 1771
    add-int/lit8 v8, v8, 0x1

    .line 1772
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1774
    :cond_3
    add-int/lit8 v9, v9, 0x1

    .line 1775
    add-int/lit8 v10, v10, 0x1

    goto :goto_1

    .line 1778
    .end local v21    # "c":C
    :cond_4
    move/from16 v0, p2

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v4

    move/from16 v11, p5

    invoke-virtual/range {v2 .. v11}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 1821
    .end local v5    # "letters":I
    .end local v6    # "uppercase":I
    .end local v7    # "lowercase":I
    .end local v8    # "numbers":I
    .end local v9    # "symbols":I
    .end local v10    # "nonletter":I
    .end local v24    # "i":I
    :goto_2
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    const-string v4, "lockscreen.passwordhistory"

    move/from16 v0, p5

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->getString(Ljava/lang/String;I)Ljava/lang/String;
    invoke-static {v3, v4, v0}, Lcom/android/internal/widget/LockPatternUtils;->access$800(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v25

    .line 1822
    .local v25, "passwordHistory":Ljava/lang/String;
    if-nez v25, :cond_5

    .line 1823
    new-instance v25, Ljava/lang/String;

    .end local v25    # "passwordHistory":Ljava/lang/String;
    invoke-direct/range {v25 .. v25}, Ljava/lang/String;-><init>()V

    .line 1825
    .restart local v25    # "passwordHistory":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v3}, Lcom/android/internal/widget/LockPatternUtils;->getRequestedPasswordHistoryLength()I

    move-result v26

    .line 1826
    .local v26, "passwordHistoryLength":I
    if-nez v26, :cond_9

    .line 1827
    const-string v25, ""

    .line 1837
    :goto_3
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    const-string v4, "lockscreen.passwordhistory"

    move-object/from16 v0, v25

    move/from16 v1, p5

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->setString(Ljava/lang/String;Ljava/lang/String;I)V
    invoke-static {v3, v4, v0, v1}, Lcom/android/internal/widget/LockPatternUtils;->access$900(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;Ljava/lang/String;I)V

    .line 1850
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v22    # "computedQuality":I
    .end local v25    # "passwordHistory":Ljava/lang/String;
    .end local v26    # "passwordHistoryLength":I
    :goto_4
    return-void

    .line 1783
    .restart local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v22    # "computedQuality":I
    :cond_6
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v2

    move/from16 v20, p5

    invoke-virtual/range {v11 .. v20}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1846
    .end local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .end local v22    # "computedQuality":I
    :catch_0
    move-exception v27

    .line 1848
    .local v27, "re":Landroid/os/RemoteException;
    const-string v3, "LockPatternUtils"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v11, "Unable to save lock password "

    invoke-virtual {v4, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, v27

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4

    .line 1789
    .end local v27    # "re":Landroid/os/RemoteException;
    .restart local v2    # "dpm":Landroid/app/admin/DevicePolicyManager;
    .restart local v22    # "computedQuality":I
    :cond_7
    const/4 v3, 0x1

    move/from16 v0, p4

    if-ne v0, v3, :cond_8

    .line 1791
    :try_start_1
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    const-string v4, "lockscreen.password_type"

    const-wide/32 v11, 0x8000

    move/from16 v0, p5

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V
    invoke-static {v3, v4, v11, v12, v0}, Lcom/android/internal/widget/LockPatternUtils;->access$700(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JI)V

    .line 1793
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    const-string v4, "lockscreen.password_type_alternate"

    move/from16 v0, p2

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-long v11, v11

    move/from16 v0, p5

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V
    invoke-static {v3, v4, v11, v12, v0}, Lcom/android/internal/widget/LockPatternUtils;->access$700(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JI)V

    .line 1796
    const v12, 0x8000

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v2

    move/from16 v20, p5

    invoke-virtual/range {v11 .. v20}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 1798
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    const-string v4, "lockscreen.biometricweakeverchosen"

    const/4 v11, 0x1

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V
    invoke-static {v3, v4, v11}, Lcom/android/internal/widget/LockPatternUtils;->access$200(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;Z)V

    .line 1799
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    # getter for: Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->access$400(Lcom/android/internal/widget/LockPatternUtils;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "soundlockvalue"

    const/4 v11, 0x1

    invoke-static {v3, v4, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1802
    const-string v3, "LockPatternUtils"

    const-string v4, "Soundlock set true"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_2

    .line 1806
    :cond_8
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    const-string v4, "lockscreen.password_type"

    const-wide/32 v11, 0x8000

    move/from16 v0, p5

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V
    invoke-static {v3, v4, v11, v12, v0}, Lcom/android/internal/widget/LockPatternUtils;->access$700(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JI)V

    .line 1808
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    const-string v4, "lockscreen.password_type_alternate"

    move/from16 v0, p2

    move/from16 v1, v22

    invoke-static {v0, v1}, Ljava/lang/Math;->max(II)I

    move-result v11

    int-to-long v11, v11

    move/from16 v0, p5

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;JI)V
    invoke-static {v3, v4, v11, v12, v0}, Lcom/android/internal/widget/LockPatternUtils;->access$700(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;JI)V

    .line 1810
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak()V
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->access$500(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 1811
    const v12, 0x8000

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v2

    move/from16 v20, p5

    invoke-virtual/range {v11 .. v20}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 1815
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    # getter for: Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->access$400(Lcom/android/internal/widget/LockPatternUtils;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "soundlockvalue"

    const/4 v11, 0x0

    invoke-static {v3, v4, v11}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_2

    .line 1829
    .restart local v25    # "passwordHistory":Ljava/lang/String;
    .restart local v26    # "passwordHistoryLength":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    move-object/from16 v0, p1

    invoke-virtual {v3, v0}, Lcom/android/internal/widget/LockPatternUtils;->passwordToHash(Ljava/lang/String;)[B

    move-result-object v23

    .line 1830
    .local v23, "hash":[B
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v4, Ljava/lang/String;

    move-object/from16 v0, v23

    invoke-direct {v4, v0}, Ljava/lang/String;-><init>([B)V

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string v4, ","

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v25

    .line 1833
    const/4 v3, 0x0

    move-object/from16 v0, v23

    array-length v4, v0

    mul-int v4, v4, v26

    add-int v4, v4, v26

    add-int/lit8 v4, v4, -0x1

    invoke-virtual/range {v25 .. v25}, Ljava/lang/String;->length()I

    move-result v11

    invoke-static {v4, v11}, Ljava/lang/Math;->min(II)I

    move-result v4

    move-object/from16 v0, v25

    invoke-virtual {v0, v3, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v25

    goto/16 :goto_3

    .line 1842
    .end local v22    # "computedQuality":I
    .end local v23    # "hash":[B
    .end local v25    # "passwordHistory":Ljava/lang/String;
    .end local v26    # "passwordHistoryLength":I
    :cond_a
    const/4 v12, 0x0

    const/4 v13, 0x0

    const/4 v14, 0x0

    const/4 v15, 0x0

    const/16 v16, 0x0

    const/16 v17, 0x0

    const/16 v18, 0x0

    const/16 v19, 0x0

    move-object v11, v2

    move/from16 v20, p5

    invoke-virtual/range {v11 .. v20}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_4
.end method

.method public saveLockPattern(Ljava/util/List;ZZ)V
    .locals 11
    .param p2, "isFallback"    # Z
    .param p3, "isSoundlock"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/widget/LockPatternView$Cell;",
            ">;ZZ)V"
        }
    .end annotation

    .prologue
    .local p1, "pattern":Ljava/util/List;, "Ljava/util/List<Lcom/android/internal/widget/LockPatternView$Cell;>;"
    const/4 v4, 0x1

    .line 1668
    :try_start_0
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->getLockSettings()Lcom/android/internal/widget/ILockSettings;
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->access$100(Lcom/android/internal/widget/LockPatternUtils;)Lcom/android/internal/widget/ILockSettings;

    move-result-object v1

    invoke-static {p1}, Lcom/android/internal/widget/LockPatternUtils;->patternToString(Ljava/util/List;)Ljava/lang/String;

    move-result-object v2

    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->access$000(Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v3

    invoke-interface {v1, v2, v3}, Lcom/android/internal/widget/ILockSettings;->setLockPattern(Ljava/lang/String;I)V

    .line 1669
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->getDevicePolicyManager()Landroid/app/admin/DevicePolicyManager;

    move-result-object v0

    .line 1670
    .local v0, "dpm":Landroid/app/admin/DevicePolicyManager;
    if-eqz p1, :cond_2

    .line 1671
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    const-string v2, "lockscreen.patterneverchosen"

    const/4 v3, 0x1

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->access$200(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;Z)V

    .line 1672
    if-nez p2, :cond_0

    .line 1673
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    invoke-virtual {v1}, Lcom/android/internal/widget/LockPatternUtils;->deleteGallery()V

    .line 1674
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    const-string v2, "lockscreen.password_type"

    const-wide/32 v3, 0x10000

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->access$300(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;J)V

    .line 1675
    const/high16 v1, 0x10000

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result v2

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I
    invoke-static {v9}, Lcom/android/internal/widget/LockPatternUtils;->access$000(Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 1712
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :goto_0
    return-void

    .line 1678
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_0
    if-ne p3, v4, :cond_1

    .line 1680
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    const-string v2, "lockscreen.password_type"

    const-wide/32 v3, 0x8000

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->access$300(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;J)V

    .line 1681
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    const-string v2, "lockscreen.password_type_alternate"

    const-wide/32 v3, 0x10000

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->access$300(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;J)V

    .line 1684
    const v1, 0x8000

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I
    invoke-static {v9}, Lcom/android/internal/widget/LockPatternUtils;->access$000(Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 1688
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    const-string v2, "lockscreen.biometricweakeverchosen"

    const/4 v3, 0x1

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->setBoolean(Ljava/lang/String;Z)V
    invoke-static {v1, v2, v3}, Lcom/android/internal/widget/LockPatternUtils;->access$200(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;Z)V

    .line 1689
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    # getter for: Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->access$400(Lcom/android/internal/widget/LockPatternUtils;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "soundlockvalue"

    const/4 v3, 0x1

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1690
    const-string v1, "LockPatternUtils"

    const-string v2, "Soundlock set true"

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1709
    .end local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :catch_0
    move-exception v10

    .line 1710
    .local v10, "re":Landroid/os/RemoteException;
    const-string v1, "LockPatternUtils"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Couldn\'t save lock pattern "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1694
    .end local v10    # "re":Landroid/os/RemoteException;
    .restart local v0    # "dpm":Landroid/app/admin/DevicePolicyManager;
    :cond_1
    :try_start_1
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    const-string v2, "lockscreen.password_type"

    const-wide/32 v3, 0x8000

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->access$300(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;J)V

    .line 1695
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    const-string v2, "lockscreen.password_type_alternate"

    const-wide/32 v3, 0x10000

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->setLong(Ljava/lang/String;J)V
    invoke-static {v1, v2, v3, v4}, Lcom/android/internal/widget/LockPatternUtils;->access$300(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;J)V

    .line 1697
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->finishBiometricWeak()V
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->access$500(Lcom/android/internal/widget/LockPatternUtils;)V

    .line 1698
    const v1, 0x8000

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I
    invoke-static {v9}, Lcom/android/internal/widget/LockPatternUtils;->access$000(Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V

    .line 1702
    iget-object v1, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    # getter for: Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v1}, Lcom/android/internal/widget/LockPatternUtils;->access$400(Lcom/android/internal/widget/LockPatternUtils;)Landroid/content/ContentResolver;

    move-result-object v1

    const-string v2, "soundlockvalue"

    const/4 v3, 0x0

    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto/16 :goto_0

    .line 1706
    :cond_2
    const/4 v1, 0x0

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    iget-object v9, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->getCurrentOrCallingUserId()I
    invoke-static {v9}, Lcom/android/internal/widget/LockPatternUtils;->access$000(Lcom/android/internal/widget/LockPatternUtils;)I

    move-result v9

    invoke-virtual/range {v0 .. v9}, Landroid/app/admin/DevicePolicyManager;->setActivePasswordState(IIIIIIIII)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto/16 :goto_0
.end method

.method public usingSoundLock()Z
    .locals 7

    .prologue
    const/4 v2, 0x0

    .line 1892
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    const-string v4, "lockscreen.password_type"

    const-wide/32 v5, 0x10000

    # invokes: Lcom/android/internal/widget/LockPatternUtils;->getLong(Ljava/lang/String;J)J
    invoke-static {v3, v4, v5, v6}, Lcom/android/internal/widget/LockPatternUtils;->access$1000(Lcom/android/internal/widget/LockPatternUtils;Ljava/lang/String;J)J

    move-result-wide v3

    long-to-int v1, v3

    .line 1894
    .local v1, "quality":I
    const v3, 0x8000

    if-ne v1, v3, :cond_0

    .line 1900
    iget-object v3, p0, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->this$0:Lcom/android/internal/widget/LockPatternUtils;

    # getter for: Lcom/android/internal/widget/LockPatternUtils;->mContentResolver:Landroid/content/ContentResolver;
    invoke-static {v3}, Lcom/android/internal/widget/LockPatternUtils;->access$400(Lcom/android/internal/widget/LockPatternUtils;)Landroid/content/ContentResolver;

    move-result-object v3

    const-string v4, "soundlockvalue"

    invoke-static {v3, v4, v2}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    .line 1901
    .local v0, "i":I
    const/4 v3, 0x1

    if-ne v0, v3, :cond_0

    .line 1903
    const-string v2, "vigi"

    const-string v3, "soundlockvalue is 1"

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 1904
    invoke-direct {p0}, Lcom/android/internal/widget/LockPatternUtils$ZteExt;->checkVoicePrintPackageDataExist()Z

    move-result v2

    .line 1908
    .end local v0    # "i":I
    :goto_0
    return v2

    .line 1907
    :cond_0
    const-string v3, "LockPatternUtils"

    const-string v4, "usingSoundLock return false"

    invoke-static {v3, v4}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method
