.class public Lcom/wubydax/romcontrol/NavigationDrawerFragment;
.super Landroid/app/Fragment;
.source "NavigationDrawerFragment.java"

# interfaces
.implements Lcom/wubydax/romcontrol/NavigationDrawerCallbacks;


# static fields
.field private static final PREF_USER_LEARNED_DRAWER:Ljava/lang/String; = "navigation_drawer_learned"

.field private static final STATE_SELECTED_POSITION:Ljava/lang/String; = "selected_navigation_drawer_position"


# instance fields
.field private mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

.field private mCallbacks:Lcom/wubydax/romcontrol/NavigationDrawerCallbacks;

.field private mCurrentSelectedPosition:I

.field private mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

.field private mDrawerList:Landroid/support/v7/widget/RecyclerView;

.field private mFragmentContainerView:Landroid/view/View;

.field private mFromSavedInstanceState:Z

.field private mUserLearnedDrawer:Z

.field private typedValue:Landroid/util/TypedValue;

.field private view:Landroid/view/View;


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 49
    invoke-direct {p0}, Landroid/app/Fragment;-><init>()V

    .line 76
    const/4 v0, 0x0

    iput v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    return-void
.end method

.method static synthetic access$000(Lcom/wubydax/romcontrol/NavigationDrawerFragment;)Z
    .locals 1
    .param p0, "x0"    # Lcom/wubydax/romcontrol/NavigationDrawerFragment;

    .prologue
    .line 49
    iget-boolean v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mUserLearnedDrawer:Z

    return v0
.end method

.method static synthetic access$002(Lcom/wubydax/romcontrol/NavigationDrawerFragment;Z)Z
    .locals 0
    .param p0, "x0"    # Lcom/wubydax/romcontrol/NavigationDrawerFragment;
    .param p1, "x1"    # Z

    .prologue
    .line 49
    iput-boolean p1, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mUserLearnedDrawer:Z

    return p1
.end method

.method static synthetic access$100(Lcom/wubydax/romcontrol/NavigationDrawerFragment;)Landroid/support/v7/app/ActionBarDrawerToggle;
    .locals 1
    .param p0, "x0"    # Lcom/wubydax/romcontrol/NavigationDrawerFragment;

    .prologue
    .line 49
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    return-object v0
.end method

.method private selectItem(I)V
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 226
    iput p1, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    .line 227
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    .line 228
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 230
    :cond_0
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mCallbacks:Lcom/wubydax/romcontrol/NavigationDrawerCallbacks;

    if-eqz v0, :cond_1

    .line 231
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mCallbacks:Lcom/wubydax/romcontrol/NavigationDrawerCallbacks;

    invoke-interface {v0, p1}, Lcom/wubydax/romcontrol/NavigationDrawerCallbacks;->onNavigationDrawerItemSelected(I)V

    .line 233
    :cond_1
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mDrawerList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v0}, Landroid/support/v7/widget/RecyclerView;->getAdapter()Landroid/support/v7/widget/RecyclerView$Adapter;

    move-result-object v0

    check-cast v0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;

    invoke-virtual {v0, p1}, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->selectPosition(I)V

    .line 234
    return-void
.end method


# virtual methods
.method public closeDrawer()V
    .locals 2

    .prologue
    .line 241
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->closeDrawer(Landroid/view/View;)V

    .line 242
    return-void
.end method

.method public getActionBarDrawerToggle()Landroid/support/v7/app/ActionBarDrawerToggle;
    .locals 1

    .prologue
    .line 129
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    return-object v0
.end method

.method public getDrawerLayout()Landroid/support/v4/widget/DrawerLayout;
    .locals 1

    .prologue
    .line 133
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    return-object v0
.end method

