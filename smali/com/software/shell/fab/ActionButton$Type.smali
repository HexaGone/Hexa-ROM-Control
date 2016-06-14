.class public abstract enum Lcom/software/shell/fab/ActionButton$Type;
.super Ljava/lang/Enum;
.source "ActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/software/shell/fab/ActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4409
    name = "Type"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/software/shell/fab/ActionButton$Type;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/software/shell/fab/ActionButton$Type;

.field public static final enum BIG:Lcom/software/shell/fab/ActionButton$Type;

.field public static final enum DEFAULT:Lcom/software/shell/fab/ActionButton$Type;

.field public static final enum MINI:Lcom/software/shell/fab/ActionButton$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1687
    new-instance v0, Lcom/software/shell/fab/ActionButton$Type$1;

    const-string v1, "DEFAULT"

    invoke-direct {v0, v1, v2}, Lcom/software/shell/fab/ActionButton$Type$1;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/software/shell/fab/ActionButton$Type;->DEFAULT:Lcom/software/shell/fab/ActionButton$Type;

    .line 1702
    new-instance v0, Lcom/software/shell/fab/ActionButton$Type$2;

    const-string v1, "MINI"

    invoke-direct {v0, v1, v3}, Lcom/software/shell/fab/ActionButton$Type$2;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/software/shell/fab/ActionButton$Type;->MINI:Lcom/software/shell/fab/ActionButton$Type;

    .line 1717
    new-instance v0, Lcom/software/shell/fab/ActionButton$Type$3;

    const-string v1, "BIG"

    invoke-direct {v0, v1, v4}, Lcom/software/shell/fab/ActionButton$Type$3;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/software/shell/fab/ActionButton$Type;->BIG:Lcom/software/shell/fab/ActionButton$Type;

    .line 1682
    const/4 v0, 0x3

    new-array v0, v0, [Lcom/software/shell/fab/ActionButton$Type;

    sget-object v1, Lcom/software/shell/fab/ActionButton$Type;->DEFAULT:Lcom/software/shell/fab/ActionButton$Type;

    aput-object v1, v0, v2

    sget-object v1, Lcom/software/shell/fab/ActionButton$Type;->MINI:Lcom/software/shell/fab/ActionButton$Type;

    aput-object v1, v0, v3

    sget-object v1, Lcom/software/shell/fab/ActionButton$Type;->BIG:Lcom/software/shell/fab/ActionButton$Type;

    aput-object v1, v0, v4

    sput-object v0, Lcom/software/shell/fab/ActionButton$Type;->$VALUES:[Lcom/software/shell/fab/ActionButton$Type;

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
    .line 1682
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method synthetic constructor <init>(Ljava/lang/String;ILcom/software/shell/fab/ActionButton$1;)V
    .locals 0
    .param p1, "x0"    # Ljava/lang/String;
    .param p2, "x1"    # I
    .param p3, "x2"    # Lcom/software/shell/fab/ActionButton$1;

    .prologue
    .line 1682
    invoke-direct {p0, p1, p2}, Lcom/software/shell/fab/ActionButton$Type;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method static forId(I)Lcom/software/shell/fab/ActionButton$Type;
    .locals 5
    .param p0, "id"    # I

    .prologue
    .line 1754
    invoke-static {}, Lcom/software/shell/fab/ActionButton$Type;->values()[Lcom/software/shell/fab/ActionButton$Type;

    move-result-object v2

    array-length v3, v2

    const/4 v1, 0x0

    :goto_0
    if-ge v1, v3, :cond_1

    aget-object v0, v2, v1

    .line 1755
    .local v0, "type":Lcom/software/shell/fab/ActionButton$Type;
    invoke-virtual {v0}, Lcom/software/shell/fab/ActionButton$Type;->getId()I

    move-result v4

    if-ne v4, p0, :cond_0

    .line 1759
    .end local v0    # "type":Lcom/software/shell/fab/ActionButton$Type;
    :goto_1
    return-object v0

    .line 1754
    .restart local v0    # "type":Lcom/software/shell/fab/ActionButton$Type;
    :cond_0
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 1759
    .end local v0    # "type":Lcom/software/shell/fab/ActionButton$Type;
    :cond_1
    sget-object v0, Lcom/software/shell/fab/ActionButton$Type;->DEFAULT:Lcom/software/shell/fab/ActionButton$Type;

    goto :goto_1
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/software/shell/fab/ActionButton$Type;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1682
    const-class v0, Lcom/software/shell/fab/ActionButton$Type;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/software/shell/fab/ActionButton$Type;

    return-object v0
.end method

.method public static values()[Lcom/software/shell/fab/ActionButton$Type;
    .locals 1

    .prologue
    .line 1682
    sget-object v0, Lcom/software/shell/fab/ActionButton$Type;->$VALUES:[Lcom/software/shell/fab/ActionButton$Type;

    invoke-virtual {v0}, [Lcom/software/shell/fab/ActionButton$Type;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/software/shell/fab/ActionButton$Type;

    return-object v0
.end method


# virtual methods
.method abstract getId()I
.end method

.method abstract getSize()F
.end method
