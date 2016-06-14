.class public Lcom/wubydax/romcontrol/NavDrawerIcon;
.super Landroid/widget/ImageView;
.source "NavDrawerIcon.java"


# instance fields
.field private tint:Landroid/content/res/ColorStateList;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 25
    invoke-direct {p0, p1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 26
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 28
    invoke-direct {p0, p1, p2}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 29
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, v0}, Lcom/wubydax/romcontrol/NavDrawerIcon;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 30
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    .line 33
    invoke-direct {p0, p1, p2, p3}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 34
    invoke-direct {p0, p1, p2, p3}, Lcom/wubydax/romcontrol/NavDrawerIcon;->init(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 35
    return-void
.end method

.method private init(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyle"    # I

    .prologue
    const/4 v2, 0x0

    .line 38
    sget-object v1, Lcom/wubydax/romcontrol/R$styleable;->NavDrawerIcon:[I

    invoke-virtual {p1, p2, v1, p3, v2}, Landroid/content/Context;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 39
    .local v0, "a":Landroid/content/res/TypedArray;
    invoke-virtual {v0, v2}, Landroid/content/res/TypedArray;->getColorStateList(I)Landroid/content/res/ColorStateList;

    move-result-object v1

    iput-object v1, p0, Lcom/wubydax/romcontrol/NavDrawerIcon;->tint:Landroid/content/res/ColorStateList;

    .line 40
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 41
    return-void
.end method

.method private updateTintColor()V
    .locals 4

    .prologue
    .line 56
    iget-object v1, p0, Lcom/wubydax/romcontrol/NavDrawerIcon;->tint:Landroid/content/res/ColorStateList;

    invoke-virtual {p0}, Lcom/wubydax/romcontrol/NavDrawerIcon;->getDrawableState()[I

    move-result-object v2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, v3}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    .line 57
    .local v0, "color":I
    invoke-virtual {p0, v0}, Lcom/wubydax/romcontrol/NavDrawerIcon;->setColorFilter(I)V

    .line 58
    return-void
.end method


# virtual methods
.method protected drawableStateChanged()V
    .locals 1

    .prologue
    .line 45
    invoke-super {p0}, Landroid/widget/ImageView;->drawableStateChanged()V

    .line 46
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavDrawerIcon;->tint:Landroid/content/res/ColorStateList;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wubydax/romcontrol/NavDrawerIcon;->tint:Landroid/content/res/ColorStateList;

    invoke-virtual {v0}, Landroid/content/res/ColorStateList;->isStateful()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 47
    invoke-direct {p0}, Lcom/wubydax/romcontrol/NavDrawerIcon;->updateTintColor()V

    .line 48
    :cond_0
    return-void
.end method

.method public setColorFilter(Landroid/content/res/ColorStateList;)V
    .locals 2
    .param p1, "tint"    # Landroid/content/res/ColorStateList;

    .prologue
    .line 51
    iput-object p1, p0, Lcom/wubydax/romcontrol/NavDrawerIcon;->tint:Landroid/content/res/ColorStateList;

    .line 52
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/NavDrawerIcon;->getDrawableState()[I

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Landroid/content/res/ColorStateList;->getColorForState([II)I

    move-result v0

    invoke-super {p0, v0}, Landroid/widget/ImageView;->setColorFilter(I)V

    .line 53
    return-void
.end method
