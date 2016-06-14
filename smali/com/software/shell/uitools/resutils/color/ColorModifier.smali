.class public Lcom/software/shell/uitools/resutils/color/ColorModifier;
.super Ljava/lang/Object;
.source "ColorModifier.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 36
    const-string v0, "[UI Tools][%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/software/shell/uitools/resutils/color/ColorModifier;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/software/shell/uitools/resutils/color/ColorModifier;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 41
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    return-void
.end method

.method public static modifyExposure(IF)I
    .locals 4
    .param p0, "color"    # I
    .param p1, "factor"    # F

    .prologue
    .line 62
    const/4 v2, 0x0

    cmpl-float v2, p1, v2

    if-ltz v2, :cond_0

    move v1, p1

    .line 63
    .local v1, "mFactor":F
    :goto_0
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Changing color exposure with factor: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(F)Ljava/lang/StringBuilder;

    .line 64
    const/4 v2, 0x3

    new-array v0, v2, [F

    .line 65
    .local v0, "hsv":[F
    invoke-static {p0, v0}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 66
    const/4 v2, 0x2

    aget v3, v0, v2

    mul-float/2addr v3, v1

    aput v3, v0, v2

    .line 67
    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v2

    return v2

    .line 62
    .end local v0    # "hsv":[F
    .end local v1    # "mFactor":F
    :cond_0
    const/high16 v1, 0x3f800000    # 1.0f

    goto :goto_0
.end method
