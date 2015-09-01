.class public Landroid/text/method/DialerKeyListener;
.super Landroid/text/method/NumberKeyListener;
.source "DialerKeyListener.java"


# static fields
.field public static final CHARACTERS:[C

.field private static sInstance:Landroid/text/method/DialerKeyListener;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 178
    const/16 v0, 0x18

    new-array v0, v0, [C

    fill-array-data v0, :array_0

    sput-object v0, Landroid/text/method/DialerKeyListener;->CHARACTERS:[C

    return-void

    :array_0
    .array-data 0x2
        0x30t 0x0t
        0x31t 0x0t
        0x32t 0x0t
        0x33t 0x0t
        0x34t 0x0t
        0x35t 0x0t
        0x36t 0x0t
        0x37t 0x0t
        0x38t 0x0t
        0x39t 0x0t
        0x23t 0x0t
        0x2at 0x0t
        0x2bt 0x0t
        0x2dt 0x0t
        0x28t 0x0t
        0x29t 0x0t
        0x2ct 0x0t
        0x2ft 0x0t
        0x4et 0x0t
        0x2et 0x0t
        0x20t 0x0t
        0x3bt 0x0t
        0x50t 0x0t
        0x57t 0x0t
    .end array-data
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 38
    invoke-direct {p0}, Landroid/text/method/NumberKeyListener;-><init>()V

    return-void
.end method

.method public static getInstance()Landroid/text/method/DialerKeyListener;
    .locals 1

    .prologue
    .line 47
    sget-object v0, Landroid/text/method/DialerKeyListener;->sInstance:Landroid/text/method/DialerKeyListener;

    if-eqz v0, :cond_0

    .line 48
    sget-object v0, Landroid/text/method/DialerKeyListener;->sInstance:Landroid/text/method/DialerKeyListener;

    .line 51
    :goto_0
    return-object v0

    .line 50
    :cond_0
    new-instance v0, Landroid/text/method/DialerKeyListener;

    invoke-direct {v0}, Landroid/text/method/DialerKeyListener;-><init>()V

    sput-object v0, Landroid/text/method/DialerKeyListener;->sInstance:Landroid/text/method/DialerKeyListener;

    .line 51
    sget-object v0, Landroid/text/method/DialerKeyListener;->sInstance:Landroid/text/method/DialerKeyListener;

    goto :goto_0
.end method


# virtual methods
.method public filter(Ljava/lang/CharSequence;IILandroid/text/Spanned;II)Ljava/lang/CharSequence;
    .locals 11
    .parameter "source"
    .parameter "start"
    .parameter "end"
    .parameter "dest"
    .parameter "dstart"
    .parameter "dend"

    .prologue
    .line 64
    invoke-virtual {p0}, Landroid/text/method/DialerKeyListener;->getAcceptedChars()[C

    move-result-object v0

    .line 65
    .local v0, accept:[C
    const/4 v2, 0x0

    .line 68
    .local v2, filter:Z
    move v5, p2

    .local v5, i:I
    :goto_0
    if-ge v5, p3, :cond_0

    .line 69
    invoke-interface {p1, v5}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v0, v9}, Landroid/text/method/DialerKeyListener;->ok([CC)Z

    move-result v9

    if-nez v9, :cond_3

    .line 76
    :cond_0
    if-ne v5, p3, :cond_4

    .line 80
    new-instance v1, Landroid/text/SpannableStringBuilder;

    invoke-direct {v1, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 82
    .local v1, filt:Landroid/text/SpannableStringBuilder;
    move v7, p2

    .local v7, k:I
    :goto_1
    if-ge v7, p3, :cond_5

    .line 83
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x50

    if-ne v9, v10, :cond_1

    .line 84
    add-int/lit8 v9, v7, 0x1

    const-string v10, ";"

    invoke-virtual {v1, v7, v9, v10}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 85
    :cond_1
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x57

    if-ne v9, v10, :cond_2

    .line 86
    add-int/lit8 v9, v7, 0x1

    const-string v10, ","

    invoke-virtual {v1, v7, v9, v10}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 82
    :cond_2
    add-int/lit8 v7, v7, 0x1

    goto :goto_1

    .line 68
    .end local v1           #filt:Landroid/text/SpannableStringBuilder;
    .end local v7           #k:I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 92
    :cond_4
    sub-int v9, p3, p2

    const/4 v10, 0x1

    if-ne v9, v10, :cond_6

    .line 95
    const-string v1, ""

    .line 120
    :cond_5
    :goto_2
    return-object v1

    .line 98
    :cond_6
    new-instance v4, Landroid/text/SpannableStringBuilder;

    invoke-direct {v4, p1, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 100
    .local v4, filtte:Landroid/text/SpannableStringBuilder;
    move v7, p2

    .restart local v7       #k:I
    :goto_3
    if-ge v7, p3, :cond_9

    .line 101
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x50

    if-ne v9, v10, :cond_7

    .line 102
    add-int/lit8 v9, v7, 0x1

    const-string v10, ";"

    invoke-virtual {v4, v7, v9, v10}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 103
    :cond_7
    invoke-interface {p1, v7}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    const/16 v10, 0x57

    if-ne v9, v10, :cond_8

    .line 104
    add-int/lit8 v9, v7, 0x1

    const-string v10, ","

    invoke-virtual {v4, v7, v9, v10}, Landroid/text/SpannableStringBuilder;->replace(IILjava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    .line 100
    :cond_8
    add-int/lit8 v7, v7, 0x1

    goto :goto_3

    .line 107
    :cond_9
    new-instance v3, Landroid/text/SpannableStringBuilder;

    invoke-direct {v3, v4, p2, p3}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;II)V

    .line 109
    .local v3, filtered:Landroid/text/SpannableStringBuilder;
    sub-int/2addr v5, p2

    .line 110
    sub-int/2addr p3, p2

    .line 112
    sub-int v8, p3, p2

    .line 114
    .local v8, len:I
    add-int/lit8 v6, p3, -0x1

    .local v6, j:I
    :goto_4
    if-lt v6, v5, :cond_b

    .line 115
    invoke-interface {p1, v6}, Ljava/lang/CharSequence;->charAt(I)C

    move-result v9

    invoke-static {v0, v9}, Landroid/text/method/DialerKeyListener;->ok([CC)Z

    move-result v9

    if-nez v9, :cond_a

    .line 116
    add-int/lit8 v9, v6, 0x1

    invoke-virtual {v3, v6, v9}, Landroid/text/SpannableStringBuilder;->delete(II)Landroid/text/SpannableStringBuilder;

    .line 114
    :cond_a
    add-int/lit8 v6, v6, -0x1

    goto :goto_4

    :cond_b
    move-object v1, v3

    .line 120
    goto :goto_2
.end method

.method protected getAcceptedChars()[C
    .locals 1

    .prologue
    .line 43
    sget-object v0, Landroid/text/method/DialerKeyListener;->CHARACTERS:[C

    return-object v0
.end method

.method public getInputType()I
    .locals 1

    .prologue
    .line 55
    const/4 v0, 0x3

    return v0
.end method

.method protected lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I
    .locals 7
    .parameter "event"
    .parameter "content"

    .prologue
    .line 123
    invoke-static {p2, p1}, Landroid/text/method/DialerKeyListener;->getMetaState(Ljava/lang/CharSequence;Landroid/view/KeyEvent;)I

    move-result v4

    .line 124
    .local v4, meta:I
    invoke-virtual {p1}, Landroid/view/KeyEvent;->getNumber()C

    move-result v5

    .line 130
    .local v5, number:I
    and-int/lit8 v6, v4, 0x3

    if-nez v6, :cond_1

    .line 131
    if-eqz v5, :cond_1

    .line 167
    .end local v5           #number:I
    :cond_0
    :goto_0
    return v5

    .line 136
    .restart local v5       #number:I
    :cond_1
    invoke-super {p0, p1, p2}, Landroid/text/method/NumberKeyListener;->lookup(Landroid/view/KeyEvent;Landroid/text/Spannable;)I

    move-result v3

    .line 138
    .local v3, match:I
    if-eqz v3, :cond_2

    move v5, v3

    .line 139
    goto :goto_0

    .line 148
    :cond_2
    if-eqz v4, :cond_0

    .line 149
    new-instance v2, Landroid/view/KeyCharacterMap$KeyData;

    invoke-direct {v2}, Landroid/view/KeyCharacterMap$KeyData;-><init>()V

    .line 150
    .local v2, kd:Landroid/view/KeyCharacterMap$KeyData;
    invoke-virtual {p0}, Landroid/text/method/DialerKeyListener;->getAcceptedChars()[C

    move-result-object v0

    .line 152
    .local v0, accepted:[C
    invoke-virtual {p1, v2}, Landroid/view/KeyEvent;->getKeyData(Landroid/view/KeyCharacterMap$KeyData;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 153
    const/4 v1, 0x1

    .local v1, i:I
    :goto_1
    iget-object v6, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    array-length v6, v6

    if-ge v1, v6, :cond_0

    .line 154
    iget-object v6, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v6, v6, v1

    invoke-static {v0, v6}, Landroid/text/method/DialerKeyListener;->ok([CC)Z

    move-result v6

    if-eqz v6, :cond_3

    .line 155
    iget-object v6, v2, Landroid/view/KeyCharacterMap$KeyData;->meta:[C

    aget-char v5, v6, v1

    goto :goto_0

    .line 153
    :cond_3
    add-int/lit8 v1, v1, 0x1

    goto :goto_1
.end method
