.class public Landroid/graphics/Paint;
.super Ljava/lang/Object;
.source "Paint.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/graphics/Paint$FontMetricsInt;,
        Landroid/graphics/Paint$FontMetrics;,
        Landroid/graphics/Paint$Align;,
        Landroid/graphics/Paint$Join;,
        Landroid/graphics/Paint$Cap;,
        Landroid/graphics/Paint$Style;
    }
.end annotation


# static fields
.field public static final ANTI_ALIAS_FLAG:I = 0x1

.field public static final AUTO_HINTING_TEXT_FLAG:I = 0x800

.field public static final BIDI_DEFAULT_LTR:I = 0x2

.field public static final BIDI_DEFAULT_RTL:I = 0x3

.field private static final BIDI_FLAG_MASK:I = 0x7

.field public static final BIDI_FORCE_LTR:I = 0x4

.field public static final BIDI_FORCE_RTL:I = 0x5

.field public static final BIDI_LTR:I = 0x0

.field private static final BIDI_MAX_FLAG_VALUE:I = 0x5

.field public static final BIDI_RTL:I = 0x1

.field public static final CURSOR_AFTER:I = 0x0

.field public static final CURSOR_AT:I = 0x4

.field public static final CURSOR_AT_OR_AFTER:I = 0x1

.field public static final CURSOR_AT_OR_BEFORE:I = 0x3

.field public static final CURSOR_BEFORE:I = 0x2

.field private static final CURSOR_OPT_MAX_VALUE:I = 0x4

.field private static final DEBUG:Z = false

.field static final DEFAULT_PAINT_FLAGS:I = 0x500

.field public static final DEV_KERN_TEXT_FLAG:I = 0x100

.field public static final DIRECTION_LTR:I = 0x0

.field public static final DIRECTION_RTL:I = 0x1

.field public static final DITHER_FLAG:I = 0x4

.field public static final EMBEDDED_BITMAP_TEXT_FLAG:I = 0x400

.field public static final FAKE_BOLD_TEXT_FLAG:I = 0x20

.field public static final FILTER_BITMAP_FLAG:I = 0x2

.field public static final HINTING_OFF:I = 0x0

.field public static final HINTING_ON:I = 0x1

.field public static final LCD_RENDER_TEXT_FLAG:I = 0x200

.field public static final LINEAR_TEXT_FLAG:I = 0x40

.field public static final STRIKE_THRU_TEXT_FLAG:I = 0x10

.field public static final SUBPIXEL_TEXT_FLAG:I = 0x80

.field private static final TAG:Ljava/lang/String; = "Paint"

.field public static final UNDERLINE_TEXT_FLAG:I = 0x8

.field public static final VERTICAL_TEXT_FLAG:I = 0x1000

