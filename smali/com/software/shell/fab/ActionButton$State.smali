.class public final enum Lcom/software/shell/fab/ActionButton$State;
.super Ljava/lang/Enum;
.source "ActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/software/shell/fab/ActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "State"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/software/shell/fab/ActionButton$State;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/software/shell/fab/ActionButton$State;

.field public static final enum NORMAL:Lcom/software/shell/fab/ActionButton$State;

.field public static final enum PRESSED:Lcom/software/shell/fab/ActionButton$State;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 1772
    new-instance v0, Lcom/software/shell/fab/ActionButton$State;

    const-string v1, "NORMAL"

    invoke-direct {v0, v1, v2}, Lcom/software/shell/fab/ActionButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/software/shell/fab/ActionButton$State;->NORMAL:Lcom/software/shell/fab/ActionButton$State;

    .line 1777
    new-instance v0, Lcom/software/shell/fab/ActionButton$State;

    const-string v1, "PRESSED"

    invoke-direct {v0, v1, v3}, Lcom/software/shell/fab/ActionButton$State;-><init>(Ljava/lang/String;I)V

    sput-object v0, Lcom/software/shell/fab/ActionButton$State;->PRESSED:Lcom/software/shell/fab/ActionButton$State;

    .line 1767
    const/4 v0, 0x2

    new-array v0, v0, [Lcom/software/shell/fab/ActionButton$State;

    sget-object v1, Lcom/software/shell/fab/ActionButton$State;->NORMAL:Lcom/software/shell/fab/ActionButton$State;

    aput-object v1, v0, v2

    sget-object v1, Lcom/software/shell/fab/ActionButton$State;->PRESSED:Lcom/software/shell/fab/ActionButton$State;

    aput-object v1, v0, v3

    sput-object v0, Lcom/software/shell/fab/ActionButton$State;->$VALUES:[Lcom/software/shell/fab/ActionButton$State;

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
    .line 1767
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/software/shell/fab/ActionButton$State;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1767
    const-class v0, Lcom/software/shell/fab/ActionButton$State;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/software/shell/fab/ActionButton$State;

    return-object v0
.end method

.method public static values()[Lcom/software/shell/fab/ActionButton$State;
    .locals 1

    .prologue
    .line 1767
    sget-object v0, Lcom/software/shell/fab/ActionButton$State;->$VALUES:[Lcom/software/shell/fab/ActionButton$State;

    invoke-virtual {v0}, [Lcom/software/shell/fab/ActionButton$State;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/software/shell/fab/ActionButton$State;

    return-object v0
.end method
