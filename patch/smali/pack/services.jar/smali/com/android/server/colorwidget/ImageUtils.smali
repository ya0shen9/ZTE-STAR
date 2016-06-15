.class public Lcom/android/server/colorwidget/ImageUtils;
.super Ljava/lang/Object;
.source "ImageUtils.java"


# annotations
.annotation build Landroid/annotation/SuppressLint;
    value = {
        "DefaultLocale"
    }
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/colorwidget/ImageUtils$PngFileFilter;
    }
.end annotation


# static fields
.field public static final TAG:Ljava/lang/String; = "ImageUtils"

.field public static final USING_NATIVE:Z


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 191
    return-void
.end method

.method public static changeImageColor(Landroid/graphics/Bitmap;Ljava/io/File;I)Z
    .locals 1
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "target"    # Ljava/io/File;
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 119
    invoke-static {p0, p1, p2}, Lcom/android/server/colorwidget/ImageUtils;->processColorChange(Landroid/graphics/Bitmap;Ljava/io/File;I)Z

    move-result v0

    return v0
.end method

.method public static changeImageColor(Landroid/graphics/Bitmap;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "target"    # Ljava/lang/String;
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 101
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {p0, v0, p2}, Lcom/android/server/colorwidget/ImageUtils;->changeImageColor(Landroid/graphics/Bitmap;Ljava/io/File;I)Z

    move-result v0

    return v0
.end method

.method public static changeImageColor(Ljava/io/File;Ljava/io/File;I)Z
    .locals 3
    .param p0, "source"    # Ljava/io/File;
    .param p1, "target"    # Ljava/io/File;
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-virtual {p0}, Ljava/io/File;->exists()Z

    move-result v0

    if-nez v0, :cond_0

    .line 69
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source file do not exit!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 72
    :cond_0
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_1

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v0

    const-string v1, ".png"

    invoke-virtual {v0, v1}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_1

    .line 73
    new-instance v0, Ljava/io/IOException;

    const-string v1, "source file do not png image or folder!"

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 76
    :cond_1
    invoke-virtual {p1}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_2

    invoke-virtual {p1}, Ljava/io/File;->isFile()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 77
    :cond_2
    invoke-virtual {p1}, Ljava/io/File;->mkdirs()Z

    move-result v0

    if-nez v0, :cond_3

    .line 78
    new-instance v0, Ljava/io/IOException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Craete "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string v2, " fail!"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 82
    :cond_3
    invoke-static {p0, p1, p2}, Lcom/android/server/colorwidget/ImageUtils;->processFile(Ljava/io/File;Ljava/io/File;I)Z

    move-result v0

    return v0
.end method

.method public static changeImageColor(Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 2
    .param p0, "sourcePath"    # Ljava/lang/String;
    .param p1, "targetPath"    # Ljava/lang/String;
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 48
    new-instance v0, Ljava/io/File;

    invoke-direct {v0, p0}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    new-instance v1, Ljava/io/File;

    invoke-direct {v1, p1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-static {v0, v1, p2}, Lcom/android/server/colorwidget/ImageUtils;->changeImageColor(Ljava/io/File;Ljava/io/File;I)Z

    move-result v0

    return v0
.end method

.method public static processColorChange(Landroid/graphics/Bitmap;Ljava/io/File;I)Z
    .locals 6
    .param p0, "image"    # Landroid/graphics/Bitmap;
    .param p1, "target"    # Ljava/io/File;
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 131
    shr-int/lit8 v5, p2, 0x10

    and-int/lit16 v3, v5, 0xff

    .line 132
    .local v3, "r":I
    shr-int/lit8 v5, p2, 0x8

    and-int/lit16 v2, v5, 0xff

    .line 133
    .local v2, "g":I
    and-int/lit16 v0, p2, 0xff

    .line 135
    .local v0, "b":I
    invoke-static {p0, v3, v2, v0}, Lcom/android/server/colorwidget/JavaChanger;->setColor_neo(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;

    move-result-object v4

    .line 137
    .local v4, "targetImage":Landroid/graphics/Bitmap;
    :try_start_0
    invoke-static {v4, p1}, Lcom/android/server/colorwidget/ImageUtils;->saveDataToFile(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v5

    .line 141
    if-eqz v4, :cond_0

    .line 142
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_0
    return v5

    .line 138
    :catch_0
    move-exception v1

    .line 139
    .local v1, "e":Ljava/io/IOException;
    :try_start_1
    throw v1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 141
    .end local v1    # "e":Ljava/io/IOException;
    :catchall_0
    move-exception v5

    if-eqz v4, :cond_1

    .line 142
    invoke-virtual {v4}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    throw v5
.end method

.method private static processFile(Ljava/io/File;Ljava/io/File;I)Z
    .locals 13
    .param p0, "source"    # Ljava/io/File;
    .param p1, "target"    # Ljava/io/File;
    .param p2, "color"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    .line 151
    invoke-virtual {p0}, Ljava/io/File;->isFile()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 152
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toLowerCase()Ljava/lang/String;

    move-result-object v10

    const-string v11, ".png"

    invoke-virtual {v10, v11}, Ljava/lang/String;->endsWith(Ljava/lang/String;)Z

    move-result v10

    if-eqz v10, :cond_2

    .line 153
    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v9

    invoke-static {v9}, Landroid/graphics/BitmapFactory;->decodeFile(Ljava/lang/String;)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 154
    .local v6, "image":Landroid/graphics/Bitmap;
    new-instance v8, Ljava/io/File;

    invoke-virtual {p0}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v8, p1, v9}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 156
    .local v8, "t":Ljava/io/File;
    :try_start_0
    invoke-static {v6, v8, p2}, Lcom/android/server/colorwidget/ImageUtils;->processColorChange(Landroid/graphics/Bitmap;Ljava/io/File;I)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v9

    .line 160
    if-eqz v6, :cond_0

    .line 161
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 177
    .end local v6    # "image":Landroid/graphics/Bitmap;
    .end local v8    # "t":Ljava/io/File;
    :cond_0
    :goto_0
    return v9

    .line 157
    .restart local v6    # "image":Landroid/graphics/Bitmap;
    .restart local v8    # "t":Ljava/io/File;
    :catch_0
    move-exception v1

    .line 158
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    new-instance v9, Ljava/io/IOException;

    invoke-virtual {v1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v9, v10}, Ljava/io/IOException;-><init>(Ljava/lang/String;)V

    throw v9
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 160
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v9

    if-eqz v6, :cond_1

    .line 161
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    :cond_1
    throw v9

    .line 165
    .end local v6    # "image":Landroid/graphics/Bitmap;
    .end local v8    # "t":Ljava/io/File;
    :cond_2
    const-string v10, "ImageUtils"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string v12, "file "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {p0}, Ljava/io/File;->getPath()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string v12, " is not a png image, skip it!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 170
    :cond_3
    invoke-virtual {p0}, Ljava/io/File;->listFiles()[Ljava/io/File;

    move-result-object v4

    .line 171
    .local v4, "files2":[Ljava/io/File;
    new-instance v10, Lcom/android/server/colorwidget/ImageUtils$PngFileFilter;

    invoke-direct {v10}, Lcom/android/server/colorwidget/ImageUtils$PngFileFilter;-><init>()V

    invoke-virtual {p0, v10}, Ljava/io/File;->listFiles(Ljava/io/FileFilter;)[Ljava/io/File;

    move-result-object v3

    .line 172
    .local v3, "files":[Ljava/io/File;
    move-object v0, v3

    .local v0, "arr$":[Ljava/io/File;
    array-length v7, v0

    .local v7, "len$":I
    const/4 v5, 0x0

    .local v5, "i$":I
    :goto_1
    if-ge v5, v7, :cond_0

    aget-object v2, v0, v5

    .line 173
    .local v2, "f":Ljava/io/File;
    invoke-static {v2, p1, p2}, Lcom/android/server/colorwidget/ImageUtils;->processFile(Ljava/io/File;Ljava/io/File;I)Z

    .line 172
    add-int/lit8 v5, v5, 0x1

    goto :goto_1
.end method

.method private static saveDataToFile(Landroid/graphics/Bitmap;Ljava/io/File;)Z
    .locals 5
    .param p0, "map"    # Landroid/graphics/Bitmap;
    .param p1, "target"    # Ljava/io/File;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/io/IOException;
        }
    .end annotation

    .prologue
    .line 182
    new-instance v0, Ljava/io/FileOutputStream;

    invoke-direct {v0, p1}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    .line 183
    .local v0, "out":Ljava/io/FileOutputStream;
    sget-object v2, Landroid/graphics/Bitmap$CompressFormat;->PNG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v3, 0x64

    invoke-virtual {p0, v2, v3, v0}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    .line 184
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->flush()V

    .line 185
    invoke-virtual {v0}, Ljava/io/FileOutputStream;->close()V

    .line 186
    const-string v2, "guojingdong"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 775 data/color/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 187
    invoke-static {}, Ljava/lang/Runtime;->getRuntime()Ljava/lang/Runtime;

    move-result-object v2

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "chmod 775 data/color/"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p1}, Ljava/io/File;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/Runtime;->exec(Ljava/lang/String;)Ljava/lang/Process;

    move-result-object v1

    .line 188
    .local v1, "p":Ljava/lang/Process;
    const/4 v2, 0x1

    return v2
.end method
