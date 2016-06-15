.class public Landroid/app/ActivityZTE;
.super Landroid/app/Activity;
.source "ActivityZTE.java"


# instance fields
.field private indicatorFlag:I

.field private mBackground:Landroid/widget/TextView;

.field private mFullScreenSet:I

.field tempSize:F


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 21
    invoke-direct {p0}, Landroid/app/Activity;-><init>()V

    .line 25
    iput v0, p0, Landroid/app/ActivityZTE;->mFullScreenSet:I

    .line 26
    iput v0, p0, Landroid/app/ActivityZTE;->indicatorFlag:I

    return-void
.end method


# virtual methods
.method public addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    .line 159
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->addContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 161
    return-void
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/app/Activity;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 30
    .local v0, "temp":Landroid/widget/EditText;
    const/high16 v1, 0x429a0000    # 77.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 31
    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    iput v1, p0, Landroid/app/ActivityZTE;->tempSize:F

    .line 32
    new-instance v1, Landroid/widget/TextView;

    invoke-direct {v1, p0}, Landroid/widget/TextView;-><init>(Landroid/content/Context;)V

    iput-object v1, p0, Landroid/app/ActivityZTE;->mBackground:Landroid/widget/TextView;

    .line 34
    invoke-virtual {p0}, Landroid/app/ActivityZTE;->getWindow()Landroid/view/Window;

    move-result-object v1

    const/high16 v2, 0x4000000

    invoke-virtual {v1, v2}, Landroid/view/Window;->addFlags(I)V

    .line 35
    return-void
.end method

