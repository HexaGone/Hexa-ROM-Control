.class abstract Lcom/software/shell/fab/EffectDrawer;
.super Ljava/lang/Object;
.source "EffectDrawer.java"


# instance fields
.field private actionButton:Lcom/software/shell/fab/ActionButton;


# direct methods
.method constructor <init>(Lcom/software/shell/fab/ActionButton;)V
    .locals 0
    .param p1, "actionButton"    # Lcom/software/shell/fab/ActionButton;

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 50
    iput-object p1, p0, Lcom/software/shell/fab/EffectDrawer;->actionButton:Lcom/software/shell/fab/ActionButton;

    .line 51
    return-void
.end method


# virtual methods
.method abstract draw(Landroid/graphics/Canvas;)V
.end method

.method getActionButton()Lcom/software/shell/fab/ActionButton;
    .locals 1

    .prologue
    .line 59
    iget-object v0, p0, Lcom/software/shell/fab/EffectDrawer;->actionButton:Lcom/software/shell/fab/ActionButton;

    return-object v0
.end method

.method isPressed()Z
    .locals 2

    .prologue
    .line 71
    iget-object v0, p0, Lcom/software/shell/fab/EffectDrawer;->actionButton:Lcom/software/shell/fab/ActionButton;

    invoke-virtual {v0}, Lcom/software/shell/fab/ActionButton;->getState()Lcom/software/shell/fab/ActionButton$State;

    move-result-object v0

    sget-object v1, Lcom/software/shell/fab/ActionButton$State;->PRESSED:Lcom/software/shell/fab/ActionButton$State;

    if-ne v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method
