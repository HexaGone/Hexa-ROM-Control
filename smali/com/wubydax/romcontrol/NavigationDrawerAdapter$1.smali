.class Lcom/wubydax/romcontrol/NavigationDrawerAdapter$1;
.super Ljava/lang/Object;
.source "NavigationDrawerAdapter.java"

# interfaces
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wubydax/romcontrol/NavigationDrawerAdapter;

.field final synthetic val$viewHolder:Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;


# direct methods
.method constructor <init>(Lcom/wubydax/romcontrol/NavigationDrawerAdapter;Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;)V
    .locals 0

    .prologue
    .line 58
    iput-object p1, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter$1;->this$0:Lcom/wubydax/romcontrol/NavigationDrawerAdapter;

    iput-object p2, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter$1;->val$viewHolder:Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 61
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter$1;->this$0:Lcom/wubydax/romcontrol/NavigationDrawerAdapter;

    # getter for: Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->mSelectedView:Landroid/view/View;
    invoke-static {v0}, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->access$000(Lcom/wubydax/romcontrol/NavigationDrawerAdapter;)Landroid/view/View;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 62
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter$1;->this$0:Lcom/wubydax/romcontrol/NavigationDrawerAdapter;

    # getter for: Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->mSelectedView:Landroid/view/View;
    invoke-static {v0}, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->access$000(Lcom/wubydax/romcontrol/NavigationDrawerAdapter;)Landroid/view/View;

    move-result-object v0

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 66
    :cond_0
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter$1;->this$0:Lcom/wubydax/romcontrol/NavigationDrawerAdapter;

    iget-object v1, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter$1;->val$viewHolder:Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;->getPosition()I

    move-result v1

    # setter for: Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->mSelectedPosition:I
    invoke-static {v0, v1}, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->access$102(Lcom/wubydax/romcontrol/NavigationDrawerAdapter;I)I

    .line 67
    const/4 v0, 0x1

    invoke-virtual {p1, v0}, Landroid/view/View;->setSelected(Z)V

    .line 68
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter$1;->this$0:Lcom/wubydax/romcontrol/NavigationDrawerAdapter;

    # setter for: Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->mSelectedView:Landroid/view/View;
    invoke-static {v0, p1}, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->access$002(Lcom/wubydax/romcontrol/NavigationDrawerAdapter;Landroid/view/View;)Landroid/view/View;

    .line 71
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter$1;->this$0:Lcom/wubydax/romcontrol/NavigationDrawerAdapter;

    # getter for: Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->mNavigationDrawerCallbacks:Lcom/wubydax/romcontrol/NavigationDrawerCallbacks;
    invoke-static {v0}, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->access$200(Lcom/wubydax/romcontrol/NavigationDrawerAdapter;)Lcom/wubydax/romcontrol/NavigationDrawerCallbacks;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 72
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter$1;->this$0:Lcom/wubydax/romcontrol/NavigationDrawerAdapter;

    # getter for: Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->mNavigationDrawerCallbacks:Lcom/wubydax/romcontrol/NavigationDrawerCallbacks;
    invoke-static {v0}, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->access$200(Lcom/wubydax/romcontrol/NavigationDrawerAdapter;)Lcom/wubydax/romcontrol/NavigationDrawerCallbacks;

    move-result-object v0

    iget-object v1, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter$1;->val$viewHolder:Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;

    invoke-virtual {v1}, Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;->getPosition()I

    move-result v1

    invoke-interface {v0, v1}, Lcom/wubydax/romcontrol/NavigationDrawerCallbacks;->onNavigationDrawerItemSelected(I)V

    .line 73
    :cond_1
    return-void
.end method
