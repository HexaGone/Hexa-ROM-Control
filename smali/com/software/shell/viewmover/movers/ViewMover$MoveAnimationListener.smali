.class Lcom/software/shell/viewmover/movers/ViewMover$MoveAnimationListener;
.super Ljava/lang/Object;
.source "ViewMover.java"

# interfaces
.implements Landroid/view/animation/Animation$AnimationListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/software/shell/viewmover/movers/ViewMover;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "MoveAnimationListener"
.end annotation


# instance fields
.field private final details:Lcom/software/shell/viewmover/configuration/MovingParams;

.field final synthetic this$0:Lcom/software/shell/viewmover/movers/ViewMover;


# direct methods
.method private constructor <init>(Lcom/software/shell/viewmover/movers/ViewMover;Lcom/software/shell/viewmover/configuration/MovingParams;)V
    .locals 0
    .param p2, "details"    # Lcom/software/shell/viewmover/configuration/MovingParams;

    .prologue
    .line 298
    iput-object p1, p0, Lcom/software/shell/viewmover/movers/ViewMover$MoveAnimationListener;->this$0:Lcom/software/shell/viewmover/movers/ViewMover;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 299
    iput-object p2, p0, Lcom/software/shell/viewmover/movers/ViewMover$MoveAnimationListener;->details:Lcom/software/shell/viewmover/configuration/MovingParams;

    .line 300
    return-void
.end method

.method synthetic constructor <init>(Lcom/software/shell/viewmover/movers/ViewMover;Lcom/software/shell/viewmover/configuration/MovingParams;Lcom/software/shell/viewmover/movers/ViewMover$1;)V
    .locals 0
    .param p1, "x0"    # Lcom/software/shell/viewmover/movers/ViewMover;
    .param p2, "x1"    # Lcom/software/shell/viewmover/configuration/MovingParams;

    .prologue
    .line 285
    invoke-direct {p0, p1, p2}, Lcom/software/shell/viewmover/movers/ViewMover$MoveAnimationListener;-><init>(Lcom/software/shell/viewmover/movers/ViewMover;Lcom/software/shell/viewmover/configuration/MovingParams;)V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/view/animation/Animation;)V
    .locals 3

    .prologue
    .line 320
    iget-object v0, p0, Lcom/software/shell/viewmover/movers/ViewMover$MoveAnimationListener;->this$0:Lcom/software/shell/viewmover/movers/ViewMover;

    iget-object v1, p0, Lcom/software/shell/viewmover/movers/ViewMover$MoveAnimationListener;->details:Lcom/software/shell/viewmover/configuration/MovingParams;

    invoke-virtual {v1}, Lcom/software/shell/viewmover/configuration/MovingParams;->getXAxisDelta()F

    move-result v1

    iget-object v2, p0, Lcom/software/shell/viewmover/movers/ViewMover$MoveAnimationListener;->details:Lcom/software/shell/viewmover/configuration/MovingParams;

    invoke-virtual {v2}, Lcom/software/shell/viewmover/configuration/MovingParams;->getYAxisDelta()F

    move-result v2

    invoke-virtual {v0, v1, v2}, Lcom/software/shell/viewmover/movers/ViewMover;->changeViewPosition(FF)V

    .line 321
    return-void
.end method

.method public onAnimationRepeat(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 308
    return-void
.end method

.method public onAnimationStart(Landroid/view/animation/Animation;)V
    .locals 0

    .prologue
    .line 304
    return-void
.end method
