.class public Lcom/software/shell/viewmover/configuration/MovingParams;
.super Ljava/lang/Object;
.source "MovingParams.java"


# static fields
.field private static final DEFAULT_ANIMATION_DURATION:J = 0x1f4L

.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private animationDuration:J

.field private animationInterpolator:Landroid/view/animation/Interpolator;

.field private final context:Landroid/content/Context;

.field private xAxisDelta:F

.field private yAxisDelta:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    const-string v0, "[view-mover][%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/software/shell/viewmover/configuration/MovingParams;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/software/shell/viewmover/configuration/MovingParams;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FF)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xAxisDelta"    # F
    .param p3, "yAxisDelta"    # F

    .prologue
    .line 138
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->animationDuration:J

    .line 139
    iput-object p1, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->context:Landroid/content/Context;

    .line 140
    invoke-direct {p0, p2}, Lcom/software/shell/viewmover/configuration/MovingParams;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->xAxisDelta:F

    .line 141
    invoke-direct {p0, p3}, Lcom/software/shell/viewmover/configuration/MovingParams;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->yAxisDelta:F

    .line 142
    const-string v0, "Moving params initialized with values: xAxisDelta = %s, yAxisDelta = %s,"

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 143
    invoke-virtual {p0}, Lcom/software/shell/viewmover/configuration/MovingParams;->getXAxisDelta()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/software/shell/viewmover/configuration/MovingParams;->getYAxisDelta()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    .line 142
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FFJ)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xAxisDelta"    # F
    .param p3, "yAxisDelta"    # F
    .param p4, "animationDuration"    # J

    .prologue
    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->animationDuration:J

    .line 119
    iput-object p1, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->context:Landroid/content/Context;

    .line 120
    invoke-direct {p0, p2}, Lcom/software/shell/viewmover/configuration/MovingParams;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->xAxisDelta:F

    .line 121
    invoke-direct {p0, p3}, Lcom/software/shell/viewmover/configuration/MovingParams;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->yAxisDelta:F

    .line 122
    iput-wide p4, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->animationDuration:J

    .line 123
    const-string v0, "Moving params initialized with values: xAxisDelta = %s, yAxisDelta = %s,animationDuration = %s"

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 124
    invoke-virtual {p0}, Lcom/software/shell/viewmover/configuration/MovingParams;->getXAxisDelta()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    invoke-virtual {p0}, Lcom/software/shell/viewmover/configuration/MovingParams;->getYAxisDelta()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/software/shell/viewmover/configuration/MovingParams;->getAnimationDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    .line 123
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 125
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;FFJLandroid/view/animation/Interpolator;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "xAxisDelta"    # F
    .param p3, "yAxisDelta"    # F
    .param p4, "animationDuration"    # J
    .param p6, "animationInterpolator"    # Landroid/view/animation/Interpolator;

    .prologue
    .line 95
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->animationDuration:J

    .line 96
    iput-object p1, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->context:Landroid/content/Context;

    .line 97
    invoke-direct {p0, p2}, Lcom/software/shell/viewmover/configuration/MovingParams;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->xAxisDelta:F

    .line 98
    invoke-direct {p0, p3}, Lcom/software/shell/viewmover/configuration/MovingParams;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->yAxisDelta:F

    .line 99
    iput-wide p4, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->animationDuration:J

    .line 100
    iput-object p6, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->animationInterpolator:Landroid/view/animation/Interpolator;

    .line 101
    const-string v0, "Moving params initialized with values: xAxisDelta = %s, yAxisDelta = %s,animationDuration = %s, animation interpolator is an instance of %s"

    const/4 v1, 0x4

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 102
    invoke-virtual {p0}, Lcom/software/shell/viewmover/configuration/MovingParams;->getXAxisDelta()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x1

    .line 103
    invoke-virtual {p0}, Lcom/software/shell/viewmover/configuration/MovingParams;->getYAxisDelta()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x2

    invoke-virtual {p0}, Lcom/software/shell/viewmover/configuration/MovingParams;->getAnimationDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v1, v2

    const/4 v2, 0x3

    invoke-virtual {p0}, Lcom/software/shell/viewmover/configuration/MovingParams;->getAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    .line 101
    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 104
    return-void
.end method

