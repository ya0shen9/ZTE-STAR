.class public final enum Landroid/annotation/KiwiHook$KiwiHookType;
.super Ljava/lang/Enum;
.source "KiwiHook.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/annotation/KiwiHook;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "KiwiHookType"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/annotation/KiwiHook$KiwiHookType;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/annotation/KiwiHook$KiwiHookType;

.field public static final enum CHANGE_ACCESS:Landroid/annotation/KiwiHook$KiwiHookType;

.field public static final enum CHANGE_CODE:Landroid/annotation/KiwiHook$KiwiHookType;

.field public static final enum CHANGE_CODE_AND_ACCESS:Landroid/annotation/KiwiHook$KiwiHookType;

.field public static final enum NEW_CLASS:Landroid/annotation/KiwiHook$KiwiHookType;

.field public static final enum NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;

.field public static final enum NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;


# direct methods
.method static constructor <clinit>()V
    .locals 8

    .prologue
    const/4 v7, 0x4

    const/4 v6, 0x3

    const/4 v5, 0x2

    const/4 v4, 0x1

    const/4 v3, 0x0

    .line 19
    new-instance v0, Landroid/annotation/KiwiHook$KiwiHookType;

    const-string v1, "NEW_CLASS"

    invoke-direct {v0, v1, v3}, Landroid/annotation/KiwiHook$KiwiHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/KiwiHook$KiwiHookType;->NEW_CLASS:Landroid/annotation/KiwiHook$KiwiHookType;

    .line 20
    new-instance v0, Landroid/annotation/KiwiHook$KiwiHookType;

    const-string v1, "NEW_METHOD"

    invoke-direct {v0, v1, v4}, Landroid/annotation/KiwiHook$KiwiHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;

    .line 21
    new-instance v0, Landroid/annotation/KiwiHook$KiwiHookType;

    const-string v1, "NEW_FIELD"

    invoke-direct {v0, v1, v5}, Landroid/annotation/KiwiHook$KiwiHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;

    .line 22
    new-instance v0, Landroid/annotation/KiwiHook$KiwiHookType;

    const-string v1, "CHANGE_CODE"

    invoke-direct {v0, v1, v6}, Landroid/annotation/KiwiHook$KiwiHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_CODE:Landroid/annotation/KiwiHook$KiwiHookType;

    .line 23
    new-instance v0, Landroid/annotation/KiwiHook$KiwiHookType;

    const-string v1, "CHANGE_ACCESS"

    invoke-direct {v0, v1, v7}, Landroid/annotation/KiwiHook$KiwiHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_ACCESS:Landroid/annotation/KiwiHook$KiwiHookType;

    .line 24
    new-instance v0, Landroid/annotation/KiwiHook$KiwiHookType;

    const-string v1, "CHANGE_CODE_AND_ACCESS"

    const/4 v2, 0x5

    invoke-direct {v0, v1, v2}, Landroid/annotation/KiwiHook$KiwiHookType;-><init>(Ljava/lang/String;I)V

    sput-object v0, Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_CODE_AND_ACCESS:Landroid/annotation/KiwiHook$KiwiHookType;

    .line 18
    const/4 v0, 0x6

    new-array v0, v0, [Landroid/annotation/KiwiHook$KiwiHookType;

    sget-object v1, Landroid/annotation/KiwiHook$KiwiHookType;->NEW_CLASS:Landroid/annotation/KiwiHook$KiwiHookType;

    aput-object v1, v0, v3

    sget-object v1, Landroid/annotation/KiwiHook$KiwiHookType;->NEW_METHOD:Landroid/annotation/KiwiHook$KiwiHookType;

    aput-object v1, v0, v4

    sget-object v1, Landroid/annotation/KiwiHook$KiwiHookType;->NEW_FIELD:Landroid/annotation/KiwiHook$KiwiHookType;

    aput-object v1, v0, v5

    sget-object v1, Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_CODE:Landroid/annotation/KiwiHook$KiwiHookType;

    aput-object v1, v0, v6

    sget-object v1, Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_ACCESS:Landroid/annotation/KiwiHook$KiwiHookType;

    aput-object v1, v0, v7

    const/4 v1, 0x5

    sget-object v2, Landroid/annotation/KiwiHook$KiwiHookType;->CHANGE_CODE_AND_ACCESS:Landroid/annotation/KiwiHook$KiwiHookType;

    aput-object v2, v0, v1

    sput-object v0, Landroid/annotation/KiwiHook$KiwiHookType;->$VALUES:[Landroid/annotation/KiwiHook$KiwiHookType;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;I)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    .prologue
    .line 18
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/annotation/KiwiHook$KiwiHookType;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 18
    const-class v0, Landroid/annotation/KiwiHook$KiwiHookType;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/annotation/KiwiHook$KiwiHookType;

    return-object v0
.end method

.method public static values()[Landroid/annotation/KiwiHook$KiwiHookType;
    .locals 1

    .prologue
    .line 18
    sget-object v0, Landroid/annotation/KiwiHook$KiwiHookType;->$VALUES:[Landroid/annotation/KiwiHook$KiwiHookType;

    invoke-virtual {v0}, [Landroid/annotation/KiwiHook$KiwiHookType;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/annotation/KiwiHook$KiwiHookType;

    return-object v0
.end method
