.class public Lzte/android/text/util/LinkifyZTE;
.super Landroid/text/util/Linkify;
.source "LinkifyZTE.java"


# static fields
.field protected static final PHONE_NUMBER_MINIMUM_DIGITS:I = 0x3

.field public static final sPhoneNumberMatchFilterZTE:Landroid/text/util/Linkify$MatchFilter;

.field public static final sPhoneNumberTransformFilterZTE:Landroid/text/util/Linkify$TransformFilter;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 31
    new-instance v0, Lzte/android/text/util/LinkifyZTE$1;

    invoke-direct {v0}, Lzte/android/text/util/LinkifyZTE$1;-><init>()V

    sput-object v0, Lzte/android/text/util/LinkifyZTE;->sPhoneNumberTransformFilterZTE:Landroid/text/util/Linkify$TransformFilter;

    .line 37
    new-instance v0, Lzte/android/text/util/LinkifyZTE$2;

    invoke-direct {v0}, Lzte/android/text/util/LinkifyZTE$2;-><init>()V

    sput-object v0, Lzte/android/text/util/LinkifyZTE;->sPhoneNumberMatchFilterZTE:Landroid/text/util/Linkify$MatchFilter;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 27
    invoke-direct {p0}, Landroid/text/util/Linkify;-><init>()V

    return-void
.end method

.method private static final addLinkMovementMethod(Landroid/widget/TextView;)V
    .locals 2
    .parameter "t"

    .prologue
    .line 279
    invoke-virtual {p0}, Landroid/widget/TextView;->getMovementMethod()Landroid/text/method/MovementMethod;

    move-result-object v0

    .line 281
    .local v0, m:Landroid/text/method/MovementMethod;
    if-eqz v0, :cond_0

    instance-of v1, v0, Landroid/text/method/LinkMovementMethod;

    if-nez v1, :cond_1

    .line 282
    :cond_0
    invoke-virtual {p0}, Landroid/widget/TextView;->getLinksClickable()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 283
    invoke-static {}, Landroid/text/method/LinkMovementMethod;->getInstance()Landroid/text/method/MovementMethod;

    move-result-object v1

    invoke-virtual {p0, v1}, Landroid/widget/TextView;->setMovementMethod(Landroid/text/method/MovementMethod;)V

    .line 286
    :cond_1
    return-void
.end method

