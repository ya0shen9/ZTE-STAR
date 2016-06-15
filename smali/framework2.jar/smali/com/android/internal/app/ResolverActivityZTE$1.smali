.class Lcom/android/internal/app/ResolverActivityZTE$1;
.super Lcom/android/internal/content/PackageMonitor;
.source "ResolverActivityZTE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivityZTE;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivityZTE;)V
    .locals 0

    .prologue
    .line 93
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityZTE$1;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    return-void
.end method


# virtual methods
.method public onSomePackagesChanged()V
    .locals 1

    .prologue
    .line 95
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityZTE$1;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    # getter for: Lcom/android/internal/app/ResolverActivityZTE;->mAdapter:Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivityZTE;->access$000(Lcom/android/internal/app/ResolverActivityZTE;)Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->handlePackagesChanged()V

    .line 96
    return-void
.end method
