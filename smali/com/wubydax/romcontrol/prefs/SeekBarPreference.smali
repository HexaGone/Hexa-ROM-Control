.class public Lcom/wubydax/romcontrol/prefs/SeekBarPreference;
.super Landroid/preference/Preference;
.source "SeekBarPreference.java"

# interfaces
.implements Landroid/widget/SeekBar$OnSeekBarChangeListener;


# static fields
.field private static final DEFAULT_VALUE:I = 0x32


# instance fields
.field private mCurrentValue:I

.field private mInterval:I

.field private mMaxValue:I

.field private mMinValue:I

.field private mSeekBar:Landroid/widget/SeekBar;

.field private mStatusText:Landroid/widget/TextView;

.field private mUnitsLeft:Ljava/lang/String;

.field private mUnitsRight:Ljava/lang/String;

.field private units:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 31
    invoke-direct {p0, p1, p2}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 20
    const/16 v0, 0x64

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mMaxValue:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mMinValue:I

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mInterval:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->units:Ljava/lang/String;

    .line 32
    invoke-direct {p0, p1, p2}, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 36
    invoke-direct {p0, p1, p2, p3}, Landroid/preference/Preference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 20
    const/16 v0, 0x64

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mMaxValue:I

    .line 21
    const/4 v0, 0x0

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mMinValue:I

    .line 22
    const/4 v0, 0x1

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mInterval:I

    .line 24
    const-string v0, ""

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    .line 25
    const-string v0, ""

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    .line 26
    const-string v0, ""

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->units:Ljava/lang/String;

    .line 38
    invoke-direct {p0, p1, p2}, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 39
    return-void
.end method

.method private getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "namespace"    # Ljava/lang/String;
    .param p3, "name"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 68
    invoke-interface {p1, p2, p3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 69
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 70
    move-object v0, p4

    .line 71
    :cond_0
    return-object v0
.end method

.method private initPreference(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 42
    invoke-direct {p0, p2}, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->setValuesFromXml(Landroid/util/AttributeSet;)V

    .line 43
    const v0, 0x7f040022

    invoke-virtual {p0, v0}, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->setLayoutResource(I)V

    .line 44
    new-instance v0, Landroid/widget/SeekBar;

    invoke-direct {v0, p1, p2}, Landroid/widget/SeekBar;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    .line 45
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mMaxValue:I

    iget v2, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mMinValue:I

    sub-int/2addr v1, v2

    invoke-virtual {v0, v1}, Landroid/widget/SeekBar;->setMax(I)V

    .line 46
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p0}, Landroid/widget/SeekBar;->setOnSeekBarChangeListener(Landroid/widget/SeekBar$OnSeekBarChangeListener;)V

    .line 47
    const v0, 0x7f040023

    invoke-virtual {p0, v0}, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->setWidgetLayoutResource(I)V

    .line 48
    return-void
.end method

.method private setValuesFromXml(Landroid/util/AttributeSet;)V
    .locals 5
    .param p1, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v4, 0x0

    .line 52
    const-string v1, "http://schemas.android.com/apk/res/android"

    const-string v2, "max"

    const/16 v3, 0x64

    invoke-interface {p1, v1, v2, v3}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mMaxValue:I

    .line 53
    const-string v1, "min"

    const/4 v2, 0x0

    invoke-interface {p1, v4, v1, v2}, Landroid/util/AttributeSet;->getAttributeIntValue(Ljava/lang/String;Ljava/lang/String;I)I

    move-result v1

    iput v1, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mMinValue:I

    .line 54
    const-string v1, "unitsLeft"

    const-string v2, ""

    invoke-direct {p0, p1, v4, v1, v2}, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    .line 55
    const-string v1, "units"

    const-string v2, ""

    invoke-direct {p0, p1, v4, v1, v2}, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->units:Ljava/lang/String;

    .line 56
    const-string v1, "unitsRight"

    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->units:Ljava/lang/String;

    invoke-direct {p0, p1, v4, v1, v2}, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->getAttributeStringValue(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    iput-object v1, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    .line 59
    const/4 v1, 0x0

    :try_start_0
    const-string v2, "interval"

    invoke-interface {p1, v1, v2}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 60
    .local v0, "newInterval":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 61
    invoke-static {v0}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mInterval:I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 65
    .end local v0    # "newInterval":Ljava/lang/String;
    :cond_0
    :goto_0
    return-void

    .line 62
    :catch_0
    move-exception v1

    goto :goto_0
.end method


# virtual methods
.method public onBindView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 84
    invoke-super {p0, p1}, Landroid/preference/Preference;->onBindView(Landroid/view/View;)V

    .line 88
    :try_start_0
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v2}, Landroid/widget/SeekBar;->getParent()Landroid/view/ViewParent;

    move-result-object v1

    .line 89
    .local v1, "oldContainer":Landroid/view/ViewParent;
    const v2, 0x7f0f0077

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    .line 91
    .local v0, "newContainer":Landroid/view/ViewGroup;
    if-eq v1, v0, :cond_1

    .line 93
    if-eqz v1, :cond_0

    .line 94
    check-cast v1, Landroid/view/ViewGroup;

    .end local v1    # "oldContainer":Landroid/view/ViewParent;
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v1, v2}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 97
    :cond_0
    invoke-virtual {v0}, Landroid/view/ViewGroup;->removeAllViews()V

    .line 98
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v3, -0x1

    const/4 v4, -0x2

    invoke-virtual {v0, v2, v3, v4}, Landroid/view/ViewGroup;->addView(Landroid/view/View;II)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 105
    .end local v0    # "newContainer":Landroid/view/ViewGroup;
    :cond_1
    :goto_0
    if-eqz p1, :cond_2

    invoke-virtual {p1}, Landroid/view/View;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_2

    .line 106
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    const/4 v3, 0x0

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 109
    :cond_2
    invoke-virtual {p0, p1}, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->updateView(Landroid/view/View;)V

    .line 110
    return-void

    .line 101
    :catch_0
    move-exception v2

    goto :goto_0
