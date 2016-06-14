.class public Lcom/wubydax/romcontrol/prefs/ColorPickerView;
.super Landroid/view/View;
.source "ColorPickerView.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wubydax/romcontrol/prefs/ColorPickerView$OnColorChangedListener;
    }
.end annotation


# static fields
.field private static final BORDER_WIDTH_PX:F = 1.0f

.field private static final PANEL_ALPHA:I = 0x2

.field private static final PANEL_HUE:I = 0x1

.field private static final PANEL_SAT_VAL:I


# instance fields
.field private ALPHA_PANEL_HEIGHT:F

.field private HUE_PANEL_WIDTH:F

.field private PALETTE_CIRCLE_TRACKER_RADIUS:F

.field private PANEL_SPACING:F

.field private RECTANGLE_TRACKER_OFFSET:F

.field private mAlpha:I

.field private mAlphaPaint:Landroid/graphics/Paint;

.field private mAlphaPattern:Lcom/wubydax/romcontrol/prefs/AlphaPatternDrawable;

.field private mAlphaRect:Landroid/graphics/RectF;

.field private mAlphaShader:Landroid/graphics/Shader;

.field private mAlphaSliderText:Ljava/lang/String;

.field private mAlphaTextPaint:Landroid/graphics/Paint;

.field private mBorderColor:I

.field private mBorderPaint:Landroid/graphics/Paint;

.field private mDensity:F

.field private mDrawingOffset:F

.field private mDrawingRect:Landroid/graphics/RectF;

.field private mHue:F

.field private mHuePaint:Landroid/graphics/Paint;

.field private mHueRect:Landroid/graphics/RectF;

.field private mHueShader:Landroid/graphics/Shader;

.field private mHueTrackerPaint:Landroid/graphics/Paint;

.field private mLastTouchedPanel:I

.field private mListener:Lcom/wubydax/romcontrol/prefs/ColorPickerView$OnColorChangedListener;

.field private mSat:F

.field private mSatShader:Landroid/graphics/Shader;

.field private mSatValPaint:Landroid/graphics/Paint;

.field private mSatValRect:Landroid/graphics/RectF;

.field private mSatValTrackerPaint:Landroid/graphics/Paint;

.field private mShowAlphaPanel:Z

.field private mSliderTrackerColor:I

.field private mStartTouchPoint:Landroid/graphics/Point;

.field private mVal:F

