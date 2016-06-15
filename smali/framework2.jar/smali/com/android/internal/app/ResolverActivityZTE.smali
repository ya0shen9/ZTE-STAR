.class public Lcom/android/internal/app/ResolverActivityZTE;
.super Lcom/android/internal/app/AlertActivity;
.source "ResolverActivityZTE.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/app/ResolverActivityZTE$LoadIconTask;,
        Lcom/android/internal/app/ResolverActivityZTE$ItemLongClickListener;,
        Lcom/android/internal/app/ResolverActivityZTE$ViewHolder;,
        Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;,
        Lcom/android/internal/app/ResolverActivityZTE$DisplayResolveInfo;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = false

.field private static final TAG:Ljava/lang/String; = "ResolverActivity"


# instance fields
.field private mAdapter:Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;

.field private mAlwaysButton:Landroid/widget/Button;

.field private mAlwaysUseOption:Z

.field private mAwaysCheckBox:Landroid/widget/CheckBox;

.field private mGrid:Landroid/widget/GridView;

.field private mIconDpi:I

.field private mIconSize:I

.field private mLastSelected:I

.field private mLaunchedFromUid:I

.field private mListView:Landroid/widget/ListView;

.field private mMaxColumns:I

.field private mOnceButton:Landroid/widget/Button;

.field private final mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

.field private mPm:Landroid/content/pm/PackageManager;

.field private mRegistered:Z

.field private mShowExtended:Z


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 71
    invoke-direct {p0}, Lcom/android/internal/app/AlertActivity;-><init>()V

    .line 90
    const/4 v0, -0x1

    iput v0, p0, Lcom/android/internal/app/ResolverActivityZTE;->mLastSelected:I

    .line 93
    new-instance v0, Lcom/android/internal/app/ResolverActivityZTE$1;

    invoke-direct {v0, p0}, Lcom/android/internal/app/ResolverActivityZTE$1;-><init>(Lcom/android/internal/app/ResolverActivityZTE;)V

    iput-object v0, p0, Lcom/android/internal/app/ResolverActivityZTE;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    .line 775
    return-void
.end method

.method static synthetic access$000(Lcom/android/internal/app/ResolverActivityZTE;)Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivityZTE;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityZTE;->mAdapter:Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;

    return-object v0
.end method