.method public getMenu()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Lcom/wubydax/romcontrol/NavItem;",
            ">;"
        }
    .end annotation

    .prologue
    .line 152
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 153
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/wubydax/romcontrol/NavItem;>;"
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f0d0000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 154
    .local v4, "mTitles":[Ljava/lang/String;
    const/4 v5, 0x5

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    .line 159
    .local v3, "mIcons":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 160
    new-instance v0, Lcom/wubydax/romcontrol/NavItem;

    invoke-direct {v0}, Lcom/wubydax/romcontrol/NavItem;-><init>()V

    .line 161
    .local v0, "current":Lcom/wubydax/romcontrol/NavItem;
    aget-object v5, v4, v1

    invoke-virtual {v0, v5}, Lcom/wubydax/romcontrol/NavItem;->setText(Ljava/lang/String;)V

    .line 162
    aget v5, v3, v1

    invoke-virtual {v0, v5}, Lcom/wubydax/romcontrol/NavItem;->setDrawable(I)V

    .line 163
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 159
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 166
    .end local v0    # "current":Lcom/wubydax/romcontrol/NavItem;
    :cond_0
    return-object v2

    .line 154
    :array_0
    .array-data 4
        0x7f020049
        0x7f020043
        0x7f020040
        0x7f02003f
        0x7f020048
    .end array-data
.end method

.method public isDrawerOpen()Z
    .locals 2

    .prologue
    .line 125
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->isDrawerOpen(Landroid/view/View;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public onActivityCreated(Landroid/os/Bundle;)V
    .locals 0
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 99
    invoke-super {p0, p1}, Landroid/app/Fragment;->onActivityCreated(Landroid/os/Bundle;)V

    .line 101
    return-void
.end method

.method public onAttach(Landroid/app/Activity;)V
    .locals 3
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 246
    invoke-super {p0, p1}, Landroid/app/Fragment;->onAttach(Landroid/app/Activity;)V

    .line 248
    :try_start_0
    check-cast p1, Lcom/wubydax/romcontrol/NavigationDrawerCallbacks;

    .end local p1    # "activity":Landroid/app/Activity;
    iput-object p1, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mCallbacks:Lcom/wubydax/romcontrol/NavigationDrawerCallbacks;
    :try_end_0
    .catch Ljava/lang/ClassCastException; {:try_start_0 .. :try_end_0} :catch_0

    .line 252
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Ljava/lang/ClassCastException;
    new-instance v1, Ljava/lang/ClassCastException;

    const-string v2, "Activity must implement NavigationDrawerCallbacks."

    invoke-direct {v1, v2}, Ljava/lang/ClassCastException;-><init>(Ljava/lang/String;)V

    throw v1
.end method

.method public onConfigurationChanged(Landroid/content/res/Configuration;)V
    .locals 1
    .param p1, "newConfig"    # Landroid/content/res/Configuration;

    .prologue
    .line 268
    invoke-super {p0, p1}, Landroid/app/Fragment;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 270
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, p1}, Landroid/support/v7/app/ActionBarDrawerToggle;->onConfigurationChanged(Landroid/content/res/Configuration;)V

    .line 271
    return-void
.end method

.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 83
    invoke-super {p0, p1}, Landroid/app/Fragment;->onCreate(Landroid/os/Bundle;)V

    .line 87
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-static {v1}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 88
    .local v0, "sp":Landroid/content/SharedPreferences;
    const-string v1, "navigation_drawer_learned"

    const/4 v2, 0x0

    invoke-interface {v0, v1, v2}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    iput-boolean v1, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mUserLearnedDrawer:Z

    .line 90
    if-eqz p1, :cond_0

    .line 91
    const-string v1, "selected_navigation_drawer_position"

    invoke-virtual {p1, v1}, Landroid/os/Bundle;->getInt(Ljava/lang/String;)I

    move-result v1

    iput v1, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    .line 92
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mFromSavedInstanceState:Z

    .line 95
    :cond_0
    return-void
.end method

.method public onCreateView(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;Landroid/os/Bundle;)Landroid/view/View;
    .locals 5
    .param p1, "inflater"    # Landroid/view/LayoutInflater;
    .param p2, "container"    # Landroid/view/ViewGroup;
    .param p3, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    const/4 v4, 0x1

    .line 110
    const v2, 0x7f04001e

    const/4 v3, 0x0

    invoke-virtual {p1, v2, p2, v3}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->view:Landroid/view/View;

    .line 112
    iget-object v2, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->view:Landroid/view/View;

    const v3, 0x7f0f006f

    invoke-virtual {v2, v3}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/RecyclerView;

    iput-object v2, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mDrawerList:Landroid/support/v7/widget/RecyclerView;

    .line 113
    new-instance v1, Landroid/support/v7/widget/LinearLayoutManager;

    invoke-virtual {p0}, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/support/v7/widget/LinearLayoutManager;-><init>(Landroid/content/Context;)V

    .line 114
    .local v1, "layoutManager":Landroid/support/v7/widget/LinearLayoutManager;
    invoke-virtual {v1, v4}, Landroid/support/v7/widget/LinearLayoutManager;->setOrientation(I)V

    .line 115
    iget-object v2, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mDrawerList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v1}, Landroid/support/v7/widget/RecyclerView;->setLayoutManager(Landroid/support/v7/widget/RecyclerView$LayoutManager;)V

    .line 116
    iget-object v2, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mDrawerList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v4}, Landroid/support/v7/widget/RecyclerView;->setHasFixedSize(Z)V

    .line 117
    new-instance v0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;

    invoke-virtual {p0}, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->getMenu()Ljava/util/List;

    move-result-object v2

    invoke-virtual {p0}, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v3

    invoke-direct {v0, v2, v3}, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;-><init>(Ljava/util/List;Landroid/content/Context;)V

    .line 118
    .local v0, "adapter":Lcom/wubydax/romcontrol/NavigationDrawerAdapter;
    invoke-virtual {v0, p0}, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->setNavigationDrawerCallbacks(Lcom/wubydax/romcontrol/NavigationDrawerCallbacks;)V

    .line 119
    iget-object v2, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mDrawerList:Landroid/support/v7/widget/RecyclerView;

    invoke-virtual {v2, v0}, Landroid/support/v7/widget/RecyclerView;->setAdapter(Landroid/support/v7/widget/RecyclerView$Adapter;)V

    .line 120
    iget v2, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    invoke-direct {p0, v2}, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->selectItem(I)V

    .line 121
    iget-object v2, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->view:Landroid/view/View;

    return-object v2
