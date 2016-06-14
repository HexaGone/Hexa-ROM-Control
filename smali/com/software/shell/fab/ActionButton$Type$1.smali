.class final enum Lcom/software/shell/fab/ActionButton$Type$1;
.super Lcom/software/shell/fab/ActionButton$Type;
.source "ActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/software/shell/fab/ActionButton$Type;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4008
    name = null
.end annotation


# direct methods
.method constructor <init>(Ljava/lang/String;I)V
    .locals 1

    .prologue
    .line 1687
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/software/shell/fab/ActionButton$Type;-><init>(Ljava/lang/String;ILcom/software/shell/fab/ActionButton$1;)V

    return-void
.end method


# virtual methods
.method getId()I
    .locals 1

    .prologue
    .line 1690
    const/4 v0, 0x0

    return v0
.end method

.method getSize()F
    .locals 1

    .prologue
    .line 1695
    const/high16 v0, 0x42600000    # 56.0f

    return v0
.end method