.method public setContentView(I)V
    .locals 3
    .param p1, "layoutResID"    # I

    .prologue
    .line 38
    const-string v2, "layout_inflater"

    invoke-virtual {p0, v2}, Landroid/app/ActivityZTE;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 39
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const/4 v2, 0x0

    invoke-virtual {v0, p1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .line 40
    .local v1, "view":Landroid/view/View;
    invoke-virtual {p0, v1}, Landroid/app/ActivityZTE;->setContentView(Landroid/view/View;)V

    .line 44
    return-void
.end method

.method public setContentView(Landroid/view/View;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 47
    iget v3, p0, Landroid/app/ActivityZTE;->indicatorFlag:I

    if-nez v3, :cond_3

    .line 49
    iget v3, p0, Landroid/app/ActivityZTE;->mFullScreenSet:I

    if-nez v3, :cond_2

    .line 51
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 52
    .local v1, "mainLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 53
    iget-object v3, p0, Landroid/app/ActivityZTE;->mBackground:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 55
    iget-object v3, p0, Landroid/app/ActivityZTE;->mBackground:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 56
    .local v2, "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Landroid/app/ActivityZTE;->mBackground:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 58
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_0
    iget-object v3, p0, Landroid/app/ActivityZTE;->mBackground:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 61
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 63
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 64
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 66
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 69
    invoke-super {p0, v1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    .line 85
    .end local v1    # "mainLayout":Landroid/widget/LinearLayout;
    :goto_0
    return-void

    .line 71
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 72
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 75
    iget-object v3, p0, Landroid/app/ActivityZTE;->mBackground:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    invoke-super {p0, v0}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_0

    .line 82
    .end local v0    # "layout":Landroid/widget/FrameLayout;
    :cond_3
    invoke-super {p0, p1}, Landroid/app/Activity;->setContentView(Landroid/view/View;)V

    goto :goto_0
.end method

.method public setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V
    .locals 7
    .param p1, "view"    # Landroid/view/View;
    .param p2, "params"    # Landroid/view/ViewGroup$LayoutParams;

    .prologue
    const/4 v6, -0x1

    const/4 v5, -0x2

    .line 87
    iget v3, p0, Landroid/app/ActivityZTE;->indicatorFlag:I

    if-nez v3, :cond_3

    .line 89
    iget v3, p0, Landroid/app/ActivityZTE;->mFullScreenSet:I

    if-nez v3, :cond_2

    .line 91
    new-instance v1, Landroid/widget/LinearLayout;

    invoke-direct {v1, p0}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 92
    .local v1, "mainLayout":Landroid/widget/LinearLayout;
    const/4 v3, 0x1

    invoke-virtual {v1, v3}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 93
    iget-object v3, p0, Landroid/app/ActivityZTE;->mBackground:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 95
    iget-object v3, p0, Landroid/app/ActivityZTE;->mBackground:Landroid/widget/TextView;

    invoke-virtual {v3}, Landroid/widget/TextView;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 96
    .local v2, "vgroup":Landroid/view/ViewGroup;
    iget-object v3, p0, Landroid/app/ActivityZTE;->mBackground:Landroid/widget/TextView;

    invoke-virtual {v2, v3}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 98
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_0
    iget-object v3, p0, Landroid/app/ActivityZTE;->mBackground:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v4, v6, v5}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v1, v3, v4}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 101
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 103
    invoke-virtual {p1}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v2

    check-cast v2, Landroid/view/ViewGroup;

    .line 104
    .restart local v2    # "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v2, p1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 106
    .end local v2    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    new-instance v3, Landroid/widget/LinearLayout$LayoutParams;

    const/high16 v4, 0x3f800000    # 1.0f

    invoke-direct {v3, v6, v5, v4}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v1, p1, v3}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 109
    invoke-super {p0, v1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 125
    .end local v1    # "mainLayout":Landroid/widget/LinearLayout;
    :goto_0
    return-void

    .line 111
    :cond_2
    new-instance v0, Landroid/widget/FrameLayout;

    invoke-direct {v0, p0}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    .line 112
    .local v0, "layout":Landroid/widget/FrameLayout;
    new-instance v3, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v3, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, p1, v3}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 115
    iget-object v3, p0, Landroid/app/ActivityZTE;->mBackground:Landroid/widget/TextView;

    new-instance v4, Landroid/widget/FrameLayout$LayoutParams;

    invoke-direct {v4, v6, v5}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v0, v3, v4}, Landroid/widget/FrameLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 118
    invoke-super {p0, v0, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0

    .line 122
    .end local v0    # "layout":Landroid/widget/FrameLayout;
    :cond_3
    invoke-super {p0, p1, p2}, Landroid/app/Activity;->setContentView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    goto :goto_0
.end method

.method public setFullScreenDisplay()V
    .locals 1

    .prologue
    .line 184
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/ActivityZTE;->mFullScreenSet:I

    .line 185
    return-void
.end method

.method public setIndicatorColor(I)V
    .locals 4
    .param p1, "color"    # I

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/app/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    if-nez v1, :cond_0

    .line 165
    const-string v1, "guojingdong1"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "guojingdong1 getactionbar="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 167
    .local v0, "temp":Landroid/widget/EditText;
    const/high16 v1, 0x41c80000    # 25.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 168
    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    iput v1, p0, Landroid/app/ActivityZTE;->tempSize:F

    .line 169
    iget-object v1, p0, Landroid/app/ActivityZTE;->mBackground:Landroid/widget/TextView;

    iget v2, p0, Landroid/app/ActivityZTE;->tempSize:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 170
    iget-object v1, p0, Landroid/app/ActivityZTE;->mBackground:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 182
    :goto_0
    return-void

    .line 172
    .end local v0    # "temp":Landroid/widget/EditText;
    :cond_0
    const-string v1, "guojingdong2"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "guojingdong2 getactionbar="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Landroid/app/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 173
    new-instance v0, Landroid/widget/EditText;

    invoke-direct {v0, p0}, Landroid/widget/EditText;-><init>(Landroid/content/Context;)V

    .line 174
    .restart local v0    # "temp":Landroid/widget/EditText;
    const/high16 v1, 0x429a0000    # 77.0f

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextSize(F)V

    .line 175
    invoke-virtual {v0}, Landroid/widget/EditText;->getTextSize()F

    move-result v1

    iput v1, p0, Landroid/app/ActivityZTE;->tempSize:F

    .line 176
    iget-object v1, p0, Landroid/app/ActivityZTE;->mBackground:Landroid/widget/TextView;

    iget v2, p0, Landroid/app/ActivityZTE;->tempSize:F

    float-to-int v2, v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setHeight(I)V

    .line 177
    invoke-virtual {p0}, Landroid/app/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    new-instance v2, Landroid/graphics/drawable/ColorDrawable;

    invoke-direct {v2, p1}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 178
    iget-object v1, p0, Landroid/app/ActivityZTE;->mBackground:Landroid/widget/TextView;

    invoke-virtual {v1, p1}, Landroid/widget/TextView;->setBackgroundColor(I)V

    .line 179
    invoke-virtual {p0}, Landroid/app/ActivityZTE;->getActionBar()Landroid/app/ActionBar;

    move-result-object v1

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    goto :goto_0
.end method

.method public setIndicatorFlag(Z)V
    .locals 1
    .param p1, "isShow"    # Z

    .prologue
    .line 197
    if-eqz p1, :cond_0

    .line 199
    const/4 v0, 0x1

    iput v0, p0, Landroid/app/ActivityZTE;->indicatorFlag:I

    .line 201
    :cond_0
    return-void
.end method

.method public setIndicatorViewGone(Z)V
    .locals 2
    .param p1, "isShow"    # Z

    .prologue
    .line 188
    if-eqz p1, :cond_0

    .line 190
    iget-object v0, p0, Landroid/app/ActivityZTE;->mBackground:Landroid/widget/TextView;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 194
    :goto_0
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Landroid/app/ActivityZTE;->mBackground:Landroid/widget/TextView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/TextView;->setVisibility(I)V

    goto :goto_0
.end method