.method static synthetic access$100(Lcom/android/internal/app/ResolverActivityZTE;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivityZTE;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityZTE;->mAlwaysUseOption:Z

    return v0
.end method

.method static synthetic access$200(Lcom/android/internal/app/ResolverActivityZTE;)Landroid/content/pm/PackageManager;
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivityZTE;

    .prologue
    .line 71
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityZTE;->mPm:Landroid/content/pm/PackageManager;

    return-object v0
.end method

.method static synthetic access$300(Lcom/android/internal/app/ResolverActivityZTE;)Z
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivityZTE;

    .prologue
    .line 71
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityZTE;->mShowExtended:Z

    return v0
.end method

.method static synthetic access$302(Lcom/android/internal/app/ResolverActivityZTE;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivityZTE;
    .param p1, "x1"    # Z

    .prologue
    .line 71
    iput-boolean p1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mShowExtended:Z

    return p1
.end method

.method static synthetic access$400(Lcom/android/internal/app/ResolverActivityZTE;)I
    .locals 1
    .param p0, "x0"    # Lcom/android/internal/app/ResolverActivityZTE;

    .prologue
    .line 71
    iget v0, p0, Lcom/android/internal/app/ResolverActivityZTE;->mIconSize:I

    return v0
.end method

.method private makeMyIntent()Landroid/content/Intent;
    .locals 3

    .prologue
    .line 100
    new-instance v0, Landroid/content/Intent;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityZTE;->getIntent()Landroid/content/Intent;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Intent;)V

    .line 101
    .local v0, "intent":Landroid/content/Intent;
    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 107
    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v1

    const v2, -0x800001

    and-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 108
    return-object v0
.end method


# virtual methods
.method getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    .locals 3
    .param p1, "res"    # Landroid/content/res/Resources;
    .param p2, "resId"    # I

    .prologue
    .line 219
    :try_start_0
    iget v2, p0, Lcom/android/internal/app/ResolverActivityZTE;->mIconDpi:I

    invoke-virtual {p1, p2, v2}, Landroid/content/res/Resources;->getDrawableForDensity(II)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/res/Resources$NotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 224
    .local v1, "result":Landroid/graphics/drawable/Drawable;
    :goto_0
    return-object v1

    .line 220
    .end local v1    # "result":Landroid/graphics/drawable/Drawable;
    :catch_0
    move-exception v0

    .line 221
    .local v0, "e":Landroid/content/res/Resources$NotFoundException;
    const/4 v1, 0x0

    .restart local v1    # "result":Landroid/graphics/drawable/Drawable;
    goto :goto_0
.end method

.method loadIconForResolveInfo(Landroid/content/pm/ResolveInfo;)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 230
    :try_start_0
    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    if-eqz v3, :cond_1

    iget v3, p1, Landroid/content/pm/ResolveInfo;->icon:I

    if-eqz v3, :cond_1

    .line 231
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityZTE;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->resolvePackageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    iget v4, p1, Landroid/content/pm/ResolveInfo;->icon:I

    invoke-virtual {p0, v3, v4}, Lcom/android/internal/app/ResolverActivityZTE;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    .line 232
    .local v0, "dr":Landroid/graphics/drawable/Drawable;
    if-eqz v0, :cond_1

    .line 246
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    :cond_0
    :goto_0
    return-object v0

    .line 236
    :cond_1
    invoke-virtual {p1}, Landroid/content/pm/ResolveInfo;->getIconResource()I

    move-result v2

    .line 237
    .local v2, "iconRes":I
    if-eqz v2, :cond_2

    .line 238
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityZTE;->mPm:Landroid/content/pm/PackageManager;

    iget-object v4, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Landroid/content/pm/PackageManager;->getResourcesForApplication(Ljava/lang/String;)Landroid/content/res/Resources;

    move-result-object v3

    invoke-virtual {p0, v3, v2}, Lcom/android/internal/app/ResolverActivityZTE;->getIcon(Landroid/content/res/Resources;I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 239
    .restart local v0    # "dr":Landroid/graphics/drawable/Drawable;
    if-nez v0, :cond_0

    .line 246
    .end local v0    # "dr":Landroid/graphics/drawable/Drawable;
    .end local v2    # "iconRes":I
    :cond_2
    :goto_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityZTE;->mPm:Landroid/content/pm/PackageManager;

    invoke-virtual {p1, v3}, Landroid/content/pm/ResolveInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    goto :goto_0

    .line 243
    :catch_0
    move-exception v1

    .line 244
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const-string v3, "ResolverActivity"

    const-string v4, "Couldn\'t find resources for package"

    invoke-static {v3, v4, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1
.end method

.method public onButtonClick(Landroid/view/View;)V
    .locals 3
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 317
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 318
    .local v0, "id":I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v1}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v2

    const v1, 0x1020308

    if-ne v0, v1, :cond_0

    const/4 v1, 0x1

    :goto_0
    invoke-virtual {p0, v2, v1}, Lcom/android/internal/app/ResolverActivityZTE;->startSelected(IZ)V

    .line 319
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityZTE;->dismiss()V

    .line 320
    return-void

    .line 318
    :cond_0
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x0

    const/4 v6, 0x1

    .line 115
    invoke-direct {p0}, Lcom/android/internal/app/ResolverActivityZTE;->makeMyIntent()Landroid/content/Intent;

    move-result-object v2

    .line 116
    .local v2, "intent":Landroid/content/Intent;
    invoke-virtual {v2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v7

    .line 117
    .local v7, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    const-string v0, "android.intent.action.MAIN"

    invoke-virtual {v2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    if-eqz v7, :cond_0

    invoke-interface {v7}, Ljava/util/Set;->size()I

    move-result v0

    if-ne v0, v6, :cond_0

    const-string v0, "android.intent.category.HOME"

    invoke-interface {v7, v0}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 121
    const v8, 0x204002e

    .line 126
    .local v8, "titleResource":I
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, v8}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v3

    move-object v0, p0

    move-object v1, p1

    move-object v5, v4

    invoke-virtual/range {v0 .. v6}, Lcom/android/internal/app/ResolverActivityZTE;->onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V

    .line 128
    return-void

    .line 123
    .end local v8    # "titleResource":I
    :cond_0
    const v8, 0x204003a

    .restart local v8    # "titleResource":I
    goto :goto_0
.end method

.method protected onCreate(Landroid/os/Bundle;Landroid/content/Intent;Ljava/lang/CharSequence;[Landroid/content/Intent;Ljava/util/List;Z)V
    .locals 14
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "title"    # Ljava/lang/CharSequence;
    .param p4, "initialIntents"    # [Landroid/content/Intent;
    .param p6, "alwaysUseOption"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/os/Bundle;",
            "Landroid/content/Intent;",
            "Ljava/lang/CharSequence;",
            "[",
            "Landroid/content/Intent;",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ResolveInfo;",
            ">;Z)V"
        }
    .end annotation

    .prologue
    .line 135
    .local p5, "rList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ResolveInfo;>;"
    invoke-static {p0}, Landroid/content/res/Resources;->getAlertDialogTheme(Landroid/content/Context;)I

    move-result v1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivityZTE;->setTheme(I)V

    .line 138
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onCreate(Landroid/os/Bundle;)V

    .line 140
    :try_start_0
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v1

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityZTE;->getActivityToken()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v1, v2}, Landroid/app/IActivityManager;->getLaunchedFromUid(Landroid/os/IBinder;)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mLaunchedFromUid:I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 145
    :goto_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityZTE;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mPm:Landroid/content/pm/PackageManager;

    .line 146
    move/from16 v0, p6

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityZTE;->mAlwaysUseOption:Z

    .line 147
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x2050005

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mMaxColumns:I

    .line 149
    iget-object v9, p0, Lcom/android/internal/app/ResolverActivityZTE;->mAlertParams:Lcom/android/internal/app/AlertController$AlertParams;

    .line 151
    .local v9, "ap":Lcom/android/internal/app/AlertController$AlertParams;
    move-object/from16 v0, p3

    iput-object v0, v9, Lcom/android/internal/app/AlertController$AlertParams;->mTitle:Ljava/lang/CharSequence;

    .line 153
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityZTE;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, p0, v2, v3}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 154
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mRegistered:Z

    .line 156
    const-string v1, "activity"

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivityZTE;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/app/ActivityManager;

    .line 157
    .local v8, "am":Landroid/app/ActivityManager;
    invoke-virtual {v8}, Landroid/app/ActivityManager;->getLauncherLargeIconDensity()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mIconDpi:I

    .line 158
    invoke-virtual {v8}, Landroid/app/ActivityManager;->getLauncherLargeIconSize()I

    move-result v1

    iput v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mIconSize:I

    .line 160
    new-instance v1, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;

    iget v7, p0, Lcom/android/internal/app/ResolverActivityZTE;->mLaunchedFromUid:I

    move-object v2, p0

    move-object v3, p0

    move-object/from16 v4, p2

    move-object/from16 v5, p4

    move-object/from16 v6, p5

    invoke-direct/range {v1 .. v7}, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;-><init>(Lcom/android/internal/app/ResolverActivityZTE;Landroid/content/Context;Landroid/content/Intent;[Landroid/content/Intent;Ljava/util/List;I)V

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mAdapter:Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;

    .line 162
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mAdapter:Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->getCount()I

    move-result v11

    .line 163
    .local v11, "count":I
    iget v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mLaunchedFromUid:I

    if-ltz v1, :cond_0

    iget v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mLaunchedFromUid:I

    invoke-static {v1}, Landroid/os/UserHandle;->isIsolated(I)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 165
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityZTE;->finish()V

    .line 209
    :cond_1
    :goto_1
    return-void

    .line 142
    .end local v8    # "am":Landroid/app/ActivityManager;
    .end local v9    # "ap":Lcom/android/internal/app/AlertController$AlertParams;
    .end local v11    # "count":I
    :catch_0
    move-exception v12

    .line 143
    .local v12, "e":Landroid/os/RemoteException;
    const/4 v1, -0x1

    iput v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mLaunchedFromUid:I

    goto :goto_0

    .line 167
    .end local v12    # "e":Landroid/os/RemoteException;
    .restart local v8    # "am":Landroid/app/ActivityManager;
    .restart local v9    # "ap":Lcom/android/internal/app/AlertController$AlertParams;
    .restart local v11    # "count":I
    :cond_2
    const/4 v1, 0x1

    if-le v11, v1, :cond_4

    .line 168
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityZTE;->getLayoutInflater()Landroid/view/LayoutInflater;

    move-result-object v1

    const v2, 0x208001f

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, v9, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    .line 169
    iget-object v1, v9, Lcom/android/internal/app/AlertController$AlertParams;->mView:Landroid/view/View;

    const v2, 0x20c0041

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/GridView;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mGrid:Landroid/widget/GridView;

    .line 170
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mGrid:Landroid/widget/GridView;

    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityZTE;->mAdapter:Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 171
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v1, p0}, Landroid/widget/GridView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 172
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mGrid:Landroid/widget/GridView;

    new-instance v2, Lcom/android/internal/app/ResolverActivityZTE$ItemLongClickListener;

    invoke-direct {v2, p0}, Lcom/android/internal/app/ResolverActivityZTE$ItemLongClickListener;-><init>(Lcom/android/internal/app/ResolverActivityZTE;)V

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setOnItemLongClickListener(Landroid/widget/AdapterView$OnItemLongClickListener;)V

    .line 174
    if-eqz p6, :cond_3

    .line 175
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mGrid:Landroid/widget/GridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setChoiceMode(I)V

    .line 178
    :cond_3
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityZTE;->resizeGrid()V

    .line 189
    :goto_2
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityZTE;->setupAlert()V

    .line 191
    if-eqz p6, :cond_1

    .line 192
    const v1, 0x20c0008

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivityZTE;->findViewById(I)Landroid/view/View;

    move-result-object v10

    check-cast v10, Landroid/view/ViewGroup;

    .line 193
    .local v10, "buttonLayout":Landroid/view/ViewGroup;
    if-eqz v10, :cond_6

    .line 194
    const/4 v1, 0x0

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->setVisibility(I)V

    .line 195
    const v1, 0x20c0042

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mAlwaysButton:Landroid/widget/Button;

    .line 196
    const v1, 0x20c0043

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/Button;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mOnceButton:Landroid/widget/Button;

    .line 197
    const v1, 0x20c002c

    invoke-virtual {v10, v1}, Landroid/view/ViewGroup;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/CheckBox;

    iput-object v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mAwaysCheckBox:Landroid/widget/CheckBox;

    .line 203
    :goto_3
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mAdapter:Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->getInitialHighlight()I

    move-result v13

    .line 204
    .local v13, "initialHighlight":I
    if-ltz v13, :cond_1

    .line 205
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mGrid:Landroid/widget/GridView;

    const/4 v2, 0x1

    invoke-virtual {v1, v13, v2}, Landroid/widget/GridView;->setItemChecked(IZ)V

    goto/16 :goto_1

    .line 179
    .end local v10    # "buttonLayout":Landroid/view/ViewGroup;
    .end local v13    # "initialHighlight":I
    :cond_4
    const/4 v1, 0x1

    if-ne v11, v1, :cond_5

    .line 180
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mAdapter:Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/android/internal/app/ResolverActivityZTE;->startActivity(Landroid/content/Intent;)V

    .line 181
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v1}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 182
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mRegistered:Z

    .line 183
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityZTE;->finish()V

    goto/16 :goto_1

    .line 186
    :cond_5
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityZTE;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x1040401

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getText(I)Ljava/lang/CharSequence;

    move-result-object v1

    iput-object v1, v9, Lcom/android/internal/app/AlertController$AlertParams;->mMessage:Ljava/lang/CharSequence;

    goto :goto_2

    .line 200
    .restart local v10    # "buttonLayout":Landroid/view/ViewGroup;
    :cond_6
    const/4 v1, 0x0

    iput-boolean v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mAlwaysUseOption:Z

    goto :goto_3
