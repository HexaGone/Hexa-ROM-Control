.class public final Lcom/software/shell/fab/TouchPoint;
.super Ljava/lang/Object;
.source "TouchPoint.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private lastX:F

.field private lastY:F

.field private x:F

.field private y:F


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    const-string v0, "[FAB][%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/software/shell/fab/TouchPoint;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/software/shell/fab/TouchPoint;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(FF)V
    .locals 0
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    .line 64
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 65
    invoke-virtual {p0, p1}, Lcom/software/shell/fab/TouchPoint;->setX(F)V

    .line 66
    invoke-virtual {p0, p2}, Lcom/software/shell/fab/TouchPoint;->setY(F)V

    .line 67
    return-void
.end method


# virtual methods
.method public getLastX()F
    .locals 1

    .prologue
    .line 117
    iget v0, p0, Lcom/software/shell/fab/TouchPoint;->lastX:F

    return v0
.end method

.method public getLastY()F
    .locals 1

    .prologue
    .line 138
    iget v0, p0, Lcom/software/shell/fab/TouchPoint;->lastY:F

    return v0
.end method

.method public getX()F
    .locals 1

    .prologue
    .line 75
    iget v0, p0, Lcom/software/shell/fab/TouchPoint;->x:F

    return v0
.end method

.method public getY()F
    .locals 1

    .prologue
    .line 96
    iget v0, p0, Lcom/software/shell/fab/TouchPoint;->y:F

    return v0
.end method

.method isInsideCircle(FFF)Z
    .locals 12
    .param p1, "centerPointX"    # F
    .param p2, "centerPointY"    # F
    .param p3, "radius"    # F

    .prologue
    .line 172
    invoke-virtual {p0}, Lcom/software/shell/fab/TouchPoint;->getX()F

    move-result v3

    sub-float/2addr v3, p1

    float-to-double v8, v3

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v4

    .line 173
    .local v4, "xValue":D
    invoke-virtual {p0}, Lcom/software/shell/fab/TouchPoint;->getY()F

    move-result v3

    sub-float/2addr v3, p2

    float-to-double v8, v3

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v6

    .line 174
    .local v6, "yValue":D
    float-to-double v8, p3

    const-wide/high16 v10, 0x4000000000000000L    # 2.0

    invoke-static {v8, v9, v10, v11}, Ljava/lang/Math;->pow(DD)D

    move-result-wide v0

    .line 175
    .local v0, "radiusValue":D
    add-double v8, v4, v6

    cmpg-double v3, v8, v0

    if-gtz v3, :cond_0

    const/4 v2, 0x1

    .line 176
    .local v2, "touchPointInsideCircle":Z
    :goto_0
    sget-object v8, Lcom/software/shell/fab/TouchPoint;->LOG_TAG:Ljava/lang/String;

    const-string v9, "Point IS %s circle"

    const/4 v3, 0x1

    new-array v10, v3, [Ljava/lang/Object;

    const/4 v11, 0x0

    if-eqz v2, :cond_1

    const-string v3, "INSIDE"

    :goto_1
    aput-object v3, v10, v11

    invoke-static {v9, v10}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v3

    invoke-static {v8, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    return v2

    .line 175
    .end local v2    # "touchPointInsideCircle":Z
    :cond_0
    const/4 v2, 0x0

    goto :goto_0

    .line 176
    .restart local v2    # "touchPointInsideCircle":Z
    :cond_1
    const-string v3, "NOT INSIDE"

    goto :goto_1
.end method

.method reset()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 157
    invoke-virtual {p0, v0}, Lcom/software/shell/fab/TouchPoint;->setX(F)V

    .line 158
    invoke-virtual {p0, v0}, Lcom/software/shell/fab/TouchPoint;->setY(F)V

    .line 159
    sget-object v0, Lcom/software/shell/fab/TouchPoint;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Touch point reset"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    return-void
.end method

.method final setLastX(F)V
    .locals 3
    .param p1, "x"    # F

    .prologue
    .line 126
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 127
    iput p1, p0, Lcom/software/shell/fab/TouchPoint;->lastX:F

    .line 128
    sget-object v0, Lcom/software/shell/fab/TouchPoint;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Touch point last X-axis coordinate set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/software/shell/fab/TouchPoint;->getLastX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 130
    :cond_0
    return-void
.end method

.method final setLastY(F)V
    .locals 3
    .param p1, "y"    # F

    .prologue
    .line 147
    const/4 v0, 0x0

    cmpl-float v0, p1, v0

    if-lez v0, :cond_0

    .line 148
    iput p1, p0, Lcom/software/shell/fab/TouchPoint;->lastY:F

    .line 149
    sget-object v0, Lcom/software/shell/fab/TouchPoint;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Touch point last Y-axis coordinate set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/software/shell/fab/TouchPoint;->getLastY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 151
    :cond_0
    return-void
.end method

.method final setX(F)V
    .locals 3
    .param p1, "x"    # F

    .prologue
    .line 85
    iput p1, p0, Lcom/software/shell/fab/TouchPoint;->x:F

    .line 86
    sget-object v0, Lcom/software/shell/fab/TouchPoint;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Touch point X-axis coordinate set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/software/shell/fab/TouchPoint;->getX()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 87
    invoke-virtual {p0, p1}, Lcom/software/shell/fab/TouchPoint;->setLastX(F)V

    .line 88
    return-void
.end method

.method final setY(F)V
    .locals 3
    .param p1, "y"    # F

    .prologue
    .line 106
    iput p1, p0, Lcom/software/shell/fab/TouchPoint;->y:F

    .line 107
    sget-object v0, Lcom/software/shell/fab/TouchPoint;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "Touch point Y-axis coordinate set to: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/software/shell/fab/TouchPoint;->getY()F

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 108
    invoke-virtual {p0, p1}, Lcom/software/shell/fab/TouchPoint;->setLastY(F)V

    .line 109
    return-void
.end method
