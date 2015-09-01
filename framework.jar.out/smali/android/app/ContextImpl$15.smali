.class final Landroid/app/ContextImpl$15;
.super Landroid/app/ContextImpl$ServiceFetcher;
.source "ContextImpl.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/app/ContextImpl;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 390
    invoke-direct {p0}, Landroid/app/ContextImpl$ServiceFetcher;-><init>()V

    return-void
.end method


# virtual methods
.method public createService(Landroid/app/ContextImpl;)Ljava/lang/Object;
    .locals 3
    .parameter "ctx"

    #SweetYao
    .annotation build Landroid/annotation/LewaHook;
        value = .enum Landroid/annotation/LewaHook$LewaHookType;->CHANGE_CODE:Landroid/annotation/LewaHook$LewaHookType;
    .end annotation
    #SweetYao

    .prologue
    .line 392

    #SweetYao
    #new-instance v0, Landroid/app/DownloadManager;
    new-instance v0, Landroid/app/LewaDownloadManager;
    #SweetYao

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    invoke-virtual {p1}, Landroid/app/ContextImpl;->getPackageName()Ljava/lang/String;

    move-result-object v2

    #SweetYao
    #invoke-direct {v0, v1, v2}, Landroid/app/DownloadManager;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    invoke-direct {v0, v1, v2}, Landroid/app/LewaDownloadManager;-><init>(Landroid/content/ContentResolver;Ljava/lang/String;)V
    #SweetYao

    return-object v0
.end method
