.class public Lcom/software/shell/fab/ActionButton;
.super Landroid/view/View;
.source "ActionButton.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/software/shell/fab/ActionButton$Animations;,
        Lcom/software/shell/fab/ActionButton$State;,
        Lcom/software/shell/fab/ActionButton$Type;
    }
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private buttonColor:I

.field private buttonColorPressed:I

.field private buttonColorRipple:I

.field private hideAnimation:Landroid/view/animation/Animation;

.field private image:Landroid/graphics/drawable/Drawable;

.field private imageSize:F

.field private final invalidator:Lcom/software/shell/fab/ViewInvalidator;

.field protected final mover:Lcom/software/shell/viewmover/movers/ViewMover;

.field private final paint:Landroid/graphics/Paint;

.field protected final rippleEffectDrawer:Lcom/software/shell/fab/EffectDrawer;

.field private rippleEffectEnabled:Z

.field private shadowColor:I

.field private shadowRadius:F

.field protected final shadowResponsiveDrawer:Lcom/software/shell/fab/EffectDrawer;

.field private shadowResponsiveEffectEnabled:Z

.field private shadowXOffset:F

.field private shadowYOffset:F

.field private showAnimation:Landroid/view/animation/Animation;

.field private size:F

.field private state:Lcom/software/shell/fab/ActionButton$State;

.field private strokeColor:I

.field private strokeWidth:F

.field private touchPoint:Lcom/software/shell/fab/TouchPoint;

