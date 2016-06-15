.class final Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;
.super Landroid/widget/BaseAdapter;
.source "ResolverActivityZTE.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/app/ResolverActivityZTE;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "ResolveListAdapter"
.end annotation


# instance fields
.field private final mBaseResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field private final mInflater:Landroid/view/LayoutInflater;

.field private mInitialHighlight:I

.field private final mInitialIntents:[Landroid/content/Intent;

.field private final mIntent:Landroid/content/Intent;

.field private mLastChosen:Landroid/content/pm/ResolveInfo;

.field private final mLaunchedFromUid:I

.field mList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field mOrigResolveList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lcom/android/internal/app/ResolverActivityZTE;


# direct methods
.method public constructor <init>(Lcom/android/internal/app/ResolverActivityZTE;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;I)V
    .locals 1
    .param p2, "context"    # Landroid/content/Context;
    .param p3, "intent"    # Landroid/content/Intent;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "launchedFromUid"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Landroid/content/Intent;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .line 477
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    iput-object p1, p0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 474
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mInitialHighlight:I

    .line 478
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0, p3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    .line 479
    iput-object p4, p0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    .line 480
    iput-object p5, p0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 481
    iput p6, p0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mLaunchedFromUid:I

    .line 482
    const-string v0, "layout_inflater"

    invoke-virtual {p2, v0}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    .line 483
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mList:Ljava/util/List;

    .line 484
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->rebuildList()V

    .line 485
    return-void
.end method

.method private final bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "info"    # Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;

    .prologue
    const/4 v3, 0x0

    .line 737
    invoke-virtual {p1}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivityZTE$ViewHolder;

    .line 738
    .local v0, "holder":Lcom/android/internal/app/ResolverActivityZTE$ViewHolder;
    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ViewHolder;->text:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;->displayLabel:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 739
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    # getter for: Lcom/android/internal/app/ResolverActivityZTE;->mShowExtended:Z
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivityZTE;->access$300(Lcom/android/internal/app/ResolverActivityZTE;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 740
    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ViewHolder;->text2:Landroid/widget/TextView;

    invoke-virtual {v1, v3}, Landroid/widget/TextView;->setVisibility(I)V

    .line 741
    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ViewHolder;->text2:Landroid/widget/TextView;

    iget-object v2, p2, Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;->extendedInfo:Ljava/lang/CharSequence;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 745
    :goto_0
    iget-object v1, p2, Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    if-nez v1, :cond_0

    .line 746
    new-instance v1, Lcom/android/internal/app/ResolverActivityZTE$LoadIconTask;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    invoke-direct {v1, v2}, Lcom/android/internal/app/ResolverActivityZTE$LoadIconTask;-><init>(Lcom/android/internal/app/ResolverActivityZTE;)V

    const/4 v2, 0x1

    new-array v2, v2, [Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;

    aput-object p2, v2, v3

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverActivityZTE$LoadIconTask;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 748
    :cond_0
    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v2, p2, Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;->displayIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 749
    return-void

    .line 743
    :cond_1
    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ViewHolder;->text2:Landroid/widget/TextView;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method

.method private processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V
    .locals 16
    .param p2, "start"    # I
    .param p3, "end"    # I
    .param p4, "ro"    # Landroid/content/pm/ResolveInfo;
    .param p5, "roLabel"    # Ljava/lang/CharSequence;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;II",
            "Landroid/content/pm/ResolveInfo;",
            "Ljava/lang/CharSequence;",
            ")V"
        }
    .end annotation

    .prologue
    .line 632
    .local p1, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    sub-int v1, p3, p2

    add-int/lit8 v12, v1, 0x1

    .line 633
    .local v12, "num":I
    const/4 v1, 0x1

    if-ne v12, v1, :cond_2

    .line 634
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    move-object/from16 v0, p4

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 638
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mInitialHighlight:I

    .line 641
    :cond_0
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    const/4 v5, 0x0

    const/4 v6, 0x0

    move-object/from16 v3, p4

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivityZTE;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 686
    :cond_1
    return-void

    .line 643
    :cond_2
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    const/4 v2, 0x1

    # setter for: Lcom/android/internal/app/ResolverActivityZTE;->mShowExtended:Z
    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverActivityZTE;->access$302(Lcom/android/internal/app/ResolverActivityZTE;Z)Z

    .line 644
    const/4 v14, 0x0

    .line 645
    .local v14, "usePkg":Z
    move-object/from16 v0, p4

    iget-object v1, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    # getter for: Lcom/android/internal/app/ResolverActivityZTE;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivityZTE;->access$200(Lcom/android/internal/app/ResolverActivityZTE;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v13

    .line 646
    .local v13, "startApp":Ljava/lang/CharSequence;
    if-nez v13, :cond_3

    .line 647
    const/4 v14, 0x1

    .line 649
    :cond_3
    if-nez v14, :cond_6

    .line 651
    new-instance v7, Ljava/util/HashSet;

    invoke-direct {v7}, Ljava/util/HashSet;-><init>()V

    .line 653
    .local v7, "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    invoke-virtual {v7, v13}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 654
    add-int/lit8 v8, p2, 0x1

    .local v8, "j":I
    :goto_0
    move/from16 v0, p3

    if-gt v8, v0, :cond_5

    .line 655
    move-object/from16 v0, p1

    invoke-interface {v0, v8}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/pm/ResolveInfo;

    .line 656
    .local v10, "jRi":Landroid/content/pm/ResolveInfo;
    iget-object v1, v10, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    # getter for: Lcom/android/internal/app/ResolverActivityZTE;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v2}, Lcom/android/internal/app/ResolverActivityZTE;->access$200(Lcom/android/internal/app/ResolverActivityZTE;)Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v9

    .line 657
    .local v9, "jApp":Ljava/lang/CharSequence;
    if-eqz v9, :cond_4

    invoke-virtual {v7, v9}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_8

    .line 658
    :cond_4
    const/4 v14, 0x1

    .line 665
    .end local v9    # "jApp":Ljava/lang/CharSequence;
    .end local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_5
    invoke-virtual {v7}, Ljava/util/HashSet;->clear()V

    .line 667
    .end local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8    # "j":I
    :cond_6
    move/from16 v11, p2

    .local v11, "k":I
    :goto_1
    move/from16 v0, p3

    if-gt v11, v0, :cond_1

    .line 668
    move-object/from16 v0, p1

    invoke-interface {v0, v11}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 669
    .local v3, "add":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;

    iget-object v1, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v1, v1, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    iget-object v2, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v2, v2, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_7

    .line 673
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    move-object/from16 v0, p0

    iput v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mInitialHighlight:I

    .line 675
    :cond_7
    if-eqz v14, :cond_9

    .line 677
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v5, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v6, 0x0

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivityZTE;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 667
    :goto_2
    add-int/lit8 v11, v11, 0x1

    goto :goto_1

    .line 661
    .end local v3    # "add":Landroid/content/pm/ResolveInfo;
    .end local v11    # "k":I
    .restart local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .restart local v8    # "j":I
    .restart local v9    # "jApp":Ljava/lang/CharSequence;
    .restart local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    :cond_8
    invoke-virtual {v7, v9}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 654
    add-int/lit8 v8, v8, 0x1

    goto/16 :goto_0

    .line 681
    .end local v7    # "duplicates":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/CharSequence;>;"
    .end local v8    # "j":I
    .end local v9    # "jApp":Ljava/lang/CharSequence;
    .end local v10    # "jRi":Landroid/content/pm/ResolveInfo;
    .restart local v3    # "add":Landroid/content/pm/ResolveInfo;
    .restart local v11    # "k":I
    :cond_9
    move-object/from16 v0, p0

    iget-object v15, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    iget-object v4, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    # getter for: Lcom/android/internal/app/ResolverActivityZTE;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v5}, Lcom/android/internal/app/ResolverActivityZTE;->access$200(Lcom/android/internal/app/ResolverActivityZTE;)Landroid/content/pm/PackageManager;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    const/4 v6, 0x0

    move-object/from16 v4, p5

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivityZTE;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v15, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_2
.end method

.method private rebuildList()V
    .locals 21

    .prologue
    .line 508
    :try_start_0
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v1

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    invoke-virtual {v5}, Lcom/android/internal/app/ResolverActivityZTE;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-interface {v1, v2, v4, v5}, Landroid/content/pm/IPackageManager;->getLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mLastChosen:Landroid/content/pm/ResolveInfo;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 515
    :goto_0
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v1}, Ljava/util/List;->clear()V

    .line 516
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    if-eqz v1, :cond_3

    .line 517
    move-object/from16 v0, p0

    iget-object v8, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mBaseResolveList:Ljava/util/List;

    .line 518
    .local v8, "currentResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    const/4 v1, 0x0

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 545
    :cond_0
    if-eqz v8, :cond_12

    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v13

    .local v13, "N":I
    if-lez v13, :cond_12

    .line 548
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 549
    .local v11, "r0":Landroid/content/pm/ResolveInfo;
    const/16 v16, 0x1

    .local v16, "i":I
    :goto_1
    move/from16 v0, v16

    if-ge v0, v13, :cond_8

    .line 550
    move/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 557
    .local v3, "ri":Landroid/content/pm/ResolveInfo;
    iget v1, v11, Landroid/content/pm/ResolveInfo;->priority:I

    iget v2, v3, Landroid/content/pm/ResolveInfo;->priority:I

    if-ne v1, v2, :cond_1

    iget-boolean v1, v11, Landroid/content/pm/ResolveInfo;->isDefault:Z

    iget-boolean v2, v3, Landroid/content/pm/ResolveInfo;->isDefault:Z

    if-eq v1, v2, :cond_7

    .line 559
    :cond_1
    :goto_2
    move/from16 v0, v16

    if-ge v0, v13, :cond_7

    .line 560
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-ne v1, v8, :cond_2

    .line 561
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 563
    :cond_2
    move/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 564
    add-int/lit8 v13, v13, -0x1

    goto :goto_2

    .line 511
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v8    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v11    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v13    # "N":I
    .end local v16    # "i":I
    :catch_0
    move-exception v19

    .line 512
    .local v19, "re":Landroid/os/RemoteException;
    const-string v1, "ResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling setLastChosenActivity\n"

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move-object/from16 v0, v19

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 520
    .end local v19    # "re":Landroid/os/RemoteException;
    :cond_3
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    # getter for: Lcom/android/internal/app/ResolverActivityZTE;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivityZTE;->access$200(Lcom/android/internal/app/ResolverActivityZTE;)Landroid/content/pm/PackageManager;

    move-result-object v2

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    const/high16 v5, 0x10000

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    # getter for: Lcom/android/internal/app/ResolverActivityZTE;->mAlwaysUseOption:Z
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivityZTE;->access$100(Lcom/android/internal/app/ResolverActivityZTE;)Z

    move-result v1

    if-eqz v1, :cond_6

    const/16 v1, 0x40

    :goto_3
    or-int/2addr v1, v5

    invoke-virtual {v2, v4, v1}, Landroid/content/pm/PackageManager;->queryIntentActivities(Landroid/content/Intent;I)Ljava/util/List;

    move-result-object v8

    move-object/from16 v0, p0

    iput-object v8, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 528
    .restart local v8    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    if-eqz v8, :cond_0

    .line 529
    invoke-interface {v8}, Ljava/util/List;->size()I

    move-result v1

    add-int/lit8 v16, v1, -0x1

    .restart local v16    # "i":I
    :goto_4
    if-ltz v16, :cond_0

    .line 530
    move/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/content/pm/ResolveInfo;

    iget-object v14, v1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 531
    .local v14, "ai":Landroid/content/pm/ActivityInfo;
    iget-object v1, v14, Landroid/content/pm/ActivityInfo;->permission:Ljava/lang/String;

    move-object/from16 v0, p0

    iget v2, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mLaunchedFromUid:I

    iget-object v4, v14, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget v4, v4, Landroid/content/pm/ApplicationInfo;->uid:I

    iget-boolean v5, v14, Landroid/content/pm/ActivityInfo;->exported:Z

    invoke-static {v1, v2, v4, v5}, Landroid/app/ActivityManager;->checkComponentPermission(Ljava/lang/String;IIZ)I

    move-result v15

    .line 534
    .local v15, "granted":I
    if-eqz v15, :cond_5

    .line 536
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-ne v1, v8, :cond_4

    .line 537
    new-instance v1, Ljava/util/ArrayList;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-direct {v1, v2}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    move-object/from16 v0, p0

    iput-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    .line 539
    :cond_4
    move/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    .line 529
    :cond_5
    add-int/lit8 v16, v16, -0x1

    goto :goto_4

    .line 520
    .end local v8    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v15    # "granted":I
    .end local v16    # "i":I
    :cond_6
    const/4 v1, 0x0

    goto :goto_3

    .line 549
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .restart local v8    # "currentResolveList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    .restart local v11    # "r0":Landroid/content/pm/ResolveInfo;
    .restart local v13    # "N":I
    .restart local v16    # "i":I
    :cond_7
    add-int/lit8 v16, v16, 0x1

    goto/16 :goto_1

    .line 568
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    :cond_8
    const/4 v1, 0x1

    if-le v13, v1, :cond_9

    .line 569
    new-instance v18, Landroid/content/pm/ResolveInfo$DisplayNameComparator;

    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    # getter for: Lcom/android/internal/app/ResolverActivityZTE;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivityZTE;->access$200(Lcom/android/internal/app/ResolverActivityZTE;)Landroid/content/pm/PackageManager;

    move-result-object v1

    move-object/from16 v0, v18

    invoke-direct {v0, v1}, Landroid/content/pm/ResolveInfo$DisplayNameComparator;-><init>(Landroid/content/pm/PackageManager;)V

    .line 571
    .local v18, "rComparator":Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    move-object/from16 v0, v18

    invoke-static {v8, v0}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 574
    .end local v18    # "rComparator":Landroid/content/pm/ResolveInfo$DisplayNameComparator;
    :cond_9
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    if-eqz v1, :cond_d

    .line 575
    const/16 v16, 0x0

    :goto_5
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    array-length v1, v1

    move/from16 v0, v16

    if-ge v0, v1, :cond_d

    .line 576
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mInitialIntents:[Landroid/content/Intent;

    aget-object v6, v1, v16

    .line 577
    .local v6, "ii":Landroid/content/Intent;
    if-nez v6, :cond_a

    .line 575
    :goto_6
    add-int/lit8 v16, v16, 0x1

    goto :goto_5

    .line 580
    :cond_a
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivityZTE;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v6, v1, v2}, Landroid/content/Intent;->resolveActivityInfo(Landroid/content/pm/PackageManager;I)Landroid/content/pm/ActivityInfo;

    move-result-object v14

    .line 582
    .restart local v14    # "ai":Landroid/content/pm/ActivityInfo;
    if-nez v14, :cond_b

    .line 583
    const-string v1, "ResolverActivity"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "No activity found for "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_6

    .line 587
    :cond_b
    new-instance v3, Landroid/content/pm/ResolveInfo;

    invoke-direct {v3}, Landroid/content/pm/ResolveInfo;-><init>()V

    .line 588
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    iput-object v14, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 589
    instance-of v1, v6, Landroid/content/pm/LabeledIntent;

    if-eqz v1, :cond_c

    move-object/from16 v17, v6

    .line 590
    check-cast v17, Landroid/content/pm/LabeledIntent;

    .line 591
    .local v17, "li":Landroid/content/pm/LabeledIntent;
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LabeledIntent;->getSourcePackage()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    .line 592
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LabeledIntent;->getLabelResource()I

    move-result v1

    iput v1, v3, Landroid/content/pm/ResolveInfo;->labelRes:I

    .line 593
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LabeledIntent;->getNonLocalizedLabel()Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v3, Landroid/content/pm/ResolveInfo;->nonLocalizedLabel:Ljava/lang/CharSequence;

    .line 594
    invoke-virtual/range {v17 .. v17}, Landroid/content/pm/LabeledIntent;->getIconResource()I

    move-result v1

    iput v1, v3, Landroid/content/pm/ResolveInfo;->icon:I

    .line 596
    .end local v17    # "li":Landroid/content/pm/LabeledIntent;
    :cond_c
    move-object/from16 v0, p0

    iget-object v7, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mList:Ljava/util/List;

    new-instance v1, Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    invoke-virtual {v4}, Lcom/android/internal/app/ResolverActivityZTE;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    invoke-virtual {v3, v4}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    const/4 v5, 0x0

    invoke-direct/range {v1 .. v6}, Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;-><init>(Lcom/android/internal/app/ResolverActivityZTE;Landroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;Ljava/lang/CharSequence;Landroid/content/Intent;)V

    invoke-interface {v7, v1}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_6

    .line 603
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v6    # "ii":Landroid/content/Intent;
    .end local v14    # "ai":Landroid/content/pm/ActivityInfo;
    :cond_d
    const/4 v1, 0x0

    invoke-interface {v8, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "r0":Landroid/content/pm/ResolveInfo;
    check-cast v11, Landroid/content/pm/ResolveInfo;

    .line 604
    .restart local v11    # "r0":Landroid/content/pm/ResolveInfo;
    const/4 v9, 0x0

    .line 605
    .local v9, "start":I
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    # getter for: Lcom/android/internal/app/ResolverActivityZTE;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivityZTE;->access$200(Lcom/android/internal/app/ResolverActivityZTE;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v11, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v12

    .line 606
    .local v12, "r0Label":Ljava/lang/CharSequence;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    const/4 v2, 0x0

    # setter for: Lcom/android/internal/app/ResolverActivityZTE;->mShowExtended:Z
    invoke-static {v1, v2}, Lcom/android/internal/app/ResolverActivityZTE;->access$302(Lcom/android/internal/app/ResolverActivityZTE;Z)Z

    .line 607
    const/16 v16, 0x1

    :goto_7
    move/from16 v0, v16

    if-ge v0, v13, :cond_11

    .line 608
    if-nez v12, :cond_e

    .line 609
    iget-object v1, v11, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v12, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    .line 611
    :cond_e
    move/from16 v0, v16

    invoke-interface {v8, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/content/pm/ResolveInfo;

    .line 612
    .restart local v3    # "ri":Landroid/content/pm/ResolveInfo;
    move-object/from16 v0, p0

    iget-object v1, v0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    # getter for: Lcom/android/internal/app/ResolverActivityZTE;->mPm:Landroid/content/pm/PackageManager;
    invoke-static {v1}, Lcom/android/internal/app/ResolverActivityZTE;->access$200(Lcom/android/internal/app/ResolverActivityZTE;)Landroid/content/pm/PackageManager;

    move-result-object v1

    invoke-virtual {v3, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v20

    .line 613
    .local v20, "riLabel":Ljava/lang/CharSequence;
    if-nez v20, :cond_f

    .line 614
    iget-object v1, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v0, v1, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v20, v0

    .line 616
    :cond_f
    move-object/from16 v0, v20

    invoke-virtual {v0, v12}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_10

    .line 607
    :goto_8
    add-int/lit8 v16, v16, 0x1

    goto :goto_7

    .line 619
    :cond_10
    add-int/lit8 v10, v16, -0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 620
    move-object v11, v3

    .line 621
    move-object/from16 v12, v20

    .line 622
    move/from16 v9, v16

    goto :goto_8

    .line 625
    .end local v3    # "ri":Landroid/content/pm/ResolveInfo;
    .end local v20    # "riLabel":Ljava/lang/CharSequence;
    :cond_11
    add-int/lit8 v10, v13, -0x1

    move-object/from16 v7, p0

    invoke-direct/range {v7 .. v12}, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->processGroup(Ljava/util/List;IILandroid/content/pm/ResolveInfo;Ljava/lang/CharSequence;)V

    .line 627
    .end local v9    # "start":I
    .end local v11    # "r0":Landroid/content/pm/ResolveInfo;
    .end local v12    # "r0Label":Ljava/lang/CharSequence;
    .end local v13    # "N":I
    .end local v16    # "i":I
    :cond_12
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 706
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    return v0
.end method

.method public getInitialHighlight()I
    .locals 1

    .prologue
    .line 501
    iget v0, p0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mInitialHighlight:I

    return v0
.end method

.method public getItem(I)Ljava/lang/Object;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 710
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 714
    int-to-long v0, p1

    return-wide v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 719
    if-nez p2, :cond_0

    .line 720
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mInflater:Landroid/view/LayoutInflater;

    const v4, 0x208001e

    const/4 v5, 0x0

    invoke-virtual {v3, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    .line 723
    .local v2, "view":Landroid/view/View;
    new-instance v0, Lcom/android/internal/app/ResolverActivityZTE$ViewHolder;

    invoke-direct {v0, v2}, Lcom/android/internal/app/ResolverActivityZTE$ViewHolder;-><init>(Landroid/view/View;)V

    .line 724
    .local v0, "holder":Lcom/android/internal/app/ResolverActivityZTE$ViewHolder;
    invoke-virtual {v2, v0}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 727
    iget-object v3, v0, Lcom/android/internal/app/ResolverActivityZTE$ViewHolder;->icon:Landroid/widget/ImageView;

    invoke-virtual {v3}, Landroid/widget/ImageView;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v1

    .line 728
    .local v1, "lp":Landroid/view/ViewGroup$LayoutParams;
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    # getter for: Lcom/android/internal/app/ResolverActivityZTE;->mIconSize:I
    invoke-static {v3}, Lcom/android/internal/app/ResolverActivityZTE;->access$400(Lcom/android/internal/app/ResolverActivityZTE;)I

    move-result v3

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->height:I

    iput v3, v1, Landroid/view/ViewGroup$LayoutParams;->width:I

    .line 732
    .end local v0    # "holder":Lcom/android/internal/app/ResolverActivityZTE$ViewHolder;
    .end local v1    # "lp":Landroid/view/ViewGroup$LayoutParams;
    :goto_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;

    invoke-direct {p0, v2, v3}, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->bindView(Landroid/view/View;Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;)V

    .line 733
    return-object v2

    .line 730
    .end local v2    # "view":Landroid/view/View;
    :cond_0
    move-object v2, p2

    .restart local v2    # "view":Landroid/view/View;
    goto :goto_0
.end method

.method public handlePackagesChanged()V
    .locals 3

    .prologue
    .line 488
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->getCount()I

    move-result v1

    .line 489
    .local v1, "oldItemCount":I
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->rebuildList()V

    .line 490
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->notifyDataSetChanged()V

    .line 491
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->getCount()I

    move-result v0

    .line 492
    .local v0, "newItemCount":I
    if-nez v0, :cond_1

    .line 494
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivityZTE;->finish()V

    .line 498
    :cond_0
    :goto_0
    return-void

    .line 495
    :cond_1
    if-eq v0, v1, :cond_0

    .line 496
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->this$0:Lcom/android/internal/app/ResolverActivityZTE;

    invoke-virtual {v2}, Lcom/android/internal/app/ResolverActivityZTE;->resizeGrid()V

    goto :goto_0
.end method

.method public intentForPosition(I)Landroid/content/Intent;
    .locals 6
    .param p1, "position"    # I

    .prologue
    .line 693
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v3, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;

    .line 695
    .local v1, "dri":Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;
    new-instance v2, Landroid/content/Intent;

    iget-object v3, v1, Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    if-eqz v3, :cond_0

    iget-object v3, v1, Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;->origIntent:Landroid/content/Intent;

    :goto_0
    invoke-direct {v2, v3}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 697
    .local v2, "intent":Landroid/content/Intent;
    const/high16 v3, 0x3000000

    invoke-virtual {v2, v3}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 699
    iget-object v3, v1, Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    iget-object v0, v3, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    .line 700
    .local v0, "ai":Landroid/content/pm/ActivityInfo;
    new-instance v3, Landroid/content/ComponentName;

    iget-object v4, v0, Landroid/content/pm/ActivityInfo;->applicationInfo:Landroid/content/pm/ApplicationInfo;

    iget-object v4, v4, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    iget-object v5, v0, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v3, v4, v5}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 702
    return-object v2

    .line 695
    .end local v0    # "ai":Landroid/content/pm/ActivityInfo;
    .end local v2    # "intent":Landroid/content/Intent;
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mIntent:Landroid/content/Intent;

    goto :goto_0
.end method

.method public resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 689
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;

    iget-object v0, v0, Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;->ri:Landroid/content/pm/ResolveInfo;

    return-object v0
.end method
