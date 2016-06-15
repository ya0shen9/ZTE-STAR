.class Lcom/android/server/colorwidget/JavaChanger;
.super Ljava/lang/Object;
.source "JavaChanger.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/colorwidget/JavaChanger$RGBDouble;,
        Lcom/android/server/colorwidget/JavaChanger$HSIDouble;
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 14
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 167
    return-void
.end method

.method public static HSI2RGB_neo(Lcom/android/server/colorwidget/JavaChanger$HSIDouble;)Lcom/android/server/colorwidget/JavaChanger$RGBDouble;
    .locals 33
    .param p0, "hsi"    # Lcom/android/server/colorwidget/JavaChanger$HSIDouble;

    .prologue
    .line 94
    new-instance v30, Lcom/android/server/colorwidget/JavaChanger$RGBDouble;

    invoke-direct/range {v30 .. v30}, Lcom/android/server/colorwidget/JavaChanger$RGBDouble;-><init>()V

    .line 96
    .local v30, "rgb":Lcom/android/server/colorwidget/JavaChanger$RGBDouble;
    move-object/from16 v0, p0

    iget-wide v8, v0, Lcom/android/server/colorwidget/JavaChanger$HSIDouble;->h:D

    .line 97
    .local v8, "h":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/colorwidget/JavaChanger$HSIDouble;->s:D

    move-wide/from16 v31, v0

    .line 98
    .local v31, "s":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/colorwidget/JavaChanger$HSIDouble;->i:D

    move-wide/from16 v26, v0

    .line 99
    .local v26, "i":D
    const-wide/16 v28, 0x0

    .line 100
    .local v28, "r":D
    const-wide/16 v24, 0x0

    .line 101
    .local v24, "g":D
    const-wide/16 v22, 0x0

    .line 103
    .local v22, "b":D
    const-wide/16 v12, 0x0

    cmpl-double v12, v31, v12

    if-nez v12, :cond_0

    .line 104
    move-wide/from16 v28, v26

    .line 105
    move-wide/from16 v24, v26

    .line 106
    move-wide/from16 v22, v26

    .line 123
    :goto_0
    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double v12, v12, v28

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    move-object/from16 v0, v30

    iput-wide v12, v0, Lcom/android/server/colorwidget/JavaChanger$RGBDouble;->r:D

    .line 124
    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double v12, v12, v24

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    move-object/from16 v0, v30

    iput-wide v12, v0, Lcom/android/server/colorwidget/JavaChanger$RGBDouble;->g:D

    .line 125
    const-wide v12, 0x406fe00000000000L    # 255.0

    mul-double v12, v12, v22

    invoke-static {v12, v13}, Ljava/lang/Math;->round(D)J

    move-result-wide v12

    long-to-double v12, v12

    move-object/from16 v0, v30

    iput-wide v12, v0, Lcom/android/server/colorwidget/JavaChanger$RGBDouble;->b:D

    .line 126
    return-object v30

    .line 109
    :cond_0
    const-wide/high16 v12, 0x3fe0000000000000L    # 0.5

    cmpg-double v12, v26, v12

    if-gez v12, :cond_1

    .line 110
    const-wide/high16 v12, 0x3ff0000000000000L    # 1.0

    add-double v12, v12, v31

    mul-double v4, v26, v12

    .line 114
    .local v4, "q":D
    :goto_1
    const-wide/high16 v12, 0x4000000000000000L    # 2.0

    mul-double v12, v12, v26

    sub-double v6, v12, v4

    .line 115
    .local v6, "p":D
    const-wide v12, 0x4076800000000000L    # 360.0

    div-double/2addr v8, v12

    .line 116
    const-wide v12, 0x3fd5555555555555L    # 0.3333333333333333

    add-double v2, v8, v12

    .line 117
    .local v2, "TR":D
    move-wide v10, v8

    .line 118
    .local v10, "TG":D
    const-wide v12, 0x3fd5555555555555L    # 0.3333333333333333

    sub-double v20, v8, v12

    .line 119
    .local v20, "TB":D
    invoke-static/range {v2 .. v9}, Lcom/android/server/colorwidget/JavaChanger;->toRGB(DDDD)D

    move-result-wide v28

    move-wide v12, v4

    move-wide v14, v6

    move-wide/from16 v16, v8

    .line 120
    invoke-static/range {v10 .. v17}, Lcom/android/server/colorwidget/JavaChanger;->toRGB(DDDD)D

    move-result-wide v24

    move-wide/from16 v12, v20

    move-wide v14, v4

    move-wide/from16 v16, v6

    move-wide/from16 v18, v8

    .line 121
    invoke-static/range {v12 .. v19}, Lcom/android/server/colorwidget/JavaChanger;->toRGB(DDDD)D

    move-result-wide v22

    goto :goto_0

    .line 112
    .end local v2    # "TR":D
    .end local v4    # "q":D
    .end local v6    # "p":D
    .end local v10    # "TG":D
    .end local v20    # "TB":D
    :cond_1
    add-double v12, v26, v31

    mul-double v14, v26, v31

    sub-double v4, v12, v14

    .restart local v4    # "q":D
    goto :goto_1