.end method

.method protected onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 3
    .param p1, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 76
    invoke-super {p0, p1}, Landroid/preference/Preference;->onCreateView(Landroid/view/ViewGroup;)Landroid/view/View;

    move-result-object v1

    .local v1, "view":Landroid/view/View;
    move-object v0, v1

    .line 77
    check-cast v0, Landroid/widget/LinearLayout;

    .line 78
    .local v0, "layout":Landroid/widget/LinearLayout;
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/widget/LinearLayout;->setOrientation(I)V

    .line 79
    return-object v1
.end method

.method public onDependencyChanged(Landroid/preference/Preference;Z)V
    .locals 2
    .param p1, "dependency"    # Landroid/preference/Preference;
    .param p2, "disableDependent"    # Z

    .prologue
    .line 204
    invoke-super {p0, p1, p2}, Landroid/preference/Preference;->onDependencyChanged(Landroid/preference/Preference;Z)V

    .line 207
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-eqz v0, :cond_0

    .line 208
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    if-nez p2, :cond_1

    const/4 v0, 0x1

    :goto_0
    invoke-virtual {v1, v0}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 210
    :cond_0
    return-void

    .line 208
    :cond_1
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 2
    .param p1, "ta"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 170
    const/16 v1, 0x32

    invoke-virtual {p1, p2, v1}, Landroid/content/res/TypedArray;->getInt(II)I

    move-result v0

    .line 171
    .local v0, "defaultValue":I
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    return-object v1
.end method

