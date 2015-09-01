.class Lcom/android/internal/policy/impl/GlobalActions$12;
.super Ljava/lang/Object;
.source "GlobalActions.java"

# interfaces
.implements Lcom/android/internal/policy/impl/GlobalActions$Action;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/policy/impl/GlobalActions;->addLongPress10sOffTipsItme()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/policy/impl/GlobalActions;


# direct methods
.method constructor <init>(Lcom/android/internal/policy/impl/GlobalActions;)V
    .locals 0
    .parameter

    .prologue
    .line 1143
    iput-object p1, p0, Lcom/android/internal/policy/impl/GlobalActions$12;->this$0:Lcom/android/internal/policy/impl/GlobalActions;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public create(Landroid/content/Context;Landroid/view/View;Landroid/view/ViewGroup;Landroid/view/LayoutInflater;)Landroid/view/View;
    .locals 5
    .parameter "context"
    .parameter "convertView"
    .parameter "parent"
    .parameter "inflater"

    .prologue
    const/16 v4, 0x8

    .line 1148
    const v2, 0x1090045

    const/4 v3, 0x0

    invoke-virtual {p4, v2, p3, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v1

    .line 1149
    .local v1, v:Landroid/view/View;
    const v2, 0x102029d

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 1150
    .local v0, messageView:Landroid/widget/TextView;
    const v2, 0x102000b

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1151
    const v2, 0x1020006

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v4}, Landroid/view/View;->setVisibility(I)V

    .line 1152
    const v2, 0x2040011

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(I)V

    .line 1153
    return-object v1
.end method

.method public isEnabled()Z
    .locals 1

    .prologue
    .line 1177
    const/4 v0, 0x1

    return v0
.end method

.method public onLongPress()Z
    .locals 1

    .prologue
    .line 1162
    const/4 v0, 0x0

    return v0
.end method

.method public onPress()V
    .locals 0

    .prologue
    .line 1158
    return-void
.end method

.method public showBeforeProvisioning()Z
    .locals 1

    .prologue
    .line 1172
    const/4 v0, 0x1

    return v0
.end method

.method public showDuringKeyguard()Z
    .locals 1

    .prologue
    .line 1167
    const/4 v0, 0x1

    return v0
.end method