.method public constructor <init>(Lcom/software/shell/viewmover/configuration/MovingParams;)V
    .locals 6
    .param p1, "params"    # Lcom/software/shell/viewmover/configuration/MovingParams;

    .prologue
    .line 151
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 72
    const-wide/16 v0, 0x1f4

    iput-wide v0, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->animationDuration:J

    .line 152
    invoke-virtual {p1}, Lcom/software/shell/viewmover/configuration/MovingParams;->getContext()Landroid/content/Context;

    move-result-object v0

    iput-object v0, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->context:Landroid/content/Context;

    .line 153
    invoke-virtual {p1}, Lcom/software/shell/viewmover/configuration/MovingParams;->getXAxisDelta()F

    move-result v0

    iput v0, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->xAxisDelta:F

    .line 154
    invoke-virtual {p1}, Lcom/software/shell/viewmover/configuration/MovingParams;->getYAxisDelta()F

    move-result v0

    iput v0, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->yAxisDelta:F

    .line 155
    invoke-virtual {p1}, Lcom/software/shell/viewmover/configuration/MovingParams;->getAnimationDuration()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->animationDuration:J

    .line 156
    invoke-virtual {p1}, Lcom/software/shell/viewmover/configuration/MovingParams;->getAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    iput-object v0, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->animationInterpolator:Landroid/view/animation/Interpolator;

    .line 157
    const-string v1, "Cloned moving params initialized with values: xAxisDelta = %s, yAxisDelta = %s, animationDuration = %s, animation interpolator is an instance of %s"

    const/4 v0, 0x4

    new-array v2, v0, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 158
    invoke-virtual {p0}, Lcom/software/shell/viewmover/configuration/MovingParams;->getXAxisDelta()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x1

    .line 159
    invoke-virtual {p0}, Lcom/software/shell/viewmover/configuration/MovingParams;->getYAxisDelta()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Float;->valueOf(F)Ljava/lang/Float;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v0, 0x2

    invoke-virtual {p0}, Lcom/software/shell/viewmover/configuration/MovingParams;->getAnimationDuration()J

    move-result-wide v4

    invoke-static {v4, v5}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v3

    aput-object v3, v2, v0

    const/4 v3, 0x3

    invoke-virtual {p0}, Lcom/software/shell/viewmover/configuration/MovingParams;->getAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    if-nez v0, :cond_0

    const-string v0, "null"

    .line 160
    :goto_0
    aput-object v0, v2, v3

    .line 157
    invoke-static {v1, v2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    .line 161
    return-void

    .line 160
    :cond_0
    invoke-virtual {p0}, Lcom/software/shell/viewmover/configuration/MovingParams;->getAnimationInterpolator()Landroid/view/animation/Interpolator;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    goto :goto_0
.end method

.method private dpToPx(F)F
    .locals 1
    .param p1, "dp"    # F

    .prologue
    .line 235
    invoke-virtual {p0}, Lcom/software/shell/viewmover/configuration/MovingParams;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-static {v0, p1}, Lcom/software/shell/uitools/convert/DensityConverter;->dpToPx(Landroid/content/Context;F)F

    move-result v0

    return v0
.end method


# virtual methods
.method public getAnimationDuration()J
    .locals 2

    .prologue
    .line 216
    iget-wide v0, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->animationDuration:J

    return-wide v0
.end method

.method public getAnimationInterpolator()Landroid/view/animation/Interpolator;
    .locals 1

    .prologue
    .line 225
    iget-object v0, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->animationInterpolator:Landroid/view/animation/Interpolator;

    return-object v0
.end method

.method getContext()Landroid/content/Context;
    .locals 1

    .prologue
    .line 169
    iget-object v0, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->context:Landroid/content/Context;

    return-object v0
.end method

.method public getXAxisDelta()F
    .locals 1

    .prologue
    .line 178
    iget v0, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->xAxisDelta:F

    return v0
.end method

.method public getYAxisDelta()F
    .locals 1

    .prologue
    .line 197
    iget v0, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->yAxisDelta:F

    return v0
.end method

.method public setXAxisDelta(F)V
    .locals 2
    .param p1, "xAxisDelta"    # F

    .prologue
    .line 187
    invoke-direct {p0, p1}, Lcom/software/shell/viewmover/configuration/MovingParams;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->xAxisDelta:F

    .line 188
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Moving Params xAxisDelta set to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/software/shell/viewmover/configuration/MovingParams;->getXAxisDelta()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 189
    return-void
.end method

.method public setYAxisDelta(F)V
    .locals 2
    .param p1, "yAxisDelta"    # F

    .prologue
    .line 206
    invoke-direct {p0, p1}, Lcom/software/shell/viewmover/configuration/MovingParams;->dpToPx(F)F

    move-result v0

    iput v0, p0, Lcom/software/shell/viewmover/configuration/MovingParams;->yAxisDelta:F

    .line 207
    new-instance v0, Ljava/lang/StringBuilder;

    const-string v1, "Moving Params yAxisDelta set to: "

    invoke-direct {v0, v1}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/software/shell/viewmover/configuration/MovingParams;->getYAxisDelta()F

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 208
    return-void
.end method