.method public static final addLinksZTE(Landroid/text/Spannable;I)Z
    .locals 12
    .parameter "text"
    .parameter "mask"

    .prologue
    const/4 v5, 0x0

    const/4 v11, 0x1

    const/4 v10, 0x0

    .line 83
    if-nez p1, :cond_0

    move v1, v10

    .line 124
    :goto_0
    return v1

    .line 87
    :cond_0
    invoke-interface {p0}, Landroid/text/Spannable;->length()I

    move-result v1

    const-class v2, Landroid/text/style/URLSpan;

    invoke-interface {p0, v10, v1, v2}, Landroid/text/Spannable;->getSpans(IILjava/lang/Class;)[Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [Landroid/text/style/URLSpan;

    .line 89
    .local v9, old:[Landroid/text/style/URLSpan;
    array-length v1, v9

    add-int/lit8 v6, v1, -0x1

    .local v6, i:I
    :goto_1
    if-ltz v6, :cond_1

    .line 90
    aget-object v1, v9, v6

    invoke-interface {p0, v1}, Landroid/text/Spannable;->removeSpan(Ljava/lang/Object;)V

    .line 89
    add-int/lit8 v6, v6, -0x1

    goto :goto_1

    .line 93
    :cond_1
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 95
    .local v0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/android/text/util/LinkSpec;>;"
    and-int/lit8 v1, p1, 0x1

    if-eqz v1, :cond_2

    .line 96
    sget-object v2, Lzte/android/util/PatternsZTE;->WEB_URL_ZTE:Ljava/util/regex/Pattern;

    const/4 v1, 0x3

    new-array v3, v1, [Ljava/lang/String;

    const-string v1, "http://"

    aput-object v1, v3, v10

    const-string v1, "https://"

    aput-object v1, v3, v11

    const/4 v1, 0x2

    const-string v4, "rtsp://"

    aput-object v4, v3, v1

    sget-object v4, Lzte/android/text/util/LinkifyZTE;->sUrlMatchFilter:Landroid/text/util/Linkify$MatchFilter;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lzte/android/text/util/LinkifyZTE;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 100
    :cond_2
    and-int/lit8 v1, p1, 0x2

    if-eqz v1, :cond_3

    .line 101
    sget-object v2, Landroid/util/Patterns;->EMAIL_ADDRESS:Ljava/util/regex/Pattern;

    new-array v3, v11, [Ljava/lang/String;

    const-string v1, "mailto:"

    aput-object v1, v3, v10

    move-object v1, p0

    move-object v4, v5

    invoke-static/range {v0 .. v5}, Lzte/android/text/util/LinkifyZTE;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 104
    :cond_3
    and-int/lit8 v1, p1, 0x4

    if-eqz v1, :cond_4

    .line 105
    sget-object v2, Lzte/android/util/PatternsZTE;->PHONE_ZTE:Ljava/util/regex/Pattern;

    new-array v3, v11, [Ljava/lang/String;

    const-string v1, "tel:"

    aput-object v1, v3, v10

    sget-object v4, Lzte/android/text/util/LinkifyZTE;->sPhoneNumberMatchFilterZTE:Landroid/text/util/Linkify$MatchFilter;

    sget-object v5, Lzte/android/text/util/LinkifyZTE;->sPhoneNumberTransformFilterZTE:Landroid/text/util/Linkify$TransformFilter;

    move-object v1, p0

    invoke-static/range {v0 .. v5}, Lzte/android/text/util/LinkifyZTE;->gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V

    .line 110
    :cond_4
    and-int/lit8 v1, p1, 0x8

    if-eqz v1, :cond_5

    .line 111
    invoke-static {v0, p0}, Lzte/android/text/util/LinkifyZTE;->gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V

    .line 114
    :cond_5
    invoke-static {v0}, Lzte/android/text/util/LinkifyZTE;->pruneOverlaps(Ljava/util/ArrayList;)V

    .line 116
    invoke-virtual {v0}, Ljava/util/ArrayList;->size()I

    move-result v1

    if-nez v1, :cond_6

    move v1, v10

    .line 117
    goto :goto_0

    .line 120
    :cond_6
    invoke-virtual {v0}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :goto_2
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v1

    if-eqz v1, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Lzte/android/text/util/LinkSpec;

    .line 121
    .local v8, link:Lzte/android/text/util/LinkSpec;
    iget-object v1, v8, Lzte/android/text/util/LinkSpec;->url:Ljava/lang/String;

    iget v2, v8, Lzte/android/text/util/LinkSpec;->start:I

    iget v3, v8, Lzte/android/text/util/LinkSpec;->end:I

    invoke-static {v1, v2, v3, p0}, Lzte/android/text/util/LinkifyZTE;->applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V

    goto :goto_2

    .end local v8           #link:Lzte/android/text/util/LinkSpec;
    :cond_7
    move v1, v11

    .line 124
    goto/16 :goto_0
.end method

.method public static final addLinksZTE(Landroid/widget/TextView;I)Z
    .locals 5
    .parameter "text"
    .parameter "mask"

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 54
    if-nez p1, :cond_1

    .line 78
    .end local p0
    :cond_0
    :goto_0
    return v2

    .line 58
    .restart local p0
    :cond_1
    invoke-virtual {p0}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v1

    .line 60
    .local v1, t:Ljava/lang/CharSequence;
    instance-of v4, v1, Landroid/text/Spannable;

    if-eqz v4, :cond_2

    .line 61
    check-cast v1, Landroid/text/Spannable;

    .end local v1           #t:Ljava/lang/CharSequence;
    invoke-static {v1, p1}, Lzte/android/text/util/LinkifyZTE;->addLinksZTE(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 62
    invoke-static {p0}, Lzte/android/text/util/LinkifyZTE;->addLinkMovementMethod(Landroid/widget/TextView;)V

    move v2, v3

    .line 63
    goto :goto_0

    .line 67
    .restart local v1       #t:Ljava/lang/CharSequence;
    :cond_2
    invoke-static {v1}, Landroid/text/SpannableString;->valueOf(Ljava/lang/CharSequence;)Landroid/text/SpannableString;

    move-result-object v0

    .line 69
    .local v0, s:Landroid/text/SpannableString;
    invoke-static {v0, p1}, Lzte/android/text/util/LinkifyZTE;->addLinksZTE(Landroid/text/Spannable;I)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 70
    invoke-static {p0}, Lzte/android/text/util/LinkifyZTE;->addLinkMovementMethod(Landroid/widget/TextView;)V

    .line 71
    instance-of v2, p0, Lzte/android/widget/TextViewZTE;

    if-eqz v2, :cond_3

    .line 72
    check-cast p0, Lzte/android/widget/TextViewZTE;

    .end local p0
    invoke-virtual {p0, v0}, Lzte/android/widget/TextViewZTE;->setTextZTE(Ljava/lang/CharSequence;)V

    :goto_1
    move v2, v3

    .line 76
    goto :goto_0

    .line 74
    .restart local p0
    :cond_3
    invoke-virtual {p0, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_1
.end method

.method private static final applyLink(Ljava/lang/String;IILandroid/text/Spannable;)V
    .locals 2
    .parameter "url"
    .parameter "start"
    .parameter "end"
    .parameter "text"

    .prologue
    .line 129
    new-instance v0, Landroid/text/style/URLSpan;

    invoke-direct {v0, p0}, Landroid/text/style/URLSpan;-><init>(Ljava/lang/String;)V

    .line 131
    .local v0, span:Landroid/text/style/URLSpan;
    const/16 v1, 0x21

    invoke-interface {p3, v0, p1, p2, v1}, Landroid/text/Spannable;->setSpan(Ljava/lang/Object;III)V

    .line 132
    return-void
.end method

.method private static final gatherLinks(Ljava/util/ArrayList;Landroid/text/Spannable;Ljava/util/regex/Pattern;[Ljava/lang/String;Landroid/text/util/Linkify$MatchFilter;Landroid/text/util/Linkify$TransformFilter;)V
    .locals 6
    .parameter
    .parameter "s"
    .parameter "pattern"
    .parameter "schemes"
    .parameter "matchFilter"
    .parameter "transformFilter"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lzte/android/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            "Ljava/util/regex/Pattern;",
            "[",
            "Ljava/lang/String;",
            "Landroid/text/util/Linkify$MatchFilter;",
            "Landroid/text/util/Linkify$TransformFilter;",
            ")V"
        }
    .end annotation

    .prologue
    .line 166
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/android/text/util/LinkSpec;>;"
    invoke-virtual {p2, p1}, Ljava/util/regex/Pattern;->matcher(Ljava/lang/CharSequence;)Ljava/util/regex/Matcher;

    move-result-object v1

    .line 168
    .local v1, m:Ljava/util/regex/Matcher;
    :cond_0
    :goto_0
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->find()Z

    move-result v5

    if-eqz v5, :cond_2

    .line 169
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->start()I

    move-result v3

    .line 170
    .local v3, start:I
    invoke-virtual {v1}, Ljava/util/regex/Matcher;->end()I

    move-result v0

    .line 172
    .local v0, end:I
    if-eqz p4, :cond_1

    invoke-interface {p4, p1, v3, v0}, Landroid/text/util/Linkify$MatchFilter;->acceptMatch(Ljava/lang/CharSequence;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 173
    :cond_1
    new-instance v2, Lzte/android/text/util/LinkSpec;

    invoke-direct {v2}, Lzte/android/text/util/LinkSpec;-><init>()V

    .line 174
    .local v2, spec:Lzte/android/text/util/LinkSpec;
    const/4 v5, 0x0

    invoke-virtual {v1, v5}, Ljava/util/regex/Matcher;->group(I)Ljava/lang/String;

    move-result-object v5

    invoke-static {v5, p3, v1, p5}, Lzte/android/text/util/LinkifyZTE;->makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;

    move-result-object v4

    .line 176
    .local v4, url:Ljava/lang/String;
    iput-object v4, v2, Lzte/android/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 177
    iput v3, v2, Lzte/android/text/util/LinkSpec;->start:I

    .line 178
    iput v0, v2, Lzte/android/text/util/LinkSpec;->end:I

    .line 180
    invoke-virtual {p0, v2}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 183
    .end local v0           #end:I
    .end local v2           #spec:Lzte/android/text/util/LinkSpec;
    .end local v3           #start:I
    .end local v4           #url:Ljava/lang/String;
    :cond_2
    return-void
.end method

.method private static final gatherMapLinks(Ljava/util/ArrayList;Landroid/text/Spannable;)V
    .locals 11
    .parameter
    .parameter "s"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lzte/android/text/util/LinkSpec;",
            ">;",
            "Landroid/text/Spannable;",
            ")V"
        }
    .end annotation

    .prologue
    .line 187
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/android/text/util/LinkSpec;>;"
    invoke-virtual {p1}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v8

    .line 189
    .local v8, string:Ljava/lang/String;
    const/4 v1, 0x0

    .line 191
    .local v1, base:I
    :goto_0
    invoke-static {v8}, Landroid/webkit/WebView;->findAddress(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .local v0, address:Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 192
    invoke-virtual {v8, v0}, Ljava/lang/String;->indexOf(Ljava/lang/String;)I

    move-result v7

    .line 194
    .local v7, start:I
    if-gez v7, :cond_1

    .line 218
    .end local v7           #start:I
    :cond_0
    return-void

    .line 198
    .restart local v7       #start:I
    :cond_1
    new-instance v6, Lzte/android/text/util/LinkSpec;

    invoke-direct {v6}, Lzte/android/text/util/LinkSpec;-><init>()V

    .line 199
    .local v6, spec:Lzte/android/text/util/LinkSpec;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    .line 200
    .local v5, length:I
    add-int v4, v7, v5

    .line 202
    .local v4, end:I
    add-int v9, v1, v7

    iput v9, v6, Lzte/android/text/util/LinkSpec;->start:I

    .line 203
    add-int v9, v1, v4

    iput v9, v6, Lzte/android/text/util/LinkSpec;->end:I

    .line 204
    invoke-virtual {v8, v4}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v8

    .line 205
    add-int/2addr v1, v4

    .line 207
    const/4 v3, 0x0

    .line 210
    .local v3, encodedAddress:Ljava/lang/String;
    :try_start_0
    const-string v9, "UTF-8"

    invoke-static {v0, v9}, Ljava/net/URLEncoder;->encode(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    :try_end_0
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v3

    .line 215
    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string v10, "geo:0,0?q="

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    iput-object v9, v6, Lzte/android/text/util/LinkSpec;->url:Ljava/lang/String;

    .line 216
    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 211
    :catch_0
    move-exception v2

    .line 212
    .local v2, e:Ljava/io/UnsupportedEncodingException;
    goto :goto_0
.end method

.method private static final makeUrl(Ljava/lang/String;[Ljava/lang/String;Ljava/util/regex/Matcher;Landroid/text/util/Linkify$TransformFilter;)Ljava/lang/String;
    .locals 9
    .parameter "url"
    .parameter "prefixes"
    .parameter "m"
    .parameter "filter"

    .prologue
    const/4 v2, 0x0

    .line 136
    if-eqz p3, :cond_0

    .line 137
    invoke-interface {p3, p2, p0}, Landroid/text/util/Linkify$TransformFilter;->transformUrl(Ljava/util/regex/Matcher;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p0

    .line 140
    :cond_0
    const/4 v7, 0x0

    .line 142
    .local v7, hasPrefix:Z
    const/4 v8, 0x0

    .local v8, i:I
    :goto_0
    array-length v0, p1

    if-ge v8, v0, :cond_1

    .line 143
    const/4 v1, 0x1

    aget-object v3, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v5

    move-object v0, p0

    move v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-eqz v0, :cond_3

    .line 144
    const/4 v7, 0x1

    .line 147
    aget-object v4, p1, v8

    aget-object v0, p1, v8

    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v6

    move-object v1, p0

    move v3, v2

    move v5, v2

    invoke-virtual/range {v1 .. v6}, Ljava/lang/String;->regionMatches(ZILjava/lang/String;II)Z

    move-result v0

    if-nez v0, :cond_1

    .line 149
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v8

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    aget-object v1, p1, v8

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v1

    invoke-virtual {p0, v1}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 156
    :cond_1
    if-nez v7, :cond_2

    .line 157
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    aget-object v1, p1, v2

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 160
    :cond_2
    return-object p0

    .line 142
    :cond_3
    add-int/lit8 v8, v8, 0x1

    goto :goto_0
.end method

.method private static final pruneOverlaps(Ljava/util/ArrayList;)V
    .locals 9
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<",
            "Lzte/android/text/util/LinkSpec;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 221
    .local p0, links:Ljava/util/ArrayList;,"Ljava/util/ArrayList<Lzte/android/text/util/LinkSpec;>;"
    new-instance v2, Lzte/android/text/util/LinkifyZTE$3;

    invoke-direct {v2}, Lzte/android/text/util/LinkifyZTE$3;-><init>()V

    .line 247
    .local v2, c:Ljava/util/Comparator;,"Ljava/util/Comparator<Lzte/android/text/util/LinkSpec;>;"
    invoke-static {p0, v2}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 249
    invoke-virtual {p0}, Ljava/util/ArrayList;->size()I

    move-result v4

    .line 250
    .local v4, len:I
    const/4 v3, 0x0

    .line 252
    .local v3, i:I
    :goto_0
    add-int/lit8 v6, v4, -0x1

    if-ge v3, v6, :cond_4

    .line 253
    invoke-virtual {p0, v3}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lzte/android/text/util/LinkSpec;

    .line 254
    .local v0, a:Lzte/android/text/util/LinkSpec;
    add-int/lit8 v6, v3, 0x1

    invoke-virtual {p0, v6}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lzte/android/text/util/LinkSpec;

    .line 255
    .local v1, b:Lzte/android/text/util/LinkSpec;
    const/4 v5, -0x1

    .line 257
    .local v5, remove:I
    iget v6, v0, Lzte/android/text/util/LinkSpec;->start:I

    iget v7, v1, Lzte/android/text/util/LinkSpec;->start:I

    if-gt v6, v7, :cond_3

    iget v6, v0, Lzte/android/text/util/LinkSpec;->end:I

    iget v7, v1, Lzte/android/text/util/LinkSpec;->start:I

    if-le v6, v7, :cond_3

    .line 258
    iget v6, v1, Lzte/android/text/util/LinkSpec;->end:I

    iget v7, v0, Lzte/android/text/util/LinkSpec;->end:I

    if-gt v6, v7, :cond_1

    .line 259
    add-int/lit8 v5, v3, 0x1

    .line 266
    :cond_0
    :goto_1
    const/4 v6, -0x1

    if-eq v5, v6, :cond_3

    .line 267
    invoke-virtual {p0, v5}, Ljava/util/ArrayList;->remove(I)Ljava/lang/Object;

    .line 268
    add-int/lit8 v4, v4, -0x1

    .line 269
    goto :goto_0

    .line 260
    :cond_1
    iget v6, v0, Lzte/android/text/util/LinkSpec;->end:I

    iget v7, v0, Lzte/android/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Lzte/android/text/util/LinkSpec;->end:I

    iget v8, v1, Lzte/android/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-le v6, v7, :cond_2

    .line 261
    add-int/lit8 v5, v3, 0x1

    goto :goto_1

    .line 262
    :cond_2
    iget v6, v0, Lzte/android/text/util/LinkSpec;->end:I

    iget v7, v0, Lzte/android/text/util/LinkSpec;->start:I

    sub-int/2addr v6, v7

    iget v7, v1, Lzte/android/text/util/LinkSpec;->end:I

    iget v8, v1, Lzte/android/text/util/LinkSpec;->start:I

    sub-int/2addr v7, v8

    if-ge v6, v7, :cond_0

    .line 263
    move v5, v3

    goto :goto_1

    .line 274
    :cond_3
    add-int/lit8 v3, v3, 0x1

    .line 275
    goto :goto_0

    .line 276
    .end local v0           #a:Lzte/android/text/util/LinkSpec;
    .end local v1           #b:Lzte/android/text/util/LinkSpec;
    .end local v5           #remove:I
    :cond_4
    return-void
.end method
