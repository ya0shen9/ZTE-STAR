.class Lcom/android/internal/os/RuntimeInit$UncaughtHandler$1Filter;
.super Ljava/lang/Object;
.source "RuntimeInit.java"

# interfaces
.implements Ljava/io/FilenameFilter;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/os/RuntimeInit$UncaughtHandler;->getHprofRoot()Ljava/lang/String;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "Filter"
.end annotation


# instance fields
.field extent:Ljava/lang/String;

.field final synthetic this$0:Lcom/android/internal/os/RuntimeInit$UncaughtHandler;


# direct methods
.method constructor <init>(Lcom/android/internal/os/RuntimeInit$UncaughtHandler;Ljava/lang/String;)V
    .locals 0
    .parameter
    .parameter "s"

    .prologue
    .line 98
    iput-object p1, p0, Lcom/android/internal/os/RuntimeInit$UncaughtHandler$1Filter;->this$0:Lcom/android/internal/os/RuntimeInit$UncaughtHandler;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput-object p2, p0, Lcom/android/internal/os/RuntimeInit$UncaughtHandler$1Filter;->extent:Ljava/lang/String;

    .line 100
    return-void
.end method


# virtual methods
.method public accept(Ljava/io/File;Ljava/lang/String;)Z
    .locals 2
    .parameter "dir"
    .parameter "name"

    .prologue
    .line 102
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "."

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    iget-object v1, p0, Lcom/android/internal/os/RuntimeInit$UncaughtHandler$1Filter;->extent:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p2, v0}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method
