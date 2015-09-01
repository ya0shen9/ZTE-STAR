.class Lzte/contact/zteUsimPhoneBookManager$usimphonebook;
.super Ljava/lang/Object;
.source "zteUsimPhoneBookManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lzte/contact/zteUsimPhoneBookManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "usimphonebook"
.end annotation


# instance fields
.field adnlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field anrlist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field emaillist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/telephony/uicc/AdnRecord;",
            ">;"
        }
    .end annotation
.end field

.field iaplist:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<[B>;"
        }
    .end annotation
.end field

.field final synthetic this$0:Lzte/contact/zteUsimPhoneBookManager;

.field valForAnrId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field valForEmailId:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Ljava/lang/Integer;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lzte/contact/zteUsimPhoneBookManager;)V
    .locals 1
    .parameter

    .prologue
    .line 119
    iput-object p1, p0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->this$0:Lzte/contact/zteUsimPhoneBookManager;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->adnlist:Ljava/util/ArrayList;

    .line 121
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->iaplist:Ljava/util/ArrayList;

    .line 122
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->emaillist:Ljava/util/ArrayList;

    .line 123
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->anrlist:Ljava/util/ArrayList;

    .line 124
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForEmailId:Ljava/util/Map;

    .line 125
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lzte/contact/zteUsimPhoneBookManager$usimphonebook;->valForAnrId:Ljava/util/Map;

    .line 126
    return-void
.end method