.end method

.method public static RGB2HSI_neo(Lcom/android/server/colorwidget/JavaChanger$RGBDouble;)Lcom/android/server/colorwidget/JavaChanger$HSIDouble;
    .locals 25
    .param p0, "rgb"    # Lcom/android/server/colorwidget/JavaChanger$RGBDouble;

    .prologue
    .line 54
    new-instance v8, Lcom/android/server/colorwidget/JavaChanger$HSIDouble;

    invoke-direct {v8}, Lcom/android/server/colorwidget/JavaChanger$HSIDouble;-><init>()V

    .line 56
    .local v8, "hsi":Lcom/android/server/colorwidget/JavaChanger$HSIDouble;
    const-wide/16 v6, 0x0

    .line 57
    .local v6, "h":D
    const-wide/16 v17, 0x0

    .line 58
    .local v17, "s":D
    const-wide/16 v9, 0x0

    .line 59
    .local v9, "i":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/colorwidget/JavaChanger$RGBDouble;->r:D

    move-wide/from16 v19, v0

    const-wide v21, 0x406fe00000000000L    # 255.0

    div-double v15, v19, v21

    .line 60
    .local v15, "r":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/colorwidget/JavaChanger$RGBDouble;->g:D

    move-wide/from16 v19, v0

    const-wide v21, 0x406fe00000000000L    # 255.0

    div-double v4, v19, v21

    .line 61
    .local v4, "g":D
    move-object/from16 v0, p0

    iget-wide v0, v0, Lcom/android/server/colorwidget/JavaChanger$RGBDouble;->b:D

    move-wide/from16 v19, v0

    const-wide v21, 0x406fe00000000000L    # 255.0

    div-double v2, v19, v21

    .line 64
    .local v2, "b":D
    move-wide v0, v15

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->max(DD)D

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->max(DD)D

    move-result-wide v11

    .line 65
    .local v11, "max":D
    move-wide v0, v15

    invoke-static {v0, v1, v4, v5}, Ljava/lang/Math;->min(DD)D

    move-result-wide v19

    move-wide/from16 v0, v19

    invoke-static {v0, v1, v2, v3}, Ljava/lang/Math;->min(DD)D

    move-result-wide v13

    .line 67
    .local v13, "min":D
    cmpl-double v19, v11, v13

    if-nez v19, :cond_3

    .line 68
    const-wide/16 v6, 0x0

    .line 78
    :cond_0
    :goto_0
    add-double v19, v11, v13

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    div-double v9, v19, v21

    .line 79
    const-wide/16 v19, 0x0

    cmpl-double v19, v9, v19

    if-eqz v19, :cond_1

    cmpl-double v19, v11, v13

    if-nez v19, :cond_7

    .line 80
    :cond_1
    const-wide/16 v17, 0x0

    .line 87
    :cond_2
    :goto_1
    iput-wide v6, v8, Lcom/android/server/colorwidget/JavaChanger$HSIDouble;->h:D

    .line 88
    move-wide/from16 v0, v17

    iput-wide v0, v8, Lcom/android/server/colorwidget/JavaChanger$HSIDouble;->s:D

    .line 89
    iput-wide v9, v8, Lcom/android/server/colorwidget/JavaChanger$HSIDouble;->i:D

    .line 90
    return-object v8

    .line 69
    :cond_3
    cmpl-double v19, v11, v15

    if-nez v19, :cond_4

    cmpl-double v19, v4, v2

    if-ltz v19, :cond_4

    .line 70
    const-wide/high16 v19, 0x404e000000000000L    # 60.0

    sub-double v21, v4, v2

    sub-double v23, v11, v13

    div-double v21, v21, v23

    mul-double v6, v19, v21

    goto :goto_0

    .line 71
    :cond_4
    cmpl-double v19, v11, v15

    if-nez v19, :cond_5

    cmpg-double v19, v4, v2

    if-gez v19, :cond_5

    .line 72
    const-wide/high16 v19, 0x404e000000000000L    # 60.0

    sub-double v21, v4, v2

    sub-double v23, v11, v13

    div-double v21, v21, v23

    mul-double v19, v19, v21

    const-wide v21, 0x4076800000000000L    # 360.0

    add-double v6, v19, v21

    goto :goto_0

    .line 73
    :cond_5
    cmpl-double v19, v11, v4

    if-nez v19, :cond_6

    .line 74
    const-wide/high16 v19, 0x404e000000000000L    # 60.0

    sub-double v21, v2, v15

    sub-double v23, v11, v13

    div-double v21, v21, v23

    mul-double v19, v19, v21

    const-wide/high16 v21, 0x405e000000000000L    # 120.0

    add-double v6, v19, v21

    goto :goto_0

    .line 75
    :cond_6
    cmpl-double v19, v11, v2

    if-nez v19, :cond_0

    .line 76
    const-wide/high16 v19, 0x404e000000000000L    # 60.0

    sub-double v21, v15, v4

    sub-double v23, v11, v13

    div-double v21, v21, v23

    mul-double v19, v19, v21

    const-wide/high16 v21, 0x406e000000000000L    # 240.0

    add-double v6, v19, v21

    goto :goto_0

    .line 81
    :cond_7
    const-wide/16 v19, 0x0

    cmpl-double v19, v9, v19

    if-lez v19, :cond_8

    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    cmpg-double v19, v9, v19

    if-gtz v19, :cond_8

    .line 82
    sub-double v19, v11, v13

    add-double v21, v11, v13

    div-double v17, v19, v21

    goto :goto_1

    .line 83
    :cond_8
    const-wide/high16 v19, 0x3fe0000000000000L    # 0.5

    cmpl-double v19, v9, v19

    if-lez v19, :cond_2

    .line 84
    sub-double v19, v11, v13

    const-wide/high16 v21, 0x4000000000000000L    # 2.0

    add-double v23, v11, v13

    sub-double v21, v21, v23

    div-double v17, v19, v21

    goto :goto_1
