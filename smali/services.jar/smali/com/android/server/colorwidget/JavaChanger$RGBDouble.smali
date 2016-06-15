.class Lcom/android/server/colorwidget/JavaChanger$RGBDouble;
.super Ljava/lang/Object;
.source "JavaChanger.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/colorwidget/JavaChanger;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "RGBDouble"
.end annotation


# instance fields
.field public b:D

.field public g:D

.field public r:D


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const-wide/16 v0, 0x0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 173
    iput-wide v0, p0, Lcom/android/server/colorwidget/JavaChanger$RGBDouble;->r:D

    .line 174
    iput-wide v0, p0, Lcom/android/server/colorwidget/JavaChanger$RGBDouble;->g:D

    .line 175
    iput-wide v0, p0, Lcom/android/server/colorwidget/JavaChanger$RGBDouble;->b:D

    .line 176
    return-void
.end method

.method public constructor <init>(DDD)V
    .locals 0
    .param p1, "r_in"    # D
    .param p3, "g_in"    # D
    .param p5, "b_in"    # D

    .prologue
    .line 178
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 179
    iput-wide p1, p0, Lcom/android/server/colorwidget/JavaChanger$RGBDouble;->r:D

    .line 180
    iput-wide p3, p0, Lcom/android/server/colorwidget/JavaChanger$RGBDouble;->g:D

    .line 181
    iput-wide p5, p0, Lcom/android/server/colorwidget/JavaChanger$RGBDouble;->b:D

    .line 182
    return-void
.end method