.field private type:Lcom/software/shell/fab/ActionButton$Type;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 54
    const-string v0, "[FAB][%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/software/shell/fab/ActionButton;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x41000000    # 8.0f

    const/4 v1, 0x0

    .line 191
    invoke-direct {p0, p1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    .line 59
    sget-object v0, Lcom/software/shell/fab/ActionButton$Type;->DEFAULT:Lcom/software/shell/fab/ActionButton$Type;

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->type:Lcom/software/shell/fab/ActionButton$Type;

    .line 64
    iget-object v0, p0, Lcom/software/shell/fab/ActionButton;->type:Lcom/software/shell/fab/ActionButton$Type;

    invoke-virtual {v0}, Lcom/software/shell/fab/ActionButton$Type;->getSize()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->size:F

    .line 69
    sget-object v0, Lcom/software/shell/fab/ActionButton$State;->NORMAL:Lcom/software/shell/fab/ActionButton$State;

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->state:Lcom/software/shell/fab/ActionButton$State;

    .line 74
    const-string v0, "#FF9B9B9B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->buttonColor:I

    .line 79
    const-string v0, "#FF696969"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->buttonColorPressed:I

    .line 89
    invoke-direct {p0}, Lcom/software/shell/fab/ActionButton;->darkenButtonColorPressed()I

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->buttonColorRipple:I

    .line 94
    invoke-virtual {p0, v2}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->shadowRadius:F

    .line 99
    invoke-virtual {p0, v1}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->shadowXOffset:F

    .line 104
    invoke-virtual {p0, v2}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->shadowYOffset:F

    .line 109
    const-string v0, "#42000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->shadowColor:I

    .line 117
    iput-boolean v3, p0, Lcom/software/shell/fab/ActionButton;->shadowResponsiveEffectEnabled:Z

    .line 122
    iput v1, p0, Lcom/software/shell/fab/ActionButton;->strokeWidth:F

    .line 127
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->strokeColor:I

    .line 137
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->imageSize:F

    .line 155
    new-instance v0, Lcom/software/shell/fab/TouchPoint;

    invoke-direct {v0, v1, v1}, Lcom/software/shell/fab/TouchPoint;-><init>(FF)V

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->touchPoint:Lcom/software/shell/fab/TouchPoint;

    .line 161
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->paint:Landroid/graphics/Paint;

    .line 166
    new-instance v0, Lcom/software/shell/fab/ViewInvalidator;

    invoke-direct {v0, p0}, Lcom/software/shell/fab/ViewInvalidator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->invalidator:Lcom/software/shell/fab/ViewInvalidator;

    .line 171
    new-instance v0, Lcom/software/shell/fab/RippleEffectDrawer;

    invoke-direct {v0, p0}, Lcom/software/shell/fab/RippleEffectDrawer;-><init>(Lcom/software/shell/fab/ActionButton;)V

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->rippleEffectDrawer:Lcom/software/shell/fab/EffectDrawer;

    .line 176
    new-instance v0, Lcom/software/shell/fab/ShadowResponsiveDrawer;

    invoke-direct {v0, p0}, Lcom/software/shell/fab/ShadowResponsiveDrawer;-><init>(Lcom/software/shell/fab/ActionButton;)V

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->shadowResponsiveDrawer:Lcom/software/shell/fab/EffectDrawer;

    .line 181
    invoke-static {p0}, Lcom/software/shell/viewmover/movers/ViewMoverFactory;->createInstance(Landroid/view/View;)Lcom/software/shell/viewmover/movers/ViewMover;

    move-result-object v0

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->mover:Lcom/software/shell/viewmover/movers/ViewMover;

    .line 192
    invoke-direct {p0}, Lcom/software/shell/fab/ActionButton;->initActionButton()V

    .line 193
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x1

    const/4 v3, 0x0

    const/high16 v2, 0x41000000    # 8.0f

    const/4 v1, 0x0

    .line 205
    invoke-direct {p0, p1, p2}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 59
    sget-object v0, Lcom/software/shell/fab/ActionButton$Type;->DEFAULT:Lcom/software/shell/fab/ActionButton$Type;

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->type:Lcom/software/shell/fab/ActionButton$Type;

    .line 64
    iget-object v0, p0, Lcom/software/shell/fab/ActionButton;->type:Lcom/software/shell/fab/ActionButton$Type;

    invoke-virtual {v0}, Lcom/software/shell/fab/ActionButton$Type;->getSize()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->size:F

    .line 69
    sget-object v0, Lcom/software/shell/fab/ActionButton$State;->NORMAL:Lcom/software/shell/fab/ActionButton$State;

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->state:Lcom/software/shell/fab/ActionButton$State;

    .line 74
    const-string v0, "#FF9B9B9B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->buttonColor:I

    .line 79
    const-string v0, "#FF696969"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->buttonColorPressed:I

    .line 89
    invoke-direct {p0}, Lcom/software/shell/fab/ActionButton;->darkenButtonColorPressed()I

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->buttonColorRipple:I

    .line 94
    invoke-virtual {p0, v2}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->shadowRadius:F

    .line 99
    invoke-virtual {p0, v1}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->shadowXOffset:F

    .line 104
    invoke-virtual {p0, v2}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->shadowYOffset:F

    .line 109
    const-string v0, "#42000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->shadowColor:I

    .line 117
    iput-boolean v4, p0, Lcom/software/shell/fab/ActionButton;->shadowResponsiveEffectEnabled:Z

    .line 122
    iput v1, p0, Lcom/software/shell/fab/ActionButton;->strokeWidth:F

    .line 127
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->strokeColor:I

    .line 137
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->imageSize:F

    .line 155
    new-instance v0, Lcom/software/shell/fab/TouchPoint;

    invoke-direct {v0, v1, v1}, Lcom/software/shell/fab/TouchPoint;-><init>(FF)V

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->touchPoint:Lcom/software/shell/fab/TouchPoint;

    .line 161
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v4}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->paint:Landroid/graphics/Paint;

    .line 166
    new-instance v0, Lcom/software/shell/fab/ViewInvalidator;

    invoke-direct {v0, p0}, Lcom/software/shell/fab/ViewInvalidator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->invalidator:Lcom/software/shell/fab/ViewInvalidator;

    .line 171
    new-instance v0, Lcom/software/shell/fab/RippleEffectDrawer;

    invoke-direct {v0, p0}, Lcom/software/shell/fab/RippleEffectDrawer;-><init>(Lcom/software/shell/fab/ActionButton;)V

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->rippleEffectDrawer:Lcom/software/shell/fab/EffectDrawer;

    .line 176
    new-instance v0, Lcom/software/shell/fab/ShadowResponsiveDrawer;

    invoke-direct {v0, p0}, Lcom/software/shell/fab/ShadowResponsiveDrawer;-><init>(Lcom/software/shell/fab/ActionButton;)V

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->shadowResponsiveDrawer:Lcom/software/shell/fab/EffectDrawer;

    .line 181
    invoke-static {p0}, Lcom/software/shell/viewmover/movers/ViewMoverFactory;->createInstance(Landroid/view/View;)Lcom/software/shell/viewmover/movers/ViewMover;

    move-result-object v0

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->mover:Lcom/software/shell/viewmover/movers/ViewMover;

    .line 206
    invoke-direct {p0}, Lcom/software/shell/fab/ActionButton;->initActionButton()V

    .line 207
    invoke-direct {p0, p1, p2, v3, v3}, Lcom/software/shell/fab/ActionButton;->initActionButtonAttrs(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 208
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x41000000    # 8.0f

    const/4 v1, 0x0

    .line 223
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    sget-object v0, Lcom/software/shell/fab/ActionButton$Type;->DEFAULT:Lcom/software/shell/fab/ActionButton$Type;

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->type:Lcom/software/shell/fab/ActionButton$Type;

    .line 64
    iget-object v0, p0, Lcom/software/shell/fab/ActionButton;->type:Lcom/software/shell/fab/ActionButton$Type;

    invoke-virtual {v0}, Lcom/software/shell/fab/ActionButton$Type;->getSize()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->size:F

    .line 69
    sget-object v0, Lcom/software/shell/fab/ActionButton$State;->NORMAL:Lcom/software/shell/fab/ActionButton$State;

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->state:Lcom/software/shell/fab/ActionButton$State;

    .line 74
    const-string v0, "#FF9B9B9B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->buttonColor:I

    .line 79
    const-string v0, "#FF696969"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->buttonColorPressed:I

    .line 89
    invoke-direct {p0}, Lcom/software/shell/fab/ActionButton;->darkenButtonColorPressed()I

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->buttonColorRipple:I

    .line 94
    invoke-virtual {p0, v2}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->shadowRadius:F

    .line 99
    invoke-virtual {p0, v1}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->shadowXOffset:F

    .line 104
    invoke-virtual {p0, v2}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->shadowYOffset:F

    .line 109
    const-string v0, "#42000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->shadowColor:I

    .line 117
    iput-boolean v3, p0, Lcom/software/shell/fab/ActionButton;->shadowResponsiveEffectEnabled:Z

    .line 122
    iput v1, p0, Lcom/software/shell/fab/ActionButton;->strokeWidth:F

    .line 127
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->strokeColor:I

    .line 137
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->imageSize:F

    .line 155
    new-instance v0, Lcom/software/shell/fab/TouchPoint;

    invoke-direct {v0, v1, v1}, Lcom/software/shell/fab/TouchPoint;-><init>(FF)V

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->touchPoint:Lcom/software/shell/fab/TouchPoint;

    .line 161
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->paint:Landroid/graphics/Paint;

    .line 166
    new-instance v0, Lcom/software/shell/fab/ViewInvalidator;

    invoke-direct {v0, p0}, Lcom/software/shell/fab/ViewInvalidator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->invalidator:Lcom/software/shell/fab/ViewInvalidator;

    .line 171
    new-instance v0, Lcom/software/shell/fab/RippleEffectDrawer;

    invoke-direct {v0, p0}, Lcom/software/shell/fab/RippleEffectDrawer;-><init>(Lcom/software/shell/fab/ActionButton;)V

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->rippleEffectDrawer:Lcom/software/shell/fab/EffectDrawer;

    .line 176
    new-instance v0, Lcom/software/shell/fab/ShadowResponsiveDrawer;

    invoke-direct {v0, p0}, Lcom/software/shell/fab/ShadowResponsiveDrawer;-><init>(Lcom/software/shell/fab/ActionButton;)V

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->shadowResponsiveDrawer:Lcom/software/shell/fab/EffectDrawer;

    .line 181
    invoke-static {p0}, Lcom/software/shell/viewmover/movers/ViewMoverFactory;->createInstance(Landroid/view/View;)Lcom/software/shell/viewmover/movers/ViewMover;

    move-result-object v0

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->mover:Lcom/software/shell/viewmover/movers/ViewMover;

    .line 224
    invoke-direct {p0}, Lcom/software/shell/fab/ActionButton;->initActionButton()V

    .line 225
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/software/shell/fab/ActionButton;->initActionButtonAttrs(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 226
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    const/4 v3, 0x1

    const/high16 v2, 0x41000000    # 8.0f

    const/4 v1, 0x0

    .line 248
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 59
    sget-object v0, Lcom/software/shell/fab/ActionButton$Type;->DEFAULT:Lcom/software/shell/fab/ActionButton$Type;

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->type:Lcom/software/shell/fab/ActionButton$Type;

    .line 64
    iget-object v0, p0, Lcom/software/shell/fab/ActionButton;->type:Lcom/software/shell/fab/ActionButton$Type;

    invoke-virtual {v0}, Lcom/software/shell/fab/ActionButton$Type;->getSize()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->size:F

    .line 69
    sget-object v0, Lcom/software/shell/fab/ActionButton$State;->NORMAL:Lcom/software/shell/fab/ActionButton$State;

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->state:Lcom/software/shell/fab/ActionButton$State;

    .line 74
    const-string v0, "#FF9B9B9B"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->buttonColor:I

    .line 79
    const-string v0, "#FF696969"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->buttonColorPressed:I

    .line 89
    invoke-direct {p0}, Lcom/software/shell/fab/ActionButton;->darkenButtonColorPressed()I

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->buttonColorRipple:I

    .line 94
    invoke-virtual {p0, v2}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->shadowRadius:F

    .line 99
    invoke-virtual {p0, v1}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->shadowXOffset:F

    .line 104
    invoke-virtual {p0, v2}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->shadowYOffset:F

    .line 109
    const-string v0, "#42000000"

    invoke-static {v0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->shadowColor:I

    .line 117
    iput-boolean v3, p0, Lcom/software/shell/fab/ActionButton;->shadowResponsiveEffectEnabled:Z

    .line 122
    iput v1, p0, Lcom/software/shell/fab/ActionButton;->strokeWidth:F

    .line 127
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->strokeColor:I

    .line 137
    const/high16 v0, 0x41c00000    # 24.0f

    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->imageSize:F

    .line 155
    new-instance v0, Lcom/software/shell/fab/TouchPoint;

    invoke-direct {v0, v1, v1}, Lcom/software/shell/fab/TouchPoint;-><init>(FF)V

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->touchPoint:Lcom/software/shell/fab/TouchPoint;

    .line 161
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0, v3}, Landroid/graphics/Paint;-><init>(I)V

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->paint:Landroid/graphics/Paint;

    .line 166
    new-instance v0, Lcom/software/shell/fab/ViewInvalidator;

    invoke-direct {v0, p0}, Lcom/software/shell/fab/ViewInvalidator;-><init>(Landroid/view/View;)V

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->invalidator:Lcom/software/shell/fab/ViewInvalidator;

    .line 171
    new-instance v0, Lcom/software/shell/fab/RippleEffectDrawer;

    invoke-direct {v0, p0}, Lcom/software/shell/fab/RippleEffectDrawer;-><init>(Lcom/software/shell/fab/ActionButton;)V

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->rippleEffectDrawer:Lcom/software/shell/fab/EffectDrawer;

    .line 176
    new-instance v0, Lcom/software/shell/fab/ShadowResponsiveDrawer;

    invoke-direct {v0, p0}, Lcom/software/shell/fab/ShadowResponsiveDrawer;-><init>(Lcom/software/shell/fab/ActionButton;)V

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->shadowResponsiveDrawer:Lcom/software/shell/fab/EffectDrawer;

    .line 181
    invoke-static {p0}, Lcom/software/shell/viewmover/movers/ViewMoverFactory;->createInstance(Landroid/view/View;)Lcom/software/shell/viewmover/movers/ViewMover;

    move-result-object v0

    iput-object v0, p0, Lcom/software/shell/fab/ActionButton;->mover:Lcom/software/shell/viewmover/movers/ViewMover;

    .line 249
    invoke-direct {p0}, Lcom/software/shell/fab/ActionButton;->initActionButton()V

    .line 250
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/software/shell/fab/ActionButton;->initActionButtonAttrs(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 251
    return-void
.end method

.method private calculateMeasuredHeight()I
    .locals 4

    .prologue
    .line 1627
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getSize()F

    move-result v1

    invoke-direct {p0}, Lcom/software/shell/fab/ActionButton;->calculateShadowHeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-direct {p0}, Lcom/software/shell/fab/ActionButton;->calculateStrokeWeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 1628
    .local v0, "measuredHeight":I
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calculated measured height = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    return v0
.end method

.method private calculateMeasuredWidth()I
    .locals 4

    .prologue
    .line 1616
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getSize()F

    move-result v1

    invoke-direct {p0}, Lcom/software/shell/fab/ActionButton;->calculateShadowWidth()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    invoke-direct {p0}, Lcom/software/shell/fab/ActionButton;->calculateStrokeWeight()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 1617
    .local v0, "measuredWidth":I
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calculated measured width = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    return v0
.end method

.method private calculateShadowHeight()I
    .locals 5

    .prologue
    .line 1651
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->isShadowResponsiveEffectEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/software/shell/fab/ActionButton;->shadowResponsiveDrawer:Lcom/software/shell/fab/EffectDrawer;

    check-cast v2, Lcom/software/shell/fab/ShadowResponsiveDrawer;

    .line 1652
    invoke-virtual {v2}, Lcom/software/shell/fab/ShadowResponsiveDrawer;->getMaxShadowRadius()F

    move-result v0

    .line 1653
    .local v0, "mShadowRadius":F
    :goto_0
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->hasShadow()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getShadowYOffset()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 1654
    .local v1, "shadowHeight":I
    :goto_1
    sget-object v2, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calculated shadow height = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1655
    return v1

    .line 1652
    .end local v0    # "mShadowRadius":F
    .end local v1    # "shadowHeight":I
    :cond_0
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getShadowRadius()F

    move-result v0

    goto :goto_0

    .line 1653
    .restart local v0    # "mShadowRadius":F
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private calculateShadowWidth()I
    .locals 5

    .prologue
    .line 1638
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->isShadowResponsiveEffectEnabled()Z

    move-result v2

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/software/shell/fab/ActionButton;->shadowResponsiveDrawer:Lcom/software/shell/fab/EffectDrawer;

    check-cast v2, Lcom/software/shell/fab/ShadowResponsiveDrawer;

    .line 1639
    invoke-virtual {v2}, Lcom/software/shell/fab/ShadowResponsiveDrawer;->getMaxShadowRadius()F

    move-result v0

    .line 1640
    .local v0, "mShadowRadius":F
    :goto_0
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->hasShadow()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getShadowXOffset()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->abs(F)F

    move-result v2

    add-float/2addr v2, v0

    const/high16 v3, 0x40000000    # 2.0f

    mul-float/2addr v2, v3

    float-to-int v1, v2

    .line 1641
    .local v1, "shadowWidth":I
    :goto_1
    sget-object v2, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Calculated shadow width = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1642
    return v1

    .line 1639
    .end local v0    # "mShadowRadius":F
    .end local v1    # "shadowWidth":I
    :cond_0
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getShadowRadius()F

    move-result v0

    goto :goto_0

    .line 1640
    .restart local v0    # "mShadowRadius":F
    :cond_1
    const/4 v1, 0x0

    goto :goto_1
.end method

.method private calculateStrokeWeight()I
    .locals 4

    .prologue
    .line 1664
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getStrokeWidth()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 1665
    .local v0, "strokeWeight":I
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calculated stroke weight is: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1666
    return v0
.end method

.method private darkenButtonColorPressed()I
    .locals 2

    .prologue
    .line 845
    const v0, 0x3f4ccccd    # 0.8f

    .line 846
    .local v0, "darkenFactor":F
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getButtonColorPressed()I

    move-result v1

    invoke-static {v1, v0}, Lcom/software/shell/uitools/resutils/color/ColorModifier;->modifyExposure(IF)I

    move-result v1

    return v1
.end method

.method private hasElevation()Z
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1559
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0x15

    if-lt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getElevation()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private initActionButton()V
    .locals 2

    .prologue
    .line 257
    invoke-direct {p0}, Lcom/software/shell/fab/ActionButton;->initLayerType()V

    .line 258
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Action Button initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 259
    return-void
.end method

.method private initActionButtonAttrs(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 279
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/software/shell/fab/R$styleable;->ActionButton:[I

    invoke-virtual {v2, p2, v3, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 282
    .local v0, "attributes":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/software/shell/fab/ActionButton;->initType(Landroid/content/res/TypedArray;)V

    .line 283
    invoke-direct {p0, v0}, Lcom/software/shell/fab/ActionButton;->initSize(Landroid/content/res/TypedArray;)V

    .line 284
    invoke-direct {p0, v0}, Lcom/software/shell/fab/ActionButton;->initButtonColor(Landroid/content/res/TypedArray;)V

    .line 285
    invoke-direct {p0, v0}, Lcom/software/shell/fab/ActionButton;->initButtonColorPressed(Landroid/content/res/TypedArray;)V

    .line 286
    invoke-direct {p0, v0}, Lcom/software/shell/fab/ActionButton;->initRippleEffectEnabled(Landroid/content/res/TypedArray;)V

    .line 287
    invoke-direct {p0, v0}, Lcom/software/shell/fab/ActionButton;->initButtonColorRipple(Landroid/content/res/TypedArray;)V

    .line 288
    invoke-direct {p0, v0}, Lcom/software/shell/fab/ActionButton;->initShadowRadius(Landroid/content/res/TypedArray;)V

    .line 289
    invoke-direct {p0, v0}, Lcom/software/shell/fab/ActionButton;->initShadowXOffset(Landroid/content/res/TypedArray;)V

    .line 290
    invoke-direct {p0, v0}, Lcom/software/shell/fab/ActionButton;->initShadowYOffset(Landroid/content/res/TypedArray;)V

    .line 291
    invoke-direct {p0, v0}, Lcom/software/shell/fab/ActionButton;->initShadowColor(Landroid/content/res/TypedArray;)V

    .line 292
    invoke-direct {p0, v0}, Lcom/software/shell/fab/ActionButton;->initShadowResponsiveEffectEnabled(Landroid/content/res/TypedArray;)V

    .line 293
    invoke-direct {p0, v0}, Lcom/software/shell/fab/ActionButton;->initStrokeWidth(Landroid/content/res/TypedArray;)V

    .line 294
    invoke-direct {p0, v0}, Lcom/software/shell/fab/ActionButton;->initStrokeColor(Landroid/content/res/TypedArray;)V

    .line 295
    invoke-direct {p0, v0}, Lcom/software/shell/fab/ActionButton;->initImage(Landroid/content/res/TypedArray;)V

    .line 296
    invoke-direct {p0, v0}, Lcom/software/shell/fab/ActionButton;->initImageSize(Landroid/content/res/TypedArray;)V

    .line 297
    invoke-direct {p0, v0}, Lcom/software/shell/fab/ActionButton;->initShowAnimation(Landroid/content/res/TypedArray;)V

    .line 298
    invoke-direct {p0, v0}, Lcom/software/shell/fab/ActionButton;->initHideAnimation(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 302
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 304
    :goto_0
    sget-object v2, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Action Button attributes initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    return-void

    .line 299
    :catch_0
    move-exception v1

    .line 300
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    sget-object v2, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Unable to read attr"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 302
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method private initButtonColor(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 362
    sget v0, Lcom/software/shell/fab/R$styleable;->ActionButton_button_color:I

    .line 363
    .local v0, "index":I
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 364
    iget v1, p0, Lcom/software/shell/fab/ActionButton;->buttonColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/software/shell/fab/ActionButton;->buttonColor:I

    .line 365
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialized button color: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getButtonColor()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 367
    :cond_0
    return-void
.end method

.method private initButtonColorPressed(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 381
    sget v0, Lcom/software/shell/fab/R$styleable;->ActionButton_button_colorPressed:I

    .line 382
    .local v0, "index":I
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 383
    iget v1, p0, Lcom/software/shell/fab/ActionButton;->buttonColorPressed:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/software/shell/fab/ActionButton;->buttonColorPressed:I

    .line 384
    invoke-direct {p0}, Lcom/software/shell/fab/ActionButton;->darkenButtonColorPressed()I

    move-result v1

    iput v1, p0, Lcom/software/shell/fab/ActionButton;->buttonColorRipple:I

    .line 385
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialized button color pressed: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getButtonColorPressed()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    :cond_0
    return-void
.end method

.method private initButtonColorRipple(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 411
    sget v0, Lcom/software/shell/fab/R$styleable;->ActionButton_button_colorRipple:I

    .line 412
    .local v0, "index":I
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 413
    iget v1, p0, Lcom/software/shell/fab/ActionButton;->buttonColorRipple:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/software/shell/fab/ActionButton;->buttonColorRipple:I

    .line 414
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialized button color ripple: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getButtonColorRipple()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 416
    :cond_0
    return-void
.end method

.method private initHideAnimation(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 531
    sget v1, Lcom/software/shell/fab/R$styleable;->ActionButton_hide_animation:I

    .line 532
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 533
    sget-object v2, Lcom/software/shell/fab/ActionButton$Animations;->NONE:Lcom/software/shell/fab/ActionButton$Animations;

    iget v2, v2, Lcom/software/shell/fab/ActionButton$Animations;->animResId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 534
    .local v0, "animResId":I
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/software/shell/fab/ActionButton$Animations;->load(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/software/shell/fab/ActionButton;->hideAnimation:Landroid/view/animation/Animation;

    .line 535
    sget-object v2, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Initialized animation on hide"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 537
    .end local v0    # "animResId":I
    :cond_0
    return-void
.end method

.method private initImage(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 545
    sget v0, Lcom/software/shell/fab/R$styleable;->ActionButton_image:I

    .line 546
    .local v0, "index":I
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 547
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, p0, Lcom/software/shell/fab/ActionButton;->image:Landroid/graphics/drawable/Drawable;

    .line 548
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Initialized image"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 550
    :cond_0
    return-void
.end method

.method private initImageSize(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 561
    sget v0, Lcom/software/shell/fab/R$styleable;->ActionButton_image_size:I

    .line 562
    .local v0, "index":I
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 563
    iget v1, p0, Lcom/software/shell/fab/ActionButton;->imageSize:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/software/shell/fab/ActionButton;->imageSize:F

    .line 564
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialized image size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getImageSize()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    :cond_0
    return-void
.end method

.method private initLayerType()V
    .locals 2
    .annotation build Landroid/annotation/TargetApi;
        value = 0xb
    .end annotation

    .prologue
    .line 314
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xb

    if-lt v0, v1, :cond_0

    .line 315
    const/4 v0, 0x1

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Lcom/software/shell/fab/ActionButton;->setLayerType(ILandroid/graphics/Paint;)V

    .line 316
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Layer type initialized"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 318
    :cond_0
    return-void
.end method

.method private initRippleEffectEnabled(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 395
    sget v0, Lcom/software/shell/fab/R$styleable;->ActionButton_rippleEffect_enabled:I

    .line 396
    .local v0, "index":I
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 397
    iget-boolean v1, p0, Lcom/software/shell/fab/ActionButton;->rippleEffectEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/software/shell/fab/ActionButton;->rippleEffectEnabled:Z

    .line 398
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialized ripple effect enabled: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->isRippleEffectEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 400
    :cond_0
    return-void
.end method

.method private initShadowColor(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 463
    sget v0, Lcom/software/shell/fab/R$styleable;->ActionButton_shadow_color:I

    .line 464
    .local v0, "index":I
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 465
    iget v1, p0, Lcom/software/shell/fab/ActionButton;->shadowColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/software/shell/fab/ActionButton;->shadowColor:I

    .line 466
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialized shadow color: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getShadowColor()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    :cond_0
    return-void
.end method

.method private initShadowRadius(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 424
    sget v0, Lcom/software/shell/fab/R$styleable;->ActionButton_shadow_radius:I

    .line 425
    .local v0, "index":I
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 426
    iget v1, p0, Lcom/software/shell/fab/ActionButton;->shadowRadius:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/software/shell/fab/ActionButton;->shadowRadius:F

    .line 427
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialized shadow radius: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getShadowRadius()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 429
    :cond_0
    return-void
.end method

.method private initShadowResponsiveEffectEnabled(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 476
    sget v0, Lcom/software/shell/fab/R$styleable;->ActionButton_shadowResponsiveEffect_enabled:I

    .line 477
    .local v0, "index":I
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 478
    iget-boolean v1, p0, Lcom/software/shell/fab/ActionButton;->shadowResponsiveEffectEnabled:Z

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getBoolean(IZ)Z

    move-result v1

    iput-boolean v1, p0, Lcom/software/shell/fab/ActionButton;->shadowResponsiveEffectEnabled:Z

    .line 479
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialized shadow responsive: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->isShadowResponsiveEffectEnabled()Z

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 481
    :cond_0
    return-void
.end method

.method private initShadowXOffset(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 437
    sget v0, Lcom/software/shell/fab/R$styleable;->ActionButton_shadow_xOffset:I

    .line 438
    .local v0, "index":I
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    iget v1, p0, Lcom/software/shell/fab/ActionButton;->shadowXOffset:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/software/shell/fab/ActionButton;->shadowXOffset:F

    .line 440
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialized shadow X-axis offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getShadowXOffset()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 442
    :cond_0
    return-void
.end method

.method private initShadowYOffset(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 450
    sget v0, Lcom/software/shell/fab/R$styleable;->ActionButton_shadow_yOffset:I

    .line 451
    .local v0, "index":I
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 452
    iget v1, p0, Lcom/software/shell/fab/ActionButton;->shadowYOffset:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/software/shell/fab/ActionButton;->shadowYOffset:F

    .line 453
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialized shadow Y-axis offset: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getShadowYOffset()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 455
    :cond_0
    return-void
.end method

.method private initShowAnimation(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 516
    sget v1, Lcom/software/shell/fab/R$styleable;->ActionButton_show_animation:I

    .line 517
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 518
    sget-object v2, Lcom/software/shell/fab/ActionButton$Animations;->NONE:Lcom/software/shell/fab/ActionButton$Animations;

    iget v2, v2, Lcom/software/shell/fab/ActionButton$Animations;->animResId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 519
    .local v0, "animResId":I
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2, v0}, Lcom/software/shell/fab/ActionButton$Animations;->load(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v2

    iput-object v2, p0, Lcom/software/shell/fab/ActionButton;->showAnimation:Landroid/view/animation/Animation;

    .line 520
    sget-object v2, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v3, "Initialized animation on show"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    .end local v0    # "animResId":I
    :cond_0
    return-void
.end method

.method private initSize(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 346
    sget v0, Lcom/software/shell/fab/R$styleable;->ActionButton_size:I

    .line 347
    .local v0, "index":I
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 348
    iget v1, p0, Lcom/software/shell/fab/ActionButton;->size:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/software/shell/fab/ActionButton;->size:F

    .line 352
    :goto_0
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialized size: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getSize()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 353
    return-void

    .line 350
    :cond_0
    iget-object v1, p0, Lcom/software/shell/fab/ActionButton;->type:Lcom/software/shell/fab/ActionButton$Type;

    invoke-virtual {v1}, Lcom/software/shell/fab/ActionButton$Type;->getSize()F

    move-result v1

    invoke-virtual {p0, v1}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v1

    iput v1, p0, Lcom/software/shell/fab/ActionButton;->size:F

    goto :goto_0
.end method

.method private initStrokeColor(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 502
    sget v0, Lcom/software/shell/fab/R$styleable;->ActionButton_stroke_color:I

    .line 503
    .local v0, "index":I
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 504
    iget v1, p0, Lcom/software/shell/fab/ActionButton;->strokeColor:I

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v1

    iput v1, p0, Lcom/software/shell/fab/ActionButton;->strokeColor:I

    .line 505
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialized stroke color: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getStrokeColor()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 507
    :cond_0
    return-void
.end method

.method private initStrokeWidth(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 489
    sget v0, Lcom/software/shell/fab/R$styleable;->ActionButton_stroke_width:I

    .line 490
    .local v0, "index":I
    invoke-virtual {p1, v0}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 491
    iget v1, p0, Lcom/software/shell/fab/ActionButton;->strokeWidth:F

    invoke-virtual {p1, v0, v1}, Landroid/content/res/TypedArray;->getDimension(IF)F

    move-result v1

    iput v1, p0, Lcom/software/shell/fab/ActionButton;->strokeWidth:F

    .line 492
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialized stroke width: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getStrokeWidth()F

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 494
    :cond_0
    return-void
.end method

.method private initType(Landroid/content/res/TypedArray;)V
    .locals 5
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 329
    sget v1, Lcom/software/shell/fab/R$styleable;->ActionButton_type:I

    .line 330
    .local v1, "index":I
    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 331
    iget-object v2, p0, Lcom/software/shell/fab/ActionButton;->type:Lcom/software/shell/fab/ActionButton$Type;

    invoke-virtual {v2}, Lcom/software/shell/fab/ActionButton$Type;->getId()I

    move-result v2

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 332
    .local v0, "id":I
    invoke-static {v0}, Lcom/software/shell/fab/ActionButton$Type;->forId(I)Lcom/software/shell/fab/ActionButton$Type;

    move-result-object v2

    iput-object v2, p0, Lcom/software/shell/fab/ActionButton;->type:Lcom/software/shell/fab/ActionButton$Type;

    .line 333
    sget-object v2, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "Initialized type: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getType()Lcom/software/shell/fab/ActionButton$Type;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 335
    .end local v0    # "id":I
    :cond_0
    return-void
.end method


# virtual methods
.method protected calculateCenterX()F
    .locals 4

    .prologue
    .line 1480
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getMeasuredWidth()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    .line 1481
    .local v0, "centerX":F
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calculated center X = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1482
    return v0
.end method

.method protected calculateCenterY()F
    .locals 4

    .prologue
    .line 1491
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getMeasuredHeight()I

    move-result v1

    div-int/lit8 v1, v1, 0x2

    int-to-float v0, v1

    .line 1492
    .local v0, "centerY":F
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calculated center Y = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1493
    return v0
.end method

.method protected final calculateCircleRadius()F
    .locals 4

    .prologue
    .line 1502
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getSize()F

    move-result v1

    const/high16 v2, 0x40000000    # 2.0f

    div-float v0, v1, v2

    .line 1503
    .local v0, "circleRadius":F
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Calculated circle circleRadius = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1504
    return v0
.end method

.method public dismiss()V
    .locals 3

    .prologue
    .line 620
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->isDismissed()Z

    move-result v1

    if-nez v1, :cond_1

    .line 621
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->isHidden()Z

    move-result v1

    if-nez v1, :cond_0

    .line 622
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->playHideAnimation()V

    .line 624
    :cond_0
    const/16 v1, 0x8

    invoke-virtual {p0, v1}, Lcom/software/shell/fab/ActionButton;->setVisibility(I)V

    .line 625
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 626
    .local v0, "parent":Landroid/view/ViewGroup;
    invoke-virtual {v0, p0}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 627
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Action Button dismissed"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    .end local v0    # "parent":Landroid/view/ViewGroup;
    :cond_1
    return-void
.end method

.method protected dpToPx(F)F
    .locals 1
    .param p1, "dp"    # F

    .prologue
    .line 1676
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/software/shell/uitools/convert/DensityConverter;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    return v0
.end method

.method protected drawCircle(Landroid/graphics/Canvas;)V
    .locals 5
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1457
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->resetPaint()V

    .line 1458
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->hasShadow()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1459
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->isShadowResponsiveEffectEnabled()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1460
    iget-object v1, p0, Lcom/software/shell/fab/ActionButton;->shadowResponsiveDrawer:Lcom/software/shell/fab/EffectDrawer;

    invoke-virtual {v1, p1}, Lcom/software/shell/fab/EffectDrawer;->draw(Landroid/graphics/Canvas;)V

    .line 1465
    :cond_0
    :goto_0
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getPaint()Landroid/graphics/Paint;

    move-result-object v1

    sget-object v2, Landroid/graphics/Paint$Style;->FILL:Landroid/graphics/Paint$Style;

    invoke-virtual {v1, v2}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1466
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->isRippleEffectEnabled()Z

    move-result v1

    if-eqz v1, :cond_3

    iget-object v1, p0, Lcom/software/shell/fab/ActionButton;->rippleEffectDrawer:Lcom/software/shell/fab/EffectDrawer;

    check-cast v1, Lcom/software/shell/fab/RippleEffectDrawer;

    .line 1467
    invoke-virtual {v1}, Lcom/software/shell/fab/RippleEffectDrawer;->isDrawingInProgress()Z

    move-result v1

    if-eqz v1, :cond_3

    const/4 v0, 0x1

    .line 1468
    .local v0, "rippleInProgress":Z
    :goto_1
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getPaint()Landroid/graphics/Paint;

    move-result-object v2

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getState()Lcom/software/shell/fab/ActionButton$State;

    move-result-object v1

    sget-object v3, Lcom/software/shell/fab/ActionButton$State;->PRESSED:Lcom/software/shell/fab/ActionButton$State;

    if-eq v1, v3, :cond_1

    if-eqz v0, :cond_4

    .line 1469
    :cond_1
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getButtonColorPressed()I

    move-result v1

    .line 1468
    :goto_2
    invoke-virtual {v2, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1470
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->calculateCenterX()F

    move-result v1

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->calculateCenterY()F

    move-result v2

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->calculateCircleRadius()F

    move-result v3

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getPaint()Landroid/graphics/Paint;

    move-result-object v4

    invoke-virtual {p1, v1, v2, v3, v4}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1471
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v2, "Circle drawn"

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1472
    return-void

    .line 1462
    .end local v0    # "rippleInProgress":Z
    :cond_2
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->drawShadow()V

    goto :goto_0

    .line 1467
    :cond_3
    const/4 v0, 0x0

    goto :goto_1

    .line 1469
    .restart local v0    # "rippleInProgress":Z
    :cond_4
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getButtonColor()I

    move-result v1

    goto :goto_2
.end method

.method protected drawElevation()V
    .locals 8
    .annotation build Landroid/annotation/TargetApi;
        value = 0x15
    .end annotation

    .prologue
    .line 1537
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getSize()F

    move-result v1

    const/high16 v7, 0x40000000    # 2.0f

    div-float v6, v1, v7

    .line 1538
    .local v6, "halfSize":F
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->calculateCenterX()F

    move-result v1

    sub-float/2addr v1, v6

    float-to-int v2, v1

    .line 1539
    .local v2, "left":I
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->calculateCenterY()F

    move-result v1

    sub-float/2addr v1, v6

    float-to-int v3, v1

    .line 1540
    .local v3, "top":I
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->calculateCenterX()F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v4, v1

    .line 1541
    .local v4, "right":I
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->calculateCenterY()F

    move-result v1

    add-float/2addr v1, v6

    float-to-int v5, v1

    .line 1542
    .local v5, "bottom":I
    new-instance v0, Lcom/software/shell/fab/ActionButton$1;

    move-object v1, p0

    invoke-direct/range {v0 .. v5}, Lcom/software/shell/fab/ActionButton$1;-><init>(Lcom/software/shell/fab/ActionButton;IIII)V

    .line 1548
    .local v0, "provider":Landroid/view/ViewOutlineProvider;
    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 1549
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v7, "Elevation drawn"

    invoke-static {v1, v7}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1550
    return-void
.end method

.method protected drawImage(Landroid/graphics/Canvas;)V
    .locals 9
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v6, 0x40000000    # 2.0f

    .line 1582
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->calculateCenterX()F

    move-result v4

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getImageSize()F

    move-result v5

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v2, v4

    .line 1583
    .local v2, "startPointX":I
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->calculateCenterY()F

    move-result v4

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getImageSize()F

    move-result v5

    div-float/2addr v5, v6

    sub-float/2addr v4, v5

    float-to-int v3, v4

    .line 1584
    .local v3, "startPointY":I
    int-to-float v4, v2

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getImageSize()F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v0, v4

    .line 1585
    .local v0, "endPointX":I
    int-to-float v4, v3

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getImageSize()F

    move-result v5

    add-float/2addr v4, v5

    float-to-int v1, v4

    .line 1586
    .local v1, "endPointY":I
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, v2, v3, v0, v1}, Landroid/graphics/drawable/Drawable;->setBounds(IIII)V

    .line 1587
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v4

    invoke-virtual {v4, p1}, Landroid/graphics/drawable/Drawable;->draw(Landroid/graphics/Canvas;)V

    .line 1588
    sget-object v4, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Image drawn on canvas with coordinates: startPointX = %s, startPointY = %s, endPointX = %s, endPointY = %s"

    const/4 v6, 0x4

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    .line 1589
    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x1

    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x2

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    const/4 v7, 0x3

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v8

    aput-object v8, v6, v7

    .line 1588
    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1590
    return-void
.end method

.method protected drawRipple(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1521
    iget-object v0, p0, Lcom/software/shell/fab/ActionButton;->rippleEffectDrawer:Lcom/software/shell/fab/EffectDrawer;

    invoke-virtual {v0, p1}, Lcom/software/shell/fab/EffectDrawer;->draw(Landroid/graphics/Canvas;)V

    .line 1522
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Ripple effect drawn"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1523
    return-void
.end method

.method protected drawShadow()V
    .locals 5

    .prologue
    .line 1511
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getShadowRadius()F

    move-result v1

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getShadowXOffset()F

    move-result v2

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getShadowYOffset()F

    move-result v3

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getShadowColor()I

    move-result v4

    invoke-virtual {v0, v1, v2, v3, v4}, Landroid/graphics/Paint;->setShadowLayer(FFFI)V

    .line 1512
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Shadow drawn"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1513
    return-void
.end method

.method protected drawStroke(Landroid/graphics/Canvas;)V
    .locals 4
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1568
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->resetPaint()V

    .line 1569
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 1570
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getStrokeWidth()F

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 1571
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getStrokeColor()I

    move-result v1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 1572
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->calculateCenterX()F

    move-result v0

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->calculateCenterY()F

    move-result v1

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->calculateCircleRadius()F

    move-result v2

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getPaint()Landroid/graphics/Paint;

    move-result-object v3

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 1573
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Stroke drawn"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    return-void
.end method

.method public getButtonColor()I
    .locals 1

    .prologue
    .line 799
    iget v0, p0, Lcom/software/shell/fab/ActionButton;->buttonColor:I

    return v0
.end method

.method public getButtonColorPressed()I
    .locals 1

    .prologue
    .line 823
    iget v0, p0, Lcom/software/shell/fab/ActionButton;->buttonColorPressed:I

    return v0
.end method

.method public getButtonColorRipple()I
    .locals 1

    .prologue
    .line 874
    iget v0, p0, Lcom/software/shell/fab/ActionButton;->buttonColorRipple:I

    return v0
.end method

.method public getButtonSize()I
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 736
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getSize()F

    move-result v0

    float-to-int v0, v0

    return v0
.end method

.method public getHideAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 1271
    iget-object v0, p0, Lcom/software/shell/fab/ActionButton;->hideAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getImage()Landroid/graphics/drawable/Drawable;
    .locals 1

    .prologue
    .line 1136
    iget-object v0, p0, Lcom/software/shell/fab/ActionButton;->image:Landroid/graphics/drawable/Drawable;

    return-object v0
.end method

.method public getImageSize()F
    .locals 1

    .prologue
    .line 1206
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    iget v0, p0, Lcom/software/shell/fab/ActionButton;->imageSize:F

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected getInvalidator()Lcom/software/shell/fab/ViewInvalidator;
    .locals 1

    .prologue
    .line 1421
    iget-object v0, p0, Lcom/software/shell/fab/ActionButton;->invalidator:Lcom/software/shell/fab/ViewInvalidator;

    return-object v0
.end method

.method protected getPaint()Landroid/graphics/Paint;
    .locals 1

    .prologue
    .line 1400
    iget-object v0, p0, Lcom/software/shell/fab/ActionButton;->paint:Landroid/graphics/Paint;

    return-object v0
.end method

.method public getShadowColor()I
    .locals 1

    .prologue
    .line 1016
    iget v0, p0, Lcom/software/shell/fab/ActionButton;->shadowColor:I

    return v0
.end method

.method public getShadowRadius()F
    .locals 1

    .prologue
    .line 905
    iget v0, p0, Lcom/software/shell/fab/ActionButton;->shadowRadius:F

    return v0
.end method

.method public getShadowXOffset()F
    .locals 1

    .prologue
    .line 952
    iget v0, p0, Lcom/software/shell/fab/ActionButton;->shadowXOffset:F

    return v0
.end method

.method public getShadowYOffset()F
    .locals 1

    .prologue
    .line 987
    iget v0, p0, Lcom/software/shell/fab/ActionButton;->shadowYOffset:F

    return v0
.end method

.method public getShowAnimation()Landroid/view/animation/Animation;
    .locals 1

    .prologue
    .line 1232
    iget-object v0, p0, Lcom/software/shell/fab/ActionButton;->showAnimation:Landroid/view/animation/Animation;

    return-object v0
.end method

.method public getSize()F
    .locals 1

    .prologue
    .line 746
    iget v0, p0, Lcom/software/shell/fab/ActionButton;->size:F

    return v0
.end method

.method public getState()Lcom/software/shell/fab/ActionButton$State;
    .locals 1

    .prologue
    .line 776
    iget-object v0, p0, Lcom/software/shell/fab/ActionButton;->state:Lcom/software/shell/fab/ActionButton$State;

    return-object v0
.end method

.method public getStrokeColor()I
    .locals 1

    .prologue
    .line 1113
    iget v0, p0, Lcom/software/shell/fab/ActionButton;->strokeColor:I

    return v0
.end method

.method public getStrokeWidth()F
    .locals 1

    .prologue
    .line 1066
    iget v0, p0, Lcom/software/shell/fab/ActionButton;->strokeWidth:F

    return v0
.end method

.method public getTouchPoint()Lcom/software/shell/fab/TouchPoint;
    .locals 1

    .prologue
    .line 1313
    iget-object v0, p0, Lcom/software/shell/fab/ActionButton;->touchPoint:Lcom/software/shell/fab/TouchPoint;

    return-object v0
.end method

.method public getType()Lcom/software/shell/fab/ActionButton$Type;
    .locals 1

    .prologue
    .line 711
    iget-object v0, p0, Lcom/software/shell/fab/ActionButton;->type:Lcom/software/shell/fab/ActionButton$Type;

    return-object v0
.end method

.method public hasImage()Z
    .locals 1

    .prologue
    .line 1147
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getImage()Landroid/graphics/drawable/Drawable;

    move-result-object v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasShadow()Z
    .locals 2

    .prologue
    .line 895
    invoke-direct {p0}, Lcom/software/shell/fab/ActionButton;->hasElevation()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getShadowRadius()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hasStroke()Z
    .locals 2

    .prologue
    .line 1076
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getStrokeWidth()F

    move-result v0

    const/4 v1, 0x0

    cmpl-float v0, v0, v1

    if-lez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 603
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->isHidden()Z

    move-result v0

    if-nez v0, :cond_0

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->isDismissed()Z

    move-result v0

    if-nez v0, :cond_0

    .line 604
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->playHideAnimation()V

    .line 605
    const/4 v0, 0x4

    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->setVisibility(I)V

    .line 606
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Action Button hidden"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 608
    :cond_0
    return-void
.end method

.method public isDismissed()Z
    .locals 1

    .prologue
    .line 646
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isHidden()Z
    .locals 2

    .prologue
    .line 637
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getVisibility()I

    move-result v0

    const/4 v1, 0x4

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isRippleEffectEnabled()Z
    .locals 1

    .prologue
    .line 855
    iget-boolean v0, p0, Lcom/software/shell/fab/ActionButton;->rippleEffectEnabled:Z

    return v0
.end method

.method public isShadowResponsiveEffectEnabled()Z
    .locals 1

    .prologue
    .line 1040
    iget-boolean v0, p0, Lcom/software/shell/fab/ActionButton;->shadowResponsiveEffectEnabled:Z

    return v0
.end method

.method public move(Lcom/software/shell/viewmover/configuration/MovingParams;)V
    .locals 5
    .param p1, "params"    # Lcom/software/shell/viewmover/configuration/MovingParams;

    .prologue
    .line 656
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v1, "View is about to move at: X-axis delta = %s Y-axis delta = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    .line 657
    invoke-virtual {p1}, Lcom/software/shell/viewmover/configuration/MovingParams;->getXAxisDelta()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p1}, Lcom/software/shell/viewmover/configuration/MovingParams;->getYAxisDelta()F

    move-result v4

    invoke-static {v4}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v4

    aput-object v4, v2, v3

    .line 656
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 658
    iget-object v0, p0, Lcom/software/shell/fab/ActionButton;->mover:Lcom/software/shell/viewmover/movers/ViewMover;

    invoke-virtual {v0, p1}, Lcom/software/shell/viewmover/movers/ViewMover;->move(Lcom/software/shell/viewmover/configuration/MovingParams;)V

    .line 659
    return-void
.end method

.method public moveDown(F)V
    .locals 3
    .param p1, "distance"    # F

    .prologue
    .line 679
    new-instance v0, Lcom/software/shell/viewmover/configuration/MovingParams;

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, v2, p1}, Lcom/software/shell/viewmover/configuration/MovingParams;-><init>(Landroid/content/Context;FF)V

    .line 680
    .local v0, "params":Lcom/software/shell/viewmover/configuration/MovingParams;
    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->move(Lcom/software/shell/viewmover/configuration/MovingParams;)V

    .line 681
    return-void
.end method

.method public moveLeft(F)V
    .locals 4
    .param p1, "distance"    # F

    .prologue
    .line 690
    new-instance v0, Lcom/software/shell/viewmover/configuration/MovingParams;

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    neg-float v2, p1

    const/4 v3, 0x0

    invoke-direct {v0, v1, v2, v3}, Lcom/software/shell/viewmover/configuration/MovingParams;-><init>(Landroid/content/Context;FF)V

    .line 691
    .local v0, "params":Lcom/software/shell/viewmover/configuration/MovingParams;
    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->move(Lcom/software/shell/viewmover/configuration/MovingParams;)V

    .line 692
    return-void
.end method

.method public moveRight(F)V
    .locals 3
    .param p1, "distance"    # F

    .prologue
    .line 668
    new-instance v0, Lcom/software/shell/viewmover/configuration/MovingParams;

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    invoke-direct {v0, v1, p1, v2}, Lcom/software/shell/viewmover/configuration/MovingParams;-><init>(Landroid/content/Context;FF)V

    .line 669
    .local v0, "params":Lcom/software/shell/viewmover/configuration/MovingParams;
    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->move(Lcom/software/shell/viewmover/configuration/MovingParams;)V

    .line 670
    return-void
.end method

.method public moveUp(F)V
    .locals 4
    .param p1, "distance"    # F

    .prologue
    .line 701
    new-instance v0, Lcom/software/shell/viewmover/configuration/MovingParams;

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    const/4 v2, 0x0

    neg-float v3, p1

    invoke-direct {v0, v1, v2, v3}, Lcom/software/shell/viewmover/configuration/MovingParams;-><init>(Landroid/content/Context;FF)V

    .line 702
    .local v0, "params":Lcom/software/shell/viewmover/configuration/MovingParams;
    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->move(Lcom/software/shell/viewmover/configuration/MovingParams;)V

    .line 703
    return-void
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 1432
    invoke-super {p0, p1}, Landroid/view/View;->onDraw(Landroid/graphics/Canvas;)V

    .line 1433
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Action Button onDraw called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1434
    invoke-virtual {p0, p1}, Lcom/software/shell/fab/ActionButton;->drawCircle(Landroid/graphics/Canvas;)V

    .line 1435
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->isRippleEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1436
    invoke-virtual {p0, p1}, Lcom/software/shell/fab/ActionButton;->drawRipple(Landroid/graphics/Canvas;)V

    .line 1438
    :cond_0
    invoke-direct {p0}, Lcom/software/shell/fab/ActionButton;->hasElevation()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1439
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->drawElevation()V

    .line 1441
    :cond_1
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->hasStroke()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 1442
    invoke-virtual {p0, p1}, Lcom/software/shell/fab/ActionButton;->drawStroke(Landroid/graphics/Canvas;)V

    .line 1444
    :cond_2
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 1445
    invoke-virtual {p0, p1}, Lcom/software/shell/fab/ActionButton;->drawImage(Landroid/graphics/Canvas;)V

    .line 1447
    :cond_3
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getInvalidator()Lcom/software/shell/fab/ViewInvalidator;

    move-result-object v0

    invoke-virtual {v0}, Lcom/software/shell/fab/ViewInvalidator;->invalidate()V

    .line 1448
    return-void
.end method

.method protected onMeasure(II)V
    .locals 5
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 1604
    invoke-super {p0, p1, p2}, Landroid/view/View;->onMeasure(II)V

    .line 1605
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Action Button onMeasure called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1606
    invoke-direct {p0}, Lcom/software/shell/fab/ActionButton;->calculateMeasuredWidth()I

    move-result v0

    invoke-direct {p0}, Lcom/software/shell/fab/ActionButton;->calculateMeasuredHeight()I

    move-result v1

    invoke-virtual {p0, v0, v1}, Lcom/software/shell/fab/ActionButton;->setMeasuredDimension(II)V

    .line 1607
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v1, "View size measured with: height = %s, width = %s"

    const/4 v2, 0x2

    new-array v2, v2, [Ljava/lang/Object;

    const/4 v3, 0x0

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getHeight()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    const/4 v3, 0x1

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getWidth()I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    aput-object v4, v2, v3

    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1608
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;
    .annotation build Landroid/annotation/SuppressLint;
        value = {
            "ClickableViewAccessibility"
        }
    .end annotation

    .prologue
    const/4 v3, 0x1

    .line 1342
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    .line 1343
    new-instance v1, Lcom/software/shell/fab/TouchPoint;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v5

    invoke-direct {v1, v4, v5}, Lcom/software/shell/fab/TouchPoint;-><init>(FF)V

    .line 1344
    .local v1, "point":Lcom/software/shell/fab/TouchPoint;
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->calculateCenterX()F

    move-result v4

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->calculateCenterY()F

    move-result v5

    .line 1345
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->calculateCircleRadius()F

    move-result v6

    .line 1344
    invoke-virtual {v1, v4, v5, v6}, Lcom/software/shell/fab/TouchPoint;->isInsideCircle(FFF)Z

    move-result v2

    .line 1346
    .local v2, "touchPointInsideCircle":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v0

    .line 1347
    .local v0, "action":I
    packed-switch v0, :pswitch_data_0

    .line 1374
    sget-object v3, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v4, "Unrecognized motion event detected"

    invoke-static {v3, v4}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1377
    :cond_0
    const/4 v3, 0x0

    :goto_0
    return v3

    .line 1349
    :pswitch_0
    if-eqz v2, :cond_0

    .line 1350
    sget-object v4, Lcom/software/shell/fab/ActionButton$State;->PRESSED:Lcom/software/shell/fab/ActionButton$State;

    invoke-virtual {p0, v4}, Lcom/software/shell/fab/ActionButton;->setState(Lcom/software/shell/fab/ActionButton$State;)V

    .line 1351
    invoke-virtual {p0, v1}, Lcom/software/shell/fab/ActionButton;->setTouchPoint(Lcom/software/shell/fab/TouchPoint;)V

    .line 1352
    sget-object v4, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Motion event action down detected"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1357
    :pswitch_1
    if-eqz v2, :cond_0

    .line 1358
    sget-object v4, Lcom/software/shell/fab/ActionButton$State;->NORMAL:Lcom/software/shell/fab/ActionButton$State;

    invoke-virtual {p0, v4}, Lcom/software/shell/fab/ActionButton;->setState(Lcom/software/shell/fab/ActionButton$State;)V

    .line 1359
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getTouchPoint()Lcom/software/shell/fab/TouchPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/software/shell/fab/TouchPoint;->reset()V

    .line 1360
    sget-object v4, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Motion event action up detected"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1365
    :pswitch_2
    if-nez v2, :cond_0

    .line 1366
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getState()Lcom/software/shell/fab/ActionButton$State;

    move-result-object v4

    sget-object v5, Lcom/software/shell/fab/ActionButton$State;->PRESSED:Lcom/software/shell/fab/ActionButton$State;

    if-ne v4, v5, :cond_0

    .line 1367
    sget-object v4, Lcom/software/shell/fab/ActionButton$State;->NORMAL:Lcom/software/shell/fab/ActionButton$State;

    invoke-virtual {p0, v4}, Lcom/software/shell/fab/ActionButton;->setState(Lcom/software/shell/fab/ActionButton$State;)V

    .line 1368
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getTouchPoint()Lcom/software/shell/fab/TouchPoint;

    move-result-object v4

    invoke-virtual {v4}, Lcom/software/shell/fab/TouchPoint;->reset()V

    .line 1369
    sget-object v4, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v5, "Touch point is outside the circle"

    invoke-static {v4, v5}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 1347
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public playHideAnimation()V
    .locals 1

    .prologue
    .line 579
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getHideAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 580
    return-void
.end method

.method public playShowAnimation()V
    .locals 1

    .prologue
    .line 572
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getShowAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->startAnimation(Landroid/view/animation/Animation;)V

    .line 573
    return-void
.end method

.method public removeHideAnimation()V
    .locals 2

    .prologue
    .line 1300
    sget-object v0, Lcom/software/shell/fab/ActionButton$Animations;->NONE:Lcom/software/shell/fab/ActionButton$Animations;

    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->setHideAnimation(Lcom/software/shell/fab/ActionButton$Animations;)V

    .line 1301
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Hide animation removed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1302
    return-void
.end method

.method public removeImage()V
    .locals 1

    .prologue
    .line 1193
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->hasImage()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1194
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1196
    :cond_0
    return-void
.end method

.method public removeShadow()V
    .locals 1

    .prologue
    .line 935
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->hasShadow()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 936
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->setShadowRadius(F)V

    .line 938
    :cond_0
    return-void
.end method

.method public removeShowAnimation()V
    .locals 2

    .prologue
    .line 1261
    sget-object v0, Lcom/software/shell/fab/ActionButton$Animations;->NONE:Lcom/software/shell/fab/ActionButton$Animations;

    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->setShowAnimation(Lcom/software/shell/fab/ActionButton$Animations;)V

    .line 1262
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Show animation removed"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1263
    return-void
.end method

.method public removeStroke()V
    .locals 1

    .prologue
    .line 1102
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->hasStroke()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 1103
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->setStrokeWidth(F)V

    .line 1105
    :cond_0
    return-void
.end method

.method protected final resetPaint()V
    .locals 2

    .prologue
    .line 1409
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    invoke-virtual {v0}, Landroid/graphics/Paint;->reset()V

    .line 1410
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getPaint()Landroid/graphics/Paint;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setFlags(I)V

    .line 1411
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Paint reset"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1412
    return-void
.end method

.method public setButtonColor(I)V
    .locals 3
    .param p1, "buttonColor"    # I

    .prologue
    .line 810
    iput p1, p0, Lcom/software/shell/fab/ActionButton;->buttonColor:I

    .line 811
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->invalidate()V

    .line 812
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Button color changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getButtonColor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 813
    return-void
.end method

.method public setButtonColorPressed(I)V
    .locals 3
    .param p1, "buttonColorPressed"    # I

    .prologue
    .line 834
    iput p1, p0, Lcom/software/shell/fab/ActionButton;->buttonColorPressed:I

    .line 835
    invoke-direct {p0}, Lcom/software/shell/fab/ActionButton;->darkenButtonColorPressed()I

    move-result v0

    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->setButtonColorRipple(I)V

    .line 836
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Button color pressed changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getButtonColorPressed()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 837
    return-void
.end method

.method public setButtonColorRipple(I)V
    .locals 3
    .param p1, "buttonColorRipple"    # I

    .prologue
    .line 883
    iput p1, p0, Lcom/software/shell/fab/ActionButton;->buttonColorRipple:I

    .line 884
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Button ripple effect color changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getButtonColorRipple()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 885
    return-void
.end method

.method public setHideAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1281
    iput-object p1, p0, Lcom/software/shell/fab/ActionButton;->hideAnimation:Landroid/view/animation/Animation;

    .line 1282
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Hide animation set"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    return-void
.end method

.method public setHideAnimation(Lcom/software/shell/fab/ActionButton$Animations;)V
    .locals 2
    .param p1, "animation"    # Lcom/software/shell/fab/ActionButton$Animations;

    .prologue
    .line 1293
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lcom/software/shell/fab/ActionButton$Animations;->animResId:I

    invoke-static {v0, v1}, Lcom/software/shell/fab/ActionButton$Animations;->load(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 1294
    return-void
.end method

.method public setImageBitmap(Landroid/graphics/Bitmap;)V
    .locals 2
    .param p1, "bitmap"    # Landroid/graphics/Bitmap;

    .prologue
    .line 1186
    new-instance v0, Landroid/graphics/drawable/BitmapDrawable;

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-direct {v0, v1, p1}, Landroid/graphics/drawable/BitmapDrawable;-><init>(Landroid/content/res/Resources;Landroid/graphics/Bitmap;)V

    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1187
    return-void
.end method

.method public setImageDrawable(Landroid/graphics/drawable/Drawable;)V
    .locals 2
    .param p1, "image"    # Landroid/graphics/drawable/Drawable;

    .prologue
    .line 1160
    iput-object p1, p0, Lcom/software/shell/fab/ActionButton;->image:Landroid/graphics/drawable/Drawable;

    .line 1161
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->invalidate()V

    .line 1162
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Image drawable set"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1163
    return-void
.end method

.method public setImageResource(I)V
    .locals 1
    .param p1, "resId"    # I

    .prologue
    .line 1174
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 1175
    return-void
.end method

.method public setImageSize(F)V
    .locals 3
    .param p1, "size"    # F

    .prologue
    .line 1222
    invoke-virtual {p0, p1}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->imageSize:F

    .line 1223
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Image size changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getImageSize()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1224
    return-void
.end method

.method public setRippleEffectEnabled(Z)V
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 864
    iput-boolean p1, p0, Lcom/software/shell/fab/ActionButton;->rippleEffectEnabled:Z

    .line 865
    sget-object v1, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Ripple effect "

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->isRippleEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    const-string v0, "ENABLED"

    :goto_0
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 866
    return-void

    .line 865
    :cond_0
    const-string v0, "DISABLED"

    goto :goto_0
.end method

.method public setShadowColor(I)V
    .locals 3
    .param p1, "shadowColor"    # I

    .prologue
    .line 1026
    iput p1, p0, Lcom/software/shell/fab/ActionButton;->shadowColor:I

    .line 1027
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->invalidate()V

    .line 1028
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shadow color changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getShadowColor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1029
    return-void
.end method

.method public setShadowRadius(F)V
    .locals 3
    .param p1, "shadowRadius"    # F

    .prologue
    .line 923
    invoke-virtual {p0, p1}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->shadowRadius:F

    .line 924
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->isShadowResponsiveEffectEnabled()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 925
    iget-object v0, p0, Lcom/software/shell/fab/ActionButton;->shadowResponsiveDrawer:Lcom/software/shell/fab/EffectDrawer;

    check-cast v0, Lcom/software/shell/fab/ShadowResponsiveDrawer;

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getShadowRadius()F

    move-result v1

    invoke-virtual {v0, v1}, Lcom/software/shell/fab/ShadowResponsiveDrawer;->setCurrentShadowRadius(F)V

    .line 927
    :cond_0
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->requestLayout()V

    .line 928
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shadow radius changed to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getShadowRadius()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 929
    return-void
.end method

.method public setShadowResponsiveEffectEnabled(Z)V
    .locals 3
    .param p1, "shadowResponsiveEffectEnabled"    # Z

    .prologue
    .line 1053
    iput-boolean p1, p0, Lcom/software/shell/fab/ActionButton;->shadowResponsiveEffectEnabled:Z

    .line 1054
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->requestLayout()V

    .line 1055
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shadow responsive is set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->isShadowResponsiveEffectEnabled()Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1056
    return-void
.end method

.method public setShadowXOffset(F)V
    .locals 3
    .param p1, "shadowXOffset"    # F

    .prologue
    .line 970
    invoke-virtual {p0, p1}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->shadowXOffset:F

    .line 971
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->requestLayout()V

    .line 972
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shadow X offset changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getShadowXOffset()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 973
    return-void
.end method

.method public setShadowYOffset(F)V
    .locals 3
    .param p1, "shadowYOffset"    # F

    .prologue
    .line 1005
    invoke-virtual {p0, p1}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->shadowYOffset:F

    .line 1006
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->requestLayout()V

    .line 1007
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Shadow Y offset changed to:"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getShadowYOffset()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1008
    return-void
.end method

.method public setShowAnimation(Landroid/view/animation/Animation;)V
    .locals 2
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1242
    iput-object p1, p0, Lcom/software/shell/fab/ActionButton;->showAnimation:Landroid/view/animation/Animation;

    .line 1243
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Show animation set"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1244
    return-void
.end method

.method public setShowAnimation(Lcom/software/shell/fab/ActionButton$Animations;)V
    .locals 2
    .param p1, "animation"    # Lcom/software/shell/fab/ActionButton$Animations;

    .prologue
    .line 1254
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getContext()Landroid/content/Context;

    move-result-object v0

    iget v1, p1, Lcom/software/shell/fab/ActionButton$Animations;->animResId:I

    invoke-static {v0, v1}, Lcom/software/shell/fab/ActionButton$Animations;->load(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 1255
    return-void
.end method

.method public setSize(F)V
    .locals 3
    .param p1, "size"    # F

    .prologue
    .line 765
    invoke-virtual {p0, p1}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->size:F

    .line 766
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->requestLayout()V

    .line 767
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Button size set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getSize()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 768
    return-void
.end method

.method public setState(Lcom/software/shell/fab/ActionButton$State;)V
    .locals 3
    .param p1, "state"    # Lcom/software/shell/fab/ActionButton$State;

    .prologue
    .line 786
    iput-object p1, p0, Lcom/software/shell/fab/ActionButton;->state:Lcom/software/shell/fab/ActionButton$State;

    .line 787
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->invalidate()V

    .line 788
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "State changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getState()Lcom/software/shell/fab/ActionButton$State;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 789
    return-void
.end method

.method public setStrokeColor(I)V
    .locals 3
    .param p1, "strokeColor"    # I

    .prologue
    .line 1123
    iput p1, p0, Lcom/software/shell/fab/ActionButton;->strokeColor:I

    .line 1124
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->invalidate()V

    .line 1125
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stroke color changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getStrokeColor()I

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1126
    return-void
.end method

.method public setStrokeWidth(F)V
    .locals 3
    .param p1, "strokeWidth"    # F

    .prologue
    .line 1093
    invoke-virtual {p0, p1}, Lcom/software/shell/fab/ActionButton;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/fab/ActionButton;->strokeWidth:F

    .line 1094
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->requestLayout()V

    .line 1095
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Stroke width changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getStrokeWidth()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 1096
    return-void
.end method

.method protected setTouchPoint(Lcom/software/shell/fab/TouchPoint;)V
    .locals 0
    .param p1, "point"    # Lcom/software/shell/fab/TouchPoint;

    .prologue
    .line 1322
    iput-object p1, p0, Lcom/software/shell/fab/ActionButton;->touchPoint:Lcom/software/shell/fab/TouchPoint;

    .line 1323
    return-void
.end method

.method public setType(Lcom/software/shell/fab/ActionButton$Type;)V
    .locals 3
    .param p1, "type"    # Lcom/software/shell/fab/ActionButton$Type;

    .prologue
    .line 721
    iput-object p1, p0, Lcom/software/shell/fab/ActionButton;->type:Lcom/software/shell/fab/ActionButton$Type;

    .line 722
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Type changed to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getType()Lcom/software/shell/fab/ActionButton$Type;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 723
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getType()Lcom/software/shell/fab/ActionButton$Type;

    move-result-object v0

    invoke-virtual {v0}, Lcom/software/shell/fab/ActionButton$Type;->getSize()F

    move-result v0

    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->setSize(F)V

    .line 724
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 589
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->isHidden()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 590
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->playShowAnimation()V

    .line 591
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/software/shell/fab/ActionButton;->setVisibility(I)V

    .line 592
    sget-object v0, Lcom/software/shell/fab/ActionButton;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Action Button shown"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 594
    :cond_0
    return-void
.end method

.method public startAnimation(Landroid/view/animation/Animation;)V
    .locals 1
    .param p1, "animation"    # Landroid/view/animation/Animation;

    .prologue
    .line 1388
    if-eqz p1, :cond_1

    .line 1389
    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    if-eqz v0, :cond_0

    invoke-virtual {p0}, Lcom/software/shell/fab/ActionButton;->getAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/animation/Animation;->hasEnded()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 1390
    :cond_0
    invoke-super {p0, p1}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    .line 1392
    :cond_1
    return-void
.end method
