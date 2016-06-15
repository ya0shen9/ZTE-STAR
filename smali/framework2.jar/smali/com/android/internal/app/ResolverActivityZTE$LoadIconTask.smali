.class Lcom/android/internal/app/ResolverActivityZTE$LoadIconTask;
.super Landroid/os/AsyncTask;
.source "ResolverActivityZTE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "LoadIconTask"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;",
        "Ljava/lang/Void;",
        "Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;",
        ">;"
    }
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/app/ResolverActivityZTE;


# direct methods
.method constructor <init>(Lcom/android/internal/app/ResolverActivityZTE;)V
    .locals 0

    .prologue
    .line 775
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityZTE$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;)Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;
    .locals 3
    .param p1, "params"    # [Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;

    .prologue
    .line 778
    const/4 v1, 0x0

    aget-object v0, p1, v1

    .line 779
    .local v0, "info":Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;
    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 780
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityZTE$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverActivityZTE;->loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    .line 782
    :cond_0
    return-object v0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1
    .param p1, "x0"    # [Ljava/lang/Object;

    .prologue
    .line 775
    check-cast p1, [Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;

    .end local p1    # "x0":[Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivityZTE$LoadIconTask;->doInBackground([Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;)Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;)V
    .locals 1
    .param p1, "info"    # Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;

    .prologue
    .line 787
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityZTE$LoadIconTask;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    # getter for: Lcom/android/internal/app/ResolverActivityZTE;->mAdapter:Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;
    invoke-static {v0}, Lcom/android/internal/app/ResolverActivityZTE;->access$000(Lcom/android/internal/app/ResolverActivityZTE;)Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->notifyDataSetChanged()V

    .line 788
    return-void
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/Object;

    .prologue
    .line 775
    check-cast p1, Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;

    .end local p1    # "x0":Ljava/lang/Object;
    invoke-virtual {p0, p1}, Lcom/android/internal/app/ResolverActivityZTE$LoadIconTask;->onPostExecute(Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;)V

    return-void
.end method
