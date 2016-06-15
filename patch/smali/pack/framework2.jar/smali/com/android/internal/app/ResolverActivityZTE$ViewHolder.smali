.class Lcom/android/internal/app/ResolverActivityZTE$ViewHolder;
.super Ljava/lang/Object;
.source "ResolverActivityZTE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "ViewHolder"
.end annotation


# instance fields
.field public icon:Landroid/widget/ImageView;

.field public text:Landroid/widget/TextView;

.field public text2:Landroid/widget/TextView;


# direct methods
.method public constructor <init>(Landroid/view/View;)V
    .locals 1
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 757
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 758
    const v0, 0x20c0040

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityZTE$ViewHolder;->text:Landroid/widget/TextView;

    .line 759
    const v0, 0x20c003e

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityZTE$ViewHolder;->text2:Landroid/widget/TextView;

    .line 760
    const v0, 0x20c003f

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityZTE$ViewHolder;->icon:Landroid/widget/ImageView;

    .line 761
    return-void
.end method
