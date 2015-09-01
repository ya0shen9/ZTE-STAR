.class Landroid/view/EtViewFetcher;
.super Ljava/lang/Object;
.source "ViewDebug.java"


# static fields
.field private static final tag:Ljava/lang/String; = "EtViewFetcher"


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 1891
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addAllViewInfos(Ljava/util/List;Landroid/view/ViewGroup;Ljava/lang/String;)V
    .locals 8
    .parameter
    .parameter "group"
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/EtViewInfo;",
            ">;",
            "Landroid/view/ViewGroup;",
            "Ljava/lang/String;",
            ")V"
        }
    .end annotation

    .prologue
    .line 2185
    .local p0, viewInfos:Ljava/util/List;,"Ljava/util/List<Landroid/view/EtViewInfo;>;"
    invoke-static {p0, p1, p2}, Landroid/view/EtViewFetcher;->addViewInfo(Ljava/util/List;Landroid/view/View;Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 2204
    :cond_0
    return-void

    .line 2190
    :cond_1
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getChildCount()I

    move-result v0

    .line 2191
    .local v0, count:I
    const/4 v1, 0x0

    .local v1, i:I
    :goto_0
    if-ge v1, v0, :cond_0

    .line 2193
    const-string v4, "%s_%02d"

    const/4 v5, 0x2

    new-array v5, v5, [Ljava/lang/Object;

    const/4 v6, 0x0

    aput-object p2, v5, v6

    const/4 v6, 0x1

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v5, v6

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 2194
    .local v2, myPath:Ljava/lang/String;
    invoke-virtual {p1, v1}, Landroid/view/ViewGroup;->getChildAt(I)Landroid/view/View;

    move-result-object v3

    .line 2195
    .local v3, view:Landroid/view/View;
    instance-of v4, v3, Landroid/view/ViewGroup;

    if-eqz v4, :cond_2

    .line 2197
    check-cast v3, Landroid/view/ViewGroup;

    .end local v3           #view:Landroid/view/View;
    invoke-static {p0, v3, v2}, Landroid/view/EtViewFetcher;->addAllViewInfos(Ljava/util/List;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 2191
    :goto_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 2201
    .restart local v3       #view:Landroid/view/View;
    :cond_2
    invoke-static {p0, v3, v2}, Landroid/view/EtViewFetcher;->addViewInfo(Ljava/util/List;Landroid/view/View;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private static addViewInfo(Ljava/util/List;Landroid/view/View;Ljava/lang/String;)Z
    .locals 2
    .parameter
    .parameter "view"
    .parameter "path"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/view/EtViewInfo;",
            ">;",
            "Landroid/view/View;",
            "Ljava/lang/String;",
            ")Z"
        }
    .end annotation

    .prologue
    .line 2215
    .local p0, viewInfos:Ljava/util/List;,"Ljava/util/List<Landroid/view/EtViewInfo;>;"
    new-instance v0, Landroid/view/EtViewInfo;

    invoke-direct {v0, p1, p2}, Landroid/view/EtViewInfo;-><init>(Landroid/view/View;Ljava/lang/String;)V

    .line 2216
    .local v0, vi:Landroid/view/EtViewInfo;
    invoke-interface {p0, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 2218
    const/4 v1, 0x1

    return v1
.end method

.method public static getSpecViewInfo(Landroid/view/View;IIII)Landroid/view/EtViewInfo;
    .locals 18
    .parameter "root"
    .parameter "x"
    .parameter "y"
    .parameter "scrWidth"
    .parameter "scrHeight"

    .prologue
    .line 1929
    invoke-virtual/range {p0 .. p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v16

    check-cast v16, Landroid/view/ViewGroup;

    invoke-static/range {v16 .. v16}, Landroid/view/EtViewFetcher;->getViewInfos(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v15

    .line 1930
    .local v15, viewInfos:Ljava/util/List;,"Ljava/util/List<Landroid/view/EtViewInfo;>;"
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 1933
    .local v5, foundViewIndexes:Ljava/util/List;,"Ljava/util/List<Ljava/lang/Integer;>;"
    const/4 v6, 0x0

    .local v6, i:I
    :goto_0
    invoke-interface {v15}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_2

    .line 1935
    invoke-interface {v15, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/EtViewInfo;

    move-object/from16 v0, v16

    iget-object v3, v0, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    .line 1937
    .local v3, curView:Landroid/view/View;
    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v16

    if-eqz v16, :cond_0

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v16

    if-nez v16, :cond_1

    .line 1933
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 1942
    :cond_1
    move/from16 v0, p1

    move/from16 v1, p2

    invoke-static {v3, v0, v1}, Landroid/view/EtViewFetcher;->xyInView(Landroid/view/View;II)Z

    move-result v16

    if-eqz v16, :cond_0

    .line 1944
    invoke-static {v6}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 1948
    .end local v3           #curView:Landroid/view/View;
    :cond_2
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v10

    .line 1949
    .local v10, justIndex:I
    const/16 v16, 0x0

    move/from16 v0, v16

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/EtViewInfo;

    move-object/from16 v0, v16

    iget-object v11, v0, Landroid/view/EtViewInfo;->path:Ljava/lang/String;

    .line 1951
    .local v11, justPath:Ljava/lang/String;
    const/4 v6, 0x1

    :goto_2
    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v16

    move/from16 v0, v16

    if-ge v6, v0, :cond_4

    .line 1953
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v8

    .line 1954
    .local v8, index:I
    invoke-interface {v5, v6}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Ljava/lang/Integer;

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Integer;->intValue()I

    move-result v16

    invoke-interface/range {v15 .. v16}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/EtViewInfo;

    move-object/from16 v0, v16

    iget-object v12, v0, Landroid/view/EtViewInfo;->path:Ljava/lang/String;

    .line 1955
    .local v12, path:Ljava/lang/String;
    invoke-virtual {v12}, Ljava/lang/String;->length()I

    move-result v16

    invoke-virtual {v11}, Ljava/lang/String;->length()I

    move-result v17

    move/from16 v0, v16

    move/from16 v1, v17

    if-le v0, v1, :cond_3

    .line 1957
    move v10, v8

    .line 1958
    move-object v11, v12

    .line 1951
    :cond_3
    add-int/lit8 v6, v6, 0x1

    goto :goto_2

    .line 1964
    .end local v8           #index:I
    .end local v12           #path:Ljava/lang/String;
    :cond_4
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/EtViewInfo;

    .line 1966
    .local v9, justEtVi:Landroid/view/EtViewInfo;
    iget-object v14, v9, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    .line 1967
    .local v14, view:Landroid/view/View;
    const-string v13, ""

    .line 1968
    .local v13, text:Ljava/lang/String;
    instance-of v0, v14, Landroid/widget/TextView;

    move/from16 v16, v0

    if-eqz v16, :cond_5

    .line 1970
    check-cast v14, Landroid/widget/TextView;

    .end local v14           #view:Landroid/view/View;
    invoke-virtual {v14}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v13

    .line 1973
    :cond_5
    const/4 v8, 0x0

    .line 1974
    .restart local v8       #index:I
    invoke-interface {v15}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v7

    .local v7, i$:Ljava/util/Iterator;
    :cond_6
    invoke-interface {v7}, Ljava/util/Iterator;->hasNext()Z

    move-result v16

    if-eqz v16, :cond_7

    invoke-interface {v7}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/view/EtViewInfo;

    .line 1976
    .local v4, etVi:Landroid/view/EtViewInfo;
    iget-object v2, v4, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    .line 1977
    .local v2, aView:Landroid/view/View;
    instance-of v0, v2, Landroid/widget/TextView;

    move/from16 v16, v0

    if-eqz v16, :cond_6

    move-object/from16 v16, v2

    .line 1979
    check-cast v16, Landroid/widget/TextView;

    invoke-virtual/range {v16 .. v16}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v16

    invoke-virtual/range {v16 .. v16}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v16

    move-object/from16 v0, v16

    invoke-virtual {v0, v13}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v16

    if-eqz v16, :cond_6

    move/from16 v0, p3

    move/from16 v1, p4

    invoke-static {v2, v0, v1}, Landroid/view/EtViewFetcher;->viewInScreen(Landroid/view/View;II)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1982
    add-int/lit8 v8, v8, 0x1

    .line 1984
    iget-object v0, v4, Landroid/view/EtViewInfo;->path:Ljava/lang/String;

    move-object/from16 v16, v0

    iget-object v0, v9, Landroid/view/EtViewInfo;->path:Ljava/lang/String;

    move-object/from16 v17, v0

    invoke-virtual/range {v16 .. v17}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v16

    if-eqz v16, :cond_6

    .line 1992
    .end local v2           #aView:Landroid/view/View;
    .end local v4           #etVi:Landroid/view/EtViewInfo;
    :cond_7
    iput v8, v9, Landroid/view/EtViewInfo;->sameTextIndex:I

    .line 1995
    invoke-interface {v15, v10}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v16

    check-cast v16, Landroid/view/EtViewInfo;

    return-object v16
.end method

.method public static getTextCenter(Landroid/view/View;Ljava/lang/String;III)[I
    .locals 10
    .parameter "root"
    .parameter "text"
    .parameter "index"
    .parameter "scrWidth"
    .parameter "scrHeight"

    .prologue
    .line 2107
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v7

    check-cast v7, Landroid/view/ViewGroup;

    invoke-static {v7}, Landroid/view/EtViewFetcher;->getViewInfos(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v4

    .line 2108
    .local v4, viewInfos:Ljava/util/List;,"Ljava/util/List<Landroid/view/EtViewInfo;>;"
    const/4 v5, 0x0

    .line 2110
    .local v5, xyCenter:[I
    const/4 v1, 0x0

    .line 2111
    .local v1, find:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/EtViewInfo;

    .line 2113
    .local v0, etVi:Landroid/view/EtViewInfo;
    iget-object v7, v0, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    instance-of v7, v7, Landroid/widget/TextView;

    if-eqz v7, :cond_0

    .line 2115
    iget-object v3, v0, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    .line 2116
    .local v3, tv:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v7, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v7

    if-eqz v7, :cond_0

    invoke-static {v3, p3, p4}, Landroid/view/EtViewFetcher;->viewInScreen(Landroid/view/View;II)Z

    move-result v7

    if-eqz v7, :cond_0

    .line 2119
    add-int/lit8 v1, v1, 0x1

    .line 2120
    if-ne v1, p2, :cond_0

    .line 2122
    const/4 v7, 0x2

    new-array v5, v7, [I

    .line 2123
    invoke-virtual {v3, v5}, Landroid/widget/TextView;->getLocationOnScreen([I)V

    .line 2124
    const/4 v7, 0x0

    aget v8, v5, v7

    invoke-virtual {v3}, Landroid/widget/TextView;->getWidth()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    aput v8, v5, v7

    .line 2125
    const/4 v7, 0x1

    aget v8, v5, v7

    invoke-virtual {v3}, Landroid/widget/TextView;->getHeight()I

    move-result v9

    div-int/lit8 v9, v9, 0x2

    add-int/2addr v8, v9

    aput v8, v5, v7

    move-object v6, v5

    .line 2132
    .end local v0           #etVi:Landroid/view/EtViewInfo;
    .end local v3           #tv:Landroid/widget/TextView;
    .end local v5           #xyCenter:[I
    .local v6, xyCenter:[I
    :goto_0
    return-object v6

    .end local v6           #xyCenter:[I
    .restart local v5       #xyCenter:[I
    :cond_1
    move-object v6, v5

    .end local v5           #xyCenter:[I
    .restart local v6       #xyCenter:[I
    goto :goto_0
.end method

.method public static getViewCenter(Landroid/view/View;I)[I
    .locals 8
    .parameter "root"
    .parameter "id"

    .prologue
    .line 2004
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-static {v5}, Landroid/view/EtViewFetcher;->getViewInfos(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v2

    .line 2005
    .local v2, viewInfos:Ljava/util/List;,"Ljava/util/List<Landroid/view/EtViewInfo;>;"
    const/4 v3, 0x0

    .line 2007
    .local v3, xyCenter:[I
    invoke-interface {v2}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/EtViewInfo;

    .line 2009
    .local v0, etVi:Landroid/view/EtViewInfo;
    iget-object v5, v0, Landroid/view/EtViewInfo;->path:Ljava/lang/String;

    invoke-virtual {v5}, Ljava/lang/String;->hashCode()I

    move-result v5

    if-ne v5, p1, :cond_0

    .line 2011
    const/4 v5, 0x2

    new-array v3, v5, [I

    .line 2012
    iget-object v5, v0, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    invoke-virtual {v5, v3}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2013
    const/4 v5, 0x0

    aget v6, v3, v5

    iget-object v7, v0, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getWidth()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aput v6, v3, v5

    .line 2014
    const/4 v5, 0x1

    aget v6, v3, v5

    iget-object v7, v0, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    invoke-virtual {v7}, Landroid/view/View;->getHeight()I

    move-result v7

    div-int/lit8 v7, v7, 0x2

    add-int/2addr v6, v7

    aput v6, v3, v5

    move-object v4, v3

    .line 2020
    .end local v0           #etVi:Landroid/view/EtViewInfo;
    .end local v3           #xyCenter:[I
    .local v4, xyCenter:[I
    :goto_0
    return-object v4

    .end local v4           #xyCenter:[I
    .restart local v3       #xyCenter:[I
    :cond_1
    move-object v4, v3

    .end local v3           #xyCenter:[I
    .restart local v4       #xyCenter:[I
    goto :goto_0
.end method

.method public static getViewInfos(Landroid/view/ViewGroup;)Ljava/util/List;
    .locals 4
    .parameter "root"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/view/ViewGroup;",
            ")",
            "Ljava/util/List",
            "<",
            "Landroid/view/EtViewInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 1902
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 1904
    .local v2, viewInfos:Ljava/util/List;,"Ljava/util/List<Landroid/view/EtViewInfo;>;"
    const-string v1, "00"

    .line 1905
    .local v1, level:Ljava/lang/String;
    invoke-static {v2, p0, v1}, Landroid/view/EtViewFetcher;->addAllViewInfos(Ljava/util/List;Landroid/view/ViewGroup;Ljava/lang/String;)V

    .line 1907
    const/4 v0, 0x0

    .local v0, i:I
    :goto_0
    invoke-interface {v2}, Ljava/util/List;->size()I

    move-result v3

    if-ge v0, v3, :cond_2

    .line 1909
    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/EtViewInfo;

    iget-object v3, v3, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getWidth()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/EtViewInfo;

    iget-object v3, v3, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getHeight()I

    move-result v3

    if-lez v3, :cond_0

    invoke-interface {v2, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/view/EtViewInfo;

    iget-object v3, v3, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    invoke-virtual {v3}, Landroid/view/View;->getVisibility()I

    move-result v3

    if-eqz v3, :cond_1

    .line 1913
    :cond_0
    invoke-interface {v2, v0}, Ljava/util/List;->remove(I)Ljava/lang/Object;

    goto :goto_0

    .line 1916
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 1918
    :cond_2
    return-object v2
.end method

.method public static searchSpecText(Landroid/view/View;Ljava/lang/String;III)Z
    .locals 7
    .parameter "root"
    .parameter "text"
    .parameter "match"
    .parameter "scrWidth"
    .parameter "scrHeight"

    .prologue
    const/4 v6, 0x1

    .line 2075
    invoke-virtual {p0}, Landroid/view/View;->getRootView()Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/view/ViewGroup;

    invoke-static {v5}, Landroid/view/EtViewFetcher;->getViewInfos(Landroid/view/ViewGroup;)Ljava/util/List;

    move-result-object v4

    .line 2077
    .local v4, viewInfos:Ljava/util/List;,"Ljava/util/List<Landroid/view/EtViewInfo;>;"
    const/4 v1, 0x0

    .line 2078
    .local v1, find:I
    invoke-interface {v4}, Ljava/util/List;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, i$:Ljava/util/Iterator;
    :cond_0
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v5

    if-eqz v5, :cond_2

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/EtViewInfo;

    .line 2080
    .local v0, etVi:Landroid/view/EtViewInfo;
    iget-object v5, v0, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    instance-of v5, v5, Landroid/widget/TextView;

    if-eqz v5, :cond_0

    .line 2082
    iget-object v3, v0, Landroid/view/EtViewInfo;->view:Landroid/view/View;

    check-cast v3, Landroid/widget/TextView;

    .line 2083
    .local v3, tv:Landroid/widget/TextView;
    invoke-virtual {v3}, Landroid/widget/TextView;->getText()Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v5

    if-eqz v5, :cond_0

    invoke-static {v3, p3, p4}, Landroid/view/EtViewFetcher;->viewInScreen(Landroid/view/View;II)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 2086
    add-int/lit8 v1, v1, 0x1

    .line 2087
    if-nez p2, :cond_1

    move v5, v6

    .line 2102
    .end local v0           #etVi:Landroid/view/EtViewInfo;
    .end local v3           #tv:Landroid/widget/TextView;
    :goto_0
    return v5

    .line 2093
    .restart local v0       #etVi:Landroid/view/EtViewInfo;
    .restart local v3       #tv:Landroid/widget/TextView;
    :cond_1
    if-ne v1, p2, :cond_0

    move v5, v6

    .line 2095
    goto :goto_0

    .line 2102
    .end local v0           #etVi:Landroid/view/EtViewInfo;
    .end local v3           #tv:Landroid/widget/TextView;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0
.end method

.method public static takeScreenshot(Landroid/view/View;Ljava/lang/String;)V
    .locals 13
    .parameter "view"
    .parameter "name"

    .prologue
    .line 2025
    if-eqz p0, :cond_2

    .line 2027
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 2028
    const/4 v10, 0x0

    invoke-virtual {p0, v10}, Landroid/view/View;->buildDrawingCache(Z)V

    .line 2029
    invoke-virtual {p0}, Landroid/view/View;->getDrawingCache()Landroid/graphics/Bitmap;

    move-result-object v0

    .line 2030
    .local v0, b:Landroid/graphics/Bitmap;
    const/4 v6, 0x0

    .line 2031
    .local v6, fos:Ljava/io/FileOutputStream;
    new-instance v9, Ljava/text/SimpleDateFormat;

    const-string v10, "ddMMyy-hhmmss"

    invoke-direct {v9, v10}, Ljava/text/SimpleDateFormat;-><init>(Ljava/lang/String;)V

    .line 2032
    .local v9, sdf:Ljava/text/SimpleDateFormat;
    const/4 v4, 0x0

    .line 2033
    .local v4, fileName:Ljava/lang/String;
    if-nez p1, :cond_3

    .line 2035
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    new-instance v11, Ljava/util/Date;

    invoke-direct {v11}, Ljava/util/Date;-><init>()V

    invoke-virtual {v9, v11}, Ljava/text/SimpleDateFormat;->format(Ljava/util/Date;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 2041
    :goto_0
    const-string v1, "/EtViewDebug/"

    .line 2042
    .local v1, dir:Ljava/lang/String;
    new-instance v2, Ljava/io/File;

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Landroid/os/Environment;->getExternalStorageDirectory()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-direct {v2, v10}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 2044
    .local v2, directory:Ljava/io/File;
    invoke-virtual {v2}, Ljava/io/File;->exists()Z

    move-result v10

    if-nez v10, :cond_0

    .line 2046
    invoke-virtual {v2}, Ljava/io/File;->mkdir()Z

    move-result v8

    .line 2047
    .local v8, mkdirRes:Z
    const-string v10, "EtViewFetcher"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "mkdirRes:"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v8}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 2050
    .end local v8           #mkdirRes:Z
    :cond_0
    new-instance v5, Ljava/io/File;

    invoke-direct {v5, v2, v4}, Ljava/io/File;-><init>(Ljava/io/File;Ljava/lang/String;)V

    .line 2053
    .local v5, fileToSave:Ljava/io/File;
    :try_start_0
    new-instance v7, Ljava/io/FileOutputStream;

    invoke-direct {v7, v5}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 2054
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .local v7, fos:Ljava/io/FileOutputStream;
    :try_start_1
    sget-object v10, Landroid/graphics/Bitmap$CompressFormat;->JPEG:Landroid/graphics/Bitmap$CompressFormat;

    const/16 v11, 0x19

    invoke-virtual {v0, v10, v11, v7}, Landroid/graphics/Bitmap;->compress(Landroid/graphics/Bitmap$CompressFormat;ILjava/io/OutputStream;)Z

    move-result v10

    if-nez v10, :cond_1

    .line 2056
    const-string v10, "EtViewFetcher"

    const-string v11, "Compress/Write failed"

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2059
    :cond_1
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->flush()V

    .line 2060
    invoke-virtual {v7}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    move-object v6, v7

    .line 2068
    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    :goto_1
    invoke-virtual {p0}, Landroid/view/View;->destroyDrawingCache()V

    .line 2070
    .end local v0           #b:Landroid/graphics/Bitmap;
    .end local v1           #dir:Ljava/lang/String;
    .end local v2           #directory:Ljava/io/File;
    .end local v4           #fileName:Ljava/lang/String;
    .end local v5           #fileToSave:Ljava/io/File;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .end local v9           #sdf:Ljava/text/SimpleDateFormat;
    :cond_2
    return-void

    .line 2039
    .restart local v0       #b:Landroid/graphics/Bitmap;
    .restart local v4       #fileName:Ljava/lang/String;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    .restart local v9       #sdf:Ljava/text/SimpleDateFormat;
    :cond_3
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".jpg"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    goto :goto_0

    .line 2062
    .restart local v1       #dir:Ljava/lang/String;
    .restart local v2       #directory:Ljava/io/File;
    .restart local v5       #fileToSave:Ljava/io/File;
    :catch_0
    move-exception v3

    .line 2064
    .local v3, e:Ljava/lang/Exception;
    :goto_2
    const-string v10, "EtViewFetcher"

    const-string v11, "Can\'t save the screenshot! Requires write permission (android.permission.WRITE_EXTERNAL_STORAGE)."

    invoke-static {v10, v11}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 2065
    invoke-virtual {v3}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 2062
    .end local v3           #e:Ljava/lang/Exception;
    .end local v6           #fos:Ljava/io/FileOutputStream;
    .restart local v7       #fos:Ljava/io/FileOutputStream;
    :catch_1
    move-exception v3

    move-object v6, v7

    .end local v7           #fos:Ljava/io/FileOutputStream;
    .restart local v6       #fos:Ljava/io/FileOutputStream;
    goto :goto_2
.end method

.method private static viewInScreen(Landroid/view/View;II)Z
    .locals 4
    .parameter "view"
    .parameter "scrWidth"
    .parameter "scrHeight"

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 2137
    const/4 v3, 0x2

    new-array v0, v3, [I

    .line 2138
    .local v0, xy:[I
    invoke-virtual {p0, v0}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2140
    aget v3, v0, v2

    if-ltz v3, :cond_0

    aget v3, v0, v2

    if-gt v3, p1, :cond_0

    aget v3, v0, v1

    if-ltz v3, :cond_0

    aget v3, v0, v1

    if-gt v3, p2, :cond_0

    .line 2146
    :goto_0
    return v1

    :cond_0
    move v1, v2

    goto :goto_0
.end method

.method private static xyInView(Landroid/view/View;II)Z
    .locals 8
    .parameter "view"
    .parameter "x"
    .parameter "y"

    .prologue
    const/4 v5, 0x1

    const/4 v6, 0x0

    .line 2159
    const/4 v7, 0x2

    new-array v2, v7, [I

    .line 2160
    .local v2, leftTopXy:[I
    invoke-virtual {p0, v2}, Landroid/view/View;->getLocationOnScreen([I)V

    .line 2162
    aget v1, v2, v6

    .line 2163
    .local v1, leftTopX:I
    aget v3, v2, v5

    .line 2164
    .local v3, leftTopY:I
    invoke-virtual {p0}, Landroid/view/View;->getWidth()I

    move-result v4

    .line 2165
    .local v4, width:I
    invoke-virtual {p0}, Landroid/view/View;->getHeight()I

    move-result v0

    .line 2167
    .local v0, height:I
    if-lt p1, v1, :cond_0

    add-int v7, v1, v4

    if-gt p1, v7, :cond_0

    if-lt p2, v3, :cond_0

    add-int v7, v3, v0

    if-gt p2, v7, :cond_0

    .line 2173
    :goto_0
    return v5

    :cond_0
    move v5, v6

    goto :goto_0
.end method