.end method

.method public onDetach()V
    .locals 1

    .prologue
    .line 256
    invoke-super {p0}, Landroid/app/Fragment;->onDetach()V

    .line 257
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mCallbacks:Lcom/wubydax/romcontrol/NavigationDrawerCallbacks;

    .line 258
    return-void
.end method

.method public onNavigationDrawerItemSelected(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 138
    invoke-direct {p0, p1}, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->selectItem(I)V

    .line 139
    return-void
.end method

.method public onSaveInstanceState(Landroid/os/Bundle;)V
    .locals 2
    .param p1, "outState"    # Landroid/os/Bundle;

    .prologue
    .line 262
    invoke-super {p0, p1}, Landroid/app/Fragment;->onSaveInstanceState(Landroid/os/Bundle;)V

    .line 263
    const-string v0, "selected_navigation_drawer_position"

    iget v1, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mCurrentSelectedPosition:I

    invoke-virtual {p1, v0, v1}, Landroid/os/Bundle;->putInt(Ljava/lang/String;I)V

    .line 264
    return-void
.end method

.method public openDrawer()V
    .locals 2

    .prologue
    .line 237
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 238
    return-void
.end method

.method public setup(ILandroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;Landroid/content/Context;)V
    .locals 8
    .param p1, "fragmentId"    # I
    .param p2, "drawerLayout"    # Landroid/support/v4/widget/DrawerLayout;
    .param p3, "toolbar"    # Landroid/support/v7/widget/Toolbar;
    .param p4, "c"    # Landroid/content/Context;

    .prologue
    .line 177
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/app/Activity;->findViewById(I)Landroid/view/View;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    check-cast v0, Landroid/view/View;

    iput-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    .line 178
    iput-object p2, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    .line 179
    new-instance v0, Landroid/util/TypedValue;

    invoke-direct {v0}, Landroid/util/TypedValue;-><init>()V

    iput-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->typedValue:Landroid/util/TypedValue;

    .line 180
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v7

    .line 181
    .local v7, "theme":Landroid/content/res/Resources$Theme;
    const v0, 0x7f0100b6

    iget-object v1, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->typedValue:Landroid/util/TypedValue;

    const/4 v2, 0x1

    invoke-virtual {v7, v0, v1, v2}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 183
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->typedValue:Landroid/util/TypedValue;

    iget v1, v1, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setStatusBarBackgroundColor(I)V

    .line 185
    new-instance v0, Lcom/wubydax/romcontrol/NavigationDrawerFragment$1;

    invoke-virtual {p0}, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->getActivity()Landroid/app/Activity;

    move-result-object v2

    iget-object v3, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    const v5, 0x7f080017

    const v6, 0x7f080016

    move-object v1, p0

    move-object v4, p3

    invoke-direct/range {v0 .. v6}, Lcom/wubydax/romcontrol/NavigationDrawerFragment$1;-><init>(Lcom/wubydax/romcontrol/NavigationDrawerFragment;Landroid/app/Activity;Landroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;II)V

    iput-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    .line 210
    iget-boolean v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mUserLearnedDrawer:Z

    if-nez v0, :cond_0

    iget-boolean v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mFromSavedInstanceState:Z

    if-nez v0, :cond_0

    .line 211
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mFragmentContainerView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->openDrawer(Landroid/view/View;)V

    .line 215
    :cond_0
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    new-instance v1, Lcom/wubydax/romcontrol/NavigationDrawerFragment$2;

    invoke-direct {v1, p0}, Lcom/wubydax/romcontrol/NavigationDrawerFragment$2;-><init>(Lcom/wubydax/romcontrol/NavigationDrawerFragment;)V

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->post(Ljava/lang/Runnable;)Z

    .line 222
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mDrawerLayout:Landroid/support/v4/widget/DrawerLayout;

    iget-object v1, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;

    invoke-virtual {v0, v1}, Landroid/support/v4/widget/DrawerLayout;->setDrawerListener(Landroid/support/v4/widget/DrawerLayout$DrawerListener;)V

    .line 223
    return-void
.end method
