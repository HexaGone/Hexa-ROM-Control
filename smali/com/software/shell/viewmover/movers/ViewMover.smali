.class public abstract Lcom/software/shell/viewmover/movers/ViewMover;
.super Ljava/lang/Object;
.source "ViewMover.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/software/shell/viewmover/movers/ViewMover$MoveAnimationListener;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 42
    const-string v0, "[view-mover][%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/software/shell/viewmover/movers/ViewMover;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/software/shell/viewmover/movers/ViewMover;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 54
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    iput-object p1, p0, Lcom/software/shell/viewmover/movers/ViewMover;->view:Landroid/view/View;

    .line 56
    return-void
.end method

.method private createAnimation(Lcom/software/shell/viewmover/configuration/MovingParams;)Landroid/view/animation/Animation;
    .locals 5
    .param p1, "params"    # Lcom/software/shell/viewmover/configuration/MovingParams;

    .prologue
    const/4 v4, 0x0

    .line 267
    new-instance v0, Landroid/view/animation/TranslateAnimation;

    invoke-virtual {p1}, Lcom/software/shell/viewmover/configuration/MovingParams;->getXAxisDelta()F

    move-result v2

    invoke-virtual {p1}, Lcom/software/shell/viewmover/configuration/MovingParams;->getYAxisDelta()F

    move-result v3

    invoke-direct {v0, v4, v2, v4, v3}, Landroid/view/animation/TranslateAnimation;-><init>(FFFF)V

    .line 268
    .local v0, "animation":Landroid/view/animation/Animation;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillEnabled(Z)V

    .line 269
    const/4 v2, 0x0

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setFillBefore(Z)V

    .line 270
    invoke-virtual {p1}, Lcom/software/shell/viewmover/configuration/MovingParams;->getAnimationDuration()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/Animation;->setDuration(J)V

    .line 271
    invoke-virtual {p1}, Lcom/software/shell/viewmover/configuration/MovingParams;->getAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v1

    .line 272
    .local v1, "interpolator":Landroid/view/animation/Interpolator;
    if-eqz v1, :cond_0

    .line 273
    invoke-virtual {v0, v1}, Landroid/view/animation/Animation;->setInterpolator(Landroid/view/animation/Interpolator;)V

    .line 275
    :cond_0
    new-instance v2, Lcom/software/shell/viewmover/movers/ViewMover$MoveAnimationListener;

    const/4 v3, 0x0

    invoke-direct {v2, p0, p1, v3}, Lcom/software/shell/viewmover/movers/ViewMover$MoveAnimationListener;-><init>(Lcom/software/shell/viewmover/movers/ViewMover;Lcom/software/shell/viewmover/configuration/MovingParams;Lcom/software/shell/viewmover/movers/ViewMover$1;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/Animation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 276
    return-object v0
.end method

.method private getVerifiedMovingParams(Lcom/software/shell/viewmover/configuration/MovingParams;)Lcom/software/shell/viewmover/configuration/MovingParams;
    .locals 5
    .param p1, "params"    # Lcom/software/shell/viewmover/configuration/MovingParams;

    .prologue
    .line 186
    new-instance v0, Lcom/software/shell/viewmover/configuration/MovingParams;

    invoke-direct {v0, p1}, Lcom/software/shell/viewmover/configuration/MovingParams;-><init>(Lcom/software/shell/viewmover/configuration/MovingParams;)V

    .line 187
    .local v0, "mParams":Lcom/software/shell/viewmover/configuration/MovingParams;
    invoke-direct {p0, v0}, Lcom/software/shell/viewmover/movers/ViewMover;->updateXAxisDelta(Lcom/software/shell/viewmover/configuration/MovingParams;)V

    .line 188
    invoke-direct {p0, v0}, Lcom/software/shell/viewmover/movers/ViewMover;->updateYAxisDelta(Lcom/software/shell/viewmover/configuration/MovingParams;)V

    .line 189
    const-string v1, "Updated moving details values: X-axis from %s to %s, Y-axis from %s to %s"

    const/4 v2, 0x4

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 190
    invoke-virtual {p1}, Lcom/software/shell/viewmover/configuration/MovingParams;->getXAxisDelta()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {v0}, Lcom/software/shell/viewmover/configuration/MovingParams;->getXAxisDelta()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x2

    invoke-virtual {p1}, Lcom/software/shell/viewmover/configuration/MovingParams;->getYAxisDelta()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x3

    invoke-virtual {v0}, Lcom/software/shell/viewmover/configuration/MovingParams;->getYAxisDelta()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    .line 189
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 191
    return-object v0
.end method

.method private hasHorizontalSpaceToMove(F)Z
    .locals 8
    .param p1, "xAxisDelta"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 231
    invoke-virtual {p0}, Lcom/software/shell/viewmover/movers/ViewMover;->getParentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getWidth()I

    move-result v2

    .line 232
    .local v2, "parentWidth":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Parent view width is: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 233
    invoke-virtual {p0, p1}, Lcom/software/shell/viewmover/movers/ViewMover;->calculateEndLeftBound(F)I

    move-result v0

    .line 234
    .local v0, "endLeftBound":I
    invoke-virtual {p0, p1}, Lcom/software/shell/viewmover/movers/ViewMover;->calculateEndRightBound(F)I

    move-result v1

    .line 235
    .local v1, "endRightBound":I
    const-string v5, "Calculated end bounds: left = %s, right = %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 236
    if-ltz v0, :cond_0

    if-gt v1, v2, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private hasVerticalSpaceToMove(F)Z
    .locals 8
    .param p1, "yAxisDelta"    # F

    .prologue
    const/4 v3, 0x1

    const/4 v4, 0x0

    .line 250
    invoke-virtual {p0}, Lcom/software/shell/viewmover/movers/ViewMover;->getParentView()Landroid/view/View;

    move-result-object v5

    invoke-virtual {v5}, Landroid/view/View;->getHeight()I

    move-result v2

    .line 251
    .local v2, "parentHeight":I
    new-instance v5, Ljava/lang/StringBuilder;

    const-string v6, "Parent view height is: "

    invoke-direct {v5, v6}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v5, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 252
    invoke-virtual {p0, p1}, Lcom/software/shell/viewmover/movers/ViewMover;->calculateEndTopBound(F)I

    move-result v1

    .line 253
    .local v1, "endTopBound":I
    invoke-virtual {p0, p1}, Lcom/software/shell/viewmover/movers/ViewMover;->calculateEndBottomBound(F)I

    move-result v0

    .line 254
    .local v0, "endBottomBound":I
    const-string v5, "Calculated end bounds: top = %s, bottom = %s"

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v4

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    aput-object v7, v6, v3

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 255
    if-ltz v1, :cond_0

    if-gt v0, v2, :cond_0

    :goto_0
    return v3

    :cond_0
    move v3, v4

    goto :goto_0
.end method

.method private updateXAxisDelta(Lcom/software/shell/viewmover/configuration/MovingParams;)V
    .locals 2
    .param p1, "details"    # Lcom/software/shell/viewmover/configuration/MovingParams;

    .prologue
    .line 201
    invoke-virtual {p1}, Lcom/software/shell/viewmover/configuration/MovingParams;->getXAxisDelta()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/software/shell/viewmover/movers/ViewMover;->hasHorizontalSpaceToMove(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 202
    sget-object v0, Lcom/software/shell/viewmover/movers/ViewMover;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Unable to move the view horizontally. No horizontal space left to move"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 203
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/software/shell/viewmover/configuration/MovingParams;->setXAxisDelta(F)V

    .line 205
    :cond_0
    return-void
.end method

.method private updateYAxisDelta(Lcom/software/shell/viewmover/configuration/MovingParams;)V
    .locals 2
    .param p1, "details"    # Lcom/software/shell/viewmover/configuration/MovingParams;

    .prologue
    .line 214
    invoke-virtual {p1}, Lcom/software/shell/viewmover/configuration/MovingParams;->getYAxisDelta()F

    move-result v0

    invoke-direct {p0, v0}, Lcom/software/shell/viewmover/movers/ViewMover;->hasVerticalSpaceToMove(F)Z

    move-result v0

    if-nez v0, :cond_0

    .line 215
    sget-object v0, Lcom/software/shell/viewmover/movers/ViewMover;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Unable to move the view vertically. No vertical space left to move"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 216
    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/software/shell/viewmover/configuration/MovingParams;->setYAxisDelta(F)V

    .line 218
    :cond_0
    return-void
.end method


# virtual methods
.method abstract calculateEndBottomBound(F)I
.end method

.method abstract calculateEndLeftBound(F)I
.end method

.method abstract calculateEndRightBound(F)I
.end method

.method abstract calculateEndTopBound(F)I
.end method

.method abstract changeViewPosition(FF)V
.end method

.method getParentView()Landroid/view/View;
    .locals 1

    .prologue
    .line 127
    iget-object v0, p0, Lcom/software/shell/viewmover/movers/ViewMover;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    return-object v0
.end method

.method getView()Landroid/view/View;
    .locals 1

    .prologue
    .line 118
    iget-object v0, p0, Lcom/software/shell/viewmover/movers/ViewMover;->view:Landroid/view/View;

    return-object v0
.end method

.method isMoveNonZero(Lcom/software/shell/viewmover/configuration/MovingParams;)Z
    .locals 3
    .param p1, "details"    # Lcom/software/shell/viewmover/configuration/MovingParams;

    .prologue
    const/4 v2, 0x0

    .line 169
    invoke-virtual {p1}, Lcom/software/shell/viewmover/configuration/MovingParams;->getXAxisDelta()F

    move-result v1

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 170
    invoke-virtual {p1}, Lcom/software/shell/viewmover/configuration/MovingParams;->getYAxisDelta()F

    move-result v1

    cmpl-float v1, v1, v2

    if-eqz v1, :cond_2

    :cond_0
    const/4 v0, 0x1

    .line 171
    .local v0, "moveNonZero":Z
    :goto_0
    if-nez v0, :cond_1

    .line 172
    sget-object v1, Lcom/software/shell/viewmover/movers/ViewMover;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Zero movement detected. No movement will be performed"

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    :cond_1
    return v0

    .line 170
    .end local v0    # "moveNonZero":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isPreviousAnimationCompleted()Z
    .locals 4

    .prologue
    .line 153
    iget-object v2, p0, Lcom/software/shell/viewmover/movers/ViewMover;->view:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    .line 154
    .local v0, "previousAnimation":Landroid/view/animation/Animation;
    if-eqz v0, :cond_0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v2

    if-eqz v2, :cond_2

    :cond_0
    const/4 v1, 0x1

    .line 155
    .local v1, "previousAnimationCompleted":Z
    :goto_0
    if-nez v1, :cond_1

    .line 156
    sget-object v2, Lcom/software/shell/viewmover/movers/ViewMover;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Unable to move the view. View is being currently moving"

    invoke-static {v2, v3}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    :cond_1
    return v1

    .line 154
    .end local v1    # "previousAnimationCompleted":Z
    :cond_2
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public move(Lcom/software/shell/viewmover/configuration/MovingParams;)V
    .locals 6
    .param p1, "params"    # Lcom/software/shell/viewmover/configuration/MovingParams;

    .prologue
    .line 136
    invoke-virtual {p0}, Lcom/software/shell/viewmover/movers/ViewMover;->isPreviousAnimationCompleted()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 137
    invoke-direct {p0, p1}, Lcom/software/shell/viewmover/movers/ViewMover;->getVerifiedMovingParams(Lcom/software/shell/viewmover/configuration/MovingParams;)Lcom/software/shell/viewmover/configuration/MovingParams;

    move-result-object v1

    .line 138
    .local v1, "verifiedParams":Lcom/software/shell/viewmover/configuration/MovingParams;
    invoke-virtual {p0, v1}, Lcom/software/shell/viewmover/movers/ViewMover;->isMoveNonZero(Lcom/software/shell/viewmover/configuration/MovingParams;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    invoke-direct {p0, v1}, Lcom/software/shell/viewmover/movers/ViewMover;->createAnimation(Lcom/software/shell/viewmover/configuration/MovingParams;)Landroid/view/animation/Animation;

    move-result-object v0

    .line 140
    .local v0, "moveAnimation":Landroid/view/animation/Animation;
    const-string v2, "View is about to be moved at: delta X-axis = %s, delta Y-axis = %s"

    const/4 v3, 0x2

    new-array v3, v3, [Ljava/lang/Object;

    const/4 v4, 0x0

    .line 141
    invoke-virtual {v1}, Lcom/software/shell/viewmover/configuration/MovingParams;->getXAxisDelta()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    const/4 v4, 0x1

    invoke-virtual {v1}, Lcom/software/shell/viewmover/configuration/MovingParams;->getYAxisDelta()F

    move-result v5

    invoke-static {v5}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v5

    aput-object v5, v3, v4

    .line 140
    invoke-static {v2, v3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 142
    iget-object v2, p0, Lcom/software/shell/viewmover/movers/ViewMover;->view:Landroid/view/View;

    invoke-virtual {v2, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 145
    .end local v0    # "moveAnimation":Landroid/view/animation/Animation;
    .end local v1    # "verifiedParams":Lcom/software/shell/viewmover/configuration/MovingParams;
    :cond_0
    return-void
.end method
