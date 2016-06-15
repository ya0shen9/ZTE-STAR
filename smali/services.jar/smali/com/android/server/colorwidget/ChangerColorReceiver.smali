.class public Lcom/android/server/colorwidget/ChangerColorReceiver;
.super Landroid/content/BroadcastReceiver;
.source "ChangerColorReceiver.java"


# instance fields
.field public final TAG_COLOR_CC:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 27
    const-string v0, "Color2"

    iput-object v0, p0, Lcom/android/server/colorwidget/ChangerColorReceiver;->TAG_COLOR_CC:Ljava/lang/String;

    .line 30
    return-void
.end method


# virtual methods
.method public SetNinePatch(Landroid/content/Context;ILjava/lang/String;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "id"    # I
    .param p3, "src"    # Ljava/lang/String;
    .param p4, "color"    # I

    .prologue
    .line 34
    :try_start_0
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    .line 40
    .local v2, "r":Landroid/content/res/Resources;
    invoke-static {v2, p2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 41
    .local v0, "bitmap":Landroid/graphics/Bitmap;
    new-instance v3, Ljava/io/File;

    invoke-direct {v3, p3}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v3, p4}, Lcom/android/server/colorwidget/ImageUtils;->processColorChange(Landroid/graphics/Bitmap;Ljava/io/File;I)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 48
    .end local v0    # "bitmap":Landroid/graphics/Bitmap;
    .end local v2    # "r":Landroid/content/res/Resources;
    :goto_0
    return-void

    .line 43
    :catch_0
    move-exception v1

    .line 45
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 7
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 51
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v4

    const-string v5, "com.zte.mifavorlauncher.support.COLOR_CHANGED"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 52
    const-string v4, "guojingdong"

    const-string v5, "com.zte.mifavorlauncher.support.COLOR_CHANGED dayin"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 53
    const-string v4, "action"

    invoke-virtual {p2, v4}, Landroid/content/Intent;->getStringExtra(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 54
    .local v0, "action":Ljava/lang/String;
    const-string v4, "COLOR_CHANGED"

    invoke-virtual {v0, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 58
    :try_start_0
    const-string v4, "guojingdong"

    const-string v5, "COLOR_CHANGED dayin"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 62
    const-string v4, "Color2"

    const/4 v5, 0x0

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v1

    .line 63
    .local v1, "color":I
    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    .line 64
    .local v3, "r":Landroid/content/res/Resources;
    const-string v4, "guojingdong"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string v6, "usb dayin color="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 65
    const-string v4, "system/colordrawable/"

    const-string v5, "data/color/"

    invoke-static {v4, v5, v1}, Lcom/android/server/colorwidget/ImageUtils;->changeImageColor(Ljava/lang/String;Ljava/lang/String;I)Z

    .line 74
    const v4, 0x202012d

    const-string v5, "data/color/scrubber_primary_holo.png"

    invoke-virtual {p0, p1, v4, v5, v1}, Lcom/android/server/colorwidget/ChangerColorReceiver;->SetNinePatch(Landroid/content/Context;ILjava/lang/String;I)V

    .line 75
    const v4, 0x20200e5

    const-string v5, "data/color/textfield_activated_zte_light.png"

    invoke-virtual {p0, p1, v4, v5, v1}, Lcom/android/server/colorwidget/ChangerColorReceiver;->SetNinePatch(Landroid/content/Context;ILjava/lang/String;I)V

    .line 76
    const v4, 0x20200ea

    const-string v5, "data/color/textfield_multiline_activated_zte_light.png"

    invoke-virtual {p0, p1, v4, v5, v1}, Lcom/android/server/colorwidget/ChangerColorReceiver;->SetNinePatch(Landroid/content/Context;ILjava/lang/String;I)V
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    .line 88
    .end local v0    # "action":Ljava/lang/String;
    .end local v1    # "color":I
    .end local v3    # "r":Landroid/content/res/Resources;
    :cond_0
    :goto_0
    return-void

    .line 82
    .restart local v0    # "action":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 84
    .local v2, "e":Ljava/io/IOException;
    invoke-virtual {v2}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method