.field private mValShader:Landroid/graphics/Shader;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 143
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 144
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 147
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 148
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 151
    invoke-direct {p0, p1, p2, p3}, Landroid/view/View;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/high16 v0, 0x41f00000    # 30.0f

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->HUE_PANEL_WIDTH:F

    .line 63
    const/high16 v0, 0x41a00000    # 20.0f

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    .line 68
    const/high16 v0, 0x41200000    # 10.0f

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->PANEL_SPACING:F

    .line 72
    const/high16 v0, 0x40a00000    # 5.0f

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    .line 77
    const/high16 v0, 0x40000000    # 2.0f

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    .line 80
    const/high16 v0, 0x3f800000    # 1.0f

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDensity:F

    .line 100
    const/16 v0, 0xff

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlpha:I

    .line 101
    const/high16 v0, 0x43b40000    # 360.0f

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHue:F

    .line 102
    iput v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSat:F

    .line 103
    iput v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mVal:F

    .line 105
    const-string v0, ""

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    .line 106
    const v0, -0xe3e3e4

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSliderTrackerColor:I

    .line 107
    const v0, -0x919192

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mBorderColor:I

    .line 108
    iput-boolean v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mShowAlphaPanel:Z

    .line 114
    iput v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mLastTouchedPanel:I

    .line 136
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 152
    invoke-direct {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->init()V

    .line 153
    return-void
.end method

.method private alphaToPoint(I)Landroid/graphics/Point;
    .locals 5
    .param p1, "alpha"    # I

    .prologue
    .line 378
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 379
    .local v1, "rect":Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v2

    .line 381
    .local v2, "width":F
    new-instance v0, Landroid/graphics/Point;

    invoke-direct {v0}, Landroid/graphics/Point;-><init>()V

    .line 383
    .local v0, "p":Landroid/graphics/Point;
    int-to-float v3, p1

    mul-float/2addr v3, v2

    const/high16 v4, 0x437f0000    # 255.0f

    div-float/2addr v3, v4

    sub-float v3, v2, v3

    iget v4, v1, Landroid/graphics/RectF;->left:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->x:I

    .line 384
    iget v3, v1, Landroid/graphics/RectF;->top:F

    float-to-int v3, v3

    iput v3, v0, Landroid/graphics/Point;->y:I

    .line 386
    return-object v0
.end method

.method private buildHueColorArray()[I
    .locals 7

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 210
    const/16 v3, 0x169

    new-array v1, v3, [I

    .line 212
    .local v1, "hue":[I
    const/4 v0, 0x0

    .line 213
    .local v0, "count":I
    array-length v3, v1

    add-int/lit8 v2, v3, -0x1

    .local v2, "i":I
    :goto_0
    if-ltz v2, :cond_0

    .line 214
    const/4 v3, 0x3

    new-array v3, v3, [F

    const/4 v4, 0x0

    int-to-float v5, v2

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v6, v3, v4

    const/4 v4, 0x2

    aput v6, v3, v4

    invoke-static {v3}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v3

    aput v3, v1, v0

    .line 213
    add-int/lit8 v2, v2, -0x1

    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 217
    :cond_0
    return-object v1
.end method

.method private calculateRequiredOffset()F
    .locals 3

    .prologue
    .line 202
    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    invoke-static {v1, v2}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 203
    .local v0, "offset":F
    const/high16 v1, 0x3f800000    # 1.0f

    iget v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-static {v0, v1}, Ljava/lang/Math;->max(FF)F

    move-result v0

    .line 205
    const/high16 v1, 0x3fc00000    # 1.5f

    mul-float/2addr v1, v0

    return v1
.end method

.method private chooseHeight(II)I
    .locals 1
    .param p1, "mode"    # I
    .param p2, "size"    # I

    .prologue
    .line 687
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_1

    .line 690
    .end local p2    # "size":I
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "size":I
    :cond_1
    invoke-direct {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->getPrefferedHeight()I

    move-result p2

    goto :goto_0
.end method

.method private chooseWidth(II)I
    .locals 1
    .param p1, "mode"    # I
    .param p2, "size"    # I

    .prologue
    .line 679
    const/high16 v0, -0x80000000

    if-eq p1, v0, :cond_0

    const/high16 v0, 0x40000000    # 2.0f

    if-ne p1, v0, :cond_1

    .line 682
    .end local p2    # "size":I
    :cond_0
    :goto_0
    return p2

    .restart local p2    # "size":I
    :cond_1
    invoke-direct {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->getPrefferedWidth()I

    move-result p2

    goto :goto_0
.end method

.method private drawAlphaPanel(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 302
    iget-boolean v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaPattern:Lcom/wubydax/romcontrol/prefs/AlphaPatternDrawable;

    if-nez v0, :cond_1

    .line 346
    :cond_0
    :goto_0
    return-void

    .line 304
    :cond_1
    iget-object v11, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 307
    .local v11, "rect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 308
    iget v0, v11, Landroid/graphics/RectF;->left:F

    const/high16 v1, 0x3f800000    # 1.0f

    sub-float v1, v0, v1

    iget v0, v11, Landroid/graphics/RectF;->top:F

    const/high16 v2, 0x3f800000    # 1.0f

    sub-float v2, v0, v2

    iget v0, v11, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v0

    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 316
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaPattern:Lcom/wubydax/romcontrol/prefs/AlphaPatternDrawable;

    invoke-virtual {v0, p1}, Lcom/wubydax/romcontrol/prefs/AlphaPatternDrawable;->draw(Landroid/graphics/Canvas;)V

    .line 318
    const/4 v0, 0x3

    new-array v8, v0, [F

    const/4 v0, 0x0

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHue:F

    aput v1, v8, v0

    const/4 v0, 0x1

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSat:F

    aput v1, v8, v0

    const/4 v0, 0x2

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mVal:F

    aput v1, v8, v0

    .line 319
    .local v8, "hsv":[F
    invoke-static {v8}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v5

    .line 320
    .local v5, "color":I
    const/4 v0, 0x0

    invoke-static {v0, v8}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v6

    .line 322
    .local v6, "acolor":I
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v11, Landroid/graphics/RectF;->left:F

    iget v2, v11, Landroid/graphics/RectF;->top:F

    iget v3, v11, Landroid/graphics/RectF;->right:F

    iget v4, v11, Landroid/graphics/RectF;->top:F

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    .line 326
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 328
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v11, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 330
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    if-eqz v0, :cond_2

    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    const-string v1, ""

    if-eq v0, v1, :cond_2

    .line 331
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerX()F

    move-result v1

    invoke-virtual {v11}, Landroid/graphics/RectF;->centerY()F

    move-result v2

    const/high16 v3, 0x40800000    # 4.0f

    iget v4, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    add-float/2addr v2, v3

    iget-object v3, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawText(Ljava/lang/String;FFLandroid/graphics/Paint;)V

    .line 334
    :cond_2
    const/high16 v0, 0x40800000    # 4.0f

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    const/high16 v1, 0x40000000    # 2.0f

    div-float v12, v0, v1

    .line 336
    .local v12, "rectWidth":F
    iget v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlpha:I

    invoke-direct {p0, v0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->alphaToPoint(I)Landroid/graphics/Point;

    move-result-object v9

    .line 338
    .local v9, "p":Landroid/graphics/Point;
    new-instance v10, Landroid/graphics/RectF;

    invoke-direct {v10}, Landroid/graphics/RectF;-><init>()V

    .line 339
    .local v10, "r":Landroid/graphics/RectF;
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    sub-float/2addr v0, v12

    iput v0, v10, Landroid/graphics/RectF;->left:F

    .line 340
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    add-float/2addr v0, v12

    iput v0, v10, Landroid/graphics/RectF;->right:F

    .line 341
    iget v0, v11, Landroid/graphics/RectF;->top:F

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v0, v1

    iput v0, v10, Landroid/graphics/RectF;->top:F

    .line 342
    iget v0, v11, Landroid/graphics/RectF;->bottom:F

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v0, v1

    iput v0, v10, Landroid/graphics/RectF;->bottom:F

    .line 344
    const/high16 v0, 0x40000000    # 2.0f

    const/high16 v1, 0x40000000    # 2.0f

    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0, v1, v2}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    goto/16 :goto_0
.end method

.method private drawHuePanel(Landroid/graphics/Canvas;)V
    .locals 13
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/high16 v12, 0x40000000    # 2.0f

    const/high16 v4, 0x3f800000    # 1.0f

    .line 267
    iget-object v10, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 270
    .local v10, "rect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 271
    iget v0, v10, Landroid/graphics/RectF;->left:F

    sub-float v1, v0, v4

    iget v0, v10, Landroid/graphics/RectF;->top:F

    sub-float v2, v0, v4

    iget v0, v10, Landroid/graphics/RectF;->right:F

    add-float v3, v0, v4

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 278
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    .line 279
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->left:F

    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    invoke-direct {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->buildHueColorArray()[I

    move-result-object v5

    const/4 v6, 0x0

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFF[I[FLandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    .line 280
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 283
    :cond_0
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 285
    const/high16 v0, 0x40800000    # 4.0f

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    div-float v11, v0, v12

    .line 287
    .local v11, "rectHeight":F
    iget v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHue:F

    invoke-direct {p0, v0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->hueToPoint(F)Landroid/graphics/Point;

    move-result-object v8

    .line 289
    .local v8, "p":Landroid/graphics/Point;
    new-instance v9, Landroid/graphics/RectF;

    invoke-direct {v9}, Landroid/graphics/RectF;-><init>()V

    .line 290
    .local v9, "r":Landroid/graphics/RectF;
    iget v0, v10, Landroid/graphics/RectF;->left:F

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    sub-float/2addr v0, v1

    iput v0, v9, Landroid/graphics/RectF;->left:F

    .line 291
    iget v0, v10, Landroid/graphics/RectF;->right:F

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    add-float/2addr v0, v1

    iput v0, v9, Landroid/graphics/RectF;->right:F

    .line 292
    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    sub-float/2addr v0, v11

    iput v0, v9, Landroid/graphics/RectF;->top:F

    .line 293
    iget v0, v8, Landroid/graphics/Point;->y:I

    int-to-float v0, v0

    add-float/2addr v0, v11

    iput v0, v9, Landroid/graphics/RectF;->bottom:F

    .line 296
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v9, v12, v12, v0}, Landroid/graphics/Canvas;->drawRoundRect(Landroid/graphics/RectF;FFLandroid/graphics/Paint;)V

    .line 298
    return-void
.end method

.method private drawSatValPanel(Landroid/graphics/Canvas;)V
    .locals 11
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    .line 234
    iget-object v10, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 237
    .local v10, "rect":Landroid/graphics/RectF;
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mBorderColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 238
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, v0, Landroid/graphics/RectF;->left:F

    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v2, v0, Landroid/graphics/RectF;->top:F

    iget v0, v10, Landroid/graphics/RectF;->right:F

    const/high16 v3, 0x3f800000    # 1.0f

    add-float/2addr v3, v0

    iget v0, v10, Landroid/graphics/RectF;->bottom:F

    const/high16 v4, 0x3f800000    # 1.0f

    add-float/2addr v4, v0

    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    move-object v0, p1

    invoke-virtual/range {v0 .. v5}, Landroid/graphics/Canvas;->drawRect(FFFFLandroid/graphics/Paint;)V

    .line 241
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    if-nez v0, :cond_0

    .line 242
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->left:F

    iget v4, v10, Landroid/graphics/RectF;->bottom:F

    const/4 v5, -0x1

    const/high16 v6, -0x1000000

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    .line 246
    :cond_0
    const/4 v0, 0x3

    new-array v0, v0, [F

    const/4 v1, 0x0

    iget v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHue:F

    aput v2, v0, v1

    const/4 v1, 0x1

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    const/4 v1, 0x2

    const/high16 v2, 0x3f800000    # 1.0f

    aput v2, v0, v1

    invoke-static {v0}, Landroid/graphics/Color;->HSVToColor([F)I

    move-result v6

    .line 248
    .local v6, "rgb":I
    new-instance v0, Landroid/graphics/LinearGradient;

    iget v1, v10, Landroid/graphics/RectF;->left:F

    iget v2, v10, Landroid/graphics/RectF;->top:F

    iget v3, v10, Landroid/graphics/RectF;->right:F

    iget v4, v10, Landroid/graphics/RectF;->top:F

    const/4 v5, -0x1

    sget-object v7, Landroid/graphics/Shader$TileMode;->CLAMP:Landroid/graphics/Shader$TileMode;

    invoke-direct/range {v0 .. v7}, Landroid/graphics/LinearGradient;-><init>(FFFFIILandroid/graphics/Shader$TileMode;)V

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    .line 250
    new-instance v8, Landroid/graphics/ComposeShader;

    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    sget-object v2, Landroid/graphics/PorterDuff$Mode;->MULTIPLY:Landroid/graphics/PorterDuff$Mode;

    invoke-direct {v8, v0, v1, v2}, Landroid/graphics/ComposeShader;-><init>(Landroid/graphics/Shader;Landroid/graphics/Shader;Landroid/graphics/PorterDuff$Mode;)V

    .line 251
    .local v8, "mShader":Landroid/graphics/ComposeShader;
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v8}, Landroid/graphics/Paint;->setShader(Landroid/graphics/Shader;)Landroid/graphics/Shader;

    .line 253
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v10, v0}, Landroid/graphics/Canvas;->drawRect(Landroid/graphics/RectF;Landroid/graphics/Paint;)V

    .line 255
    iget v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSat:F

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mVal:F

    invoke-direct {p0, v0, v1}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->satValToPoint(FF)Landroid/graphics/Point;

    move-result-object v9

    .line 257
    .local v9, "p":Landroid/graphics/Point;
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const/high16 v1, -0x1000000

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 258
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    const/high16 v3, 0x3f800000    # 1.0f

    iget v4, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDensity:F

    mul-float/2addr v3, v4

    sub-float/2addr v2, v3

    iget-object v3, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 260
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    const v1, -0x222223

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 261
    iget v0, v9, Landroid/graphics/Point;->x:I

    int-to-float v0, v0

    iget v1, v9, Landroid/graphics/Point;->y:I

    int-to-float v1, v1

    iget v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget-object v3, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {p1, v0, v1, v2, v3}, Landroid/graphics/Canvas;->drawCircle(FFFLandroid/graphics/Paint;)V

    .line 263
    return-void
.end method

.method private getPrefferedHeight()I
    .locals 4

    .prologue
    .line 709
    const/high16 v1, 0x43480000    # 200.0f

    iget v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    float-to-int v0, v1

    .line 711
    .local v0, "height":I
    iget-boolean v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v1, :cond_0

    .line 712
    int-to-float v1, v0

    iget v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->PANEL_SPACING:F

    iget v3, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v2, v3

    add-float/2addr v1, v2

    float-to-int v0, v1

    .line 715
    :cond_0
    return v0
.end method

.method private getPrefferedWidth()I
    .locals 4

    .prologue
    .line 696
    invoke-direct {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->getPrefferedHeight()I

    move-result v0

    .line 698
    .local v0, "width":I
    iget-boolean v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v1, :cond_0

    .line 699
    int-to-float v1, v0

    iget v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->PANEL_SPACING:F

    iget v3, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v2, v3

    sub-float/2addr v1, v2

    float-to-int v0, v1

    .line 703
    :cond_0
    int-to-float v1, v0

    iget v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v1, v2

    iget v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr v1, v2

    float-to-int v1, v1

    return v1
.end method

.method private hueToPoint(F)Landroid/graphics/Point;
    .locals 5
    .param p1, "hue"    # F

    .prologue
    .line 351
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 352
    .local v2, "rect":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 354
    .local v0, "height":F
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 356
    .local v1, "p":Landroid/graphics/Point;
    mul-float v3, p1, v0

    const/high16 v4, 0x43b40000    # 360.0f

    div-float/2addr v3, v4

    sub-float v3, v0, v3

    iget v4, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v3, v4

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->y:I

    .line 357
    iget v3, v2, Landroid/graphics/RectF;->left:F

    float-to-int v3, v3

    iput v3, v1, Landroid/graphics/Point;->x:I

    .line 359
    return-object v1
.end method

.method private init()V
    .locals 3

    .prologue
    const/4 v2, 0x1

    .line 156
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDensity:F

    .line 157
    iget v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->PALETTE_CIRCLE_TRACKER_RADIUS:F

    .line 158
    iget v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->RECTANGLE_TRACKER_OFFSET:F

    .line 159
    iget v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->HUE_PANEL_WIDTH:F

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->HUE_PANEL_WIDTH:F

    .line 160
    iget v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    .line 161
    iget v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->PANEL_SPACING:F

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDensity:F

    mul-float/2addr v0, v1

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->PANEL_SPACING:F

    .line 163
    invoke-direct {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->calculateRequiredOffset()F

    move-result v0

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDrawingOffset:F

    .line 165
    invoke-direct {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->initPaintTools()V

    .line 168
    invoke-virtual {p0, v2}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->setFocusable(Z)V

    .line 169
    invoke-virtual {p0, v2}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->setFocusableInTouchMode(Z)V

    .line 170
    return-void
.end method

.method private initPaintTools()V
    .locals 4

    .prologue
    const/high16 v2, 0x40000000    # 2.0f

    const/4 v3, 0x1

    .line 174
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSatValPaint:Landroid/graphics/Paint;

    .line 175
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    .line 176
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHuePaint:Landroid/graphics/Paint;

    .line 177
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    .line 178
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaPaint:Landroid/graphics/Paint;

    .line 179
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    .line 180
    new-instance v0, Landroid/graphics/Paint;

    invoke-direct {v0}, Landroid/graphics/Paint;-><init>()V

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mBorderPaint:Landroid/graphics/Paint;

    .line 183
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 184
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 185
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSatValTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 187
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSliderTrackerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 188
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Style;->STROKE:Landroid/graphics/Paint$Style;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStyle(Landroid/graphics/Paint$Style;)V

    .line 189
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setStrokeWidth(F)V

    .line 190
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 192
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const v1, -0xe3e3e4

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 193
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    const/high16 v1, 0x41600000    # 14.0f

    iget v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDensity:F

    mul-float/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextSize(F)V

    .line 194
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setAntiAlias(Z)V

    .line 195
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    sget-object v1, Landroid/graphics/Paint$Align;->CENTER:Landroid/graphics/Paint$Align;

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setTextAlign(Landroid/graphics/Paint$Align;)V

    .line 196
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaTextPaint:Landroid/graphics/Paint;

    invoke-virtual {v0, v3}, Landroid/graphics/Paint;->setFakeBoldText(Z)V

    .line 199
    return-void
.end method

.method private moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z
    .locals 9
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v8, 0x1

    const/4 v4, 0x0

    .line 599
    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    if-nez v5, :cond_1

    move v3, v4

    .line 633
    :cond_0
    :goto_0
    return v3

    .line 601
    :cond_1
    const/4 v3, 0x0

    .line 603
    .local v3, "update":Z
    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    iget v1, v5, Landroid/graphics/Point;->x:I

    .line 604
    .local v1, "startX":I
    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    iget v2, v5, Landroid/graphics/Point;->y:I

    .line 607
    .local v2, "startY":I
    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 608
    iput v8, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mLastTouchedPanel:I

    .line 610
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    invoke-direct {p0, v4}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->pointToHue(F)F

    move-result v4

    iput v4, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHue:F

    .line 612
    const/4 v3, 0x1

    goto :goto_0

    .line 613
    :cond_2
    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    int-to-float v6, v1

    int-to-float v7, v2

    invoke-virtual {v5, v6, v7}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v5

    if-eqz v5, :cond_3

    .line 615
    iput v4, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mLastTouchedPanel:I

    .line 617
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    invoke-direct {p0, v5, v6}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->pointToSatVal(FF)[F

    move-result-object v0

    .line 619
    .local v0, "result":[F
    aget v4, v0, v4

    iput v4, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSat:F

    .line 620
    aget v4, v0, v8

    iput v4, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mVal:F

    .line 622
    const/4 v3, 0x1

    .line 623
    goto :goto_0

    .end local v0    # "result":[F
    :cond_3
    iget-object v4, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-eqz v4, :cond_0

    iget-object v4, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    int-to-float v5, v1

    int-to-float v6, v2

    invoke-virtual {v4, v5, v6}, Landroid/graphics/RectF;->contains(FF)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 625
    const/4 v4, 0x2

    iput v4, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mLastTouchedPanel:I

    .line 627
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {p0, v4}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->pointToAlpha(I)I

    move-result v4

    iput v4, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlpha:I

    .line 629
    const/4 v3, 0x1

    goto :goto_0
.end method

.method private pointToAlpha(I)I
    .locals 4
    .param p1, "x"    # I

    .prologue
    .line 440
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 441
    .local v0, "rect":Landroid/graphics/RectF;
    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v2

    float-to-int v1, v2

    .line 443
    .local v1, "width":I
    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->left:F

    cmpg-float v2, v2, v3

    if-gez v2, :cond_0

    .line 444
    const/4 p1, 0x0

    .line 451
    :goto_0
    mul-int/lit16 v2, p1, 0xff

    div-int/2addr v2, v1

    rsub-int v2, v2, 0xff

    return v2

    .line 445
    :cond_0
    int-to-float v2, p1

    iget v3, v0, Landroid/graphics/RectF;->right:F

    cmpl-float v2, v2, v3

    if-lez v2, :cond_1

    .line 446
    move p1, v1

    goto :goto_0

    .line 448
    :cond_1
    iget v2, v0, Landroid/graphics/RectF;->left:F

    float-to-int v2, v2

    sub-int/2addr p1, v2

    goto :goto_0
.end method

.method private pointToHue(F)F
    .locals 4
    .param p1, "y"    # F

    .prologue
    const/high16 v3, 0x43b40000    # 360.0f

    .line 423
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 425
    .local v1, "rect":Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 427
    .local v0, "height":F
    iget v2, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v2, p1, v2

    if-gez v2, :cond_0

    .line 428
    const/4 p1, 0x0

    .line 435
    :goto_0
    mul-float v2, p1, v3

    div-float/2addr v2, v0

    sub-float v2, v3, v2

    return v2

    .line 429
    :cond_0
    iget v2, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v2, p1, v2

    if-lez v2, :cond_1

    .line 430
    move p1, v0

    goto :goto_0

    .line 432
    :cond_1
    iget v2, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p1, v2

    goto :goto_0
.end method

.method private pointToSatVal(FF)[F
    .locals 7
    .param p1, "x"    # F
    .param p2, "y"    # F

    .prologue
    const/high16 v6, 0x3f800000    # 1.0f

    .line 392
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 393
    .local v1, "rect":Landroid/graphics/RectF;
    const/4 v4, 0x2

    new-array v2, v4, [F

    .line 395
    .local v2, "result":[F
    invoke-virtual {v1}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 396
    .local v3, "width":F
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 398
    .local v0, "height":F
    iget v4, v1, Landroid/graphics/RectF;->left:F

    cmpg-float v4, p1, v4

    if-gez v4, :cond_0

    .line 399
    const/4 p1, 0x0

    .line 406
    :goto_0
    iget v4, v1, Landroid/graphics/RectF;->top:F

    cmpg-float v4, p2, v4

    if-gez v4, :cond_2

    .line 407
    const/4 p2, 0x0

    .line 415
    :goto_1
    const/4 v4, 0x0

    div-float v5, v6, v3

    mul-float/2addr v5, p1

    aput v5, v2, v4

    .line 416
    const/4 v4, 0x1

    div-float v5, v6, v0

    mul-float/2addr v5, p2

    sub-float v5, v6, v5

    aput v5, v2, v4

    .line 418
    return-object v2

    .line 400
    :cond_0
    iget v4, v1, Landroid/graphics/RectF;->right:F

    cmpl-float v4, p1, v4

    if-lez v4, :cond_1

    .line 401
    move p1, v3

    goto :goto_0

    .line 403
    :cond_1
    iget v4, v1, Landroid/graphics/RectF;->left:F

    sub-float/2addr p1, v4

    goto :goto_0

    .line 408
    :cond_2
    iget v4, v1, Landroid/graphics/RectF;->bottom:F

    cmpl-float v4, p2, v4

    if-lez v4, :cond_3

    .line 409
    move p2, v0

    goto :goto_1

    .line 411
    :cond_3
    iget v4, v1, Landroid/graphics/RectF;->top:F

    sub-float/2addr p2, v4

    goto :goto_1
.end method

.method private satValToPoint(FF)Landroid/graphics/Point;
    .locals 6
    .param p1, "sat"    # F
    .param p2, "val"    # F

    .prologue
    .line 364
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 365
    .local v2, "rect":Landroid/graphics/RectF;
    invoke-virtual {v2}, Landroid/graphics/RectF;->height()F

    move-result v0

    .line 366
    .local v0, "height":F
    invoke-virtual {v2}, Landroid/graphics/RectF;->width()F

    move-result v3

    .line 368
    .local v3, "width":F
    new-instance v1, Landroid/graphics/Point;

    invoke-direct {v1}, Landroid/graphics/Point;-><init>()V

    .line 370
    .local v1, "p":Landroid/graphics/Point;
    mul-float v4, p1, v3

    iget v5, v2, Landroid/graphics/RectF;->left:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->x:I

    .line 371
    const/high16 v4, 0x3f800000    # 1.0f

    sub-float/2addr v4, p2

    mul-float/2addr v4, v0

    iget v5, v2, Landroid/graphics/RectF;->top:F

    add-float/2addr v4, v5

    float-to-int v4, v4

    iput v4, v1, Landroid/graphics/Point;->y:I

    .line 373
    return-object v1
.end method

.method private setUpAlphaRect()V
    .locals 10

    .prologue
    const/high16 v7, 0x3f800000    # 1.0f

    .line 764
    iget-boolean v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v5, :cond_0

    .line 783
    :goto_0
    return-void

    .line 766
    :cond_0
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 768
    .local v1, "dRect":Landroid/graphics/RectF;
    iget v5, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v5, v7

    .line 769
    .local v2, "left":F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    iget v6, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sub-float/2addr v5, v6

    add-float v4, v5, v7

    .line 770
    .local v4, "top":F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v0, v5, v7

    .line 771
    .local v0, "bottom":F
    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v7

    .line 773
    .local v3, "right":F
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    .line 775
    new-instance v5, Lcom/wubydax/romcontrol/prefs/AlphaPatternDrawable;

    const/high16 v6, 0x40a00000    # 5.0f

    iget v7, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDensity:F

    mul-float/2addr v6, v7

    float-to-int v6, v6

    invoke-direct {v5, v6}, Lcom/wubydax/romcontrol/prefs/AlphaPatternDrawable;-><init>(I)V

    iput-object v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaPattern:Lcom/wubydax/romcontrol/prefs/AlphaPatternDrawable;

    .line 776
    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaPattern:Lcom/wubydax/romcontrol/prefs/AlphaPatternDrawable;

    iget-object v6, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v6, v6, Landroid/graphics/RectF;->left:F

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v6

    iget-object v7, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v7, v7, Landroid/graphics/RectF;->top:F

    invoke-static {v7}, Ljava/lang/Math;->round(F)I

    move-result v7

    iget-object v8, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v8, v8, Landroid/graphics/RectF;->right:F

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v8

    iget-object v9, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    iget v9, v9, Landroid/graphics/RectF;->bottom:F

    invoke-static {v9}, Ljava/lang/Math;->round(F)I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Lcom/wubydax/romcontrol/prefs/AlphaPatternDrawable;->setBounds(IIII)V

    goto :goto_0
.end method

.method private setUpHueRect()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 752
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 754
    .local v1, "dRect":Landroid/graphics/RectF;
    iget v5, v1, Landroid/graphics/RectF;->right:F

    iget v6, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v5, v6

    add-float v2, v5, v8

    .line 755
    .local v2, "left":F
    iget v5, v1, Landroid/graphics/RectF;->top:F

    add-float v4, v5, v8

    .line 756
    .local v4, "top":F
    iget v5, v1, Landroid/graphics/RectF;->bottom:F

    sub-float v6, v5, v8

    iget-boolean v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v5, :cond_0

    iget v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->PANEL_SPACING:F

    iget v7, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v5, v7

    :goto_0
    sub-float v0, v6, v5

    .line 757
    .local v0, "bottom":F
    iget v5, v1, Landroid/graphics/RectF;->right:F

    sub-float v3, v5, v8

    .line 759
    .local v3, "right":F
    new-instance v5, Landroid/graphics/RectF;

    invoke-direct {v5, v2, v4, v3, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHueRect:Landroid/graphics/RectF;

    .line 760
    return-void

    .line 756
    .end local v0    # "bottom":F
    .end local v3    # "right":F
    :cond_0
    const/4 v5, 0x0

    goto :goto_0
.end method

.method private setUpSatValRect()V
    .locals 9

    .prologue
    const/high16 v8, 0x3f800000    # 1.0f

    .line 736
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 737
    .local v1, "dRect":Landroid/graphics/RectF;
    invoke-virtual {v1}, Landroid/graphics/RectF;->height()F

    move-result v6

    const/high16 v7, 0x40000000    # 2.0f

    sub-float v3, v6, v7

    .line 739
    .local v3, "panelSide":F
    iget-boolean v6, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v6, :cond_0

    .line 740
    iget v6, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->PANEL_SPACING:F

    iget v7, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v6, v7

    sub-float/2addr v3, v6

    .line 743
    :cond_0
    iget v6, v1, Landroid/graphics/RectF;->left:F

    add-float v2, v6, v8

    .line 744
    .local v2, "left":F
    iget v6, v1, Landroid/graphics/RectF;->top:F

    add-float v5, v6, v8

    .line 745
    .local v5, "top":F
    add-float v0, v5, v3

    .line 746
    .local v0, "bottom":F
    add-float v4, v2, v3

    .line 748
    .local v4, "right":F
    new-instance v6, Landroid/graphics/RectF;

    invoke-direct {v6, v2, v5, v4, v0}, Landroid/graphics/RectF;-><init>(FFFF)V

    iput-object v6, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSatValRect:Landroid/graphics/RectF;

    .line 749
    return-void
.end method


# virtual methods
.method public getAlphaSliderText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 943
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    return-object v0
.end method

.method public getAlphaSliderVisible()Z
    .locals 1

    .prologue
    .line 898
    iget-boolean v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mShowAlphaPanel:Z

    return v0
.end method

.method public getBorderColor()I
    .locals 1

    .prologue
    .line 810
    iget v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mBorderColor:I

    return v0
.end method

.method public getColor()I
    .locals 4

    .prologue
    .line 819
    iget v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlpha:I

    const/4 v1, 0x3

    new-array v1, v1, [F

    const/4 v2, 0x0

    iget v3, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHue:F

    aput v3, v1, v2

    const/4 v2, 0x1

    iget v3, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSat:F

    aput v3, v1, v2

    const/4 v2, 0x2

    iget v3, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mVal:F

    aput v3, v1, v2

    invoke-static {v0, v1}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v0

    return v0
.end method

.method public getDrawingOffset()F
    .locals 1

    .prologue
    .line 868
    iget v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDrawingOffset:F

    return v0
.end method

.method public getSliderTrackerColor()I
    .locals 1

    .prologue
    .line 910
    iget v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSliderTrackerColor:I

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 2
    .param p1, "canvas"    # Landroid/graphics/Canvas;

    .prologue
    const/4 v1, 0x0

    .line 224
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->width()F

    move-result v0

    cmpg-float v0, v0, v1

    if-lez v0, :cond_0

    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    invoke-virtual {v0}, Landroid/graphics/RectF;->height()F

    move-result v0

    cmpg-float v0, v0, v1

    if-gtz v0, :cond_1

    .line 230
    :cond_0
    :goto_0
    return-void

    .line 226
    :cond_1
    invoke-direct {p0, p1}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->drawSatValPanel(Landroid/graphics/Canvas;)V

    .line 227
    invoke-direct {p0, p1}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->drawHuePanel(Landroid/graphics/Canvas;)V

    .line 228
    invoke-direct {p0, p1}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->drawAlphaPanel(Landroid/graphics/Canvas;)V

    goto :goto_0
.end method

.method protected onMeasure(II)V
    .locals 8
    .param p1, "widthMeasureSpec"    # I
    .param p2, "heightMeasureSpec"    # I

    .prologue
    .line 639
    const/4 v3, 0x0

    .line 640
    .local v3, "width":I
    const/4 v0, 0x0

    .line 642
    .local v0, "height":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v5

    .line 643
    .local v5, "widthMode":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getMode(I)I

    move-result v2

    .line 645
    .local v2, "heightMode":I
    invoke-static {p1}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v4

    .line 646
    .local v4, "widthAllowed":I
    invoke-static {p2}, Landroid/view/View$MeasureSpec;->getSize(I)I

    move-result v1

    .line 648
    .local v1, "heightAllowed":I
    invoke-direct {p0, v5, v4}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->chooseWidth(II)I

    move-result v4

    .line 649
    invoke-direct {p0, v2, v1}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->chooseHeight(II)I

    move-result v1

    .line 651
    iget-boolean v6, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mShowAlphaPanel:Z

    if-nez v6, :cond_2

    .line 653
    int-to-float v6, v4

    iget v7, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->PANEL_SPACING:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v6, v7

    float-to-int v0, v6

    .line 656
    if-gt v0, v1, :cond_0

    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->getTag()Ljava/lang/Object;

    move-result-object v6

    const-string v7, "landscape"

    invoke-virtual {v6, v7}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v6

    if-eqz v6, :cond_1

    .line 657
    :cond_0
    move v0, v1

    .line 658
    int-to-float v6, v0

    iget v7, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->PANEL_SPACING:F

    add-float/2addr v6, v7

    iget v7, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 675
    :goto_0
    invoke-virtual {p0, v3, v0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->setMeasuredDimension(II)V

    .line 676
    return-void

    .line 660
    :cond_1
    move v3, v4

    goto :goto_0

    .line 664
    :cond_2
    int-to-float v6, v1

    iget v7, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->HUE_PANEL_WIDTH:F

    add-float/2addr v6, v7

    float-to-int v3, v6

    .line 666
    if-le v3, v4, :cond_3

    .line 667
    move v3, v4

    .line 668
    int-to-float v6, v4

    iget v7, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->HUE_PANEL_WIDTH:F

    sub-float/2addr v6, v7

    iget v7, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->ALPHA_PANEL_HEIGHT:F

    add-float/2addr v6, v7

    float-to-int v0, v6

    goto :goto_0

    .line 670
    :cond_3
    move v0, v1

    goto :goto_0
.end method

.method protected onSizeChanged(IIII)V
    .locals 3
    .param p1, "w"    # I
    .param p2, "h"    # I
    .param p3, "oldw"    # I
    .param p4, "oldh"    # I

    .prologue
    .line 721
    invoke-super {p0, p1, p2, p3, p4}, Landroid/view/View;->onSizeChanged(IIII)V

    .line 723
    new-instance v0, Landroid/graphics/RectF;

    invoke-direct {v0}, Landroid/graphics/RectF;-><init>()V

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    .line 724
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDrawingOffset:F

    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->getPaddingLeft()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->left:F

    .line 725
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float v1, p1

    iget v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->getPaddingRight()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->right:F

    .line 726
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDrawingOffset:F

    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->getPaddingTop()I

    move-result v2

    int-to-float v2, v2

    add-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->top:F

    .line 727
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDrawingRect:Landroid/graphics/RectF;

    int-to-float v1, p2

    iget v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mDrawingOffset:F

    sub-float/2addr v1, v2

    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->getPaddingBottom()I

    move-result v2

    int-to-float v2, v2

    sub-float/2addr v1, v2

    iput v1, v0, Landroid/graphics/RectF;->bottom:F

    .line 729
    invoke-direct {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->setUpSatValRect()V

    .line 730
    invoke-direct {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->setUpHueRect()V

    .line 731
    invoke-direct {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->setUpAlphaRect()V

    .line 732
    return-void
.end method

.method public onTouchEvent(Landroid/view/MotionEvent;)Z
    .locals 7
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v1, 0x1

    .line 555
    const/4 v0, 0x0

    .line 557
    .local v0, "update":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v2

    packed-switch v2, :pswitch_data_0

    .line 583
    :goto_0
    if-eqz v0, :cond_1

    .line 585
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mListener:Lcom/wubydax/romcontrol/prefs/ColorPickerView$OnColorChangedListener;

    if-eqz v2, :cond_0

    .line 586
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mListener:Lcom/wubydax/romcontrol/prefs/ColorPickerView$OnColorChangedListener;

    iget v3, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlpha:I

    const/4 v4, 0x3

    new-array v4, v4, [F

    const/4 v5, 0x0

    iget v6, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHue:F

    aput v6, v4, v5

    iget v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSat:F

    aput v5, v4, v1

    const/4 v5, 0x2

    iget v6, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mVal:F

    aput v6, v4, v5

    invoke-static {v3, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/wubydax/romcontrol/prefs/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 589
    :cond_0
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->invalidate()V

    .line 594
    :goto_1
    return v1

    .line 561
    :pswitch_0
    new-instance v2, Landroid/graphics/Point;

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v3

    float-to-int v3, v3

    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v4

    float-to-int v4, v4

    invoke-direct {v2, v3, v4}, Landroid/graphics/Point;-><init>(II)V

    iput-object v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 563
    invoke-direct {p0, p1}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 565
    goto :goto_0

    .line 569
    :pswitch_1
    invoke-direct {p0, p1}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    .line 571
    goto :goto_0

    .line 575
    :pswitch_2
    const/4 v2, 0x0

    iput-object v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mStartTouchPoint:Landroid/graphics/Point;

    .line 577
    invoke-direct {p0, p1}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->moveTrackersIfNeeded(Landroid/view/MotionEvent;)Z

    move-result v0

    goto :goto_0

    .line 594
    :cond_1
    invoke-super {p0, p1}, Landroid/view/View;->onTouchEvent(Landroid/view/MotionEvent;)Z

    move-result v1

    goto :goto_1

    .line 557
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method public onTrackballEvent(Landroid/view/MotionEvent;)Z
    .locals 14
    .param p1, "event"    # Landroid/view/MotionEvent;

    .prologue
    const/4 v7, 0x1

    const/high16 v13, 0x42480000    # 50.0f

    const/high16 v12, 0x41200000    # 10.0f

    const/high16 v11, 0x3f800000    # 1.0f

    const/4 v10, 0x0

    .line 459
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getX()F

    move-result v5

    .line 460
    .local v5, "x":F
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getY()F

    move-result v6

    .line 462
    .local v6, "y":F
    const/4 v3, 0x0

    .line 465
    .local v3, "update":Z
    invoke-virtual {p1}, Landroid/view/MotionEvent;->getAction()I

    move-result v8

    const/4 v9, 0x2

    if-ne v8, v9, :cond_0

    .line 467
    iget v8, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mLastTouchedPanel:I

    packed-switch v8, :pswitch_data_0

    .line 538
    :cond_0
    :goto_0
    if-eqz v3, :cond_c

    .line 540
    iget-object v8, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mListener:Lcom/wubydax/romcontrol/prefs/ColorPickerView$OnColorChangedListener;

    if-eqz v8, :cond_1

    .line 541
    iget-object v8, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mListener:Lcom/wubydax/romcontrol/prefs/ColorPickerView$OnColorChangedListener;

    iget v9, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlpha:I

    const/4 v10, 0x3

    new-array v10, v10, [F

    const/4 v11, 0x0

    iget v12, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHue:F

    aput v12, v10, v11

    iget v11, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSat:F

    aput v11, v10, v7

    const/4 v11, 0x2

    iget v12, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mVal:F

    aput v12, v10, v11

    invoke-static {v9, v10}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v9

    invoke-interface {v8, v9}, Lcom/wubydax/romcontrol/prefs/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 544
    :cond_1
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->invalidate()V

    .line 549
    :goto_1
    return v7

    .line 473
    :pswitch_0
    iget v8, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSat:F

    div-float v9, v5, v13

    add-float v2, v8, v9

    .line 474
    .local v2, "sat":F
    iget v8, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mVal:F

    div-float v9, v6, v13

    sub-float v4, v8, v9

    .line 476
    .local v4, "val":F
    cmpg-float v8, v2, v10

    if-gez v8, :cond_4

    .line 477
    const/4 v2, 0x0

    .line 482
    :cond_2
    :goto_2
    cmpg-float v8, v4, v10

    if-gez v8, :cond_5

    .line 483
    const/4 v4, 0x0

    .line 488
    :cond_3
    :goto_3
    iput v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSat:F

    .line 489
    iput v4, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mVal:F

    .line 491
    const/4 v3, 0x1

    .line 493
    goto :goto_0

    .line 478
    :cond_4
    cmpl-float v8, v2, v11

    if-lez v8, :cond_2

    .line 479
    const/high16 v2, 0x3f800000    # 1.0f

    goto :goto_2

    .line 484
    :cond_5
    cmpl-float v8, v4, v11

    if-lez v8, :cond_3

    .line 485
    const/high16 v4, 0x3f800000    # 1.0f

    goto :goto_3

    .line 497
    .end local v2    # "sat":F
    .end local v4    # "val":F
    :pswitch_1
    iget v8, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHue:F

    mul-float v9, v6, v12

    sub-float v1, v8, v9

    .line 499
    .local v1, "hue":F
    cmpg-float v8, v1, v10

    if-gez v8, :cond_7

    .line 500
    const/4 v1, 0x0

    .line 505
    :cond_6
    :goto_4
    iput v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHue:F

    .line 507
    const/4 v3, 0x1

    .line 509
    goto :goto_0

    .line 501
    :cond_7
    const/high16 v8, 0x43b40000    # 360.0f

    cmpl-float v8, v1, v8

    if-lez v8, :cond_6

    .line 502
    const/high16 v1, 0x43b40000    # 360.0f

    goto :goto_4

    .line 513
    .end local v1    # "hue":F
    :pswitch_2
    iget-boolean v8, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mShowAlphaPanel:Z

    if-eqz v8, :cond_8

    iget-object v8, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaRect:Landroid/graphics/RectF;

    if-nez v8, :cond_9

    .line 514
    :cond_8
    const/4 v3, 0x0

    goto :goto_0

    .line 517
    :cond_9
    iget v8, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlpha:I

    int-to-float v8, v8

    mul-float v9, v5, v12

    sub-float/2addr v8, v9

    float-to-int v0, v8

    .line 519
    .local v0, "alpha":I
    if-gez v0, :cond_b

    .line 520
    const/4 v0, 0x0

    .line 525
    :cond_a
    :goto_5
    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlpha:I

    .line 528
    const/4 v3, 0x1

    goto :goto_0

    .line 521
    :cond_b
    const/16 v8, 0xff

    if-le v0, v8, :cond_a

    .line 522
    const/16 v0, 0xff

    goto :goto_5

    .line 549
    .end local v0    # "alpha":I
    :cond_c
    invoke-super {p0, p1}, Landroid/view/View;->onTrackballEvent(Landroid/view/MotionEvent;)Z

    move-result v7

    goto :goto_1

    .line 467
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method

.method public setAlphaSliderText(I)V
    .locals 2
    .param p1, "res"    # I

    .prologue
    .line 920
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v0

    .line 921
    .local v0, "text":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->setAlphaSliderText(Ljava/lang/String;)V

    .line 922
    return-void
.end method

.method public setAlphaSliderText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 931
    iput-object p1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaSliderText:Ljava/lang/String;

    .line 932
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->invalidate()V

    .line 933
    return-void
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 2
    .param p1, "visible"    # Z

    .prologue
    const/4 v1, 0x0

    .line 879
    iget-boolean v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mShowAlphaPanel:Z

    if-eq v0, p1, :cond_0

    .line 880
    iput-boolean p1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mShowAlphaPanel:Z

    .line 887
    iput-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mValShader:Landroid/graphics/Shader;

    .line 888
    iput-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSatShader:Landroid/graphics/Shader;

    .line 889
    iput-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHueShader:Landroid/graphics/Shader;

    .line 890
    iput-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlphaShader:Landroid/graphics/Shader;

    .line 892
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->requestLayout()V

    .line 895
    :cond_0
    return-void
.end method

.method public setBorderColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 802
    iput p1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mBorderColor:I

    .line 803
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->invalidate()V

    .line 804
    return-void
.end method

.method public setColor(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 828
    const/4 v0, 0x0

    invoke-virtual {p0, p1, v0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->setColor(IZ)V

    .line 829
    return-void
.end method

.method public setColor(IZ)V
    .locals 9
    .param p1, "color"    # I
    .param p2, "callback"    # Z

    .prologue
    const/4 v4, 0x3

    const/4 v8, 0x2

    const/4 v7, 0x1

    const/4 v6, 0x0

    .line 840
    invoke-static {p1}, Landroid/graphics/Color;->alpha(I)I

    move-result v0

    .line 842
    .local v0, "alpha":I
    new-array v1, v4, [F

    .line 844
    .local v1, "hsv":[F
    invoke-static {p1, v1}, Landroid/graphics/Color;->colorToHSV(I[F)V

    .line 846
    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlpha:I

    .line 847
    aget v2, v1, v6

    iput v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHue:F

    .line 848
    aget v2, v1, v7

    iput v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSat:F

    .line 849
    aget v2, v1, v8

    iput v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mVal:F

    .line 851
    if-eqz p2, :cond_0

    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mListener:Lcom/wubydax/romcontrol/prefs/ColorPickerView$OnColorChangedListener;

    if-eqz v2, :cond_0

    .line 852
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mListener:Lcom/wubydax/romcontrol/prefs/ColorPickerView$OnColorChangedListener;

    iget v3, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mAlpha:I

    new-array v4, v4, [F

    iget v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHue:F

    aput v5, v4, v6

    iget v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSat:F

    aput v5, v4, v7

    iget v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mVal:F

    aput v5, v4, v8

    invoke-static {v3, v4}, Landroid/graphics/Color;->HSVToColor(I[F)I

    move-result v3

    invoke-interface {v2, v3}, Lcom/wubydax/romcontrol/prefs/ColorPickerView$OnColorChangedListener;->onColorChanged(I)V

    .line 855
    :cond_0
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->invalidate()V

    .line 856
    return-void
.end method

.method public setOnColorChangedListener(Lcom/wubydax/romcontrol/prefs/ColorPickerView$OnColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/wubydax/romcontrol/prefs/ColorPickerView$OnColorChangedListener;

    .prologue
    .line 793
    iput-object p1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mListener:Lcom/wubydax/romcontrol/prefs/ColorPickerView$OnColorChangedListener;

    .line 794
    return-void
.end method

.method public setSliderTrackerColor(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 902
    iput p1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSliderTrackerColor:I

    .line 904
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mHueTrackerPaint:Landroid/graphics/Paint;

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->mSliderTrackerColor:I

    invoke-virtual {v0, v1}, Landroid/graphics/Paint;->setColor(I)V

    .line 906
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->invalidate()V

    .line 907
    return-void
.end method