.end method

.method protected onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V
    .locals 27
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;
    .param p2, "intent"    # Landroid/content/Intent;
    .param p3, "alwaysCheck"    # Z

    .prologue
    .line 333
    move-object/from16 v0, p0

    iget-boolean v2, v0, Lcom/android/internal/app/ResolverActivityZTE;->mAlwaysUseOption:Z

    if-eqz v2, :cond_d

    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityZTE;->mAdapter:Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    if-eqz v2, :cond_d

    .line 335
    new-instance v6, Landroid/content/IntentFilter;

    invoke-direct {v6}, Landroid/content/IntentFilter;-><init>()V

    .line 337
    .local v6, "filter":Landroid/content/IntentFilter;
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 338
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 340
    :cond_0
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getCategories()Ljava/util/Set;

    move-result-object v13

    .line 341
    .local v13, "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    if-eqz v13, :cond_1

    .line 342
    invoke-interface {v13}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v17

    .local v17, "i$":Ljava/util/Iterator;
    :goto_0
    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface/range {v17 .. v17}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Ljava/lang/String;

    .line 343
    .local v12, "cat":Ljava/lang/String;
    invoke-virtual {v6, v12}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    goto :goto_0

    .line 346
    .end local v12    # "cat":Ljava/lang/String;
    .end local v17    # "i$":Ljava/util/Iterator;
    :cond_1
    const-string v2, "android.intent.category.DEFAULT"

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addCategory(Ljava/lang/String;)V

    .line 348
    move-object/from16 v0, p1

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    const/high16 v3, 0xfff0000

    and-int v12, v2, v3

    .line 349
    .local v12, "cat":I
    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getData()Landroid/net/Uri;

    move-result-object v14

    .line 350
    .local v14, "data":Landroid/net/Uri;
    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_2

    .line 351
    move-object/from16 v0, p2

    move-object/from16 v1, p0

    invoke-virtual {v0, v1}, Landroid/content/Intent;->resolveType(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v18

    .line 352
    .local v18, "mimeType":Ljava/lang/String;
    if-eqz v18, :cond_2

    .line 354
    :try_start_0
    move-object/from16 v0, v18

    invoke-virtual {v6, v0}, Landroid/content/IntentFilter;->addDataType(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/content/IntentFilter$MalformedMimeTypeException; {:try_start_0 .. :try_end_0} :catch_0

    .line 361
    .end local v18    # "mimeType":Ljava/lang/String;
    :cond_2
    :goto_1
    if-eqz v14, :cond_9

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    if-eqz v2, :cond_9

    .line 365
    const/high16 v2, 0x600000

    if-ne v12, v2, :cond_3

    const-string v2, "file"

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    const-string v2, "content"

    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_9

    .line 368
    :cond_3
    invoke-virtual {v14}, Landroid/net/Uri;->getScheme()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v6, v2}, Landroid/content/IntentFilter;->addDataScheme(Ljava/lang/String;)V

    .line 372
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->schemeSpecificPartsIterator()Ljava/util/Iterator;

    move-result-object v20

    .line 373
    .local v20, "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    if-eqz v20, :cond_5

    .line 374
    invoke-virtual {v14}, Landroid/net/Uri;->getSchemeSpecificPart()Ljava/lang/String;

    move-result-object v26

    .line 375
    .local v26, "ssp":Ljava/lang/String;
    :cond_4
    if-eqz v26, :cond_5

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 376
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PatternMatcher;

    .line 377
    .local v19, "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v19

    move-object/from16 v1, v26

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_4

    .line 378
    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataSchemeSpecificPart(Ljava/lang/String;I)V

    .line 383
    .end local v19    # "p":Landroid/os/PatternMatcher;
    .end local v26    # "ssp":Ljava/lang/String;
    :cond_5
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->authoritiesIterator()Ljava/util/Iterator;

    move-result-object v11

    .line 384
    .local v11, "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    if-eqz v11, :cond_7

    .line 385
    :cond_6
    invoke-interface {v11}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_7

    .line 386
    invoke-interface {v11}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/content/IntentFilter$AuthorityEntry;

    .line 387
    .local v10, "a":Landroid/content/IntentFilter$AuthorityEntry;
    invoke-virtual {v10, v14}, Landroid/content/IntentFilter$AuthorityEntry;->match(Landroid/net/Uri;)I

    move-result v2

    if-ltz v2, :cond_6

    .line 388
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getPort()I

    move-result v22

    .line 389
    .local v22, "port":I
    invoke-virtual {v10}, Landroid/content/IntentFilter$AuthorityEntry;->getHost()Ljava/lang/String;

    move-result-object v3

    if-ltz v22, :cond_b

    invoke-static/range {v22 .. v22}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v2

    :goto_2
    invoke-virtual {v6, v3, v2}, Landroid/content/IntentFilter;->addDataAuthority(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v22    # "port":I
    :cond_7
    move-object/from16 v0, p1

    iget-object v2, v0, Landroid/content/pm/ResolveInfo;->filter:Landroid/content/IntentFilter;

    invoke-virtual {v2}, Landroid/content/IntentFilter;->pathsIterator()Ljava/util/Iterator;

    move-result-object v20

    .line 396
    if-eqz v20, :cond_9

    .line 397
    invoke-virtual {v14}, Landroid/net/Uri;->getPath()Ljava/lang/String;

    move-result-object v21

    .line 398
    .local v21, "path":Ljava/lang/String;
    :cond_8
    if-eqz v21, :cond_9

    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_9

    .line 399
    invoke-interface/range {v20 .. v20}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v19

    check-cast v19, Landroid/os/PatternMatcher;

    .line 400
    .restart local v19    # "p":Landroid/os/PatternMatcher;
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/PatternMatcher;->match(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_8

    .line 401
    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual/range {v19 .. v19}, Landroid/os/PatternMatcher;->getType()I

    move-result v3

    invoke-virtual {v6, v2, v3}, Landroid/content/IntentFilter;->addDataPath(Ljava/lang/String;I)V

    .line 409
    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v19    # "p":Landroid/os/PatternMatcher;
    .end local v20    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v21    # "path":Ljava/lang/String;
    :cond_9
    if-eqz v6, :cond_d

    .line 410
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityZTE;->mAdapter:Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v9

    .line 411
    .local v9, "N":I
    new-array v0, v9, [Landroid/content/ComponentName;

    move-object/from16 v25, v0

    .line 412
    .local v25, "set":[Landroid/content/ComponentName;
    const/4 v7, 0x0

    .line 413
    .local v7, "bestMatch":I
    const/16 v16, 0x0

    .local v16, "i":I
    :goto_3
    move/from16 v0, v16

    if-ge v0, v9, :cond_c

    .line 414
    move-object/from16 v0, p0

    iget-object v2, v0, Lcom/android/internal/app/ResolverActivityZTE;->mAdapter:Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;

    iget-object v2, v2, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->mOrigResolveList:Ljava/util/List;

    move/from16 v0, v16

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v23

    check-cast v23, Landroid/content/pm/ResolveInfo;

    .line 415
    .local v23, "r":Landroid/content/pm/ResolveInfo;
    new-instance v2, Landroid/content/ComponentName;

    move-object/from16 v0, v23

    iget-object v3, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    move-object/from16 v0, v23

    iget-object v4, v0, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v4, v4, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    invoke-direct {v2, v3, v4}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    aput-object v2, v25, v16

    .line 417
    move-object/from16 v0, v23

    iget v2, v0, Landroid/content/pm/ResolveInfo;->match:I

    if-le v2, v7, :cond_a

    move-object/from16 v0, v23

    iget v7, v0, Landroid/content/pm/ResolveInfo;->match:I

    .line 413
    :cond_a
    add-int/lit8 v16, v16, 0x1

    goto :goto_3

    .line 355
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v16    # "i":I
    .end local v23    # "r":Landroid/content/pm/ResolveInfo;
    .end local v25    # "set":[Landroid/content/ComponentName;
    .restart local v18    # "mimeType":Ljava/lang/String;
    :catch_0
    move-exception v15

    .line 356
    .local v15, "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    const-string v2, "ResolverActivity"

    invoke-static {v2, v15}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 357
    const/4 v6, 0x0

    goto/16 :goto_1

    .line 389
    .end local v15    # "e":Landroid/content/IntentFilter$MalformedMimeTypeException;
    .end local v18    # "mimeType":Ljava/lang/String;
    .restart local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .restart local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .restart local v20    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .restart local v22    # "port":I
    :cond_b
    const/4 v2, 0x0

    goto/16 :goto_2

    .line 419
    .end local v10    # "a":Landroid/content/IntentFilter$AuthorityEntry;
    .end local v11    # "aIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/content/IntentFilter$AuthorityEntry;>;"
    .end local v20    # "pIt":Ljava/util/Iterator;, "Ljava/util/Iterator<Landroid/os/PatternMatcher;>;"
    .end local v22    # "port":I
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v16    # "i":I
    .restart local v25    # "set":[Landroid/content/ComponentName;
    :cond_c
    if-eqz p3, :cond_f

    .line 420
    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivityZTE;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v3

    move-object/from16 v0, v25

    invoke-virtual {v2, v6, v7, v0, v3}, Landroid/content/pm/PackageManager;->addPreferredActivity(Landroid/content/IntentFilter;I[Landroid/content/ComponentName;Landroid/content/ComponentName;)V

    .line 435
    .end local v6    # "filter":Landroid/content/IntentFilter;
    .end local v7    # "bestMatch":I
    .end local v9    # "N":I
    .end local v12    # "cat":I
    .end local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .end local v14    # "data":Landroid/net/Uri;
    .end local v16    # "i":I
    .end local v25    # "set":[Landroid/content/ComponentName;
    :cond_d
    :goto_4
    if-eqz p2, :cond_e

    .line 436
    move-object/from16 v0, p0

    move-object/from16 v1, p2

    invoke-virtual {v0, v1}, Lcom/android/internal/app/ResolverActivityZTE;->startActivity(Landroid/content/Intent;)V

    .line 438
    :cond_e
    return-void

    .line 424
    .restart local v6    # "filter":Landroid/content/IntentFilter;
    .restart local v7    # "bestMatch":I
    .restart local v9    # "N":I
    .restart local v12    # "cat":I
    .restart local v13    # "categories":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    .restart local v14    # "data":Landroid/net/Uri;
    .restart local v16    # "i":I
    .restart local v25    # "set":[Landroid/content/ComponentName;
    :cond_f
    :try_start_1
    invoke-static {}, Landroid/app/AppGlobals;->getPackageManager()Landroid/content/pm/IPackageManager;

    move-result-object v2

    invoke-virtual/range {p0 .. p0}, Lcom/android/internal/app/ResolverActivityZTE;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    move-object/from16 v0, p2

    invoke-virtual {v0, v3}, Landroid/content/Intent;->resolveTypeIfNeeded(Landroid/content/ContentResolver;)Ljava/lang/String;

    move-result-object v4

    const/high16 v5, 0x10000

    invoke-virtual/range {p2 .. p2}, Landroid/content/Intent;->getComponent()Landroid/content/ComponentName;

    move-result-object v8

    move-object/from16 v3, p2

    invoke-interface/range {v2 .. v8}, Landroid/content/pm/IPackageManager;->setLastChosenActivity(Landroid/content/Intent;Ljava/lang/String;ILandroid/content/IntentFilter;ILandroid/content/ComponentName;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_4

    .line 428
    :catch_1
    move-exception v24

    .line 429
    .local v24, "re":Landroid/os/RemoteException;
    const-string v2, "ResolverActivity"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Error calling setLastChosenActivity\n"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, v24

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_4
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 5
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v3, 0x0

    .line 297
    iget-object v4, p0, Lcom/android/internal/app/ResolverActivityZTE;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v4}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v1

    .line 298
    .local v1, "checkedPos":I
    const/4 v4, -0x1

    if-eq v1, v4, :cond_2

    const/4 v2, 0x1

    .line 299
    .local v2, "hasValidSelection":Z
    :goto_0
    iget-boolean v4, p0, Lcom/android/internal/app/ResolverActivityZTE;->mAlwaysUseOption:Z

    if-eqz v4, :cond_3

    if-eqz v2, :cond_0

    iget v4, p0, Lcom/android/internal/app/ResolverActivityZTE;->mLastSelected:I

    if-eq v4, v1, :cond_3

    .line 300
    :cond_0
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityZTE;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 301
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityZTE;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v3, v2}, Landroid/widget/Button;->setEnabled(Z)V

    .line 302
    if-eqz v2, :cond_1

    .line 303
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityZTE;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v3, v1}, Landroid/widget/GridView;->smoothScrollToPosition(I)V

    .line 306
    :cond_1
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityZTE;->mAwaysCheckBox:Landroid/widget/CheckBox;

    invoke-virtual {v3}, Landroid/widget/CheckBox;->isChecked()Z

    move-result v0

    .line 307
    .local v0, "alwaysChecked":Z
    iget-object v3, p0, Lcom/android/internal/app/ResolverActivityZTE;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v3}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v3

    invoke-virtual {p0, v3, v0}, Lcom/android/internal/app/ResolverActivityZTE;->startSelected(IZ)V

    .line 308
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityZTE;->dismiss()V

    .line 310
    iput v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mLastSelected:I

    .line 314
    .end local v0    # "alwaysChecked":Z
    :goto_1
    return-void

    .end local v2    # "hasValidSelection":Z
    :cond_2
    move v2, v3

    .line 298
    goto :goto_0

    .line 312
    .restart local v2    # "hasValidSelection":Z
    :cond_3
    invoke-virtual {p0, p3, v3}, Lcom/android/internal/app/ResolverActivityZTE;->startSelected(IZ)V

    goto :goto_1
.end method

.method protected onRestart()V
    .locals 3

    .prologue
    .line 251
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onRestart()V

    .line 252
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityZTE;->mRegistered:Z

    if-nez v0, :cond_0

    .line 253
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityZTE;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityZTE;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v0, p0, v1, v2}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Z)V

    .line 254
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityZTE;->mRegistered:Z

    .line 256
    :cond_0
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityZTE;->mAdapter:Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;

    invoke-virtual {v0}, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->handlePackagesChanged()V

    .line 257
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 282
    invoke-super {p0, p1}, Lcom/android/internal/app/AlertActivity;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 283
    iget-boolean v2, p0, Lcom/android/internal/app/ResolverActivityZTE;->mAlwaysUseOption:Z

    if-eqz v2, :cond_0

    .line 284
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityZTE;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v2}, Landroid/widget/GridView;->getCheckedItemPosition()I

    move-result v0

    .line 285
    .local v0, "checkedPos":I
    const/4 v2, -0x1

    if-eq v0, v2, :cond_1

    const/4 v1, 0x1

    .line 286
    .local v1, "enabled":Z
    :goto_0
    iput v0, p0, Lcom/android/internal/app/ResolverActivityZTE;->mLastSelected:I

    .line 287
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityZTE;->mAlwaysButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 288
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityZTE;->mOnceButton:Landroid/widget/Button;

    invoke-virtual {v2, v1}, Landroid/widget/Button;->setEnabled(Z)V

    .line 289
    if-eqz v1, :cond_0

    .line 290
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityZTE;->mGrid:Landroid/widget/GridView;

    invoke-virtual {v2, v0}, Landroid/widget/GridView;->setSelection(I)V

    .line 293
    .end local v0    # "checkedPos":I
    .end local v1    # "enabled":Z
    :cond_0
    return-void

    .line 285
    .restart local v0    # "checkedPos":I
    :cond_1
    const/4 v1, 0x0

    goto :goto_0