.end method

.method public static setColor_neo(Landroid/graphics/Bitmap;III)Landroid/graphics/Bitmap;
    .locals 16
    .param p0, "sourceImg"    # Landroid/graphics/Bitmap;
    .param p1, "red"    # I
    .param p2, "green"    # I
    .param p3, "blue"    # I

    .prologue
    .line 18
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    mul-int/2addr v1, v4

    new-array v2, v1, [I

    .line 19
    .local v2, "argb":[I
    const/4 v3, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    const/4 v5, 0x0

    const/4 v6, 0x0

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v8

    move-object/from16 v1, p0

    invoke-virtual/range {v1 .. v8}, Landroid/graphics/Bitmap;->getPixels([IIIIIII)V

    .line 21
    new-instance v3, Lcom/android/server/colorwidget/JavaChanger$RGBDouble;

    move/from16 v0, p1

    int-to-double v4, v0

    move/from16 v0, p2

    int-to-double v6, v0

    move/from16 v0, p3

    int-to-double v8, v0

    invoke-direct/range {v3 .. v9}, Lcom/android/server/colorwidget/JavaChanger$RGBDouble;-><init>(DDD)V

    .line 23
    .local v3, "rgb":Lcom/android/server/colorwidget/JavaChanger$RGBDouble;
    new-instance v15, Lcom/android/server/colorwidget/JavaChanger$RGBDouble;

    invoke-direct {v15}, Lcom/android/server/colorwidget/JavaChanger$RGBDouble;-><init>()V

    .line 24
    .local v15, "rgb_change":Lcom/android/server/colorwidget/JavaChanger$RGBDouble;
    new-instance v12, Lcom/android/server/colorwidget/JavaChanger$HSIDouble;

    invoke-direct {v12}, Lcom/android/server/colorwidget/JavaChanger$HSIDouble;-><init>()V

    .line 25
    .local v12, "hsi_change":Lcom/android/server/colorwidget/JavaChanger$HSIDouble;
    const/4 v14, 0x0

    .line 26
    .local v14, "r":I
    const/4 v11, 0x0

    .line 27
    .local v11, "g":I
    const/4 v10, 0x0

    .line 28
    .local v10, "b":I
    const/4 v13, 0x0

    .local v13, "i":I
    :goto_0
    array-length v1, v2

    if-ge v13, v1, :cond_1

    .line 29
    aget v1, v2, v13

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    if-eqz v1, :cond_0

    .line 31
    aget v1, v2, v13

    const v4, 0xffffff

    and-int/2addr v1, v4

    const v4, 0xffffff

    if-eq v1, v4, :cond_0

    .line 33
    aget v1, v2, v13

    const/high16 v4, 0xff0000

    and-int/2addr v1, v4

    shr-int/lit8 v14, v1, 0x10

    .line 34
    aget v1, v2, v13

    const v4, 0xff00

    and-int/2addr v1, v4

    shr-int/lit8 v11, v1, 0x8

    .line 35
    aget v1, v2, v13

    and-int/lit16 v10, v1, 0xff

    .line 37
    invoke-static {v3}, Lcom/android/server/colorwidget/JavaChanger;->RGB2HSI_neo(Lcom/android/server/colorwidget/JavaChanger$RGBDouble;)Lcom/android/server/colorwidget/JavaChanger$HSIDouble;

    move-result-object v12

    .line 38
    add-int v1, v14, v11

    add-int/2addr v1, v10

    int-to-double v4, v1

    const-wide v6, 0x4087e80000000000L    # 765.0

    div-double/2addr v4, v6

    iput-wide v4, v12, Lcom/android/server/colorwidget/JavaChanger$HSIDouble;->i:D

    .line 39
    invoke-static {v12}, Lcom/android/server/colorwidget/JavaChanger;->HSI2RGB_neo(Lcom/android/server/colorwidget/JavaChanger$HSIDouble;)Lcom/android/server/colorwidget/JavaChanger$RGBDouble;

    move-result-object v15

    .line 41
    aget v1, v2, v13

    const/high16 v4, -0x1000000

    and-int/2addr v1, v4

    iget-wide v4, v15, Lcom/android/server/colorwidget/JavaChanger$RGBDouble;->r:D

    double-to-int v4, v4

    shl-int/lit8 v4, v4, 0x10

    add-int/2addr v1, v4

    iget-wide v4, v15, Lcom/android/server/colorwidget/JavaChanger$RGBDouble;->g:D

    double-to-int v4, v4

    shl-int/lit8 v4, v4, 0x8

    add-int/2addr v1, v4

    iget-wide v4, v15, Lcom/android/server/colorwidget/JavaChanger$RGBDouble;->b:D

    double-to-int v4, v4

    add-int/2addr v1, v4

    aput v1, v2, v13

    .line 28
    :cond_0
    add-int/lit8 v13, v13, 0x1

    goto :goto_0

    .line 47
    :cond_1
    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v1

    invoke-virtual/range {p0 .. p0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v2, v1, v4, v5}, Landroid/graphics/Bitmap;->createBitmap([IIILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object p0

    .line 49
    return-object p0
.end method

.method public static toRGB(DDDD)D
    .locals 8
    .param p0, "TColor"    # D
    .param p2, "q"    # D
    .param p4, "p"    # D
    .param p6, "h"    # D

    .prologue
    const-wide/high16 v6, 0x4018000000000000L    # 6.0

    const-wide v4, 0x3fe5555555555555L    # 0.6666666666666666

    const-wide/high16 v2, 0x3ff0000000000000L    # 1.0

    .line 130
    const-wide/16 v0, 0x0

    cmpg-double v0, p0, v0

    if-gez v0, :cond_0

    .line 131
    add-double/2addr p0, v2

    .line 133
    :cond_0
    cmpl-double v0, p0, v2

    if-lez v0, :cond_1

    .line 134
    sub-double/2addr p0, v2

    .line 136
    :cond_1
    const-wide v0, 0x3fc5555555555555L    # 0.16666666666666666

    cmpg-double v0, p0, v0

    if-gez v0, :cond_3

    .line 137
    sub-double v0, p2, p4

    mul-double/2addr v0, v6

    mul-double/2addr v0, p0

    add-double p2, p4, v0

    .line 143
    .end local p2    # "q":D
    :cond_2
    :goto_0
    return-wide p2

    .line 138
    .restart local p2    # "q":D
    :cond_3
    const-wide/high16 v0, 0x3fe0000000000000L    # 0.5

    cmpg-double v0, p0, v0

    if-ltz v0, :cond_2

    .line 140
    cmpg-double v0, p0, v4

    if-gez v0, :cond_4

    .line 141
    sub-double v0, p2, p4

    mul-double/2addr v0, v6

    sub-double v2, v4, p0

    mul-double/2addr v0, v2

    add-double p2, p4, v0

    goto :goto_0

    :cond_4
    move-wide p2, p4

    .line 143
    goto :goto_0
.end method
