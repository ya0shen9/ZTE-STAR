.class Lzte/contact/zteUsimPhoneBookManager$PbrFile;
.super Ljava/lang/Object;
.source "zteUsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/contact/zteUsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "PbrFile"
.end annotation


# instance fields
.field mFileIds:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lzte/contact/zteUsimPhoneBookManager;


# direct methods
.method constructor <init>(Lzte/contact/zteUsimPhoneBookManager;Ljava/util/ArrayList;)V
    .locals 6
    .parameter
    .parameter
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/ArrayList",
            "<[B>;)V"
        }
    .end annotation

    .prologue
    .line 1443
    .local p2, records:Ljava/util/ArrayList;,"Ljava/util/ArrayList<[B>;"
    iput-object p1, p0, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->this$0:Lzte/contact/zteUsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1444
    new-instance v4, Ljava/util/HashMap;

    invoke-direct {v4}, Ljava/util/HashMap;-><init>()V

    iput-object v4, p0, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    .line 1446
    const/4 v1, 0x0

    .line 1447
    .local v1, recNum:I
    invoke-virtual {p2}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v0

    .local v0, i$:Ljava/util/Iterator;
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_0

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, [B

    .line 1448
    .local v3, record:[B
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v4, 0x0

    array-length v5, v3

    invoke-direct {v2, v3, v4, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1449
    .local v2, recTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v2, v1}, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V

    .line 1450
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1452
    .end local v2           #recTlv:Lcom/android/internal/telephony/gsm/SimTlv;
    .end local v3           #record:[B
    :cond_0
    return-void
.end method


# virtual methods
.method parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;I)V
    .locals 10
    .parameter "tlv"
    .parameter
    .parameter "parentTag"
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/android/internal/telephony/gsm/SimTlv;",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;I)V"
        }
    .end annotation

    .prologue
    .local p2, val:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    const/16 v9, 0xa9

    const/4 v8, 0x1

    .line 1479
    const/4 v4, 0x0

    .line 1480
    .local v4, tagNumberWithinParentTag:I
    const/4 v0, 0x0

    .line 1482
    .local v0, anrTagNumber:I
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v3

    .line 1484
    .local v3, tag:I
    if-ne p3, v9, :cond_1

    const/16 v5, 0xc4

    if-ne v3, v5, :cond_1

    .line 1485
    iget-object v5, p0, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->this$0:Lzte/contact/zteUsimPhoneBookManager;

    #setter for: Lzte/contact/zteUsimPhoneBookManager;->mAnrPresentInIap:Z
    invoke-static {v5, v8}, Lzte/contact/zteUsimPhoneBookManager;->access$002(Lzte/contact/zteUsimPhoneBookManager;Z)Z

    .line 1486
    iget-object v5, p0, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->this$0:Lzte/contact/zteUsimPhoneBookManager;

    #setter for: Lzte/contact/zteUsimPhoneBookManager;->mAnrTagNumberInIap:I
    invoke-static {v5, v4}, Lzte/contact/zteUsimPhoneBookManager;->access$102(Lzte/contact/zteUsimPhoneBookManager;I)I

    .line 1489
    :cond_1
    if-ne p3, v9, :cond_2

    const/16 v5, 0xca

    if-ne v3, v5, :cond_2

    .line 1490
    invoke-static {v8}, Lzte/contact/zteUsimPhoneBookManager;->access$202(Z)Z

    .line 1491
    iget-object v5, p0, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->this$0:Lzte/contact/zteUsimPhoneBookManager;

    #setter for: Lzte/contact/zteUsimPhoneBookManager;->mEmailTagNumberInIap:I
    invoke-static {v5, v4}, Lzte/contact/zteUsimPhoneBookManager;->access$302(Lzte/contact/zteUsimPhoneBookManager;I)I

    .line 1493
    :cond_2
    packed-switch v3, :pswitch_data_0

    .line 1516
    :cond_3
    :goto_0
    add-int/lit8 v4, v4, 0x1

    .line 1517
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v5

    if-nez v5, :cond_0

    .line 1518
    return-void

    .line 1506
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v1

    .line 1507
    .local v1, data:[B
    if-eqz v1, :cond_3

    .line 1508
    const/4 v5, 0x0

    aget-byte v5, v1, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    aget-byte v6, v1, v8

    and-int/lit16 v6, v6, 0xff

    or-int v2, v5, v6

    .line 1510
    .local v2, efid:I
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-interface {p2, v5, v6}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1511
    const/16 v5, 0xc2

    if-ne v3, v5, :cond_4

    iget-object v5, p0, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->this$0:Lzte/contact/zteUsimPhoneBookManager;

    #setter for: Lzte/contact/zteUsimPhoneBookManager;->ext1Efid:I
    invoke-static {v5, v2}, Lzte/contact/zteUsimPhoneBookManager;->access$402(Lzte/contact/zteUsimPhoneBookManager;I)I

    .line 1512
    :cond_4
    const-string v5, "RIL_zteUsimPhoneBookManager"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "MY parseEf  tag:0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " parentTag:0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {p3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " efid:0x"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-static {v2}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string v7, " "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1493
    nop

    :pswitch_data_0
    .packed-switch 0xc0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method parseTag(Lcom/android/internal/telephony/gsm/SimTlv;I)V
    .locals 6
    .parameter "tlv"
    .parameter "recNum"

    .prologue
    .line 1458
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 1460
    .local v3, val:Ljava/util/Map;,"Ljava/util/Map<Ljava/lang/Integer;Ljava/lang/Integer;>;"
    :cond_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getTag()I

    move-result v1

    .line 1461
    .local v1, tag:I
    packed-switch v1, :pswitch_data_0

    .line 1472
    :cond_1
    :goto_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->nextObject()Z

    move-result v4

    if-nez v4, :cond_0

    .line 1473
    iget-object v4, p0, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->mFileIds:Ljava/util/HashMap;

    invoke-static {p2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-virtual {v4, v5, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 1474
    return-void

    .line 1465
    :pswitch_0
    invoke-virtual {p1}, Lcom/android/internal/telephony/gsm/SimTlv;->getData()[B

    move-result-object v0

    .line 1466
    .local v0, data:[B
    if-eqz v0, :cond_1

    .line 1467
    new-instance v2, Lcom/android/internal/telephony/gsm/SimTlv;

    const/4 v4, 0x0

    array-length v5, v0

    invoke-direct {v2, v0, v4, v5}, Lcom/android/internal/telephony/gsm/SimTlv;-><init>([BII)V

    .line 1468
    .local v2, tlvEf:Lcom/android/internal/telephony/gsm/SimTlv;
    invoke-virtual {p0, v2, v3, v1}, Lzte/contact/zteUsimPhoneBookManager$PbrFile;->parseEf(Lcom/android/internal/telephony/gsm/SimTlv;Ljava/util/Map;I)V

    goto :goto_0

    .line 1461
    nop

    :pswitch_data_0
    .packed-switch 0xa8
        :pswitch_0
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method