.end method

.method protected onStop()V
    .locals 2

    .prologue
    .line 261
    invoke-super {p0}, Lcom/android/internal/app/AlertActivity;->onStop()V

    .line 262
    iget-boolean v0, p0, Lcom/android/internal/app/ResolverActivityZTE;->mRegistered:Z

    if-eqz v0, :cond_0

    .line 263
    iget-object v0, p0, Lcom/android/internal/app/ResolverActivityZTE;->mPackageMonitor:Lcom/android/internal/content/PackageMonitor;

    invoke-virtual {v0}, Lcom/android/internal/content/PackageMonitor;->unregister()V

    .line 264
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/internal/app/ResolverActivityZTE;->mRegistered:Z

    .line 266
    :cond_0
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityZTE;->getIntent()Landroid/content/Intent;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Intent;->getFlags()I

    move-result v0

    const/high16 v1, 0x10000000

    and-int/2addr v0, v1

    if-eqz v0, :cond_1

    .line 274
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityZTE;->isChangingConfigurations()Z

    move-result v0

    if-nez v0, :cond_1

    .line 275
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityZTE;->finish()V

    .line 278
    :cond_1
    return-void
.end method

.method resizeGrid()V
    .locals 3

    .prologue
    .line 212
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mAdapter:Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;

    invoke-virtual {v1}, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->getCount()I

    move-result v0

    .line 213
    .local v0, "itemCount":I
    iget-object v1, p0, Lcom/android/internal/app/ResolverActivityZTE;->mGrid:Landroid/widget/GridView;

    iget v2, p0, Lcom/android/internal/app/ResolverActivityZTE;->mMaxColumns:I

    invoke-static {v0, v2}, Ljava/lang/Math;->min(II)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/widget/GridView;->setNumColumns(I)V

    .line 214
    return-void