.field static final sAlignArray:[Landroid/graphics/Paint$Align;

.field static final sCapArray:[Landroid/graphics/Paint$Cap;

.field static final sJoinArray:[Landroid/graphics/Paint$Join;

.field static final sStyleArray:[Landroid/graphics/Paint$Style;


# instance fields
.field public hasShadow:Z

.field public mBidiFlags:I

.field private mColorFilter:Landroid/graphics/ColorFilter;

.field private mCompatScaling:F

.field private mHasCompatScaling:Z

.field private mInvCompatScaling:F

.field private mLocale:Ljava/util/Locale;

.field private mMaskFilter:Landroid/graphics/MaskFilter;

.field public mNativePaint:I

.field private mPathEffect:Landroid/graphics/PathEffect;

.field private mRasterizer:Landroid/graphics/Rasterizer;

.field private mShader:Landroid/graphics/Shader;

.field private mTypeface:Landroid/graphics/Typeface;

.field private mTypefaceNative:I

.field private mXfermode:Landroid/graphics/Xfermode;

.field public shadowColor:I

.field public shadowDx:F

.field public shadowDy:F

.field public shadowRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .prologue
    const/4 v5, 0x3

    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    new-array v0, v5, [Landroid/graphics/Paint$Style;

    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Style;->FILL_AND_STROKE:Landroid/graphics/Paint$Style;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    .line 90
    new-array v0, v5, [Landroid/graphics/Paint$Cap;

    sget-object v1, Landroid/graphics/Paint$Cap;->BUTT:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Cap;->ROUND:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Cap;->SQUARE:Landroid/graphics/Paint$Cap;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    .line 93
    new-array v0, v5, [Landroid/graphics/Paint$Join;

    sget-object v1, Landroid/graphics/Paint$Join;->MITER:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Join;->ROUND:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Join;->BEVEL:Landroid/graphics/Paint$Join;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    .line 96
    new-array v0, v5, [Landroid/graphics/Paint$Align;

    sget-object v1, Landroid/graphics/Paint$Align;->LEFT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v2

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v3

    sget-object v1, Landroid/graphics/Paint$Align;->RIGHT:Landroid/graphics/Paint$Align;

    aput-object v1, v0, v4

    sput-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 446
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/graphics/Paint;-><init>(I)V

    .line 447
    return-void
.end method

.method public constructor <init>(I)V
    .locals 2
    .parameter "flags"

    .prologue
    .line 455
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 456
    invoke-static {}, Landroid/graphics/Paint;->native_init()I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    .line 457
    or-int/lit16 v0, p1, 0x500

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 462
    const/high16 v0, 0x3f80

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 463
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextLocale(Ljava/util/Locale;)V

    .line 467
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v1, v1, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_setTypeface(II)I

    .line 469
    return-void
.end method

.method public constructor <init>(Landroid/graphics/Paint;)V
    .locals 1
    .parameter "paint"

    .prologue
    .line 478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 85
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 479
    iget v0, p1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0}, Landroid/graphics/Paint;->native_initWithPaint(I)I

    move-result v0

    iput v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    .line 480
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 481
    return-void
.end method

.method private static native finalizer(I)V
.end method

.method private native nSetShadowLayer(FFFI)V
.end method

.method private static native nativeGetCharArrayBounds(I[CIIILandroid/graphics/Rect;)V
.end method

.method private static native nativeGetStringBounds(ILjava/lang/String;IIILandroid/graphics/Rect;)V
.end method

.method private native native_breakText(Ljava/lang/String;ZFI[F)I
.end method

.method private native native_breakText([CIIFI[F)I
.end method

.method private static native native_getFillPath(III)Z
.end method

.method private static native native_getStrokeCap(I)I
.end method

.method private static native native_getStrokeJoin(I)I
.end method

.method private static native native_getStyle(I)I
.end method

.method private static native native_getTextAlign(I)I
.end method

.method private static native native_getTextGlyphs(ILjava/lang/String;IIIII[C)I
.end method

.method private static native native_getTextPath(IILjava/lang/String;IIFFI)V
.end method

.method private static native native_getTextPath(II[CIIFFI)V
.end method

.method private static native native_getTextRunAdvances(ILjava/lang/String;IIIII[FI)F
.end method

.method private static native native_getTextRunAdvances(I[CIIIII[FI)F
.end method

.method private native native_getTextRunCursor(ILjava/lang/String;IIIII)I
.end method

.method private native native_getTextRunCursor(I[CIIIII)I
.end method

.method private static native native_getTextWidths(ILjava/lang/String;III[F)I
.end method

.method private static native native_getTextWidths(I[CIII[F)I
.end method

.method private static native native_init()I
.end method

.method private static native native_initWithPaint(I)I
.end method

.method private native native_measureText(Ljava/lang/String;I)F
.end method

.method private native native_measureText(Ljava/lang/String;III)F
.end method

.method private native native_measureText([CIII)F
.end method

.method private static native native_reset(I)V
.end method

.method private static native native_set(II)V
.end method

.method private static native native_setColorFilter(II)I
.end method

.method private static native native_setMaskFilter(II)I
.end method

.method private static native native_setPathEffect(II)I
.end method

.method private static native native_setRasterizer(II)I
.end method

.method private static native native_setShader(II)I
.end method

.method private static native native_setStrokeCap(II)V
.end method

.method private static native native_setStrokeJoin(II)V
.end method

.method private static native native_setStyle(II)V
.end method

.method private static native native_setTextAlign(II)V
.end method

.method private static native native_setTextLocale(ILjava/lang/String;)V
.end method

.method private static native native_setTypeface(II)I
.end method

.method private static native native_setXfermode(II)I
.end method

.method private setClassVariablesFrom(Landroid/graphics/Paint;)V
    .locals 1
    .parameter "paint"

    .prologue
    .line 551
    iget-object v0, p1, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 552
    iget-object v0, p1, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    iput-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 553
    iget-object v0, p1, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    iput-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 554
    iget-object v0, p1, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    iput-object v0, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    .line 555
    iget-object v0, p1, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    if-eqz v0, :cond_0

    .line 556
    iget-object v0, p1, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    invoke-virtual {v0}, Landroid/graphics/Shader;->copy()Landroid/graphics/Shader;

    move-result-object v0

    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 560
    :goto_0
    iget-object v0, p1, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iput-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 562
    iget v0, p1, Landroid/graphics/Paint;->mTypefaceNative:I

    iput v0, p0, Landroid/graphics/Paint;->mTypefaceNative:I

    .line 564
    iget-object v0, p1, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    iput-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 566
    iget-boolean v0, p1, Landroid/graphics/Paint;->mHasCompatScaling:Z

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 567
    iget v0, p1, Landroid/graphics/Paint;->mCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 568
    iget v0, p1, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 570
    iget-boolean v0, p1, Landroid/graphics/Paint;->hasShadow:Z

    iput-boolean v0, p0, Landroid/graphics/Paint;->hasShadow:Z

    .line 571
    iget v0, p1, Landroid/graphics/Paint;->shadowDx:F

    iput v0, p0, Landroid/graphics/Paint;->shadowDx:F

    .line 572
    iget v0, p1, Landroid/graphics/Paint;->shadowDy:F

    iput v0, p0, Landroid/graphics/Paint;->shadowDy:F

    .line 573
    iget v0, p1, Landroid/graphics/Paint;->shadowRadius:F

    iput v0, p0, Landroid/graphics/Paint;->shadowRadius:F

    .line 574
    iget v0, p1, Landroid/graphics/Paint;->shadowColor:I

    iput v0, p0, Landroid/graphics/Paint;->shadowColor:I

    .line 576
    iget v0, p1, Landroid/graphics/Paint;->mBidiFlags:I

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 577
    iget-object v0, p1, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    iput-object v0, p0, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    .line 578
    return-void

    .line 558
    :cond_0
    const/4 v0, 0x0

    iput-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    goto :goto_0
.end method


# virtual methods
.method public native ascent()F
.end method

.method public breakText(Ljava/lang/CharSequence;IIZF[F)I
    .locals 7
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "measureForwards"
    .parameter "maxWidth"
    .parameter "measuredWidth"

    .prologue
    const/4 v2, 0x0

    .line 1615
    if-nez p1, :cond_0

    .line 1616
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v0, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1618
    :cond_0
    or-int v0, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v0, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v0, v3

    if-gez v0, :cond_1

    .line 1619
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1622
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-eqz v0, :cond_2

    if-ne p2, p3, :cond_3

    :cond_2
    move v6, v2

    .line 1642
    .end local p1
    :goto_0
    return v6

    .line 1625
    .restart local p1
    :cond_3
    if-nez p2, :cond_4

    instance-of v0, p1, Ljava/lang/String;

    if-eqz v0, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-ne p3, v0, :cond_4

    .line 1626
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p4, p5, p6}, Landroid/graphics/Paint;->breakText(Ljava/lang/String;ZF[F)I

    move-result v6

    goto :goto_0

    .line 1630
    .restart local p1
    :cond_4
    sub-int v0, p3, p2

    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    .line 1633
    .local v1, buf:[C
    invoke-static {p1, p2, p3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1635
    if-eqz p4, :cond_5

    .line 1636
    sub-int v3, p3, p2

    move-object v0, p0

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result v6

    .line 1641
    .local v6, result:I
    :goto_1
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0

    .line 1638
    .end local v6           #result:I
    :cond_5
    sub-int v0, p3, p2

    neg-int v3, v0

    move-object v0, p0

    move v4, p5

    move-object v5, p6

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Paint;->breakText([CIIF[F)I

    move-result v6

    .restart local v6       #result:I
    goto :goto_1
.end method

.method public breakText(Ljava/lang/String;ZF[F)I
    .locals 9
    .parameter "text"
    .parameter "measureForwards"
    .parameter "maxWidth"
    .parameter "measuredWidth"

    .prologue
    const/4 v8, 0x0

    .line 1663
    if-nez p1, :cond_0

    .line 1664
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1667
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_2

    move v7, v8

    .line 1680
    :cond_1
    :goto_0
    return v7

    .line 1670
    :cond_2
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_3

    .line 1671
    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/Paint;->native_breakText(Ljava/lang/String;ZFI[F)I

    move-result v7

    goto :goto_0

    .line 1674
    :cond_3
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v6

    .line 1675
    .local v6, oldSize:F
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v6

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1676
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v3, p3, v0

    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v5, p4

    invoke-direct/range {v0 .. v5}, Landroid/graphics/Paint;->native_breakText(Ljava/lang/String;ZFI[F)I

    move-result v7

    .line 1678
    .local v7, res:I
    invoke-virtual {p0, v6}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1679
    if-eqz p4, :cond_1

    aget v0, p4, v8

    iget v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v0, v1

    aput v0, p4, v8

    goto :goto_0
.end method

.method public breakText([CIIF[F)I
    .locals 10
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "maxWidth"
    .parameter "measuredWidth"

    .prologue
    const/4 v9, 0x0

    .line 1570
    if-nez p1, :cond_0

    .line 1571
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1573
    :cond_0
    if-ltz p2, :cond_1

    array-length v0, p1

    sub-int/2addr v0, p2

    invoke-static {p3}, Ljava/lang/Math;->abs(I)I

    move-result v1

    if-ge v0, v1, :cond_2

    .line 1574
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1577
    :cond_2
    array-length v0, p1

    if-eqz v0, :cond_3

    if-nez p3, :cond_5

    :cond_3
    move v8, v9

    .line 1590
    :cond_4
    :goto_0
    return v8

    .line 1580
    :cond_5
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_6

    .line 1581
    iget v5, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/Paint;->native_breakText([CIIFI[F)I

    move-result v8

    goto :goto_0

    .line 1584
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    .line 1585
    .local v7, oldSize:F
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v7

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1586
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float v4, p4, v0

    iget v5, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v6, p5

    invoke-direct/range {v0 .. v6}, Landroid/graphics/Paint;->native_breakText([CIIFI[F)I

    move-result v8

    .line 1588
    .local v8, res:I
    invoke-virtual {p0, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1589
    if-eqz p5, :cond_4

    aget v0, p5, v9

    iget v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v0, v1

    aput v0, p5, v9

    goto :goto_0
.end method

.method public clearShadowLayer()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    const/4 v0, 0x0

    .line 1189
    iput-boolean v1, p0, Landroid/graphics/Paint;->hasShadow:Z

    .line 1190
    invoke-direct {p0, v0, v0, v0, v1}, Landroid/graphics/Paint;->nSetShadowLayer(FFFI)V

    .line 1191
    return-void
.end method

.method public native descent()F
.end method

.method protected finalize()V
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Throwable;
        }
    .end annotation

    .prologue
    .line 2249
    :try_start_0
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0}, Landroid/graphics/Paint;->finalizer(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 2251
    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    .line 2253
    return-void

    .line 2251
    :catchall_0
    move-exception v0

    invoke-super {p0}, Ljava/lang/Object;->finalize()V

    throw v0
.end method

.method public native getAlpha()I
.end method

.method public getBidiFlags()I
    .locals 1

    .prologue
    .line 599
    iget v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    return v0
.end method

.method public native getColor()I
.end method

.method public getColorFilter()Landroid/graphics/ColorFilter;
    .locals 1

    .prologue
    .line 996
    iget-object v0, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    return-object v0
.end method

.method public getFillPath(Landroid/graphics/Path;Landroid/graphics/Path;)Z
    .locals 3
    .parameter "src"
    .parameter "dst"

    .prologue
    .line 960
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-virtual {p1}, Landroid/graphics/Path;->ni()I

    move-result v1

    invoke-virtual {p2}, Landroid/graphics/Path;->ni()I

    move-result v2

    invoke-static {v0, v1, v2}, Landroid/graphics/Paint;->native_getFillPath(III)Z

    move-result v0

    return v0
.end method

.method public native getFlags()I
.end method

.method public native getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F
.end method

.method public getFontMetrics()Landroid/graphics/Paint$FontMetrics;
    .locals 1

    .prologue
    .line 1373
    new-instance v0, Landroid/graphics/Paint$FontMetrics;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetrics;-><init>()V

    .line 1374
    .local v0, fm:Landroid/graphics/Paint$FontMetrics;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    .line 1375
    return-object v0
.end method

.method public native getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I
.end method

.method public getFontMetricsInt()Landroid/graphics/Paint$FontMetricsInt;
    .locals 1

    .prologue
    .line 1409
    new-instance v0, Landroid/graphics/Paint$FontMetricsInt;

    invoke-direct {v0}, Landroid/graphics/Paint$FontMetricsInt;-><init>()V

    .line 1410
    .local v0, fm:Landroid/graphics/Paint$FontMetricsInt;
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetricsInt(Landroid/graphics/Paint$FontMetricsInt;)I

    .line 1411
    return-object v0
.end method

.method public getFontSpacing()F
    .locals 1

    .prologue
    .line 1422
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->getFontMetrics(Landroid/graphics/Paint$FontMetrics;)F

    move-result v0

    return v0
.end method

.method public native getHinting()I
.end method

.method public getMaskFilter()Landroid/graphics/MaskFilter;
    .locals 1

    .prologue
    .line 1075
    iget-object v0, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    return-object v0
.end method

.method public getPathEffect()Landroid/graphics/PathEffect;
    .locals 1

    .prologue
    .line 1047
    iget-object v0, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    return-object v0
.end method

.method public getRasterizer()Landroid/graphics/Rasterizer;
    .locals 1

    .prologue
    .line 1146
    iget-object v0, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    return-object v0
.end method

.method public getShader()Landroid/graphics/Shader;
    .locals 1

    .prologue
    .line 969
    iget-object v0, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    return-object v0
.end method

.method public getStrokeCap()Landroid/graphics/Paint$Cap;
    .locals 2

    .prologue
    .line 916
    sget-object v0, Landroid/graphics/Paint;->sCapArray:[Landroid/graphics/Paint$Cap;

    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1}, Landroid/graphics/Paint;->native_getStrokeCap(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getStrokeJoin()Landroid/graphics/Paint$Join;
    .locals 2

    .prologue
    .line 935
    sget-object v0, Landroid/graphics/Paint;->sJoinArray:[Landroid/graphics/Paint$Join;

    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1}, Landroid/graphics/Paint;->native_getStrokeJoin(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public native getStrokeMiter()F
.end method

.method public native getStrokeWidth()F
.end method

.method public getStyle()Landroid/graphics/Paint$Style;
    .locals 2

    .prologue
    .line 805
    sget-object v0, Landroid/graphics/Paint;->sStyleArray:[Landroid/graphics/Paint$Style;

    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1}, Landroid/graphics/Paint;->native_getStyle(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextAlign()Landroid/graphics/Paint$Align;
    .locals 2

    .prologue
    .line 1202
    sget-object v0, Landroid/graphics/Paint;->sAlignArray:[Landroid/graphics/Paint$Align;

    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1}, Landroid/graphics/Paint;->native_getTextAlign(I)I

    move-result v1

    aget-object v0, v0, v1

    return-object v0
.end method

.method public getTextBounds(Ljava/lang/String;IILandroid/graphics/Rect;)V
    .locals 6
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "bounds"

    .prologue
    .line 2217
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 2218
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2220
    :cond_0
    if-nez p4, :cond_1

    .line 2221
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2223
    :cond_1
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nativeGetStringBounds(ILjava/lang/String;IIILandroid/graphics/Rect;)V

    .line 2224
    return-void
.end method

.method public getTextBounds([CIILandroid/graphics/Rect;)V
    .locals 6
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "bounds"

    .prologue
    .line 2237
    or-int v0, p2, p3

    if-ltz v0, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 2238
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2240
    :cond_1
    if-nez p4, :cond_2

    .line 2241
    new-instance v0, Ljava/lang/NullPointerException;

    const-string/jumbo v1, "need bounds Rect"

    invoke-direct {v0, v1}, Ljava/lang/NullPointerException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 2243
    :cond_2
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->nativeGetCharArrayBounds(I[CIIILandroid/graphics/Rect;)V

    .line 2244
    return-void
.end method

.method public getTextGlyphs(Ljava/lang/String;IIIII[C)I
    .locals 8
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "glyphs"

    .prologue
    .line 1839
    if-nez p1, :cond_0

    .line 1840
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1842
    :cond_0
    if-eqz p6, :cond_1

    const/4 v0, 0x1

    if-eq p6, v0, :cond_1

    .line 1843
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown flags value: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1845
    :cond_1
    or-int v0, p2, p3

    or-int/2addr v0, p4

    or-int/2addr v0, p5

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p2, p4

    or-int/2addr v0, v1

    sub-int v1, p5, p3

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p5

    or-int/2addr v0, v1

    if-gez v0, :cond_2

    .line 1848
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1850
    :cond_2
    sub-int v0, p3, p2

    array-length v1, p7

    if-le v0, v1, :cond_3

    .line 1851
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1853
    :cond_3
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    move-object v7, p7

    invoke-static/range {v0 .. v7}, Landroid/graphics/Paint;->native_getTextGlyphs(ILjava/lang/String;IIIII[C)I

    move-result v0

    return v0
.end method

.method public getTextLocale()Ljava/util/Locale;
    .locals 1

    .prologue
    .line 1223
    iget-object v0, p0, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    return-object v0
.end method

.method public getTextPath(Ljava/lang/String;IIFFLandroid/graphics/Path;)V
    .locals 8
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "x"
    .parameter "y"
    .parameter "path"

    .prologue
    .line 2199
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_0

    .line 2200
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2202
    :cond_0
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual {p6}, Landroid/graphics/Path;->ni()I

    move-result v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Paint;->native_getTextPath(IILjava/lang/String;IIFFI)V

    .line 2204
    return-void
.end method

.method public getTextPath([CIIFFLandroid/graphics/Path;)V
    .locals 8
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "x"
    .parameter "y"
    .parameter "path"

    .prologue
    .line 2177
    or-int v0, p2, p3

    if-ltz v0, :cond_0

    add-int v0, p2, p3

    array-length v1, p1

    if-le v0, v1, :cond_1

    .line 2178
    :cond_0
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2180
    :cond_1
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-virtual {p6}, Landroid/graphics/Path;->ni()I

    move-result v7

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    invoke-static/range {v0 .. v7}, Landroid/graphics/Paint;->native_getTextPath(II[CIIFFI)V

    .line 2182
    return-void
.end method

.method public getTextRunAdvances(Ljava/lang/CharSequence;IIIII[FI)F
    .locals 11
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"

    .prologue
    .line 1916
    if-nez p1, :cond_0

    .line 1917
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1919
    :cond_0
    or-int v1, p2, p3

    or-int/2addr v1, p4

    or-int v1, v1, p5

    or-int v1, v1, p8

    sub-int v3, p3, p2

    or-int/2addr v1, v3

    sub-int v3, p2, p4

    or-int/2addr v1, v3

    sub-int v3, p5, p3

    or-int/2addr v1, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int v3, v3, p5

    or-int/2addr v3, v1

    if-nez p7, :cond_1

    const/4 v1, 0x0

    :goto_0
    or-int/2addr v1, v3

    if-gez v1, :cond_2

    .line 1924
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1919
    :cond_1
    move-object/from16 v0, p7

    array-length v1, v0

    sub-int v1, v1, p8

    sub-int v5, p3, p2

    sub-int/2addr v1, v5

    goto :goto_0

    .line 1927
    :cond_2
    instance-of v1, p1, Ljava/lang/String;

    if-eqz v1, :cond_3

    move-object v2, p1

    .line 1928
    check-cast v2, Ljava/lang/String;

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIII[FI)F

    move-result v10

    .line 1951
    :goto_1
    return v10

    .line 1931
    :cond_3
    instance-of v1, p1, Landroid/text/SpannedString;

    if-nez v1, :cond_4

    instance-of v1, p1, Landroid/text/SpannableString;

    if-eqz v1, :cond_5

    .line 1933
    :cond_4
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    move-object v1, p0

    move v3, p2

    move v4, p3

    move v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances(Ljava/lang/String;IIIII[FI)F

    move-result v10

    goto :goto_1

    .line 1936
    :cond_5
    instance-of v1, p1, Landroid/text/GraphicsOperations;

    if-eqz v1, :cond_6

    move-object v1, p1

    .line 1937
    check-cast v1, Landroid/text/GraphicsOperations;

    move v2, p2

    move v3, p3

    move v4, p4

    move/from16 v5, p5

    move/from16 v6, p6

    move-object/from16 v7, p7

    move/from16 v8, p8

    move-object v9, p0

    invoke-interface/range {v1 .. v9}, Landroid/text/GraphicsOperations;->getTextRunAdvances(IIIII[FILandroid/graphics/Paint;)F

    move-result v10

    goto :goto_1

    .line 1940
    :cond_6
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v1

    if-eqz v1, :cond_7

    if-ne p3, p2, :cond_8

    .line 1941
    :cond_7
    const/4 v10, 0x0

    goto :goto_1

    .line 1944
    :cond_8
    sub-int v6, p5, p4

    .line 1945
    .local v6, contextLen:I
    sub-int v4, p3, p2

    .line 1946
    .local v4, len:I
    invoke-static {v6}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v2

    .line 1947
    .local v2, buf:[C
    const/4 v1, 0x0

    move/from16 v0, p5

    invoke-static {p1, p4, v0, v2, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1948
    sub-int v3, p2, p4

    const/4 v5, 0x0

    move-object v1, p0

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-virtual/range {v1 .. v9}, Landroid/graphics/Paint;->getTextRunAdvances([CIIIII[FI)F

    move-result v10

    .line 1950
    .local v10, result:F
    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_1
.end method

.method public getTextRunAdvances(Ljava/lang/String;IIIII[FI)F
    .locals 15
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"

    .prologue
    .line 1999
    if-nez p1, :cond_0

    .line 2000
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2002
    :cond_0
    if-eqz p6, :cond_1

    const/4 v2, 0x1

    move/from16 v0, p6

    if-eq v0, v2, :cond_1

    .line 2003
    new-instance v2, Ljava/lang/IllegalArgumentException;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "unknown flags value: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move/from16 v0, p6

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 2005
    :cond_1
    or-int v2, p2, p3

    or-int v2, v2, p4

    or-int v2, v2, p5

    or-int v2, v2, p8

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    sub-int v3, p2, p4

    or-int/2addr v2, v3

    sub-int v3, p5, p3

    or-int/2addr v2, v3

    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int v3, v3, p5

    or-int/2addr v3, v2

    if-nez p7, :cond_2

    const/4 v2, 0x0

    :goto_0
    or-int/2addr v2, v3

    if-gez v2, :cond_3

    .line 2010
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 2005
    :cond_2
    move-object/from16 v0, p7

    array-length v2, v0

    sub-int v2, v2, p8

    sub-int v4, p3, p2

    sub-int/2addr v2, v4

    goto :goto_0

    .line 2013
    :cond_3
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_4

    move/from16 v0, p2

    move/from16 v1, p3

    if-ne v0, v1, :cond_5

    .line 2014
    :cond_4
    const/4 v2, 0x0

    .line 2033
    :goto_1
    return v2

    .line 2017
    :cond_5
    iget-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_6

    .line 2018
    iget v2, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v2 .. v10}, Landroid/graphics/Paint;->native_getTextRunAdvances(ILjava/lang/String;IIIII[FI)F

    move-result v2

    goto :goto_1

    .line 2022
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v13

    .line 2023
    .local v13, oldSize:F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v13

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2024
    iget v2, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object/from16 v3, p1

    move/from16 v4, p2

    move/from16 v5, p3

    move/from16 v6, p4

    move/from16 v7, p5

    move/from16 v8, p6

    move-object/from16 v9, p7

    move/from16 v10, p8

    invoke-static/range {v2 .. v10}, Landroid/graphics/Paint;->native_getTextRunAdvances(ILjava/lang/String;IIIII[FI)F

    move-result v14

    .line 2026
    .local v14, totalAdvance:F
    invoke-virtual {p0, v13}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 2028
    if-eqz p7, :cond_7

    .line 2029
    move/from16 v12, p8

    .local v12, i:I
    sub-int v2, p3, p2

    add-int v11, v12, v2

    .local v11, e:I
    :goto_2
    if-ge v12, v11, :cond_7

    .line 2030
    aget v2, p7, v12

    iget v3, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v3

    aput v2, p7, v12

    .line 2029
    add-int/lit8 v12, v12, 0x1

    goto :goto_2

    .line 2033
    .end local v11           #e:I
    .end local v12           #i:I
    :cond_7
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v14

    goto :goto_1
.end method

.method public getTextRunAdvances([CIIIII[FI)F
    .locals 14
    .parameter "chars"
    .parameter "index"
    .parameter "count"
    .parameter "contextIndex"
    .parameter "contextCount"
    .parameter "flags"
    .parameter "advances"
    .parameter "advancesIndex"

    .prologue
    .line 1868
    if-nez p1, :cond_0

    .line 1869
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "text cannot be null"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1871
    :cond_0
    if-eqz p6, :cond_1

    const/4 v1, 0x1

    move/from16 v0, p6

    if-eq v0, v1, :cond_1

    .line 1872
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "unknown flags value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    move/from16 v0, p6

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 1874
    :cond_1
    or-int v1, p2, p3

    or-int v1, v1, p4

    or-int v1, v1, p5

    or-int v1, v1, p8

    sub-int v2, p2, p4

    or-int/2addr v1, v2

    sub-int v2, p5, p3

    or-int/2addr v1, v2

    add-int v2, p4, p5

    add-int v3, p2, p3

    sub-int/2addr v2, v3

    or-int/2addr v1, v2

    array-length v2, p1

    add-int v3, p4, p5

    sub-int/2addr v2, v3

    or-int/2addr v2, v1

    if-nez p7, :cond_2

    const/4 v1, 0x0

    :goto_0
    or-int/2addr v1, v2

    if-gez v1, :cond_3

    .line 1880
    new-instance v1, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v1}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v1

    .line 1874
    :cond_2
    move-object/from16 v0, p7

    array-length v1, v0

    add-int v3, p8, p3

    sub-int/2addr v1, v3

    goto :goto_0

    .line 1883
    :cond_3
    array-length v1, p1

    if-eqz v1, :cond_4

    if-nez p3, :cond_5

    .line 1884
    :cond_4
    const/4 v1, 0x0

    .line 1902
    :goto_1
    return v1

    .line 1886
    :cond_5
    iget-boolean v1, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v1, :cond_6

    .line 1887
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Landroid/graphics/Paint;->native_getTextRunAdvances(I[CIIIII[FI)F

    move-result v1

    goto :goto_1

    .line 1891
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v12

    .line 1892
    .local v12, oldSize:F
    iget v1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v1, v12

    invoke-virtual {p0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1893
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v2, p1

    move/from16 v3, p2

    move/from16 v4, p3

    move/from16 v5, p4

    move/from16 v6, p5

    move/from16 v7, p6

    move-object/from16 v8, p7

    move/from16 v9, p8

    invoke-static/range {v1 .. v9}, Landroid/graphics/Paint;->native_getTextRunAdvances(I[CIIIII[FI)F

    move-result v13

    .line 1895
    .local v13, res:F
    invoke-virtual {p0, v12}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1897
    if-eqz p7, :cond_7

    .line 1898
    move/from16 v11, p8

    .local v11, i:I
    add-int v10, v11, p3

    .local v10, e:I
    :goto_2
    if-ge v11, v10, :cond_7

    .line 1899
    aget v1, p7, v11

    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v2

    aput v1, p7, v11

    .line 1898
    add-int/lit8 v11, v11, 0x1

    goto :goto_2

    .line 1902
    .end local v10           #e:I
    .end local v11           #i:I
    :cond_7
    iget v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v1, v13

    goto :goto_1
.end method

.method public getTextRunCursor(Ljava/lang/CharSequence;IIIII)I
    .locals 8
    .parameter "text"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "offset"
    .parameter "cursorOpt"

    .prologue
    const/4 v2, 0x0

    .line 2105
    instance-of v0, p1, Ljava/lang/String;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/SpannedString;

    if-nez v0, :cond_0

    instance-of v0, p1, Landroid/text/SpannableString;

    if-eqz v0, :cond_1

    .line 2107
    :cond_0
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v1

    move-object v0, p0

    move v2, p2

    move v3, p3

    move v4, p4

    move v5, p5

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor(Ljava/lang/String;IIIII)I

    move-result v7

    .line 2120
    :goto_0
    return v7

    .line 2110
    :cond_1
    instance-of v0, p1, Landroid/text/GraphicsOperations;

    if-eqz v0, :cond_2

    move-object v0, p1

    .line 2111
    check-cast v0, Landroid/text/GraphicsOperations;

    move v1, p2

    move v2, p3

    move v3, p4

    move v4, p5

    move v5, p6

    move-object v6, p0

    invoke-interface/range {v0 .. v6}, Landroid/text/GraphicsOperations;->getTextRunCursor(IIIIILandroid/graphics/Paint;)I

    move-result v7

    goto :goto_0

    .line 2115
    :cond_2
    sub-int v3, p3, p2

    .line 2116
    .local v3, contextLen:I
    invoke-static {v3}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v1

    .line 2117
    .local v1, buf:[C
    invoke-static {p1, p2, p3, v1, v2}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 2118
    sub-int v5, p5, p2

    move-object v0, p0

    move v4, p4

    move v6, p6

    invoke-virtual/range {v0 .. v6}, Landroid/graphics/Paint;->getTextRunCursor([CIIIII)I

    move-result v7

    .line 2119
    .local v7, result:I
    invoke-static {v1}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0
.end method

.method public getTextRunCursor(Ljava/lang/String;IIIII)I
    .locals 8
    .parameter "text"
    .parameter "contextStart"
    .parameter "contextEnd"
    .parameter "flags"
    .parameter "offset"
    .parameter "cursorOpt"

    .prologue
    .line 2151
    or-int v0, p2, p3

    or-int/2addr v0, p5

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p2

    or-int/2addr v0, v1

    sub-int v1, p3, p5

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    or-int/2addr v0, p6

    if-ltz v0, :cond_0

    const/4 v0, 0x4

    if-le p6, v0, :cond_1

    .line 2155
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2158
    :cond_1
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Paint;->native_getTextRunCursor(ILjava/lang/String;IIIII)I

    move-result v0

    return v0
.end method

.method public getTextRunCursor([CIIIII)I
    .locals 9
    .parameter "text"
    .parameter "contextStart"
    .parameter "contextLength"
    .parameter "flags"
    .parameter "offset"
    .parameter "cursorOpt"

    .prologue
    .line 2064
    add-int v8, p2, p3

    .line 2065
    .local v8, contextEnd:I
    or-int v0, p2, v8

    or-int/2addr v0, p5

    sub-int v1, v8, p2

    or-int/2addr v0, v1

    sub-int v1, p5, p2

    or-int/2addr v0, v1

    sub-int v1, v8, p5

    or-int/2addr v0, v1

    array-length v1, p1

    sub-int/2addr v1, v8

    or-int/2addr v0, v1

    or-int/2addr v0, p6

    if-ltz v0, :cond_0

    const/4 v0, 0x4

    if-le p6, v0, :cond_1

    .line 2069
    :cond_0
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 2072
    :cond_1
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    move-object v0, p0

    move-object v2, p1

    move v3, p2

    move v4, p3

    move v5, p4

    move v6, p5

    move v7, p6

    invoke-direct/range {v0 .. v7}, Landroid/graphics/Paint;->native_getTextRunCursor(I[CIIIII)I

    move-result v0

    return v0
.end method

.method public native getTextScaleX()F
.end method

.method public native getTextSize()F
.end method

.method public native getTextSkewX()F
.end method

.method public getTextWidths(Ljava/lang/CharSequence;II[F)I
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "widths"

    .prologue
    const/4 v1, 0x0

    .line 1735
    if-nez p1, :cond_0

    .line 1736
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1738
    :cond_0
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1

    .line 1739
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1741
    :cond_1
    sub-int v2, p3, p2

    array-length v3, p4

    if-le v2, v3, :cond_2

    .line 1742
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1745
    :cond_2
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_3

    if-ne p2, p3, :cond_4

    .line 1764
    .end local p1
    :cond_3
    :goto_0
    return v1

    .line 1748
    .restart local p1
    :cond_4
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_5

    .line 1749
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v1

    goto :goto_0

    .line 1751
    .restart local p1
    :cond_5
    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_6

    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_7

    .line 1753
    :cond_6
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3, p4}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v1

    goto :goto_0

    .line 1755
    :cond_7
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_8

    .line 1756
    check-cast p1, Landroid/text/GraphicsOperations;

    .end local p1
    invoke-interface {p1, p2, p3, p4, p0}, Landroid/text/GraphicsOperations;->getTextWidths(II[FLandroid/graphics/Paint;)I

    move-result v1

    goto :goto_0

    .line 1760
    .restart local p1
    :cond_8
    sub-int v2, p3, p2

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 1761
    .local v0, buf:[C
    invoke-static {p1, p2, p3, v0, v1}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1762
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v1, v2, p4}, Landroid/graphics/Paint;->getTextWidths([CII[F)I

    move-result v1

    .line 1763
    .local v1, result:I
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0
.end method

.method public getTextWidths(Ljava/lang/String;II[F)I
    .locals 9
    .parameter "text"
    .parameter "start"
    .parameter "end"
    .parameter "widths"

    .prologue
    .line 1778
    if-nez p1, :cond_0

    .line 1779
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1781
    :cond_0
    or-int v0, p2, p3

    sub-int v1, p3, p2

    or-int/2addr v0, v1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    sub-int/2addr v1, p3

    or-int/2addr v0, v1

    if-gez v0, :cond_1

    .line 1782
    new-instance v0, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1784
    :cond_1
    sub-int v0, p3, p2

    array-length v1, p4

    if-le v0, v1, :cond_2

    .line 1785
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1788
    :cond_2
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-eqz v0, :cond_3

    if-ne p2, p3, :cond_5

    .line 1789
    :cond_3
    const/4 v8, 0x0

    .line 1802
    :cond_4
    :goto_0
    return v8

    .line 1791
    :cond_5
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_6

    .line 1792
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->native_getTextWidths(ILjava/lang/String;III[F)I

    move-result v8

    goto :goto_0

    .line 1795
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    .line 1796
    .local v7, oldSize:F
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v7

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1797
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->native_getTextWidths(ILjava/lang/String;III[F)I

    move-result v8

    .line 1798
    .local v8, res:I
    invoke-virtual {p0, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1799
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v8, :cond_4

    .line 1800
    aget v0, p4, v6

    iget v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v0, v1

    aput v0, p4, v6

    .line 1799
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public getTextWidths(Ljava/lang/String;[F)I
    .locals 2
    .parameter "text"
    .parameter "widths"

    .prologue
    .line 1814
    const/4 v0, 0x0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, p1, v0, v1, p2}, Landroid/graphics/Paint;->getTextWidths(Ljava/lang/String;II[F)I

    move-result v0

    return v0
.end method

.method public getTextWidths([CII[F)I
    .locals 9
    .parameter "text"
    .parameter "index"
    .parameter "count"
    .parameter "widths"

    .prologue
    .line 1698
    if-nez p1, :cond_0

    .line 1699
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "text cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1701
    :cond_0
    or-int v0, p2, p3

    if-ltz v0, :cond_1

    add-int v0, p2, p3

    array-length v1, p1

    if-gt v0, v1, :cond_1

    array-length v0, p4

    if-le p3, v0, :cond_2

    .line 1703
    :cond_1
    new-instance v0, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v0}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v0

    .line 1706
    :cond_2
    array-length v0, p1

    if-eqz v0, :cond_3

    if-nez p3, :cond_5

    .line 1707
    :cond_3
    const/4 v8, 0x0

    .line 1720
    :cond_4
    :goto_0
    return v8

    .line 1709
    :cond_5
    iget-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v0, :cond_6

    .line 1710
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->native_getTextWidths(I[CIII[F)I

    move-result v8

    goto :goto_0

    .line 1713
    :cond_6
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v7

    .line 1714
    .local v7, oldSize:F
    iget v0, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v0, v7

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1715
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v4, p0, Landroid/graphics/Paint;->mBidiFlags:I

    move-object v1, p1

    move v2, p2

    move v3, p3

    move-object v5, p4

    invoke-static/range {v0 .. v5}, Landroid/graphics/Paint;->native_getTextWidths(I[CIII[F)I

    move-result v8

    .line 1716
    .local v8, res:I
    invoke-virtual {p0, v7}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1717
    const/4 v6, 0x0

    .local v6, i:I
    :goto_1
    if-ge v6, v8, :cond_4

    .line 1718
    aget v0, p4, v6

    iget v1, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v0, v1

    aput v0, p4, v6

    .line 1717
    add-int/lit8 v6, v6, 0x1

    goto :goto_1
.end method

.method public getTypeface()Landroid/graphics/Typeface;
    .locals 1

    .prologue
    .line 1107
    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    return-object v0
.end method

.method public getXfermode()Landroid/graphics/Xfermode;
    .locals 1

    .prologue
    .line 1020
    iget-object v0, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    return-object v0
.end method

.method public final isAntiAlias()Z
    .locals 1

    .prologue
    .line 650
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x1

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isDither()Z
    .locals 1

    .prologue
    .line 674
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x4

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFakeBoldText()Z
    .locals 1

    .prologue
    .line 763
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x20

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isFilterBitmap()Z
    .locals 1

    .prologue
    .line 783
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x2

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isLinearText()Z
    .locals 1

    .prologue
    .line 695
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x40

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isStrikeThruText()Z
    .locals 1

    .prologue
    .line 746
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x10

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isSubpixelText()Z
    .locals 1

    .prologue
    .line 712
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit16 v0, v0, 0x80

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public final isUnderlineText()Z
    .locals 1

    .prologue
    .line 729
    invoke-virtual {p0}, Landroid/graphics/Paint;->getFlags()I

    move-result v0

    and-int/lit8 v0, v0, 0x8

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public measureText(Ljava/lang/CharSequence;II)F
    .locals 5
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    const/4 v4, 0x0

    .line 1525
    if-nez p1, :cond_0

    .line 1526
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1528
    :cond_0
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1

    .line 1529
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1532
    :cond_1
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result v2

    if-eqz v2, :cond_2

    if-ne p2, p3, :cond_3

    .line 1533
    :cond_2
    const/4 v1, 0x0

    .line 1550
    .end local p1
    :goto_0
    return v1

    .line 1535
    .restart local p1
    :cond_3
    instance-of v2, p1, Ljava/lang/String;

    if-eqz v2, :cond_4

    .line 1536
    check-cast p1, Ljava/lang/String;

    .end local p1
    invoke-virtual {p0, p1, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    goto :goto_0

    .line 1538
    .restart local p1
    :cond_4
    instance-of v2, p1, Landroid/text/SpannedString;

    if-nez v2, :cond_5

    instance-of v2, p1, Landroid/text/SpannableString;

    if-eqz v2, :cond_6

    .line 1540
    :cond_5
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v2, p2, p3}, Landroid/graphics/Paint;->measureText(Ljava/lang/String;II)F

    move-result v1

    goto :goto_0

    .line 1542
    :cond_6
    instance-of v2, p1, Landroid/text/GraphicsOperations;

    if-eqz v2, :cond_7

    .line 1543
    check-cast p1, Landroid/text/GraphicsOperations;

    .end local p1
    invoke-interface {p1, p2, p3, p0}, Landroid/text/GraphicsOperations;->measureText(IILandroid/graphics/Paint;)F

    move-result v1

    goto :goto_0

    .line 1546
    .restart local p1
    :cond_7
    sub-int v2, p3, p2

    invoke-static {v2}, Landroid/graphics/TemporaryBuffer;->obtain(I)[C

    move-result-object v0

    .line 1547
    .local v0, buf:[C
    invoke-static {p1, p2, p3, v0, v4}, Landroid/text/TextUtils;->getChars(Ljava/lang/CharSequence;II[CI)V

    .line 1548
    sub-int v2, p3, p2

    invoke-virtual {p0, v0, v4, v2}, Landroid/graphics/Paint;->measureText([CII)F

    move-result v1

    .line 1549
    .local v1, result:F
    invoke-static {v0}, Landroid/graphics/TemporaryBuffer;->recycle([C)V

    goto :goto_0
.end method

.method public measureText(Ljava/lang/String;)F
    .locals 4
    .parameter "text"

    .prologue
    .line 1496
    if-nez p1, :cond_0

    .line 1497
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1500
    :cond_0
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-nez v2, :cond_1

    .line 1501
    const/4 v2, 0x0

    .line 1511
    :goto_0
    return v2

    .line 1504
    :cond_1
    iget-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_2

    .line 1505
    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-direct {p0, p1, v2}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;I)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_0

    .line 1507
    :cond_2
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1508
    .local v0, oldSize:F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1509
    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-direct {p0, p1, v2}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;I)F

    move-result v1

    .line 1510
    .local v1, w:F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1511
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_0
.end method

.method public measureText(Ljava/lang/String;II)F
    .locals 4
    .parameter "text"
    .parameter "start"
    .parameter "end"

    .prologue
    .line 1466
    if-nez p1, :cond_0

    .line 1467
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1469
    :cond_0
    or-int v2, p2, p3

    sub-int v3, p3, p2

    or-int/2addr v2, v3

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v3

    sub-int/2addr v3, p3

    or-int/2addr v2, v3

    if-gez v2, :cond_1

    .line 1470
    new-instance v2, Ljava/lang/IndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/IndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1473
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    if-eqz v2, :cond_2

    if-ne p2, p3, :cond_3

    .line 1474
    :cond_2
    const/4 v2, 0x0

    .line 1484
    :goto_0
    return v2

    .line 1476
    :cond_3
    iget-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_4

    .line 1477
    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-direct {p0, p1, p2, p3, v2}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;III)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_0

    .line 1480
    :cond_4
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1481
    .local v0, oldSize:F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1482
    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-direct {p0, p1, p2, p3, v2}, Landroid/graphics/Paint;->native_measureText(Ljava/lang/String;III)F

    move-result v1

    .line 1483
    .local v1, w:F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1484
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_0
.end method

.method public measureText([CII)F
    .locals 4
    .parameter "text"
    .parameter "index"
    .parameter "count"

    .prologue
    .line 1434
    if-nez p1, :cond_0

    .line 1435
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "text cannot be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 1437
    :cond_0
    or-int v2, p2, p3

    if-ltz v2, :cond_1

    add-int v2, p2, p3

    array-length v3, p1

    if-le v2, v3, :cond_2

    .line 1438
    :cond_1
    new-instance v2, Ljava/lang/ArrayIndexOutOfBoundsException;

    invoke-direct {v2}, Ljava/lang/ArrayIndexOutOfBoundsException;-><init>()V

    throw v2

    .line 1441
    :cond_2
    array-length v2, p1

    if-eqz v2, :cond_3

    if-nez p3, :cond_4

    .line 1442
    :cond_3
    const/4 v2, 0x0

    .line 1452
    :goto_0
    return v2

    .line 1444
    :cond_4
    iget-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    if-nez v2, :cond_5

    .line 1445
    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-direct {p0, p1, p2, p3, v2}, Landroid/graphics/Paint;->native_measureText([CIII)F

    move-result v2

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_0

    .line 1448
    :cond_5
    invoke-virtual {p0}, Landroid/graphics/Paint;->getTextSize()F

    move-result v0

    .line 1449
    .local v0, oldSize:F
    iget v2, p0, Landroid/graphics/Paint;->mCompatScaling:F

    mul-float/2addr v2, v0

    invoke-virtual {p0, v2}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1450
    iget v2, p0, Landroid/graphics/Paint;->mBidiFlags:I

    invoke-direct {p0, p1, p2, p3, v2}, Landroid/graphics/Paint;->native_measureText([CIII)F

    move-result v1

    .line 1451
    .local v1, w:F
    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 1452
    iget v2, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    mul-float/2addr v2, v1

    float-to-double v2, v2

    invoke-static {v2, v3}, Ljava/lang/Math;->ceil(D)D

    move-result-wide v2

    double-to-float v2, v2

    goto :goto_0
.end method

.method public reset()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f80

    const/4 v3, 0x0

    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 485
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0}, Landroid/graphics/Paint;->native_reset(I)V

    .line 489
    const/16 v0, 0x500

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setFlags(I)V

    .line 496
    iput-object v1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 497
    iput-object v1, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 498
    iput-object v1, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 499
    iput-object v1, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    .line 500
    iput-object v1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 501
    iput-object v1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 502
    iput-object v1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 504
    iput-boolean v2, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 505
    iput v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 506
    iput v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    .line 508
    iput-boolean v2, p0, Landroid/graphics/Paint;->hasShadow:Z

    .line 509
    iput v3, p0, Landroid/graphics/Paint;->shadowDx:F

    .line 510
    iput v3, p0, Landroid/graphics/Paint;->shadowDy:F

    .line 511
    iput v3, p0, Landroid/graphics/Paint;->shadowRadius:F

    .line 512
    iput v2, p0, Landroid/graphics/Paint;->shadowColor:I

    .line 514
    const/4 v0, 0x2

    iput v0, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 515
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setTextLocale(Ljava/util/Locale;)V

    .line 518
    iput v2, p0, Landroid/graphics/Paint;->mTypefaceNative:I

    .line 519
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v1, v1, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_setTypeface(II)I

    .line 521
    return-void
.end method

.method public set(Landroid/graphics/Paint;)V
    .locals 2
    .parameter "src"

    .prologue
    .line 532
    if-eq p0, p1, :cond_0

    .line 534
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p1, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_set(II)V

    .line 535
    invoke-direct {p0, p1}, Landroid/graphics/Paint;->setClassVariablesFrom(Landroid/graphics/Paint;)V

    .line 539
    :cond_0
    iget v0, p0, Landroid/graphics/Paint;->mTypefaceNative:I

    if-eqz v0, :cond_1

    iget-object v0, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    iget-boolean v0, v0, Landroid/graphics/Typeface;->isLikeDefault:Z

    if-eqz v0, :cond_2

    sget-boolean v0, Landroid/graphics/Typeface;->isFlipFontUsed:Z

    if-eqz v0, :cond_2

    .line 540
    :cond_1
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    sget-object v1, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v1, v1, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_setTypeface(II)I

    .line 544
    :goto_0
    return-void

    .line 542
    :cond_2
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p0, Landroid/graphics/Paint;->mTypefaceNative:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_setTypeface(II)I

    goto :goto_0
.end method

.method public setARGB(IIII)V
    .locals 2
    .parameter "a"
    .parameter "r"
    .parameter "g"
    .parameter "b"

    .prologue
    .line 866
    shl-int/lit8 v0, p1, 0x18

    shl-int/lit8 v1, p2, 0x10

    or-int/2addr v0, v1

    shl-int/lit8 v1, p3, 0x8

    or-int/2addr v0, v1

    or-int/2addr v0, p4

    invoke-virtual {p0, v0}, Landroid/graphics/Paint;->setColor(I)V

    .line 867
    return-void
.end method

.method public native setAlpha(I)V
.end method

.method public native setAntiAlias(Z)V
.end method

.method public setBidiFlags(I)V
    .locals 3
    .parameter "flags"

    .prologue
    .line 608
    and-int/lit8 p1, p1, 0x7

    .line 609
    const/4 v0, 0x5

    if-le p1, v0, :cond_0

    .line 610
    new-instance v0, Ljava/lang/IllegalArgumentException;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "unknown bidi flag: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 612
    :cond_0
    iput p1, p0, Landroid/graphics/Paint;->mBidiFlags:I

    .line 613
    return-void
.end method

.method public native setColor(I)V
.end method

.method public setColorFilter(Landroid/graphics/ColorFilter;)Landroid/graphics/ColorFilter;
    .locals 2
    .parameter "filter"

    .prologue
    .line 1006
    const/4 v0, 0x0

    .line 1007
    .local v0, filterNative:I
    if-eqz p1, :cond_0

    .line 1008
    iget v0, p1, Landroid/graphics/ColorFilter;->native_instance:I

    .line 1009
    :cond_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setColorFilter(II)I

    .line 1010
    iput-object p1, p0, Landroid/graphics/Paint;->mColorFilter:Landroid/graphics/ColorFilter;

    .line 1011
    return-object p1
.end method

.method public setCompatibilityScaling(F)V
    .locals 5
    .parameter "factor"

    .prologue
    const/high16 v4, 0x3f80

    .line 582
    float-to-double v0, p1

    const-wide/high16 v2, 0x3ff0

    cmpl-double v0, v0, v2

    if-nez v0, :cond_0

    .line 583
    const/4 v0, 0x0

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 584
    iput v4, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    iput v4, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 590
    :goto_0
    return-void

    .line 586
    :cond_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/graphics/Paint;->mHasCompatScaling:Z

    .line 587
    iput p1, p0, Landroid/graphics/Paint;->mCompatScaling:F

    .line 588
    div-float v0, v4, p1

    iput v0, p0, Landroid/graphics/Paint;->mInvCompatScaling:F

    goto :goto_0
.end method

.method public native setDither(Z)V
.end method

.method public native setFakeBoldText(Z)V
.end method

.method public native setFilterBitmap(Z)V
.end method

.method public native setFlags(I)V
.end method

.method public native setHinting(I)V
.end method

.method public native setLinearText(Z)V
.end method

.method public setMaskFilter(Landroid/graphics/MaskFilter;)Landroid/graphics/MaskFilter;
    .locals 2
    .parameter "maskfilter"

    .prologue
    .line 1089
    const/4 v0, 0x0

    .line 1090
    .local v0, maskfilterNative:I
    if-eqz p1, :cond_0

    .line 1091
    iget v0, p1, Landroid/graphics/MaskFilter;->native_instance:I

    .line 1093
    :cond_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setMaskFilter(II)I

    .line 1094
    iput-object p1, p0, Landroid/graphics/Paint;->mMaskFilter:Landroid/graphics/MaskFilter;

    .line 1095
    return-object p1
.end method

.method public setPathEffect(Landroid/graphics/PathEffect;)Landroid/graphics/PathEffect;
    .locals 2
    .parameter "effect"

    .prologue
    .line 1060
    const/4 v0, 0x0

    .line 1061
    .local v0, effectNative:I
    if-eqz p1, :cond_0

    .line 1062
    iget v0, p1, Landroid/graphics/PathEffect;->native_instance:I

    .line 1064
    :cond_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setPathEffect(II)I

    .line 1065
    iput-object p1, p0, Landroid/graphics/Paint;->mPathEffect:Landroid/graphics/PathEffect;

    .line 1066
    return-object p1
.end method

.method public setRasterizer(Landroid/graphics/Rasterizer;)Landroid/graphics/Rasterizer;
    .locals 2
    .parameter "rasterizer"

    .prologue
    .line 1160
    const/4 v0, 0x0

    .line 1161
    .local v0, rasterizerNative:I
    if-eqz p1, :cond_0

    .line 1162
    iget v0, p1, Landroid/graphics/Rasterizer;->native_instance:I

    .line 1164
    :cond_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setRasterizer(II)I

    .line 1165
    iput-object p1, p0, Landroid/graphics/Paint;->mRasterizer:Landroid/graphics/Rasterizer;

    .line 1166
    return-object p1
.end method

.method public setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;
    .locals 2
    .parameter "shader"

    .prologue
    .line 982
    const/4 v0, 0x0

    .line 983
    .local v0, shaderNative:I
    if-eqz p1, :cond_0

    .line 984
    iget v0, p1, Landroid/graphics/Shader;->native_instance:I

    .line 985
    :cond_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setShader(II)I

    .line 986
    iput-object p1, p0, Landroid/graphics/Paint;->mShader:Landroid/graphics/Shader;

    .line 987
    return-object p1
.end method

.method public setShadowLayer(FFFI)V
    .locals 1
    .parameter "radius"
    .parameter "dx"
    .parameter "dy"
    .parameter "color"

    .prologue
    .line 1175
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Landroid/graphics/Paint;->hasShadow:Z

    .line 1176
    iput p1, p0, Landroid/graphics/Paint;->shadowRadius:F

    .line 1177
    iput p2, p0, Landroid/graphics/Paint;->shadowDx:F

    .line 1178
    iput p3, p0, Landroid/graphics/Paint;->shadowDy:F

    .line 1179
    iput p4, p0, Landroid/graphics/Paint;->shadowColor:I

    .line 1180
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/graphics/Paint;->nSetShadowLayer(FFFI)V

    .line 1181
    return-void

    .line 1175
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public native setStrikeThruText(Z)V
.end method

.method public setStrokeCap(Landroid/graphics/Paint$Cap;)V
    .locals 2
    .parameter "cap"

    .prologue
    .line 926
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p1, Landroid/graphics/Paint$Cap;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_setStrokeCap(II)V

    .line 927
    return-void
.end method

.method public setStrokeJoin(Landroid/graphics/Paint$Join;)V
    .locals 2
    .parameter "join"

    .prologue
    .line 945
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p1, Landroid/graphics/Paint$Join;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_setStrokeJoin(II)V

    .line 946
    return-void
.end method

.method public native setStrokeMiter(F)V
.end method

.method public native setStrokeWidth(F)V
.end method

.method public setStyle(Landroid/graphics/Paint$Style;)V
    .locals 2
    .parameter "style"

    .prologue
    .line 816
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p1, Landroid/graphics/Paint$Style;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_setStyle(II)V

    .line 817
    return-void
.end method

.method public native setSubpixelText(Z)V
.end method

.method public setTextAlign(Landroid/graphics/Paint$Align;)V
    .locals 2
    .parameter "align"

    .prologue
    .line 1214
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    iget v1, p1, Landroid/graphics/Paint$Align;->nativeInt:I

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_setTextAlign(II)V

    .line 1215
    return-void
.end method

.method public setTextLocale(Ljava/util/Locale;)V
    .locals 2
    .parameter "locale"

    .prologue
    .line 1253
    if-nez p1, :cond_0

    .line 1254
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string v1, "locale cannot be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 1256
    :cond_0
    iget-object v0, p0, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    invoke-virtual {p1, v0}, Ljava/util/Locale;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1259
    :goto_0
    return-void

    .line 1257
    :cond_1
    iput-object p1, p0, Landroid/graphics/Paint;->mLocale:Ljava/util/Locale;

    .line 1258
    iget v0, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-virtual {p1}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/graphics/Paint;->native_setTextLocale(ILjava/lang/String;)V

    goto :goto_0
.end method

.method public native setTextScaleX(F)V
.end method

.method public native setTextSize(F)V
.end method

.method public native setTextSkewX(F)V
.end method

.method public setTypeface(Landroid/graphics/Typeface;)Landroid/graphics/Typeface;
    .locals 3
    .parameter "typeface"

    .prologue
    .line 1124
    const/4 v0, 0x0

    .line 1125
    .local v0, typefaceNative:I
    if-eqz p1, :cond_0

    .line 1126
    iget v0, p1, Landroid/graphics/Typeface;->native_instance:I

    .line 1128
    :cond_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setTypeface(II)I

    .line 1129
    iput-object p1, p0, Landroid/graphics/Paint;->mTypeface:Landroid/graphics/Typeface;

    .line 1131
    iput v0, p0, Landroid/graphics/Paint;->mTypefaceNative:I

    .line 1132
    iget v1, p0, Landroid/graphics/Paint;->mTypefaceNative:I

    if-nez v1, :cond_1

    .line 1133
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    sget-object v2, Landroid/graphics/Typeface;->DEFAULT:Landroid/graphics/Typeface;

    iget v2, v2, Landroid/graphics/Typeface;->native_instance:I

    invoke-static {v1, v2}, Landroid/graphics/Paint;->native_setTypeface(II)I

    .line 1135
    :cond_1
    return-object p1
.end method

.method public native setUnderlineText(Z)V
.end method

.method public setXfermode(Landroid/graphics/Xfermode;)Landroid/graphics/Xfermode;
    .locals 2
    .parameter "xfermode"

    .prologue
    .line 1033
    const/4 v0, 0x0

    .line 1034
    .local v0, xfermodeNative:I
    if-eqz p1, :cond_0

    .line 1035
    iget v0, p1, Landroid/graphics/Xfermode;->native_instance:I

    .line 1036
    :cond_0
    iget v1, p0, Landroid/graphics/Paint;->mNativePaint:I

    invoke-static {v1, v0}, Landroid/graphics/Paint;->native_setXfermode(II)I

    .line 1037
    iput-object p1, p0, Landroid/graphics/Paint;->mXfermode:Landroid/graphics/Xfermode;

    .line 1038
    return-object p1
.end method
