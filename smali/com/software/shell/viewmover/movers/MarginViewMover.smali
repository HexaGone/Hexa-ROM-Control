.class Lcom/software/shell/viewmover/movers/MarginViewMover;
.super Lcom/software/shell/viewmover/movers/ViewMover;
.source "MarginViewMover.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 45
    const-string v0, "[view-mover][%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/software/shell/viewmover/movers/MarginViewMover;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/software/shell/viewmover/movers/MarginViewMover;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 53
    invoke-direct {p0, p1}, Lcom/software/shell/viewmover/movers/ViewMover;-><init>(Landroid/view/View;)V

    .line 54
    return-void
.end method

.method private isViewLeftAligned(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .locals 6
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 87
    invoke-virtual {p0}, Lcom/software/shell/viewmover/movers/MarginViewMover;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getLeft()I

    move-result v0

    .line 88
    .local v0, "left":I
    if-eqz v0, :cond_0

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    if-ne v0, v4, :cond_1

    :cond_0
    move v1, v3

    .line 89
    .local v1, "viewLeftAligned":Z
    :goto_0
    const-string v4, "View is %s aligned"

    new-array v5, v3, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    const-string v3, "LEFT"

    :goto_1
    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 90
    return v1

    .end local v1    # "viewLeftAligned":Z
    :cond_1
    move v1, v2

    .line 88
    goto :goto_0

    .line 89
    .restart local v1    # "viewLeftAligned":Z
    :cond_2
    const-string v3, "RIGHT"

    goto :goto_1
.end method

.method private isViewTopAligned(Landroid/view/ViewGroup$MarginLayoutParams;)Z
    .locals 6
    .param p1, "layoutParams"    # Landroid/view/ViewGroup$MarginLayoutParams;

    .prologue
    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 100
    invoke-virtual {p0}, Lcom/software/shell/viewmover/movers/MarginViewMover;->getView()Landroid/view/View;

    move-result-object v4

    invoke-virtual {v4}, Landroid/view/View;->getTop()I

    move-result v0

    .line 101
    .local v0, "top":I
    if-eqz v0, :cond_0

    iget v4, p1, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    if-ne v0, v4, :cond_1

    :cond_0
    move v1, v3

    .line 102
    .local v1, "viewTopAligned":Z
    :goto_0
    const-string v4, "View is %s aligned"

    new-array v5, v3, [Ljava/lang/Object;

    if-eqz v1, :cond_2

    const-string v3, "TOP"

    :goto_1
    aput-object v3, v5, v2

    invoke-static {v4, v5}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 103
    return v1

    .end local v1    # "viewTopAligned":Z
    :cond_1
    move v1, v2

    .line 101
    goto :goto_0

    .line 102
    .restart local v1    # "viewTopAligned":Z
    :cond_2
    const-string v3, "BOTTOM"

    goto :goto_1
.end method


# virtual methods
.method calculateEndBottomBound(F)I
    .locals 2
    .param p1, "yAxisDelta"    # F

    .prologue
    .line 151
    invoke-virtual {p0}, Lcom/software/shell/viewmover/movers/MarginViewMover;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getBottom()I

    move-result v0

    float-to-int v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method calculateEndLeftBound(F)I
    .locals 2
    .param p1, "xAxisDelta"    # F

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/software/shell/viewmover/movers/MarginViewMover;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getLeft()I

    move-result v0

    float-to-int v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method calculateEndRightBound(F)I
    .locals 2
    .param p1, "xAxisDelta"    # F

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/software/shell/viewmover/movers/MarginViewMover;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getRight()I

    move-result v0

    float-to-int v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method calculateEndTopBound(F)I
    .locals 2
    .param p1, "yAxisDelta"    # F

    .prologue
    .line 139
    invoke-virtual {p0}, Lcom/software/shell/viewmover/movers/MarginViewMover;->getView()Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getTop()I

    move-result v0

    float-to-int v1, p1

    add-int/2addr v0, v1

    return v0
.end method

.method changeViewPosition(FF)V
    .locals 5
    .param p1, "xAxisDelta"    # F
    .param p2, "yAxisDelta"    # F

    .prologue
    .line 64
    invoke-virtual {p0}, Lcom/software/shell/viewmover/movers/MarginViewMover;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1}, Landroid/view/View;->getLayoutParams()Landroid/view/ViewGroup$LayoutParams;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup$MarginLayoutParams;

    .line 65
    .local v0, "layoutParams":Landroid/view/ViewGroup$MarginLayoutParams;
    invoke-direct {p0, v0}, Lcom/software/shell/viewmover/movers/MarginViewMover;->isViewLeftAligned(Landroid/view/ViewGroup$MarginLayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 66
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    int-to-float v1, v1

    add-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 70
    :goto_0
    invoke-direct {p0, v0}, Lcom/software/shell/viewmover/movers/MarginViewMover;->isViewTopAligned(Landroid/view/ViewGroup$MarginLayoutParams;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 71
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    int-to-float v1, v1

    add-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    .line 75
    :goto_1
    const-string v1, "Updated view margins: left = %s, top = %s, right = %s, bottom = %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->leftMargin:I

    .line 76
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->topMargin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget v4, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    .line 75
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 77
    invoke-virtual {p0}, Lcom/software/shell/viewmover/movers/MarginViewMover;->getView()Landroid/view/View;

    move-result-object v1

    invoke-virtual {v1, v0}, Landroid/view/View;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 78
    return-void

    .line 68
    :cond_0
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    int-to-float v1, v1

    sub-float/2addr v1, p1

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->rightMargin:I

    goto :goto_0

    .line 73
    :cond_1
    iget v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    int-to-float v1, v1

    sub-float/2addr v1, p2

    float-to-int v1, v1

    iput v1, v0, Landroid/view/ViewGroup$MarginLayoutParams;->bottomMargin:I

    goto :goto_1
.end method
