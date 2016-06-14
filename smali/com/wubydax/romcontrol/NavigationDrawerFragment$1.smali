.class Lcom/wubydax/romcontrol/NavigationDrawerFragment$1;
.super Landroid/support/v7/app/ActionBarDrawerToggle;
.source "NavigationDrawerFragment.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wubydax/romcontrol/NavigationDrawerFragment;->setup(ILandroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;Landroid/content/Context;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wubydax/romcontrol/NavigationDrawerFragment;


# direct methods
.method constructor <init>(Lcom/wubydax/romcontrol/NavigationDrawerFragment;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V
    .locals 6
    .param p2, "x0"    # Landroid/app/Activity;
    .param p3, "x1"    # Landroid/support/v4/widget/DrawerLayout;
    .param p4, "x2"    # Landroid/support/v7/widget/Toolbar;
    .param p5, "x3"    # I
    .param p6, "x4"    # I

    .prologue
    .line 185
    iput-object p1, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment$1;->this$0:Lcom/wubydax/romcontrol/NavigationDrawerFragment;

    move-object v0, p0

    move-object v1, p2

    move-object v2, p3

    move-object v3, p4

    move v4, p5

    move v5, p6

    invoke-direct/range {v0 .. v5}, Landroid/support/v7/app/ActionBarDrawerToggle;-><init>(Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    return-void
.end method


# virtual methods
.method public onDrawerClosed(Landroid/view/View;)V
    .locals 1
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    .line 188
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onDrawerClosed(Landroid/view/View;)V

    .line 189
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment$1;->this$0:Lcom/wubydax/romcontrol/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->isAdded()Z

    move-result v0

    if-nez v0, :cond_0

    .line 192
    :goto_0
    return-void

    .line 191
    :cond_0
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment$1;->this$0:Lcom/wubydax/romcontrol/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method

.method public onDrawerOpened(Landroid/view/View;)V
    .locals 4
    .param p1, "drawerView"    # Landroid/view/View;

    .prologue
    const/4 v3, 0x1

    .line 196
    invoke-super {p0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onDrawerOpened(Landroid/view/View;)V

    .line 197
    iget-object v1, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment$1;->this$0:Lcom/wubydax/romcontrol/NavigationDrawerFragment;

    invoke-virtual {v1}, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->isAdded()Z

    move-result v1

    if-nez v1, :cond_0

    .line 205
    :goto_0
    return-void

    .line 198
    :cond_0
    iget-object v1, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment$1;->this$0:Lcom/wubydax/romcontrol/NavigationDrawerFragment;

    # getter for: Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mUserLearnedDrawer:Z
    invoke-static {v1}, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->access$000(Lcom/wubydax/romcontrol/NavigationDrawerFragment;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 199
    iget-object v1, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment$1;->this$0:Lcom/wubydax/romcontrol/NavigationDrawerFragment;

    # setter for: Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mUserLearnedDrawer:Z
    invoke-static {v1, v3}, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->access$002(Lcom/wubydax/romcontrol/NavigationDrawerFragment;Z)Z

    .line 200
    iget-object v1, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment$1;->this$0:Lcom/wubydax/romcontrol/NavigationDrawerFragment;

    invoke-virtual {v1}, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 202
    .local v0, "sp":Landroid/content/SharedPreferences;
    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    const-string v2, "navigation_drawer_learned"

    invoke-interface {v1, v2, v3}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    invoke-interface {v1}, Landroid/content/SharedPreferences$Editor;->apply()V

    .line 204
    .end local v0    # "sp":Landroid/content/SharedPreferences;
    :cond_1
    iget-object v1, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment$1;->this$0:Lcom/wubydax/romcontrol/NavigationDrawerFragment;

    invoke-virtual {v1}, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-virtual {v1}, Landroid/app/Activity;->invalidateOptionsMenu()V

    goto :goto_0
.end method
