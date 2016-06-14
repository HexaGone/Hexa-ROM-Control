.class Lcom/software/shell/fab/ShadowResponsiveDrawer;
.super Lcom/software/shell/fab/EffectDrawer;
.source "ShadowResponsiveDrawer.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final SHADOW_DRAWING_STEP:F = 0.5f

.field private static final SHADOW_RESPONSE_FACTOR:F = 1.75f


# instance fields
.field private currentShadowRadius:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 37
    const-string v0, "[FAB][%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/software/shell/fab/ShadowResponsiveDrawer;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/software/shell/fab/ShadowResponsiveDrawer;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Lcom/software/shell/fab/ActionButton;)V
    .locals 0
    .param p1, "actionButton"    # Lcom/software/shell/fab/ActionButton;

    .prologue
    .line 62
    invoke-direct {p0, p1}, Lcom/software/shell/fab/EffectDrawer;-><init>(Lcom/software/shell/fab/ActionButton;)V

    .line 63
    invoke-direct {p0}, Lcom/software/shell/fab/ShadowResponsiveDrawer;->init()V

    .line 64
    return-void
.end method

.method private init()V
    .locals 1

    .prologue
    .line 83
    invoke-virtual {p0}, Lcom/software/shell/fab/ShadowResponsiveDrawer;->getActionButton()Lcom/software/shell/fab/ActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/software/shell/fab/ActionButton;->getShadowRadius()F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ShadowResponsiveDrawer;->currentShadowRadius:F

    .line 84
    return-void
.end method


# virtual methods
.method draw(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 73
    invoke-virtual {p0}, Lcom/software/shell/fab/ShadowResponsiveDrawer;->updateRadius()V

    .line 74
    invoke-virtual {p0}, Lcom/software/shell/fab/ShadowResponsiveDrawer;->getActionButton()Lcom/software/shell/fab/ActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/software/shell/fab/ActionButton;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    iget v1, p0, Lcom/software/shell/fab/ShadowResponsiveDrawer;->currentShadowRadius:F

    invoke-virtual {p0}, Lcom/software/shell/fab/ShadowResponsiveDrawer;->getActionButton()Lcom/software/shell/fab/ActionButton;

    move-result-object v2

    invoke-virtual {v2}, Lcom/software/shell/fab/ActionButton;->getShadowXOffset()F

    move-result v2

    .line 75
    invoke-virtual {p0}, Lcom/software/shell/fab/ShadowResponsiveDrawer;->getActionButton()Lcom/software/shell/fab/ActionButton;

    move-result-object v3

    invoke-virtual {v3}, Lcom/software/shell/fab/ActionButton;->getShadowYOffset()F

    move-result v3

    invoke-virtual {p0}, Lcom/software/shell/fab/ShadowResponsiveDrawer;->getActionButton()Lcom/software/shell/fab/ActionButton;

    move-result-object v4

    invoke-virtual {v4}, Lcom/software/shell/fab/ActionButton;->getShadowColor()I

    move-result v4

    .line 74
    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 76
    sget-object v0, Lcom/software/shell/fab/ShadowResponsiveDrawer;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Shadow responsive step drawn"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 77
    return-void
.end method

.method getMaxShadowRadius()F
    .locals 2

    .prologue
    .line 133
    invoke-virtual {p0}, Lcom/software/shell/fab/ShadowResponsiveDrawer;->getMinShadowRadius()F

    move-result v0

    const/high16 v1, 0x3fe00000    # 1.75f

    mul-float/2addr v0, v1

    return v0
.end method

.method getMinShadowRadius()F
    .locals 1

    .prologue
    .line 120
    invoke-virtual {p0}, Lcom/software/shell/fab/ShadowResponsiveDrawer;->getActionButton()Lcom/software/shell/fab/ActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/software/shell/fab/ActionButton;->getShadowRadius()F

    move-result v0

    return v0
.end method

.method setCurrentShadowRadius(F)V
    .locals 0
    .param p1, "currentShadowRadius"    # F

    .prologue
    .line 108
    iput p1, p0, Lcom/software/shell/fab/ShadowResponsiveDrawer;->currentShadowRadius:F

    .line 109
    return-void
.end method

.method updateRadius()V
    .locals 3

    .prologue
    const/high16 v2, 0x3f000000    # 0.5f

    .line 90
    invoke-virtual {p0}, Lcom/software/shell/fab/ShadowResponsiveDrawer;->isPressed()Z

    move-result v0

    if-eqz v0, :cond_1

    iget v0, p0, Lcom/software/shell/fab/ShadowResponsiveDrawer;->currentShadowRadius:F

    invoke-virtual {p0}, Lcom/software/shell/fab/ShadowResponsiveDrawer;->getMaxShadowRadius()F

    move-result v1

    cmpg-float v0, v0, v1

    if-gez v0, :cond_1

    .line 91
    iget v0, p0, Lcom/software/shell/fab/ShadowResponsiveDrawer;->currentShadowRadius:F

    add-float/2addr v0, v2

    iput v0, p0, Lcom/software/shell/fab/ShadowResponsiveDrawer;->currentShadowRadius:F

    .line 92
    invoke-virtual {p0}, Lcom/software/shell/fab/ShadowResponsiveDrawer;->getActionButton()Lcom/software/shell/fab/ActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/software/shell/fab/ActionButton;->getInvalidator()Lcom/software/shell/fab/ViewInvalidator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/software/shell/fab/ViewInvalidator;->requireInvalidation()V

    .line 99
    :cond_0
    :goto_0
    sget-object v0, Lcom/software/shell/fab/ShadowResponsiveDrawer;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shadow responsive current radius updated to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lcom/software/shell/fab/ShadowResponsiveDrawer;->currentShadowRadius:F

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 100
    return-void

    .line 93
    :cond_1
    invoke-virtual {p0}, Lcom/software/shell/fab/ShadowResponsiveDrawer;->isPressed()Z

    move-result v0

    if-nez v0, :cond_2

    iget v0, p0, Lcom/software/shell/fab/ShadowResponsiveDrawer;->currentShadowRadius:F

    invoke-virtual {p0}, Lcom/software/shell/fab/ShadowResponsiveDrawer;->getMinShadowRadius()F

    move-result v1

    cmpl-float v0, v0, v1

    if-lez v0, :cond_2

    .line 94
    iget v0, p0, Lcom/software/shell/fab/ShadowResponsiveDrawer;->currentShadowRadius:F

    sub-float/2addr v0, v2

    iput v0, p0, Lcom/software/shell/fab/ShadowResponsiveDrawer;->currentShadowRadius:F

    .line 95
    invoke-virtual {p0}, Lcom/software/shell/fab/ShadowResponsiveDrawer;->getActionButton()Lcom/software/shell/fab/ActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/software/shell/fab/ActionButton;->getInvalidator()Lcom/software/shell/fab/ViewInvalidator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/software/shell/fab/ViewInvalidator;->requireInvalidation()V

    goto :goto_0

    .line 96
    :cond_2
    invoke-virtual {p0}, Lcom/software/shell/fab/ShadowResponsiveDrawer;->isPressed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 97
    invoke-virtual {p0}, Lcom/software/shell/fab/ShadowResponsiveDrawer;->getActionButton()Lcom/software/shell/fab/ActionButton;

    move-result-object v0

    invoke-virtual {v0}, Lcom/software/shell/fab/ActionButton;->getShadowRadius()F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ShadowResponsiveDrawer;->currentShadowRadius:F

    goto :goto_0
.end method
