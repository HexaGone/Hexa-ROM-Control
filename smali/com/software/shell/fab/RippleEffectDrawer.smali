.class Lcom/software/shell/fab/RippleEffectDrawer;
.super Lcom/software/shell/fab/EffectDrawer;
.source "RippleEffectDrawer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final POST_INVALIDATION_DELAY_MS:J = 0x64L

.field private static final RADIUS_INCREMENT:I = 0x5


# instance fields
.field private currentRadius:I


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    const-string v0, "[FAB][%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/software/shell/fab/RippleEffectDrawer;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/software/shell/fab/RippleEffectDrawer;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/software/shell/fab/ActionButton;)V
    .locals 0
    .param p1, "actionButton"    # Lcom/software/shell/fab/ActionButton;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/software/shell/fab/EffectDrawer;-><init>(Lcom/software/shell/fab/ActionButton;)V

    .line 63
    return-void
.end method

.method private drawRipple(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 139
    invoke-virtual {p1}, Landroid/graphics/Canvas;->save()I

    .line 140
    invoke-direct {p0}, Lcom/software/shell/fab/RippleEffectDrawer;->getCircleClipPath()Landroid/graphics/Path;

    move-result-object v1

    sget-object v2, Landroid/graphics/Region$Op;->INTERSECT:Landroid/graphics/Region$Op;

    invoke-virtual {p1, v1, v2}, Landroid/graphics/Canvas;->clipPath(Landroid/graphics/Path;Landroid/graphics/Region$Op;)Z

    .line 141
    invoke-virtual {p0}, Lcom/software/shell/fab/RippleEffectDrawer;->getActionButton()Lcom/software/shell/fab/ActionButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/software/shell/fab/ActionButton;->getTouchPoint()Lcom/software/shell/fab/TouchPoint;

    move-result-object v0

    .line 142
    .local v0, "point":Lcom/software/shell/fab/TouchPoint;
    invoke-virtual {v0}, Lcom/software/shell/fab/TouchPoint;->getLastX()F

    move-result v1

    invoke-virtual {v0}, Lcom/software/shell/fab/TouchPoint;->getLastY()F

    move-result v2

    iget v3, p0, Lcom/software/shell/fab/RippleEffectDrawer;->currentRadius:I

    int-to-float v3, v3

    invoke-direct {p0}, Lcom/software/shell/fab/RippleEffectDrawer;->getPreparedPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 143
    invoke-virtual {p1}, Landroid/graphics/Canvas;->restore()V

    .line 144
    return-void
.end method

.method private getCircleClipPath()Landroid/graphics/Path;
    .locals 5

    .prologue
    .line 153
    new-instance v0, Landroid/graphics/Path;

    invoke-direct {v0}, Landroid/graphics/Path;-><init>()V

    .line 154
    .local v0, "path":Landroid/graphics/Path;
    invoke-virtual {p0}, Lcom/software/shell/fab/RippleEffectDrawer;->getActionButton()Lcom/software/shell/fab/ActionButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/software/shell/fab/ActionButton;->calculateCenterX()F

    move-result v1

    invoke-virtual {p0}, Lcom/software/shell/fab/RippleEffectDrawer;->getActionButton()Lcom/software/shell/fab/ActionButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/software/shell/fab/ActionButton;->calculateCenterY()F

    move-result v2

    .line 155
    invoke-virtual {p0}, Lcom/software/shell/fab/RippleEffectDrawer;->getActionButton()Lcom/software/shell/fab/ActionButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/software/shell/fab/ActionButton;->calculateCircleRadius()F

    move-result v3

    sget-object v4, Landroid/graphics/Path$Direction;->CW:Landroid/graphics/Path$Direction;

    .line 154
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Path;->addCircle(FFFLandroid/graphics/Path$Direction;)V

    .line 156
    return-object v0
.end method

.method private getEndRippleRadius()I
    .locals 2

    .prologue
    .line 89
    invoke-virtual {p0}, Lcom/software/shell/fab/RippleEffectDrawer;->getActionButton()Lcom/software/shell/fab/ActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/software/shell/fab/ActionButton;->calculateCircleRadius()F

    move-result v0

    const/high16 v1, 0x40000000    # 2.0f

    mul-float/2addr v0, v1

    float-to-int v0, v0

    return v0
.end method

.method private getPreparedPaint()Landroid/graphics/Paint;
    .locals 2

    .prologue
    .line 165
    invoke-virtual {p0}, Lcom/software/shell/fab/RippleEffectDrawer;->getActionButton()Lcom/software/shell/fab/ActionButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/software/shell/fab/ActionButton;->resetPaint()V

    .line 166
    invoke-virtual {p0}, Lcom/software/shell/fab/RippleEffectDrawer;->getActionButton()Lcom/software/shell/fab/ActionButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/software/shell/fab/ActionButton;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    .line 167
    .local v0, "paint":Landroid/graphics/Paint;
    sget-object v1, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 168
    invoke-virtual {p0}, Lcom/software/shell/fab/RippleEffectDrawer;->getActionButton()Lcom/software/shell/fab/ActionButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/software/shell/fab/ActionButton;->getButtonColorRipple()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 169
    return-object v0
.end method

.method private updateRadius()V
    .locals 3

    .prologue
    .line 96
    invoke-virtual {p0}, Lcom/software/shell/fab/RippleEffectDrawer;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 97
    iget v0, p0, Lcom/software/shell/fab/RippleEffectDrawer;->currentRadius:I

    invoke-direct {p0}, Lcom/software/shell/fab/RippleEffectDrawer;->getEndRippleRadius()I

    move-result v1

    if-gt v0, v1, :cond_0

    .line 98
    iget v0, p0, Lcom/software/shell/fab/RippleEffectDrawer;->currentRadius:I

    add-int/lit8 v0, v0, 0x5

    iput v0, p0, Lcom/software/shell/fab/RippleEffectDrawer;->currentRadius:I

    .line 107
    :cond_0
    :goto_0
    sget-object v0, Lcom/software/shell/fab/RippleEffectDrawer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ripple effect radius updated to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/software/shell/fab/RippleEffectDrawer;->currentRadius:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    return-void

    .line 101
    :cond_1
    invoke-virtual {p0}, Lcom/software/shell/fab/RippleEffectDrawer;->isDrawingInProgress()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 102
    invoke-direct {p0}, Lcom/software/shell/fab/RippleEffectDrawer;->getEndRippleRadius()I

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/RippleEffectDrawer;->currentRadius:I

    goto :goto_0

    .line 103
    :cond_2
    invoke-virtual {p0}, Lcom/software/shell/fab/RippleEffectDrawer;->isDrawingFinished()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 104
    const/4 v0, 0x0

    iput v0, p0, Lcom/software/shell/fab/RippleEffectDrawer;->currentRadius:I

    goto :goto_0
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 119
    invoke-direct {p0}, Lcom/software/shell/fab/RippleEffectDrawer;->updateRadius()V

    .line 120
    invoke-direct {p0, p1}, Lcom/software/shell/fab/RippleEffectDrawer;->drawRipple(Landroid/graphics/Canvas;)V

    .line 121
    invoke-virtual {p0}, Lcom/software/shell/fab/RippleEffectDrawer;->getActionButton()Lcom/software/shell/fab/ActionButton;

    move-result-object v1

    invoke-virtual {v1}, Lcom/software/shell/fab/ActionButton;->getInvalidator()Lcom/software/shell/fab/ViewInvalidator;

    move-result-object v0

    .line 122
    .local v0, "invalidator":Lcom/software/shell/fab/ViewInvalidator;
    invoke-virtual {p0}, Lcom/software/shell/fab/RippleEffectDrawer;->isDrawingInProgress()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 123
    invoke-virtual {v0}, Lcom/software/shell/fab/ViewInvalidator;->requireInvalidation()V

    .line 124
    sget-object v1, Lcom/software/shell/fab/RippleEffectDrawer;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Ripple Effect drawing in progress, invalidating the Action Button"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    :goto_0
    return-void

    .line 125
    :cond_1
    invoke-virtual {p0}, Lcom/software/shell/fab/RippleEffectDrawer;->isDrawingFinished()Z

    move-result v1

    if-eqz v1, :cond_0

    invoke-virtual {p0}, Lcom/software/shell/fab/RippleEffectDrawer;->isPressed()Z

    move-result v1

    if-nez v1, :cond_0

    .line 126
    invoke-virtual {v0}, Lcom/software/shell/fab/ViewInvalidator;->requireDelayedInvalidation()V

    .line 127
    const-wide/16 v2, 0x64

    invoke-virtual {v0, v2, v3}, Lcom/software/shell/fab/ViewInvalidator;->setInvalidationDelay(J)V

    .line 128
    sget-object v1, Lcom/software/shell/fab/RippleEffectDrawer;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Ripple Effect drawing finished, posting the last invalidate"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method isDrawingFinished()Z
    .locals 2

    .prologue
    .line 80
    iget v0, p0, Lcom/software/shell/fab/RippleEffectDrawer;->currentRadius:I

    invoke-direct {p0}, Lcom/software/shell/fab/RippleEffectDrawer;->getEndRippleRadius()I

    move-result v1

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method isDrawingInProgress()Z
    .locals 1

    .prologue
    .line 71
    iget v0, p0, Lcom/software/shell/fab/RippleEffectDrawer;->currentRadius:I

    if-lez v0, :cond_0

    invoke-virtual {p0}, Lcom/software/shell/fab/RippleEffectDrawer;->isDrawingFinished()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
