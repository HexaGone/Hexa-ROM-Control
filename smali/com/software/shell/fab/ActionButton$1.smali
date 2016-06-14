.class Lcom/software/shell/fab/ActionButton$1;
.super Landroid/view/ViewOutlineProvider;
.source "ActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/software/shell/fab/ActionButton;->drawElevation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/software/shell/fab/ActionButton;

.field final synthetic val$bottom:I

.field final synthetic val$left:I

.field final synthetic val$right:I

.field final synthetic val$top:I


# direct methods
.method constructor <init>(Lcom/software/shell/fab/ActionButton;IIII)V
    .locals 0
    .param p1, "this$0"    # Lcom/software/shell/fab/ActionButton;

    .prologue
    .line 1542
    iput-object p1, p0, Lcom/software/shell/fab/ActionButton$1;->this$0:Lcom/software/shell/fab/ActionButton;

    iput p2, p0, Lcom/software/shell/fab/ActionButton$1;->val$left:I

    iput p3, p0, Lcom/software/shell/fab/ActionButton$1;->val$top:I

    iput p4, p0, Lcom/software/shell/fab/ActionButton$1;->val$right:I

    iput p5, p0, Lcom/software/shell/fab/ActionButton$1;->val$bottom:I

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    .line 1545
    iget v0, p0, Lcom/software/shell/fab/ActionButton$1;->val$left:I

    iget v1, p0, Lcom/software/shell/fab/ActionButton$1;->val$top:I

    iget v2, p0, Lcom/software/shell/fab/ActionButton$1;->val$right:I

    iget v3, p0, Lcom/software/shell/fab/ActionButton$1;->val$bottom:I

    invoke-virtual {p2, v0, v1, v2, v3}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 1546
    return-void
.end method
