.class public Landroid/view/ContextThemeWrapper;
.super Landroid/content/ContextWrapper;
.source "ContextThemeWrapper.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "ContextThemeWrapper"


# instance fields
.field private mBase:Landroid/content/Context;

.field private mInflater:Landroid/view/LayoutInflater;

.field private mIsZteApp:Z

.field private mOverrideConfiguration:Landroid/content/res/Configuration;

.field private mResources:Landroid/content/res/Resources;

.field private mTheme:Landroid/content/res/Resources$Theme;

.field private mThemeResource:I


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 58
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ContextThemeWrapper;->mIsZteApp:Z

    .line 59
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .parameter "base"
    .parameter "themeres"

    .prologue
    .line 62
    invoke-direct {p0, p1}, Landroid/content/ContextWrapper;-><init>(Landroid/content/Context;)V

    .line 55
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/view/ContextThemeWrapper;->mIsZteApp:Z

    .line 63
    iput-object p1, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    .line 64
    iput p2, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    .line 66
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->isZteApp()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ContextThemeWrapper;->mIsZteApp:Z

    .line 68
    return-void
.end method

.method private initializeTheme()V
    .locals 4

    .prologue
    .line 182
    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-nez v2, :cond_1

    const/4 v0, 0x1

    .line 183
    .local v0, first:Z
    :goto_0
    if-eqz v0, :cond_0

    .line 184
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->newTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    iput-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 185
    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 186
    .local v1, theme:Landroid/content/res/Resources$Theme;
    if-eqz v1, :cond_0

    .line 187
    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    invoke-virtual {v2, v1}, Landroid/content/res/Resources$Theme;->setTo(Landroid/content/res/Resources$Theme;)V

    .line 190
    .end local v1           #theme:Landroid/content/res/Resources$Theme;
    :cond_0
    iget-object v2, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    iget v3, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    invoke-virtual {p0, v2, v3, v0}, Landroid/view/ContextThemeWrapper;->onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V

    .line 191
    return-void

    .line 182
    .end local v0           #first:Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public applyOverrideConfiguration(Landroid/content/res/Configuration;)V
    .locals 2
    .parameter "overrideConfiguration"

    .prologue
    .line 89
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    if-eqz v0, :cond_0

    .line 90
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "getResources() has already been called"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 92
    :cond_0
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    if-eqz v0, :cond_1

    .line 93
    new-instance v0, Ljava/lang/IllegalStateException;

    const-string v1, "Override configuration has already been set"

    invoke-direct {v0, v1}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 95
    :cond_1
    new-instance v0, Landroid/content/res/Configuration;

    invoke-direct {v0, p1}, Landroid/content/res/Configuration;-><init>(Landroid/content/res/Configuration;)V

    iput-object v0, p0, Landroid/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    .line 96
    return-void
.end method

.method protected attachBaseContext(Landroid/content/Context;)V
    .locals 1
    .parameter "newBase"

    .prologue
    .line 71
    invoke-super {p0, p1}, Landroid/content/ContextWrapper;->attachBaseContext(Landroid/content/Context;)V

    .line 72
    iput-object p1, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    .line 74
    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->isZteApp()Z

    move-result v0

    iput-boolean v0, p0, Landroid/view/ContextThemeWrapper;->mIsZteApp:Z

    .line 76
    return-void
.end method

.method public getResources()Landroid/content/res/Resources;
    .locals 2

    .prologue
    .line 100
    iget-object v1, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    if-eqz v1, :cond_0

    .line 101
    iget-object v1, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    .line 109
    :goto_0
    return-object v1

    .line 103
    :cond_0
    iget-object v1, p0, Landroid/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    if-nez v1, :cond_1

    .line 104
    invoke-super {p0}, Landroid/content/ContextWrapper;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    .line 105
    iget-object v1, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    goto :goto_0

    .line 107
    :cond_1
    iget-object v1, p0, Landroid/view/ContextThemeWrapper;->mOverrideConfiguration:Landroid/content/res/Configuration;

    invoke-virtual {p0, v1}, Landroid/view/ContextThemeWrapper;->createConfigurationContext(Landroid/content/res/Configuration;)Landroid/content/Context;

    move-result-object v0

    .line 108
    .local v0, resc:Landroid/content/Context;
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    iput-object v1, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    .line 109
    iget-object v1, p0, Landroid/view/ContextThemeWrapper;->mResources:Landroid/content/res/Resources;

    goto :goto_0
.end method

.method public getSystemService(Ljava/lang/String;)Ljava/lang/Object;
    .locals 1
    .parameter "name"

    .prologue
    .line 157
    const-string v0, "layout_inflater"

    invoke-virtual {v0, p1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 158
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    if-nez v0, :cond_0

    .line 159
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    invoke-static {v0}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    invoke-virtual {v0, p0}, Landroid/view/LayoutInflater;->cloneInContext(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v0

    iput-object v0, p0, Landroid/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 161
    :cond_0
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mInflater:Landroid/view/LayoutInflater;

    .line 163
    :goto_0
    return-object v0

    :cond_1
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mBase:Landroid/content/Context;

    invoke-virtual {v0, p1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    goto :goto_0
.end method

.method public getTheme()Landroid/content/res/Resources$Theme;
    .locals 2

    .prologue
    .line 128
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    if-eqz v0, :cond_0

    .line 129
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 147
    :goto_0
    return-object v0

    .line 133
    :cond_0
    iget-boolean v0, p0, Landroid/view/ContextThemeWrapper;->mIsZteApp:Z

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->supportThemeChange()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 135
    iget v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0, v1}, Landroid/content/res/Resources;->selectDefaultThemeZte(II)I

    move-result v0

    iput v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    .line 145
    :goto_1
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;->initializeTheme()V

    .line 147
    iget-object v0, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    goto :goto_0

    .line 140
    :cond_1
    iget v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    invoke-virtual {p0}, Landroid/view/ContextThemeWrapper;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->targetSdkVersion:I

    invoke-static {v0, v1}, Landroid/content/res/Resources;->selectDefaultTheme(II)I

    move-result v0

    iput v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    goto :goto_1
.end method

.method public getThemeResId()I
    .locals 1

    .prologue
    .line 123
    iget v0, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    return v0
.end method

.method protected onApplyThemeResource(Landroid/content/res/Resources$Theme;IZ)V
    .locals 1
    .parameter "theme"
    .parameter "resid"
    .parameter "first"

    .prologue
    .line 178
    const/4 v0, 0x1

    invoke-virtual {p1, p2, v0}, Landroid/content/res/Resources$Theme;->applyStyle(IZ)V

    .line 179
    return-void
.end method

.method public setTheme(I)V
    .locals 0
    .parameter "resid"

    .prologue
    .line 114
    iput p1, p0, Landroid/view/ContextThemeWrapper;->mThemeResource:I

    .line 115
    invoke-direct {p0}, Landroid/view/ContextThemeWrapper;->initializeTheme()V

    .line 116
    return-void
.end method

.method protected updateTheme()V
    .locals 1

    .prologue
    .line 152
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/view/ContextThemeWrapper;->mTheme:Landroid/content/res/Resources$Theme;

    .line 153
    return-void
.end method
