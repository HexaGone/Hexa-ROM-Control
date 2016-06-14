.class public abstract Lcom/software/shell/viewmover/movers/ViewMoverFactory;
.super Ljava/lang/Object;
.source "ViewMoverFactory.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static createInstance(Landroid/view/View;)Lcom/software/shell/viewmover/movers/ViewMover;
    .locals 2
    .param p0, "view"    # Landroid/view/View;

    .prologue
    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x10

    if-lt v0, v1, :cond_0

    .line 43
    new-instance v0, Lcom/software/shell/viewmover/movers/PositionViewMover;

    invoke-direct {v0, p0}, Lcom/software/shell/viewmover/movers/PositionViewMover;-><init>(Landroid/view/View;)V

    .line 45
    :goto_0
    return-object v0

    :cond_0
    new-instance v0, Lcom/software/shell/viewmover/movers/MarginViewMover;

    invoke-direct {v0, p0}, Lcom/software/shell/viewmover/movers/MarginViewMover;-><init>(Landroid/view/View;)V

    goto :goto_0
.end method
