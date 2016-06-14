.class public Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;
.super Landroid/app/Dialog;
.source "ColorPickerDialog.java"

# interfaces
.implements Lcom/wubydax/romcontrol/prefs/ColorPickerView$OnColorChangedListener;
.implements Landroid/view/View$OnClickListener;
.implements Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wubydax/romcontrol/prefs/ColorPickerDialog$OnColorChangedListener;
    }
.end annotation


# instance fields
.field private mColorPicker:Lcom/wubydax/romcontrol/prefs/ColorPickerView;

.field private mHexDefaultTextColor:Landroid/content/res/ColorStateList;

.field private mHexVal:Landroid/widget/EditText;

.field private mHexValueEnabled:Z

.field private mLayout:Landroid/view/View;

.field private mListener:Lcom/wubydax/romcontrol/prefs/ColorPickerDialog$OnColorChangedListener;

.field private mNewColor:Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;

.field private mOldColor:Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;

.field private mOrientation:I


# direct methods
.method public constructor <init>(Landroid/content/Context;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "initialColor"    # I

    .prologue
    .line 78
    invoke-direct {p0, p1}, Landroid/app/Dialog;-><init>(Landroid/content/Context;)V

    .line 54
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexValueEnabled:Z

    .line 80
    invoke-direct {p0, p2}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->init(I)V

    .line 81
    return-void
.end method

.method static synthetic access$000(Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;)Landroid/widget/EditText;
    .locals 1
    .param p0, "x0"    # Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    return-object v0
.end method

.method static synthetic access$100(Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;)Lcom/wubydax/romcontrol/prefs/ColorPickerView;
    .locals 1
    .param p0, "x0"    # Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mColorPicker:Lcom/wubydax/romcontrol/prefs/ColorPickerView;

    return-object v0
.end method

.method static synthetic access$200(Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;)Landroid/content/res/ColorStateList;
    .locals 1
    .param p0, "x0"    # Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;

    .prologue
    .line 41
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    return-object v0
.end method

.method private init(I)V
    .locals 2
    .param p1, "color"    # I

    .prologue
    .line 85
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->getWindow()Landroid/view/Window;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/Window;->setFormat(I)V

    .line 87
    invoke-direct {p0, p1}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->setUp(I)V

    .line 89
    return-void
.end method

.method private setUp(I)V
    .locals 5
    .param p1, "color"    # I

    .prologue
    const/4 v4, 0x0

    .line 93
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    const-string v2, "layout_inflater"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/view/LayoutInflater;

    .line 95
    .local v0, "inflater":Landroid/view/LayoutInflater;
    const v1, 0x7f04001b

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    iput-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mLayout:Landroid/view/View;

    .line 96
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mLayout:Landroid/view/View;

    invoke-virtual {v1}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    invoke-virtual {v1, p0}, Landroid/view/ViewTreeObserver;->addOnGlobalLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 98
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v1

    iget v1, v1, Landroid/content/res/Configuration;->orientation:I

    iput v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mOrientation:I

    .line 99
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mLayout:Landroid/view/View;

    invoke-virtual {p0, v1}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->setContentView(Landroid/view/View;)V

    .line 101
    const v1, 0x7f080015

    invoke-virtual {p0, v1}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->setTitle(I)V

    .line 103
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mLayout:Landroid/view/View;

    const v2, 0x7f0f0063

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/wubydax/romcontrol/prefs/ColorPickerView;

    iput-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mColorPicker:Lcom/wubydax/romcontrol/prefs/ColorPickerView;

    .line 104
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mLayout:Landroid/view/View;

    const v2, 0x7f0f0066

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;

    iput-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mOldColor:Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;

    .line 105
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mLayout:Landroid/view/View;

    const v2, 0x7f0f0067

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;

    iput-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mNewColor:Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;

    .line 107
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mLayout:Landroid/view/View;

    const v2, 0x7f0f0065

    invoke-virtual {v1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/EditText;

    iput-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    .line 108
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    const/high16 v2, 0x80000

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setInputType(I)V

    .line 109
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-virtual {v1}, Landroid/widget/EditText;->getTextColors()Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    .line 111
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-instance v2, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog$1;

    invoke-direct {v2, p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog$1;-><init>(Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;)V

    invoke-virtual {v1, v2}, Landroid/widget/EditText;->setOnEditorActionListener(Landroid/widget/TextView$OnEditorActionListener;)V

    .line 136
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mOldColor:Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;

    invoke-virtual {v1}, Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    check-cast v1, Landroid/widget/LinearLayout;

    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mColorPicker:Lcom/wubydax/romcontrol/prefs/ColorPickerView;

    invoke-virtual {v2}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->getDrawingOffset()F

    move-result v2

    invoke-static {v2}, Ljava/lang/Math;->round(F)I

    move-result v2

    iget-object v3, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mColorPicker:Lcom/wubydax/romcontrol/prefs/ColorPickerView;

    invoke-virtual {v3}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->getDrawingOffset()F

    move-result v3

    invoke-static {v3}, Ljava/lang/Math;->round(F)I

    move-result v3

    invoke-virtual {v1, v2, v4, v3, v4}, Landroid/widget/LinearLayout;->setPadding(IIII)V

    .line 143
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mOldColor:Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;

    invoke-virtual {v1, p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 144
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mNewColor:Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;

    invoke-virtual {v1, p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 145
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mColorPicker:Lcom/wubydax/romcontrol/prefs/ColorPickerView;

    invoke-virtual {v1, p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->setOnColorChangedListener(Lcom/wubydax/romcontrol/prefs/ColorPickerView$OnColorChangedListener;)V

    .line 146
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mOldColor:Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;

    invoke-virtual {v1, p1}, Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;->setColor(I)V

    .line 147
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mColorPicker:Lcom/wubydax/romcontrol/prefs/ColorPickerView;

    const/4 v2, 0x1

    invoke-virtual {v1, p1, v2}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->setColor(IZ)V

    .line 149
    return-void
.end method

.method private updateHexLengthFilter()V
    .locals 5

    .prologue
    const/4 v1, 0x1

    const/4 v4, 0x0

    .line 182
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->getAlphaSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 183
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/16 v3, 0x9

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    .line 186
    :goto_0
    return-void

    .line 185
    :cond_0
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    new-array v1, v1, [Landroid/text/InputFilter;

    new-instance v2, Landroid/text/InputFilter$LengthFilter;

    const/4 v3, 0x7

    invoke-direct {v2, v3}, Landroid/text/InputFilter$LengthFilter;-><init>(I)V

    aput-object v2, v1, v4

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setFilters([Landroid/text/InputFilter;)V

    goto :goto_0
.end method

.method private updateHexValue(I)V
    .locals 3
    .param p1, "color"    # I

    .prologue
    .line 189
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->getAlphaSliderVisible()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 190
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->convertToARGB(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    .line 194
    :goto_0
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V

    .line 195
    return-void

    .line 192
    :cond_0
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    invoke-static {p1}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->convertToRGB(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/String;->toUpperCase(Ljava/util/Locale;)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setText(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method


# virtual methods
.method public getAlphaSliderVisible()Z
    .locals 1

    .prologue
    .line 206
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mColorPicker:Lcom/wubydax/romcontrol/prefs/ColorPickerView;

    invoke-virtual {v0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->getAlphaSliderVisible()Z

    move-result v0

    return v0
.end method

.method public getColor()I
    .locals 1

    .prologue
    .line 220
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mColorPicker:Lcom/wubydax/romcontrol/prefs/ColorPickerView;

    invoke-virtual {v0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->getColor()I

    move-result v0

    return v0
.end method

.method public getHexValueEnabled()Z
    .locals 1

    .prologue
    .line 178
    iget-boolean v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexValueEnabled:Z

    return v0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 225
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    const v1, 0x7f0f0067

    if-ne v0, v1, :cond_0

    .line 226
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mListener:Lcom/wubydax/romcontrol/prefs/ColorPickerDialog$OnColorChangedListener;

    if-eqz v0, :cond_0

    .line 227
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mListener:Lcom/wubydax/romcontrol/prefs/ColorPickerDialog$OnColorChangedListener;

    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mNewColor:Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;

    invoke-virtual {v1}, Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;->getColor()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog$OnColorChangedListener;->onColorChanged(I)V

    .line 230
    :cond_0
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->dismiss()V

    .line 231
    return-void
.end method

.method public onColorChanged(I)V
    .locals 1
    .param p1, "color"    # I

    .prologue
    .line 154
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mNewColor:Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;

    invoke-virtual {v0, p1}, Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;->setColor(I)V

    .line 156
    iget-boolean v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexValueEnabled:Z

    if-eqz v0, :cond_0

    .line 157
    invoke-direct {p0, p1}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->updateHexValue(I)V

    .line 165
    :cond_0
    return-void
.end method

.method public onGlobalLayout()V
    .locals 4

    .prologue
    .line 63
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    iget v2, v2, Landroid/content/res/Configuration;->orientation:I

    iget v3, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mOrientation:I

    if-eq v2, v3, :cond_0

    .line 64
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mOldColor:Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;

    invoke-virtual {v2}, Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;->getColor()I

    move-result v1

    .line 65
    .local v1, "oldcolor":I
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mNewColor:Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;

    invoke-virtual {v2}, Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;->getColor()I

    move-result v0

    .line 66
    .local v0, "newcolor":I
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mLayout:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v2

    invoke-virtual {v2, p0}, Landroid/view/ViewTreeObserver;->removeGlobalOnLayoutListener(Landroid/view/ViewTreeObserver$OnGlobalLayoutListener;)V

    .line 67
    invoke-direct {p0, v1}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->setUp(I)V

    .line 68
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mNewColor:Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;

    invoke-virtual {v2, v0}, Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;->setColor(I)V

    .line 69
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mColorPicker:Lcom/wubydax/romcontrol/prefs/ColorPickerView;

    invoke-virtual {v2, v0}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->setColor(I)V

    .line 71
    .end local v0    # "newcolor":I
    .end local v1    # "oldcolor":I
    :cond_0
    return-void
.end method

.method public onRestoreInstanceState(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 243
    invoke-super {p0, p1}, Landroid/app/Dialog;->onRestoreInstanceState(Landroid/os/Bundle;)V

    .line 244
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mOldColor:Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;

    const-string v1, "old_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    invoke-virtual {v0, v1}, Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;->setColor(I)V

    .line 245
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mColorPicker:Lcom/wubydax/romcontrol/prefs/ColorPickerView;

    const-string v1, "new_color"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->setColor(IZ)V

    .line 246
    return-void
.end method

.method public onSaveInstanceState()Landroid/os/Bundle;
    .locals 3

    .prologue
    .line 235
    invoke-super {p0}, Landroid/app/Dialog;->onSaveInstanceState()Landroid/os/Bundle;

    move-result-object v0

    .line 236
    .local v0, "state":Landroid/os/Bundle;
    const-string v1, "old_color"

    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mOldColor:Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;

    invoke-virtual {v2}, Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 237
    const-string v1, "new_color"

    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mNewColor:Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;

    invoke-virtual {v2}, Lcom/wubydax/romcontrol/prefs/ColorPickerPanelView;->getColor()I

    move-result v2

    invoke-virtual {v0, v1, v2}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 238
    return-object v0
.end method

.method public setAlphaSliderVisible(Z)V
    .locals 1
    .param p1, "visible"    # Z

    .prologue
    .line 198
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mColorPicker:Lcom/wubydax/romcontrol/prefs/ColorPickerView;

    invoke-virtual {v0, p1}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->setAlphaSliderVisible(Z)V

    .line 199
    iget-boolean v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexValueEnabled:Z

    if-eqz v0, :cond_0

    .line 200
    invoke-direct {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->updateHexLengthFilter()V

    .line 201
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->updateHexValue(I)V

    .line 203
    :cond_0
    return-void
.end method

.method public setHexValueEnabled(Z)V
    .locals 2
    .param p1, "enable"    # Z

    .prologue
    .line 168
    iput-boolean p1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexValueEnabled:Z

    .line 169
    if-eqz p1, :cond_0

    .line 170
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    .line 171
    invoke-direct {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->updateHexLengthFilter()V

    .line 172
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->getColor()I

    move-result v0

    invoke-direct {p0, v0}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->updateHexValue(I)V

    .line 175
    :goto_0
    return-void

    .line 174
    :cond_0
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->setVisibility(I)V

    goto :goto_0
.end method

.method public setOnColorChangedListener(Lcom/wubydax/romcontrol/prefs/ColorPickerDialog$OnColorChangedListener;)V
    .locals 0
    .param p1, "listener"    # Lcom/wubydax/romcontrol/prefs/ColorPickerDialog$OnColorChangedListener;

    .prologue
    .line 216
    iput-object p1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mListener:Lcom/wubydax/romcontrol/prefs/ColorPickerDialog$OnColorChangedListener;

    .line 217
    return-void
.end method
