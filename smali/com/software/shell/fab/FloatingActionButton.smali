.class public Lcom/software/shell/fab/FloatingActionButton;
.super Lcom/software/shell/fab/ActionButton;
.source "FloatingActionButton.java"


# annotations
.annotation runtime Ljava/lang/Deprecated;
.end annotation


# static fields
.field private static final LOG_TAG:Ljava/lang/String; = "FAB"


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 47
    invoke-direct {p0, p1}, Lcom/software/shell/fab/ActionButton;-><init>(Landroid/content/Context;)V

    .line 48
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v0, 0x0

    .line 52
    invoke-direct {p0, p1, p2}, Lcom/software/shell/fab/ActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 53
    invoke-direct {p0, p1, p2, v0, v0}, Lcom/software/shell/fab/FloatingActionButton;->initActionButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 54
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3}, Lcom/software/shell/fab/ActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    .line 59
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/software/shell/fab/FloatingActionButton;->initActionButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 60
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 64
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/software/shell/fab/ActionButton;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 65
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/software/shell/fab/FloatingActionButton;->initActionButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 66
    return-void
.end method

.method private initActionButton(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 146
    invoke-virtual {p1}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v2

    sget-object v3, Lcom/software/shell/fab/R$styleable;->ActionButton:[I

    invoke-virtual {v2, p2, v3, p3, p4}, Landroid/content/res/Resources$Theme;->obtainStyledAttributes(Landroid/util/AttributeSet;[III)Landroid/content/res/TypedArray;

    move-result-object v0

    .line 149
    .local v0, "attributes":Landroid/content/res/TypedArray;
    :try_start_0
    invoke-direct {p0, v0}, Lcom/software/shell/fab/FloatingActionButton;->initType(Landroid/content/res/TypedArray;)V

    .line 150
    invoke-direct {p0, v0}, Lcom/software/shell/fab/FloatingActionButton;->initShowAnimation(Landroid/content/res/TypedArray;)V

    .line 151
    invoke-direct {p0, v0}, Lcom/software/shell/fab/FloatingActionButton;->initHideAnimation(Landroid/content/res/TypedArray;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 155
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    .line 157
    :goto_0
    const-string v2, "FAB"

    const-string v3, "Floating Action Button initialized"

    invoke-static {v2, v3}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 158
    return-void

    .line 152
    :catch_0
    move-exception v1

    .line 153
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string v2, "FAB"

    const-string v3, "Unable to read attr"

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 155
    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    goto :goto_0

    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v2

    invoke-virtual {v0}, Landroid/content/res/TypedArray;->recycle()V

    throw v2
.end method

.method private initHideAnimation(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "attrs"    # Landroid/content/res/TypedArray;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 195
    sget v1, Lcom/software/shell/fab/R$styleable;->ActionButton_animation_onHide:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 196
    sget v1, Lcom/software/shell/fab/R$styleable;->ActionButton_animation_onHide:I

    sget-object v2, Lcom/software/shell/fab/ActionButton$Animations;->NONE:Lcom/software/shell/fab/ActionButton$Animations;

    iget v2, v2, Lcom/software/shell/fab/ActionButton$Animations;->animResId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 198
    .local v0, "animResId":I
    invoke-virtual {p0}, Lcom/software/shell/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/software/shell/fab/ActionButton$Animations;->load(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/software/shell/fab/FloatingActionButton;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 200
    .end local v0    # "animResId":I
    :cond_0
    return-void
.end method

.method private initShowAnimation(Landroid/content/res/TypedArray;)V
    .locals 3
    .param p1, "attrs"    # Landroid/content/res/TypedArray;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 178
    sget v1, Lcom/software/shell/fab/R$styleable;->ActionButton_animation_onShow:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 179
    sget v1, Lcom/software/shell/fab/R$styleable;->ActionButton_animation_onShow:I

    sget-object v2, Lcom/software/shell/fab/ActionButton$Animations;->NONE:Lcom/software/shell/fab/ActionButton$Animations;

    iget v2, v2, Lcom/software/shell/fab/ActionButton$Animations;->animResId:I

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getResourceId(II)I

    move-result v0

    .line 181
    .local v0, "animResId":I
    invoke-virtual {p0}, Lcom/software/shell/fab/FloatingActionButton;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-static {v1, v0}, Lcom/software/shell/fab/ActionButton$Animations;->load(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/software/shell/fab/FloatingActionButton;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 183
    .end local v0    # "animResId":I
    :cond_0
    return-void
.end method

.method private initType(Landroid/content/res/TypedArray;)V
    .locals 4
    .param p1, "attrs"    # Landroid/content/res/TypedArray;

    .prologue
    .line 161
    sget v1, Lcom/software/shell/fab/R$styleable;->ActionButton_type:I

    invoke-virtual {p1, v1}, Landroid/content/res/TypedArray;->hasValue(I)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 162
    sget v1, Lcom/software/shell/fab/R$styleable;->ActionButton_type:I

    const/4 v2, 0x0

    invoke-virtual {p1, v1, v2}, Landroid/content/res/TypedArray;->getInteger(II)I

    move-result v0

    .line 163
    .local v0, "id":I
    invoke-static {v0}, Lcom/software/shell/fab/ActionButton$Type;->forId(I)Lcom/software/shell/fab/ActionButton$Type;

    move-result-object v1

    invoke-virtual {p0, v1}, Lcom/software/shell/fab/FloatingActionButton;->setType(Lcom/software/shell/fab/ActionButton$Type;)V

    .line 164
    const-string v1, "FAB"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Initialized type: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {p0}, Lcom/software/shell/fab/FloatingActionButton;->getType()Lcom/software/shell/fab/ActionButton$Type;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 166
    .end local v0    # "id":I
    :cond_0
    return-void
.end method


# virtual methods
.method public getAnimationOnHide()Landroid/view/animation/Animation;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 115
    invoke-virtual {p0}, Lcom/software/shell/fab/FloatingActionButton;->getHideAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public getAnimationOnShow()Landroid/view/animation/Animation;
    .locals 1
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 76
    invoke-virtual {p0}, Lcom/software/shell/fab/FloatingActionButton;->getShowAnimation()Landroid/view/animation/Animation;

    move-result-object v0

    return-object v0
.end method

.method public setAnimationOnHide(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 128
    invoke-virtual {p0, p1}, Lcom/software/shell/fab/FloatingActionButton;->setHideAnimation(Landroid/view/animation/Animation;)V

    .line 129
    return-void
.end method

.method public setAnimationOnHide(Lcom/software/shell/fab/ActionButton$Animations;)V
    .locals 0
    .param p1, "animation"    # Lcom/software/shell/fab/ActionButton$Animations;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 142
    invoke-virtual {p0, p1}, Lcom/software/shell/fab/FloatingActionButton;->setHideAnimation(Lcom/software/shell/fab/ActionButton$Animations;)V

    .line 143
    return-void
.end method

.method public setAnimationOnShow(Landroid/view/animation/Animation;)V
    .locals 0
    .param p1, "animation"    # Landroid/view/animation/Animation;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 89
    invoke-virtual {p0, p1}, Lcom/software/shell/fab/FloatingActionButton;->setShowAnimation(Landroid/view/animation/Animation;)V

    .line 90
    return-void
.end method

.method public setAnimationOnShow(Lcom/software/shell/fab/ActionButton$Animations;)V
    .locals 0
    .param p1, "animation"    # Lcom/software/shell/fab/ActionButton$Animations;
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 103
    invoke-virtual {p0, p1}, Lcom/software/shell/fab/FloatingActionButton;->setShowAnimation(Lcom/software/shell/fab/ActionButton$Animations;)V

    .line 104
    return-void
.end method