.end method

.method showAppDetails(Landroid/content/pm/ResolveInfo;)V
    .locals 5
    .param p1, "ri"    # Landroid/content/pm/ResolveInfo;

    .prologue
    .line 441
    new-instance v1, Landroid/content/Intent;

    invoke-direct {v1}, Landroid/content/Intent;-><init>()V

    const-string v2, "android.settings.APPLICATION_DETAILS_SETTINGS"

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    const-string v2, "package"

    iget-object v3, p1, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v3, Landroid/content/pm/ActivityInfo;->packageName:Ljava/lang/String;

    const/4 v4, 0x0

    invoke-static {v2, v3, v4}, Landroid/net/Uri;->fromParts(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    move-result-object v1

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v0

    .line 444
    .local v0, "in":Landroid/content/Intent;
    invoke-virtual {p0, v0}, Lcom/android/internal/app/ResolverActivityZTE;->startActivity(Landroid/content/Intent;)V

    .line 445
    return-void
.end method

.method startSelected(IZ)V
    .locals 3
    .param p1, "which"    # I
    .param p2, "always"    # Z

    .prologue
    .line 323
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityZTE;->isFinishing()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 330
    :goto_0
    return-void

    .line 326
    :cond_0
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityZTE;->mAdapter:Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->resolveInfoForPosition(I)Landroid/content/pm/ResolveInfo;

    move-result-object v1

    .line 327
    .local v1, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v2, p0, Lcom/android/internal/app/ResolverActivityZTE;->mAdapter:Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;

    invoke-virtual {v2, p1}, Lcom/android/internal/app/ResolverActivityZTE$ResolveListAdapter;->intentForPosition(I)Landroid/content/Intent;

    move-result-object v0

    .line 328
    .local v0, "intent":Landroid/content/Intent;
    invoke-virtual {p0, v1, v0, p2}, Lcom/android/internal/app/ResolverActivityZTE;->onIntentSelected(Landroid/content/pm/ResolveInfo;Landroid/content/Intent;Z)V

    .line 329
    invoke-virtual {p0}, Lcom/android/internal/app/ResolverActivityZTE;->finish()V

    goto :goto_0
.end method
