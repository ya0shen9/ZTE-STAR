.class public Landroid/app/ZteAlarmManager;
.super Ljava/lang/Object;
.source "ZteAlarmManager.java"


# static fields
.field private static final CLASSNAME:Ljava/lang/String; = "android.app.IAlarmManager"

.field public static final RTC_POWERON:I = 0x4

.field private static final TAG:Ljava/lang/String; = "ZteAlarmManager"


# instance fields
.field private mContext:Landroid/content/Context;

.field private final mService:Landroid/app/IAlarmManager;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Landroid/app/ZteAlarmManager;->mContext:Landroid/content/Context;

    .line 51
    const-string v1, "alarm"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 52
    .local v0, "b":Landroid/os/IBinder;
    invoke-static {v0}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v1

    iput-object v1, p0, Landroid/app/ZteAlarmManager;->mService:Landroid/app/IAlarmManager;

    .line 53
    return-void
.end method

.method public static LoadMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    .locals 6
    .param p0, "cName"    # Ljava/lang/String;
    .param p1, "obj"    # Ljava/lang/Object;
    .param p2, "MethodName"    # Ljava/lang/String;
    .param p3, "params"    # [Ljava/lang/Object;
    .param p4, "ArgsClass"    # [Ljava/lang/Class;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 77
    const/4 v3, 0x0

    .line 80
    .local v3, "retObject":Ljava/lang/Object;
    const/4 v0, 0x0

    .line 81
    .local v0, "cls":Ljava/lang/Class;
    if-eqz p1, :cond_0

    .line 82
    :try_start_0
    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    .line 88
    :goto_0
    if-eqz p3, :cond_1

    .line 89
    invoke-virtual {v0, p2, p4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 90
    .local v2, "meth":Ljava/lang/reflect/Method;
    invoke-virtual {v2, p1, p3}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .line 105
    :goto_1
    return-object v3

    .line 85
    .end local v2    # "meth":Ljava/lang/reflect/Method;
    :cond_0
    invoke-static {p0}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v0

    goto :goto_0

    .line 93
    :cond_1
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Class;

    invoke-virtual {v0, p2, v4}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v2

    .line 94
    .restart local v2    # "meth":Ljava/lang/reflect/Method;
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    invoke-virtual {v2, p1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_0
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    move-result-object v3

    goto :goto_1

    .line 97
    .end local v2    # "meth":Ljava/lang/reflect/Method;
    :catch_0
    move-exception v1

    .line 98
    .local v1, "e":Ljava/lang/reflect/InvocationTargetException;
    const-string v4, "ZteAlarmManager"

    invoke-virtual {v1}, Ljava/lang/reflect/InvocationTargetException;->getTargetException()Ljava/lang/Throwable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Throwable;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 99
    throw v1

    .line 100
    .end local v1    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 101
    .local v1, "e":Ljava/lang/Exception;
    sget-object v4, Ljava/lang/System;->err:Ljava/io/PrintStream;

    invoke-virtual {v4, v1}, Ljava/io/PrintStream;->println(Ljava/lang/Object;)V

    .line 102
    throw v1
.end method


# virtual methods
.method public clearAlarm(I)V
    .locals 6
    .param p1, "type"    # I

    .prologue
    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 62
    new-array v0, v5, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    aput-object v3, v0, v4

    .line 63
    .local v0, "args":[Ljava/lang/Object;
    new-array v1, v5, [Ljava/lang/Class;

    const-class v3, Ljava/lang/Integer;

    aput-object v3, v1, v4

    .line 65
    .local v1, "argsCls":[Ljava/lang/Class;
    :try_start_0
    const-string v3, "android.app.IAlarmManager"

    iget-object v4, p0, Landroid/app/ZteAlarmManager;->mService:Landroid/app/IAlarmManager;

    const-string v5, "clearAlarm"

    invoke-static {v3, v4, v5, v0, v1}, Landroid/app/ZteAlarmManager;->LoadMethod(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;[Ljava/lang/Object;[Ljava/lang/Class;)Ljava/lang/Object;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 72
    :goto_0
    return-void

    .line 69
    :catch_0
    move-exception v2

    .line 70
    .local v2, "e":Ljava/lang/Exception;
    const-string v3, "ZteAlarmManager"

    const-string v4, "NO SUPPORT PPPOE!"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 67
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    goto :goto_0
.end method