.method public onProgressChanged(Landroid/widget/SeekBar;IZ)V
    .locals 3
    .param p1, "seekBar"    # Landroid/widget/SeekBar;
    .param p2, "progress"    # I
    .param p3, "fromUser"    # Z

    .prologue
    .line 135
    iget v1, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mMinValue:I

    add-int v0, p2, v1

    .line 137
    .local v0, "newValue":I
    iget v1, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mMaxValue:I

    if-le v0, v1, :cond_1

    .line 138
    iget v0, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mMaxValue:I

    .line 145
    :cond_0
    :goto_0
    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_3

    .line 146
    iget v1, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mCurrentValue:I

    iget v2, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mMinValue:I

    sub-int/2addr v1, v2

    invoke-virtual {p1, v1}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 155
    :goto_1
    return-void

    .line 139
    :cond_1
    iget v1, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mMinValue:I

    if-ge v0, v1, :cond_2

    .line 140
    iget v0, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mMinValue:I

    goto :goto_0

    .line 141
    :cond_2
    iget v1, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mInterval:I

    const/4 v2, 0x1

    if-eq v1, v2, :cond_0

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mInterval:I

    rem-int v1, v0, v1

    if-eqz v1, :cond_0

    .line 142
    int-to-float v1, v0

    iget v2, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mInterval:I

    int-to-float v2, v2

    div-float/2addr v1, v2

    invoke-static {v1}, Ljava/lang/Math;->round(F)I

    move-result v1

    iget v2, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mInterval:I

    mul-int v0, v1, v2

    goto :goto_0

    .line 151
    :cond_3
    iput v0, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mCurrentValue:I

    .line 152
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    invoke-static {v0}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 153
    invoke-virtual {p0, v0}, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->persistInt(I)Z

    goto :goto_1
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 2
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 178
    if-eqz p1, :cond_0

    .line 179
    iget v1, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mCurrentValue:I

    invoke-virtual {p0, v1}, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->getPersistedInt(I)I

    move-result v1

    iput v1, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mCurrentValue:I

    .line 191
    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    return-void

    .line 181
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    const/4 v0, 0x0

    .line 183
    .local v0, "temp":I
    :try_start_0
    check-cast p2, Ljava/lang/Integer;

    .end local p2    # "defaultValue":Ljava/lang/Object;
    invoke-virtual {p2}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 187
    :goto_1
    invoke-virtual {p0, v0}, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->persistInt(I)Z

    .line 188
    iput v0, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mCurrentValue:I

    goto :goto_0

    .line 184
    :catch_0
    move-exception v1

    goto :goto_1
.end method

.method public onStartTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 159
    return-void
.end method

.method public onStopTrackingTouch(Landroid/widget/SeekBar;)V
    .locals 0
    .param p1, "seekBar"    # Landroid/widget/SeekBar;

    .prologue
    .line 163
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->notifyChanged()V

    .line 164
    return-void
.end method

.method public setEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z

    .prologue
    .line 198
    invoke-super {p0, p1}, Landroid/preference/Preference;->setEnabled(Z)V

    .line 199
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    invoke-virtual {v0, p1}, Landroid/widget/SeekBar;->setEnabled(Z)V

    .line 200
    return-void
.end method

.method protected updateView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 120
    const v2, 0x7f0f0075

    :try_start_0
    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    iput-object v2, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    .line 121
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    iget v3, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mCurrentValue:I

    invoke-static {v3}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 122
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mStatusText:Landroid/widget/TextView;

    const/16 v3, 0x1e

    invoke-virtual {v2, v3}, Landroid/widget/TextView;->setMinimumWidth(I)V

    .line 123
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mSeekBar:Landroid/widget/SeekBar;

    iget v3, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mCurrentValue:I

    iget v4, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mMinValue:I

    sub-int/2addr v3, v4

    invoke-virtual {v2, v3}, Landroid/widget/SeekBar;->setProgress(I)V

    .line 124
    const v2, 0x7f0f0074

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/TextView;

    .line 125
    .local v1, "unitsRight":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mUnitsRight:Ljava/lang/String;

    invoke-virtual {v1, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 126
    const v2, 0x7f0f0076

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/TextView;

    .line 127
    .local v0, "unitsLeft":Landroid/widget/TextView;
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;->mUnitsLeft:Ljava/lang/String;

    invoke-virtual {v0, v2}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 131
    .end local v0    # "unitsLeft":Landroid/widget/TextView;
    .end local v1    # "unitsRight":Landroid/widget/TextView;
    :goto_0
    return-void

    .line 128
    :catch_0
    move-exception v2

    goto :goto_0
.end method
