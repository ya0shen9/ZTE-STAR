.class Lcom/android/internal/os/RuntimeInit$UncaughtHandler;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/lang/Thread$UncaughtExceptionHandler;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/os/RuntimeInit;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "UncaughtHandler"
.end annotation


# direct methods
.method private constructor <init>()V
    .locals 0

    .prologue
    .line 69
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/internal/os/RuntimeInit$1;)V
    .locals 0
    .parameter "x0"

    .prologue
    .line 69
    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;-><init>()V

    return-void
.end method

.method private getAppName(I)Ljava/lang/String;
    .locals 4
    .parameter "pID"
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 73
    const-string v2, ""

    .line 75
    .local v2, processName:Ljava/lang/String;
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v3

    invoke-interface {v3}, Landroid/app/IActivityManager;->getRunningAppProcesses()Ljava/util/List;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/app/ActivityManager$RunningAppProcessInfo;

    .line 76
    .local v1, info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    iget v3, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->pid:I

    if-ne v3, p1, :cond_0

    .line 77
    iget-object v2, v1, Landroid/app/ActivityManager$RunningAppProcessInfo;->processName:Ljava/lang/String;

    .line 81
    .end local v1           #info:Landroid/app/ActivityManager$RunningAppProcessInfo;
    .end local v2           #processName:Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method private getHprofRoot()Ljava/lang/String;
    .locals 7

    .prologue
    .line 108
    new-instance v3, Ljava/io/File;

    const-string v4, "/data/local/logs/"

    invoke-direct {v3, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 109
    .local v3, root:Ljava/io/File;
    invoke-virtual {v3}, Ljava/io/File;->exists()Z

    move-result v4

    if-eqz v4, :cond_1

    invoke-virtual {v3}, Ljava/io/File;->isDirectory()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 110
    new-instance v4, Lcom/android/internal/os/RuntimeInit$UncaughtHandler$1Filter;

    const-string v5, "hprof"

    invoke-direct {v4, p0, v5}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler$1Filter;-><init>(Lcom/android/internal/os/RuntimeInit$UncaughtHandler;Ljava/lang/String;)V

    invoke-virtual {v3, v4}, Ljava/io/File;->list(Ljava/io/FilenameFilter;)[Ljava/lang/String;

    move-result-object v0

    .line 111
    .local v0, fileList:[Ljava/lang/String;
    const-string v4, "AndroidRuntime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getHprofRoot list = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 112
    if-eqz v0, :cond_0

    array-length v4, v0

    if-eqz v4, :cond_0

    .line 113
    array-length v4, v0

    add-int/lit8 v2, v4, -0x1

    .local v2, i:I
    :goto_0
    if-ltz v2, :cond_0

    .line 114
    const-string v4, "AndroidRuntime"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "getHprofRoot  fileList["

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "]  ="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string v6, "/data/local/logs/"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    aget-object v6, v0, v2

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    new-instance v1, Ljava/io/File;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "/data/local/logs/"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    aget-object v5, v0, v2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-direct {v1, v4}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 117
    .local v1, hprofFile:Ljava/io/File;
    invoke-virtual {v1}, Ljava/io/File;->delete()Z

    .line 113
    add-int/lit8 v2, v2, -0x1

    goto :goto_0

    .line 120
    .end local v1           #hprofFile:Ljava/io/File;
    .end local v2           #i:I
    :cond_0
    const-string v4, "/data/local/logs/"

    .line 122
    .end local v0           #fileList:[Ljava/lang/String;
    :goto_1
    return-object v4

    :cond_1
    const/4 v4, 0x0

    goto :goto_1
.end method

.method private isOOM(Ljava/lang/Throwable;)Z
    .locals 1
    .parameter "t"

    .prologue
    .line 85
    instance-of v0, p1, Ljava/lang/OutOfMemoryError;

    if-eqz v0, :cond_0

    .line 86
    const/4 v0, 0x1

    .line 91
    :goto_0
    return v0

    .line 88
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    if-nez v0, :cond_1

    .line 89
    const/4 v0, 0x0

    goto :goto_0

    .line 91
    :cond_1
    invoke-virtual {p1}, Ljava/lang/Throwable;->getCause()Ljava/lang/Throwable;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;->isOOM(Ljava/lang/Throwable;)Z

    move-result v0

    goto :goto_0
.end method


# virtual methods
.method public uncaughtException(Ljava/lang/Thread;Ljava/lang/Throwable;)V
    .locals 13
    .parameter "t"
    .parameter "e"

    .prologue
    .line 128
    :try_start_0
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$000()Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    move-result v10

    if-eqz v10, :cond_0

    .line 182
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Landroid/os/Process;->killProcess(I)V

    .line 183
    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    .line 185
    :goto_0
    return-void

    .line 129
    :cond_0
    const/4 v10, 0x1

    :try_start_1
    invoke-static {v10}, Lcom/android/internal/os/RuntimeInit;->access$002(Z)Z

    .line 130
    const-string v10, "ro.build.type"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 131
    .local v0, buildtype:Ljava/lang/String;
    const-string v10, "persist.sys.hprof.enable"

    const/4 v11, 0x0

    invoke-static {v10, v11}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 132
    .local v2, hprofEnable:Ljava/lang/String;
    const-string v10, "userdebug"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "eng"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_1

    const-string v10, "1"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 137
    :cond_1
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v10

    invoke-virtual {v10}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 140
    :cond_2
    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$100()Landroid/os/IBinder;

    move-result-object v10

    if-nez v10, :cond_5

    .line 141
    const-string v10, "AndroidRuntime"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "*** FATAL EXCEPTION IN SYSTEM PROCESS: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 153
    :goto_1
    const-string v10, "userdebug"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "eng"

    invoke-virtual {v0, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_3

    const-string v10, "1"

    invoke-virtual {v2, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-eqz v10, :cond_4

    :cond_3
    invoke-direct {p0, p2}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;->isOOM(Ljava/lang/Throwable;)Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_1 .. :try_end_1} :catch_0

    move-result v10

    if-eqz v10, :cond_4

    .line 155
    :try_start_2
    new-instance v7, Ljava/text/SimpleDateFormat;

    const-string v10, "ddMMyyHHmmss"

    invoke-direct {v7, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 156
    .local v7, sdf:Ljava/text/SimpleDateFormat;
    new-instance v10, Ljava/util/Date;

    invoke-direct {v10}, Ljava/util/Date;-><init>()V

    invoke-virtual {v7, v10}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v1

    .line 158
    .local v1, currentDateandTime:Ljava/lang/String;
    invoke-direct {p0}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;->getHprofRoot()Ljava/lang/String;

    move-result-object v6

    .line 159
    .local v6, root:Ljava/lang/String;
    if-eqz v6, :cond_7

    .line 160
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-direct {p0, v11}, Lcom/android/internal/os/RuntimeInit$UncaughtHandler;->getAppName(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "_heap.hprof"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 161
    .local v3, hprofile:Ljava/lang/String;
    const-string v10, "AndroidRuntime"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "Dumping Hprof data to "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 162
    invoke-static {v3}, Landroid/os/Debug;->dumpHprofData(Ljava/lang/String;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_2 .. :try_end_2} :catch_1

    .line 172
    .end local v1           #currentDateandTime:Ljava/lang/String;
    .end local v3           #hprofile:Ljava/lang/String;
    .end local v6           #root:Ljava/lang/String;
    .end local v7           #sdf:Ljava/text/SimpleDateFormat;
    :cond_4
    :goto_2
    :try_start_3
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v10

    invoke-static {}, Lcom/android/internal/os/RuntimeInit;->access$100()Landroid/os/IBinder;

    move-result-object v11

    new-instance v12, Landroid/app/ApplicationErrorReport$CrashInfo;

    invoke-direct {v12, p2}, Landroid/app/ApplicationErrorReport$CrashInfo;-><init>(Ljava/lang/Throwable;)V

    invoke-interface {v10, v11, v12}, Landroid/app/IActivityManager;->handleApplicationCrash(Landroid/os/IBinder;Landroid/app/ApplicationErrorReport$CrashInfo;)V
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0

    .line 182
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Landroid/os/Process;->killProcess(I)V

    .line 183
    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 143
    :cond_5
    :try_start_4
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    .line 144
    .local v4, message:Ljava/lang/StringBuilder;
    const-string v10, "FATAL EXCEPTION: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {p1}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 145
    invoke-static {}, Landroid/app/ActivityThread;->currentProcessName()Ljava/lang/String;

    move-result-object v5

    .line 146
    .local v5, processName:Ljava/lang/String;
    if-eqz v5, :cond_6

    .line 147
    const-string v10, "Process: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ", "

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 149
    :cond_6
    const-string v10, "PID: "

    invoke-virtual {v4, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 150
    const-string v10, "AndroidRuntime"

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11, p2}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_0

    goto/16 :goto_1

    .line 174
    .end local v0           #buildtype:Ljava/lang/String;
    .end local v2           #hprofEnable:Ljava/lang/String;
    .end local v4           #message:Ljava/lang/StringBuilder;
    .end local v5           #processName:Ljava/lang/String;
    :catch_0
    move-exception v8

    .line 176
    .local v8, t2:Ljava/lang/Throwable;
    :try_start_5
    const-string v10, "AndroidRuntime"

    const-string v11, "Error reporting crash"

    invoke-static {v10, v11, v8}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_5 .. :try_end_5} :catch_2

    .line 182
    :goto_3
    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v10

    invoke-static {v10}, Landroid/os/Process;->killProcess(I)V

    .line 183
    const/16 v10, 0xa

    invoke-static {v10}, Ljava/lang/System;->exit(I)V

    goto/16 :goto_0

    .line 164
    .end local v8           #t2:Ljava/lang/Throwable;
    .restart local v0       #buildtype:Ljava/lang/String;
    .restart local v1       #currentDateandTime:Ljava/lang/String;
    .restart local v2       #hprofEnable:Ljava/lang/String;
    .restart local v6       #root:Ljava/lang/String;
    .restart local v7       #sdf:Ljava/text/SimpleDateFormat;
    :cond_7
    :try_start_6
    const-string v10, "AndroidRuntime"

    const-string v11, "Hprof root directories not accessible, cancel the generation"

    invoke-static {v10, v11}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_6
    .catchall {:try_start_6 .. :try_end_6} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_6 .. :try_end_6} :catch_1

    goto :goto_2

    .line 166
    .end local v1           #currentDateandTime:Ljava/lang/String;
    .end local v6           #root:Ljava/lang/String;
    .end local v7           #sdf:Ljava/text/SimpleDateFormat;
    :catch_1
    move-exception v9

    .line 167
    .local v9, throwable:Ljava/lang/Throwable;
    :try_start_7
    const-string v10, "AndroidRuntime"

    const-string v11, "Cannot dump Hprof data"

    invoke-static {v10, v11, v9}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_7
    .catchall {:try_start_7 .. :try_end_7} :catchall_0
    .catch Ljava/lang/Throwable; {:try_start_7 .. :try_end_7} :catch_0

    goto/16 :goto_2

    .line 182
    .end local v0           #buildtype:Ljava/lang/String;
    .end local v2           #hprofEnable:Ljava/lang/String;
    .end local v9           #throwable:Ljava/lang/Throwable;
    :catchall_0
    move-exception v10

    invoke-static {}, Landroid/os/Process;->myPid()I

    move-result v11

    invoke-static {v11}, Landroid/os/Process;->killProcess(I)V

    .line 183
    const/16 v11, 0xa

    invoke-static {v11}, Ljava/lang/System;->exit(I)V

    throw v10

    .line 177
    .restart local v8       #t2:Ljava/lang/Throwable;
    :catch_2
    move-exception v10

    goto :goto_3
.end method
