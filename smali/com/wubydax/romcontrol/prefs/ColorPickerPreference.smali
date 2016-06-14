.class public Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;
.super Landroid/preference/Preference;
.source "ColorPickerPreference.java"

# interfaces
.implements Landroid/preference/Preference$OnPreferenceClickListener;
.implements Lcom/wubydax/romcontrol/prefs/ColorPickerDialog$OnColorChangedListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wubydax/romcontrol/prefs/ColorPickerPreference$SavedState;
    }
.end annotation


# instance fields
.field private dialog_bg:I

.field private mAlphaSliderEnabled:Z

.field private mDensity:F

.field mDialog:Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;

.field private mHexValueEnabled:Z

.field private mValue:I

.field mView:Landroid/view/View;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0, p1}, Landroid/preference/Preference;-><init>(Landroid/content/Context;)V

    .line 52
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mValue:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mDensity:F

    .line 54
    iput-boolean v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 55
    iput-boolean v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mHexValueEnabled:Z

    .line 60
    const/4 v0, 0x0

    invoke-direct {p0, p1, v0}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 61
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v1, 0x0

    .line 64
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 52
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mValue:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mDensity:F

    .line 54
    iput-boolean v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 55
    iput-boolean v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mHexValueEnabled:Z

    .line 65
    invoke-direct {p0, p1, p2}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 66
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v1, 0x0

    .line 69
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 52
    const/high16 v0, -0x1000000

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mValue:I

    .line 53
    const/4 v0, 0x0

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mDensity:F

    .line 54
    iput-boolean v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 55
    iput-boolean v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mHexValueEnabled:Z

    .line 70
    invoke-direct {p0, p1, p2}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->init(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 71
    return-void
.end method

.method public static convertToARGB(I)Ljava/lang/String;
    .locals 7
    .param p0, "color"    # I

    .prologue
    const/4 v6, 0x1

    .line 239
    invoke-static {p0}, Landroid/graphics/Color;->alpha(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 240
    .local v0, "alpha":Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v3

    .line 241
    .local v3, "red":Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 242
    .local v2, "green":Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v4

    invoke-static {v4}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 244
    .local v1, "blue":Ljava/lang/String;
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_0

    .line 245
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 248
    :cond_0
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_1

    .line 249
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .line 252
    :cond_1
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_2

    .line 253
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 256
    :cond_2
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v4

    if-ne v4, v6, :cond_3

    .line 257
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "0"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 260
    :cond_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "#"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    return-object v4
.end method

.method public static convertToColorInt(Ljava/lang/String;)I
    .locals 2
    .param p0, "argb"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 300
    const-string v0, "#"

    invoke-virtual {p0, v0}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 301
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "#"

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 304
    :cond_0
    invoke-static {p0}, Landroid/graphics/Color;->parseColor(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public static convertToRGB(I)Ljava/lang/String;
    .locals 6
    .param p0, "color"    # I

    .prologue
    const/4 v5, 0x1

    .line 272
    invoke-static {p0}, Landroid/graphics/Color;->red(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v2

    .line 273
    .local v2, "red":Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/Color;->green(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v1

    .line 274
    .local v1, "green":Ljava/lang/String;
    invoke-static {p0}, Landroid/graphics/Color;->blue(I)I

    move-result v3

    invoke-static {v3}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v0

    .line 276
    .local v0, "blue":Ljava/lang/String;
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_0

    .line 277
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 280
    :cond_0
    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_1

    .line 281
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 284
    :cond_1
    invoke-virtual {v0}, Ljava/lang/String;->length()I

    move-result v3

    if-ne v3, v5, :cond_2

    .line 285
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "0"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 288
    :cond_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "#"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method private getPreviewBitmap()Landroid/graphics/Bitmap;
    .locals 11

    .prologue
    const/4 v10, 0x1

    .line 150
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v8

    invoke-virtual {v8}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v8

    const v9, 0x7f090044

    invoke-virtual {v8, v9}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v8

    invoke-static {v8}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 151
    .local v3, "d":I
    iget v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mValue:I

    .line 152
    .local v2, "color":I
    sget-object v8, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v3, v3, v8}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 153
    .local v0, "bm":Landroid/graphics/Bitmap;
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v7

    .line 154
    .local v7, "w":I
    invoke-virtual {v0}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v4

    .line 155
    .local v4, "h":I
    move v1, v2

    .line 156
    .local v1, "c":I
    const/4 v5, 0x0

    .end local v2    # "color":I
    .local v5, "i":I
    :goto_0
    if-ge v5, v7, :cond_4

    .line 157
    move v6, v5

    .local v6, "j":I
    :goto_1
    if-ge v6, v4, :cond_3

    .line 159
    if-le v5, v10, :cond_0

    if-le v6, v10, :cond_0

    add-int/lit8 v8, v7, -0x2

    if-ge v5, v8, :cond_0

    add-int/lit8 v8, v4, -0x2

    if-lt v6, v8, :cond_2

    :cond_0
    move v1, v2

    .line 160
    .local v1, "c":I
    .local v1, "color":I
    :goto_2
    invoke-virtual {v0, v5, v6, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 161
    if-eq v5, v6, :cond_1

    .line 162
    invoke-virtual {v0, v6, v5, v1}, Landroid/graphics/Bitmap;->setPixel(III)V

    .line 157
    :cond_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_1

    :cond_2
    move v1, v2

    .line 159
    .local v1, "color":I
    goto :goto_2

    .line 156
    .local v1, "c":I
    :cond_3
    add-int/lit8 v5, v5, 0x1

    goto :goto_0

    .line 168
    .end local v6    # "j":I
    :cond_4
    return-object v0
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    invoke-virtual {v0}, Landroid/content/res/Resources;->getDisplayMetrics()Landroid/util/DisplayMetrics;

    move-result-object v0

    iget v0, v0, Landroid/util/DisplayMetrics;->density:F

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mDensity:F

    .line 94
    invoke-virtual {p0, p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 95
    if-eqz p2, :cond_0

    .line 96
    const-string v0, "alphaSlider"

    invoke-interface {p2, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 97
    const-string v0, "hexValue"

    invoke-interface {p2, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mHexValueEnabled:Z

    .line 100
    :cond_0
    return-void
.end method

.method private setPreviewColor()V
    .locals 11

    .prologue
    const/4 v10, 0x0

    .line 111
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090044

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 112
    .local v3, "size":I
    iget-object v6, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mView:Landroid/view/View;

    if-nez v6, :cond_1

    .line 147
    :cond_0
    :goto_0
    return-void

    .line 113
    :cond_1
    new-instance v1, Landroid/widget/ImageView;

    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-direct {v1, v6}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 114
    .local v1, "iView":Landroid/widget/ImageView;
    iget-object v6, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mView:Landroid/view/View;

    const v7, 0x1020018

    invoke-virtual {v6, v7}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v5

    check-cast v5, Landroid/widget/LinearLayout;

    .line 115
    .local v5, "widgetFrameView":Landroid/widget/LinearLayout;
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, v3, v3}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 116
    .local v2, "params":Landroid/widget/LinearLayout$LayoutParams;
    const/16 v6, 0x11

    iput v6, v2, Landroid/widget/LinearLayout$LayoutParams;->gravity:I

    .line 117
    invoke-virtual {v1, v2}, Landroid/widget/ImageView;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 119
    if-eqz v5, :cond_0

    .line 120
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setVisibility(I)V

    .line 121
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingLeft()I

    move-result v6

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingTop()I

    move-result v7

    iget v8, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mDensity:F

    const/high16 v9, 0x41000000    # 8.0f

    mul-float/2addr v8, v9

    float-to-int v8, v8

    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getPaddingBottom()I

    move-result v9

    invoke-virtual {v5, v6, v7, v8, v9}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 128
    invoke-virtual {v5}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result v0

    .line 129
    .local v0, "count":I
    if-lez v0, :cond_2

    .line 130
    invoke-virtual {v5, v10, v0}, Landroid/widget/LinearLayout;->removeViews(II)V

    .line 132
    :cond_2
    invoke-virtual {v5, v1}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;)V

    .line 133
    invoke-virtual {v5, v10}, Landroid/widget/LinearLayout;->setMinimumWidth(I)V

    .line 134
    new-instance v6, Lcom/wubydax/romcontrol/prefs/AlphaPatternDrawable;

    const/high16 v7, 0x40a00000    # 5.0f

    iget v8, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mDensity:F

    mul-float/2addr v7, v8

    float-to-int v7, v7

    invoke-direct {v6, v7}, Lcom/wubydax/romcontrol/prefs/AlphaPatternDrawable;-><init>(I)V

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setBackgroundDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 135
    invoke-direct {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->getPreviewBitmap()Landroid/graphics/Bitmap;

    move-result-object v6

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 137
    new-instance v4, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference$1;

    invoke-direct {v4, p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference$1;-><init>(Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;)V

    .line 145
    .local v4, "viewOutlineProvider":Landroid/view/ViewOutlineProvider;
    invoke-virtual {v1, v4}, Landroid/widget/ImageView;->setOutlineProvider(Landroid/view/ViewOutlineProvider;)V

    .line 146
    const/4 v6, 0x1

    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setClipToOutline(Z)V

    goto :goto_0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 105
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 106
    iput-object p1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mView:Landroid/view/View;

    .line 107
    invoke-direct {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->setPreviewColor()V

    .line 108
    return-void
.end method

.method public onColorChanged(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 173
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->isPersistent()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 174
    invoke-virtual {p0, p1}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->persistInt(I)Z

    .line 176
    :cond_0
    iput p1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mValue:I

    .line 177
    invoke-direct {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->setPreviewColor()V

    .line 179
    :try_start_0
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->getOnPreferenceChangeListener()Landroid/preference/Preference$OnPreferenceChangeListener;

    move-result-object v0

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-interface {v0, p0, v1}, Landroid/preference/Preference$OnPreferenceChangeListener;->onPreferenceChange(Landroid/preference/Preference;Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_0

    .line 183
    :goto_0
    return-void

    .line 180
    :catch_0
    move-exception v0

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 3
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 78
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v1

    .line 79
    .local v1, "mHexDefaultValue":Ljava/lang/String;
    if-eqz v1, :cond_0

    const-string v2, "#"

    invoke-virtual {v1, v2}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 80
    invoke-static {v1}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v0

    .line 81
    .local v0, "colorInt":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    .line 83
    .end local v0    # "colorInt":I
    :goto_0
    return-object v2

    :cond_0
    const/high16 v2, -0x1000000

    invoke-virtual {p1, p2, v2}, Landroid/content/res/TypedArray;->getColor(II)I

    move-result v2

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    goto :goto_0
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 1
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 192
    const/4 v0, 0x0

    invoke-virtual {p0, v0}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->showDialog(Landroid/os/Bundle;)V

    .line 193
    const/4 v0, 0x0

    return v0
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 2
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 321
    if-eqz p1, :cond_0

    instance-of v1, p1, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference$SavedState;

    if-nez v1, :cond_1

    .line 323
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 330
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 327
    check-cast v0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference$SavedState;

    .line 328
    .local v0, "myState":Lcom/wubydax/romcontrol/prefs/ColorPickerPreference$SavedState;
    invoke-virtual {v0}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/Preference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 329
    iget-object v1, v0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    invoke-virtual {p0, v1}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->showDialog(Landroid/os/Bundle;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 309
    invoke-super {p0}, Landroid/preference/Preference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 310
    .local v1, "superState":Landroid/os/Parcelable;
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mDialog:Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;

    if-eqz v2, :cond_0

    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mDialog:Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;

    invoke-virtual {v2}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->isShowing()Z

    move-result v2

    if-nez v2, :cond_1

    :cond_0
    move-object v0, v1

    .line 316
    :goto_0
    return-object v0

    .line 314
    :cond_1
    new-instance v0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 315
    .local v0, "myState":Lcom/wubydax/romcontrol/prefs/ColorPickerPreference$SavedState;
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mDialog:Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;

    invoke-virtual {v2}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v2

    iput-object v2, v0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference$SavedState;->dialogBundle:Landroid/os/Bundle;

    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 89
    if-eqz p1, :cond_0

    iget v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mValue:I

    invoke-virtual {p0, v0}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->getPersistedInt(I)I

    move-result v0

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, v0}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->onColorChanged(I)V

    .line 90
    return-void

    .line 89
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I

    move-result v0

    goto :goto_0
.end method

.method public setAlphaSliderEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 220
    iput-boolean p1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mAlphaSliderEnabled:Z

    .line 221
    return-void
.end method

.method public setColor(I)V
    .locals 0
    .param p1, "color"    # I

    .prologue
    .line 187
    iput p1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mValue:I

    .line 188
    invoke-direct {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->setPreviewColor()V

    .line 189
    return-void
.end method

.method public setHexValueEnabled(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 229
    iput-boolean p1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mHexValueEnabled:Z

    .line 230
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 4
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v3, 0x1

    .line 197
    new-instance v0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;

    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    iget v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mValue:I

    invoke-direct {v0, v1, v2}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;-><init>(Landroid/content/Context;I)V

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mDialog:Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;

    .line 198
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mDialog:Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;

    invoke-virtual {v0, p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->setOnColorChangedListener(Lcom/wubydax/romcontrol/prefs/ColorPickerDialog$OnColorChangedListener;)V

    .line 199
    iget-boolean v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mAlphaSliderEnabled:Z

    if-eqz v0, :cond_0

    .line 200
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mDialog:Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;

    invoke-virtual {v0, v3}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->setAlphaSliderVisible(Z)V

    .line 202
    :cond_0
    iget-boolean v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mHexValueEnabled:Z

    if-eqz v0, :cond_1

    .line 203
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mDialog:Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;

    invoke-virtual {v0, v3}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->setHexValueEnabled(Z)V

    .line 205
    :cond_1
    if-eqz p1, :cond_2

    .line 206
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mDialog:Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;

    invoke-virtual {v0, p1}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 208
    :cond_2
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mDialog:Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->show()V

    .line 210
    const v0, 0x7f02003b

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->dialog_bg:I

    .line 211
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->mDialog:Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;

    invoke-virtual {v0}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->dialog_bg:I

    invoke-virtual {v0, v1}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 212
    return-void
.end method
