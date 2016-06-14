.class Lcom/software/shell/viewmover/movers/PositionViewMover;
.super Lcom/software/shell/viewmover/movers/ViewMover;
.source "PositionViewMover.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 41
    const-string v0, "[view-mover][%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/software/shell/viewmover/movers/PositionViewMover;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/software/shell/viewmover/movers/PositionViewMover;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 49
    invoke-direct {p0, p1}, Lcom/software/shell/viewmover/movers/ViewMover;-><init>(Landroid/view/View;)V

    .line 50
    return-void
.end method


# virtual methods
.method calculateEndBottomBound(F)I
    .locals 2
    .param p1, "yAxisDelta"    # F

    .prologue
    .line 116
    invoke-virtual {p0, p1}, Lcom/software/shell/viewmover/movers/PositionViewMover;->calculateEndTopBound(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/software/shell/viewmover/movers/PositionViewMover;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getHeight()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method calculateEndLeftBound(F)I
    .locals 1
    .param p1, "xAxisDelta"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 79
    invoke-virtual {p0}, Lcom/software/shell/viewmover/movers/PositionViewMover;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getX()F

    move-result v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method calculateEndRightBound(F)I
    .locals 2
    .param p1, "xAxisDelta"    # F

    .prologue
    .line 91
    invoke-virtual {p0, p1}, Lcom/software/shell/viewmover/movers/PositionViewMover;->calculateEndLeftBound(F)I

    move-result v0

    invoke-virtual {p0}, Lcom/software/shell/viewmover/movers/PositionViewMover;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getWidth()I

    move-result v1

    add-int/2addr v0, v1

    return v0
.end method

.method calculateEndTopBound(F)I
    .locals 1
    .param p1, "yAxisDelta"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 104
    invoke-virtual {p0}, Lcom/software/shell/viewmover/movers/PositionViewMover;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getY()F

    move-result v0

    add-float/2addr v0, p1

    float-to-int v0, v0

    return v0
.end method

.method changeViewPosition(FF)V
    .locals 6
    .param p1, "xAxisDelta"    # F
    .param p2, "yAxisDelta"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0x10
    .end annotation

    .prologue
    .line 61
    invoke-virtual {p0, p1}, Lcom/software/shell/viewmover/movers/PositionViewMover;->calculateEndLeftBound(F)I

    move-result v2

    int-to-float v0, v2

    .line 62
    .local v0, "endLeftBoundPointX":F
    invoke-virtual {p0, p2}, Lcom/software/shell/viewmover/movers/PositionViewMover;->calculateEndTopBound(F)I

    move-result v2

    int-to-float v1, v2

    .line 63
    .local v1, "endTopBoundPointY":F
    invoke-virtual {p0}, Lcom/software/shell/viewmover/movers/PositionViewMover;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v0}, Landroid/view/View;->setX(F)V

    .line 64
    invoke-virtual {p0}, Lcom/software/shell/viewmover/movers/PositionViewMover;->getView()Landroid/view/View;

    move-result-object v2

    invoke-virtual {v2, v1}, Landroid/view/View;->setY(F)V

    .line 65
    const-string v2, "Updated view position: left x = %s, top y = %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    invoke-static {v0}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    .line 66
    invoke-static {v1}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    .line 65
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 67
    return-void
.end method
