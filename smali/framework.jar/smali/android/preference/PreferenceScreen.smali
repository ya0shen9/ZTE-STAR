.class public final Landroid/preference/PreferenceScreen;
.super Landroid/preference/PreferenceGroup;
.source "PreferenceScreen.java"

# interfaces
.implements Landroid/content/DialogInterface$OnDismissListener;
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/preference/PreferenceScreen$SavedState;
    }
.end annotation


# instance fields
.field flag:I

.field mBackground:Landroid/widget/LinearLayout;

.field mColor:I

.field private mDialog:Landroid/app/Dialog;

.field private mListView:Landroid/widget/ListView;

.field private mRootAdapter:Landroid/widget/ListAdapter;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 111
    const v0, 0x101008b

    invoke-direct {p0, p1, p2, v0}, Landroid/preference/PreferenceGroup;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Landroid/preference/PreferenceScreen;->flag:I

    .line 112
    new-instance v0, Landroid/widget/LinearLayout;

    invoke-direct {v0, p1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mBackground:Landroid/widget/LinearLayout;

    .line 113
    return-void
.end method

.method private showDialog(Landroid/os/Bundle;)V
    .locals 13
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    const/4 v12, 0x0

    const/4 v11, -0x1

    const/4 v10, 0x1

    .line 171
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getContext()Landroid/content/Context;

    move-result-object v1

    .line 172
    .local v1, "context":Landroid/content/Context;
    iget-object v7, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    if-eqz v7, :cond_0

    .line 173
    iget-object v7, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {v7, v8}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 176
    :cond_0
    const-string v7, "layout_inflater"

    invoke-virtual {v1, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/LayoutInflater;

    .line 178
    .local v3, "inflater":Landroid/view/LayoutInflater;
    const v7, 0x109007d

    invoke-virtual {v3, v7, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v0

    .line 180
    .local v0, "childPrefScreen":Landroid/view/View;
    const v7, 0x102000a

    invoke-virtual {v0, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/widget/ListView;

    iput-object v7, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    .line 181
    iget-object v7, p0, Landroid/preference/PreferenceScreen;->mListView:Landroid/widget/ListView;

    invoke-virtual {p0, v7}, Landroid/preference/PreferenceScreen;->bind(Landroid/widget/ListView;)V

    .line 184
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getTitle()Ljava/lang/CharSequence;

    move-result-object v5

    .line 185
    .local v5, "title":Ljava/lang/CharSequence;
    new-instance v2, Landroid/app/Dialog;

    invoke-virtual {v1}, Landroid/content/Context;->getThemeResId()I

    move-result v7

    invoke-direct {v2, v1, v7}, Landroid/app/Dialog;-><init>(Landroid/content/Context;I)V

    iput-object v2, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 187
    .local v2, "dialog":Landroid/app/Dialog;
    invoke-static {v5}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_5

    .line 188
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    invoke-virtual {v7, v10}, Landroid/view/Window;->requestFeature(I)Z

    .line 193
    :goto_0
    iget v7, p0, Landroid/preference/PreferenceScreen;->flag:I

    if-ne v7, v10, :cond_6

    .line 196
    invoke-virtual {v2}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v7

    const/high16 v8, 0x4000000

    invoke-virtual {v7, v8}, Landroid/view/Window;->addFlags(I)V

    .line 198
    new-instance v4, Landroid/widget/LinearLayout;

    invoke-direct {v4, v1}, Landroid/widget/LinearLayout;-><init>(Landroid/content/Context;)V

    .line 199
    .local v4, "mainLayout":Landroid/widget/LinearLayout;
    invoke-virtual {v4, v10}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 200
    iget-object v7, p0, Landroid/preference/PreferenceScreen;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_1

    .line 201
    iget-object v7, p0, Landroid/preference/PreferenceScreen;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v7}, Landroid/widget/LinearLayout;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 202
    .local v6, "vgroup":Landroid/view/ViewGroup;
    iget-object v7, p0, Landroid/preference/PreferenceScreen;->mBackground:Landroid/widget/LinearLayout;

    invoke-virtual {v6, v7}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 204
    .end local v6    # "vgroup":Landroid/view/ViewGroup;
    :cond_1
    iget-object v7, p0, Landroid/preference/PreferenceScreen;->mBackground:Landroid/widget/LinearLayout;

    new-instance v8, Landroid/widget/LinearLayout$LayoutParams;

    const/16 v9, 0x4d

    invoke-virtual {p0, v1, v9}, Landroid/preference/PreferenceScreen;->dpToPx(Landroid/content/Context;I)I

    move-result v9

    invoke-direct {v8, v11, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    invoke-virtual {v4, v7, v8}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 210
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v7

    if-eqz v7, :cond_2

    .line 211
    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v6

    check-cast v6, Landroid/view/ViewGroup;

    .line 212
    .restart local v6    # "vgroup":Landroid/view/ViewGroup;
    invoke-virtual {v6, v0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 214
    .end local v6    # "vgroup":Landroid/view/ViewGroup;
    :cond_2
    new-instance v7, Landroid/widget/LinearLayout$LayoutParams;

    const/4 v8, -0x2

    const/high16 v9, 0x3f800000    # 1.0f

    invoke-direct {v7, v11, v8, v9}, Landroid/widget/LinearLayout$LayoutParams;-><init>(IIF)V

    invoke-virtual {v4, v0, v7}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 217
    iget-object v7, p0, Landroid/preference/PreferenceScreen;->mBackground:Landroid/widget/LinearLayout;

    iget v8, p0, Landroid/preference/PreferenceScreen;->mColor:I

    invoke-virtual {v7, v8}, Landroid/widget/LinearLayout;->setBackgroundColor(I)V

    .line 221
    invoke-virtual {v2, v4}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    .line 226
    .end local v4    # "mainLayout":Landroid/widget/LinearLayout;
    :goto_1
    invoke-virtual {v2, p0}, Landroid/app/Dialog;->setOnDismissListener(Landroid/content/DialogInterface$OnDismissListener;)V

    .line 228
    if-eqz p1, :cond_3

    .line 229
    invoke-virtual {v2, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 233
    :cond_3
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v7

    invoke-virtual {v7, v2}, Landroid/preference/PreferenceManager;->addPreferencesScreen(Landroid/content/DialogInterface;)V

    .line 235
    invoke-virtual {v2}, Landroid/app/Dialog;->show()V

    .line 236
    invoke-virtual {v2}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    if-eqz v7, :cond_4

    iget v7, p0, Landroid/preference/PreferenceScreen;->flag:I

    if-ne v7, v10, :cond_4

    .line 238
    invoke-virtual {v2}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    new-instance v8, Landroid/graphics/drawable/ColorDrawable;

    iget v9, p0, Landroid/preference/PreferenceScreen;->mColor:I

    invoke-direct {v8, v9}, Landroid/graphics/drawable/ColorDrawable;-><init>(I)V

    invoke-virtual {v7, v8}, Landroid/app/ActionBar;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 240
    invoke-virtual {v2}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/app/ActionBar;->setDisplayHomeAsUpEnabled(Z)V

    .line 241
    invoke-virtual {v2}, Landroid/app/Dialog;->getActionBar()Landroid/app/ActionBar;

    move-result-object v7

    invoke-virtual {v7, v12}, Landroid/app/ActionBar;->setDisplayUseLogoEnabled(Z)V

    .line 243
    :cond_4
    return-void

    .line 190
    :cond_5
    invoke-virtual {v2, v5}, Landroid/app/Dialog;->setTitle(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .line 223
    :cond_6
    invoke-virtual {v2, v0}, Landroid/app/Dialog;->setContentView(Landroid/view/View;)V

    goto :goto_1
.end method


# virtual methods
.method public bind(Landroid/widget/ListView;)V
    .locals 1
    .param p1, "listView"    # Landroid/widget/ListView;

    .prologue
    .line 155
    invoke-virtual {p1, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 156
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 158
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->onAttachedToActivity()V

    .line 159
    return-void
.end method

.method public dpToPx(Landroid/content/Context;I)I
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "dp"    # I

    .prologue
    .line 245
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    int-to-float v1, p2

    mul-float/2addr v0, v1

    const/high16 v1, 0x3f000000    # 0.5f

    add-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method public getDialog()Landroid/app/Dialog;
    .locals 1

    .prologue
    .line 264
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    return-object v0
.end method

.method public getRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 130
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    if-nez v0, :cond_0

    .line 131
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->onCreateRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v0

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    .line 134
    :cond_0
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mRootAdapter:Landroid/widget/ListAdapter;

    return-object v0
.end method

.method protected isOnSameScreenAsChildren()Z
    .locals 1

    .prologue
    .line 281
    const/4 v0, 0x0

    return v0
.end method

.method protected onClick()V
    .locals 1

    .prologue
    .line 163
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getIntent()Landroid/content/Intent;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getFragment()Ljava/lang/String;

    move-result-object v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v0

    if-nez v0, :cond_1

    .line 168
    :cond_0
    :goto_0
    return-void

    .line 167
    :cond_1
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onCreateRootAdapter()Landroid/widget/ListAdapter;
    .locals 1

    .prologue
    .line 144
    new-instance v0, Landroid/preference/PreferenceGroupAdapter;

    invoke-direct {v0, p0}, Landroid/preference/PreferenceGroupAdapter;-><init>(Landroid/preference/PreferenceGroup;)V

    return-object v0
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 254
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 255
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/preference/PreferenceManager;->removePreferencesScreen(Landroid/content/DialogInterface;)V

    .line 256
    return-void
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 3
    .param p1, "parent"    # Landroid/widget/AdapterView;
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J

    .prologue
    .line 269
    instance-of v2, p1, Landroid/widget/ListView;

    if-eqz v2, :cond_0

    .line 270
    check-cast p1, Landroid/widget/ListView;

    .end local p1    # "parent":Landroid/widget/AdapterView;
    invoke-virtual {p1}, Landroid/widget/ListView;->getHeaderViewsCount()I

    move-result v2

    sub-int/2addr p3, v2

    .line 272
    :cond_0
    invoke-virtual {p0}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    invoke-interface {v2, p3}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v0

    .line 273
    .local v0, "item":Ljava/lang/Object;
    instance-of v2, v0, Landroid/preference/Preference;

    if-nez v2, :cond_1

    .line 277
    :goto_0
    return-void

    :cond_1
    move-object v1, v0

    .line 275
    check-cast v1, Landroid/preference/Preference;

    .line 276
    .local v1, "preference":Landroid/preference/Preference;
    invoke-virtual {v1, p0}, Landroid/preference/Preference;->performClick(Landroid/preference/PreferenceScreen;)V

    goto :goto_0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 300
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Landroid/preference/PreferenceScreen$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 302
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 311
    :cond_1
    :goto_0
    return-void

    :cond_2
    move-object v0, p1

    .line 306
    check-cast v0, Landroid/preference/PreferenceScreen$SavedState;

    .line 307
    .local v0, "myState":Landroid/preference/PreferenceScreen$SavedState;
    invoke-virtual {v0}, Landroid/preference/PreferenceScreen$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/PreferenceGroup;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 308
    iget-boolean v1, v0, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    if-eqz v1, :cond_1

    .line 309
    iget-object v1, v0, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-direct {p0, v1}, Landroid/preference/PreferenceScreen;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 4

    .prologue
    .line 286
    invoke-super {p0}, Landroid/preference/PreferenceGroup;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v2

    .line 287
    .local v2, "superState":Landroid/os/Parcelable;
    iget-object v0, p0, Landroid/preference/PreferenceScreen;->mDialog:Landroid/app/Dialog;

    .line 288
    .local v0, "dialog":Landroid/app/Dialog;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/app/Dialog;->isShowing()Z

    move-result v3

    if-nez v3, :cond_1

    :cond_0
    move-object v1, v2

    .line 295
    :goto_0
    return-object v1

    .line 292
    :cond_1
    new-instance v1, Landroid/preference/PreferenceScreen$SavedState;

    invoke-direct {v1, v2}, Landroid/preference/PreferenceScreen$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 293
    .local v1, "myState":Landroid/preference/PreferenceScreen$SavedState;
    const/4 v3, 0x1

    iput-boolean v3, v1, Landroid/preference/PreferenceScreen$SavedState;->isDialogShowing:Z

    .line 294
    invoke-virtual {v0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v3

    iput-object v3, v1, Landroid/preference/PreferenceScreen$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method public setIndicatorColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 249
    iput p1, p0, Landroid/preference/PreferenceScreen;->mColor:I

    .line 250
    const/4 v0, 0x1

    iput v0, p0, Landroid/preference/PreferenceScreen;->flag:I

    .line 251
    return-void
.end method
