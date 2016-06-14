.class public Lcom/wubydax/romcontrol/MainViewActivity;
.super Landroid/support/v7/app/AppCompatActivity;
.source "MainViewActivity.java"

# interfaces
.implements Lcom/wubydax/romcontrol/NavigationDrawerCallbacks;
.implements Landroid/view/View$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;
    }
.end annotation


# instance fields
.field am:Landroid/content/res/AssetManager;

.field bl:Lcom/software/shell/fab/ActionButton;

.field hotboot:Lcom/software/shell/fab/ActionButton;

.field hs:Lcom/wubydax/romcontrol/HandleScripts;

.field ids:[I

.field private mNavigationDrawerFragment:Lcom/wubydax/romcontrol/NavigationDrawerFragment;

.field private mToolbar:Landroid/support/v7/widget/Toolbar;

.field overlay:Landroid/view/View;

.field reboot:Lcom/software/shell/fab/ActionButton;

.field rebootFabs:[Lcom/software/shell/fab/ActionButton;

.field recovery:Lcom/software/shell/fab/ActionButton;

.field ui:Lcom/software/shell/fab/ActionButton;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 52
    invoke-direct {p0}, Landroid/support/v7/app/AppCompatActivity;-><init>()V

    .line 299
    return-void
.end method

.method static synthetic access$000(Lcom/wubydax/romcontrol/MainViewActivity;I)V
    .locals 0
    .param p0, "x0"    # Lcom/wubydax/romcontrol/MainViewActivity;
    .param p1, "x1"    # I

    .prologue
    .line 52
    invoke-direct {p0, p1}, Lcom/wubydax/romcontrol/MainViewActivity;->initTheme(I)V

    return-void
.end method

.method static synthetic access$100(Lcom/wubydax/romcontrol/MainViewActivity;)Landroid/support/v7/widget/Toolbar;
    .locals 1
    .param p0, "x0"    # Lcom/wubydax/romcontrol/MainViewActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wubydax/romcontrol/MainViewActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object v0
.end method

.method static synthetic access$102(Lcom/wubydax/romcontrol/MainViewActivity;Landroid/support/v7/widget/Toolbar;)Landroid/support/v7/widget/Toolbar;
    .locals 0
    .param p0, "x0"    # Lcom/wubydax/romcontrol/MainViewActivity;
    .param p1, "x1"    # Landroid/support/v7/widget/Toolbar;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/wubydax/romcontrol/MainViewActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;

    return-object p1
.end method

.method static synthetic access$200(Lcom/wubydax/romcontrol/MainViewActivity;)Lcom/wubydax/romcontrol/NavigationDrawerFragment;
    .locals 1
    .param p0, "x0"    # Lcom/wubydax/romcontrol/MainViewActivity;

    .prologue
    .line 52
    iget-object v0, p0, Lcom/wubydax/romcontrol/MainViewActivity;->mNavigationDrawerFragment:Lcom/wubydax/romcontrol/NavigationDrawerFragment;

    return-object v0
.end method

.method static synthetic access$202(Lcom/wubydax/romcontrol/MainViewActivity;Lcom/wubydax/romcontrol/NavigationDrawerFragment;)Lcom/wubydax/romcontrol/NavigationDrawerFragment;
    .locals 0
    .param p0, "x0"    # Lcom/wubydax/romcontrol/MainViewActivity;
    .param p1, "x1"    # Lcom/wubydax/romcontrol/NavigationDrawerFragment;

    .prologue
    .line 52
    iput-object p1, p0, Lcom/wubydax/romcontrol/MainViewActivity;->mNavigationDrawerFragment:Lcom/wubydax/romcontrol/NavigationDrawerFragment;

    return-object p1
.end method

.method static synthetic access$300(Lcom/wubydax/romcontrol/MainViewActivity;)V
    .locals 0
    .param p0, "x0"    # Lcom/wubydax/romcontrol/MainViewActivity;

    .prologue
    .line 52
    invoke-direct {p0}, Lcom/wubydax/romcontrol/MainViewActivity;->initRebootMenu()V

    return-void
.end method

.method private getRebootAction(Ljava/lang/String;)V
    .locals 4
    .param p1, "command"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x1

    const/4 v3, 0x0

    .line 214
    new-instance v0, Lcom/stericson/RootShell/execution/Command;

    new-array v2, v2, [Ljava/lang/String;

    aput-object p1, v2, v3

    invoke-direct {v0, v3, v2}, Lcom/stericson/RootShell/execution/Command;-><init>(I[Ljava/lang/String;)V

    .line 216
    .local v0, "c":Lcom/stericson/RootShell/execution/Command;
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootShell/execution/Shell;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/stericson/RootShell/execution/Shell;->add(Lcom/stericson/RootShell/execution/Command;)Lcom/stericson/RootShell/execution/Command;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/stericson/RootShell/exceptions/RootDeniedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 224
    :goto_0
    return-void

    .line 217
    :catch_0
    move-exception v1

    .line 218
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 219
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 220
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 221
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_2
    move-exception v1

    .line 222
    .local v1, "e":Lcom/stericson/RootShell/exceptions/RootDeniedException;
    invoke-virtual {v1}, Lcom/stericson/RootShell/exceptions/RootDeniedException;->printStackTrace()V

    goto :goto_0
.end method

.method private initRebootMenu()V
    .locals 5

    .prologue
    const/4 v3, 0x5

    .line 228
    new-array v2, v3, [I

    fill-array-data v2, :array_0

    iput-object v2, p0, Lcom/wubydax/romcontrol/MainViewActivity;->ids:[I

    .line 229
    new-array v2, v3, [Lcom/software/shell/fab/ActionButton;

    const/4 v3, 0x0

    iget-object v4, p0, Lcom/wubydax/romcontrol/MainViewActivity;->reboot:Lcom/software/shell/fab/ActionButton;

    aput-object v4, v2, v3

    const/4 v3, 0x1

    iget-object v4, p0, Lcom/wubydax/romcontrol/MainViewActivity;->hotboot:Lcom/software/shell/fab/ActionButton;

    aput-object v4, v2, v3

    const/4 v3, 0x2

    iget-object v4, p0, Lcom/wubydax/romcontrol/MainViewActivity;->recovery:Lcom/software/shell/fab/ActionButton;

    aput-object v4, v2, v3

    const/4 v3, 0x3

    iget-object v4, p0, Lcom/wubydax/romcontrol/MainViewActivity;->bl:Lcom/software/shell/fab/ActionButton;

    aput-object v4, v2, v3

    const/4 v3, 0x4

    iget-object v4, p0, Lcom/wubydax/romcontrol/MainViewActivity;->ui:Lcom/software/shell/fab/ActionButton;

    aput-object v4, v2, v3

    iput-object v2, p0, Lcom/wubydax/romcontrol/MainViewActivity;->rebootFabs:[Lcom/software/shell/fab/ActionButton;

    .line 230
    const v2, 0x7f0f0056

    invoke-virtual {p0, v2}, Lcom/wubydax/romcontrol/MainViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    iput-object v2, p0, Lcom/wubydax/romcontrol/MainViewActivity;->overlay:Landroid/view/View;

    .line 231
    iget-object v2, p0, Lcom/wubydax/romcontrol/MainViewActivity;->ids:[I

    array-length v1, v2

    .line 232
    .local v1, "l":I
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_0

    .line 233
    iget-object v3, p0, Lcom/wubydax/romcontrol/MainViewActivity;->rebootFabs:[Lcom/software/shell/fab/ActionButton;

    iget-object v2, p0, Lcom/wubydax/romcontrol/MainViewActivity;->ids:[I

    aget v2, v2, v0

    invoke-virtual {p0, v2}, Lcom/wubydax/romcontrol/MainViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Lcom/software/shell/fab/ActionButton;

    aput-object v2, v3, v0

    .line 234
    iget-object v2, p0, Lcom/wubydax/romcontrol/MainViewActivity;->rebootFabs:[Lcom/software/shell/fab/ActionButton;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Lcom/software/shell/fab/ActionButton;->hide()V

    .line 235
    iget-object v2, p0, Lcom/wubydax/romcontrol/MainViewActivity;->rebootFabs:[Lcom/software/shell/fab/ActionButton;

    aget-object v2, v2, v0

    sget-object v3, Lcom/software/shell/fab/ActionButton$Animations;->ROLL_TO_RIGHT:Lcom/software/shell/fab/ActionButton$Animations;

    invoke-virtual {v2, v3}, Lcom/software/shell/fab/ActionButton;->setHideAnimation(Lcom/software/shell/fab/ActionButton$Animations;)V

    .line 236
    iget-object v2, p0, Lcom/wubydax/romcontrol/MainViewActivity;->rebootFabs:[Lcom/software/shell/fab/ActionButton;

    aget-object v2, v2, v0

    sget-object v3, Lcom/software/shell/fab/ActionButton$Animations;->ROLL_FROM_RIGHT:Lcom/software/shell/fab/ActionButton$Animations;

    invoke-virtual {v2, v3}, Lcom/software/shell/fab/ActionButton;->setShowAnimation(Lcom/software/shell/fab/ActionButton$Animations;)V

    .line 232
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 238
    :cond_0
    return-void

    .line 228
    nop

    :array_0
    .array-data 4
        0x7f0f005b
        0x7f0f005a
        0x7f0f0059
        0x7f0f0058
        0x7f0f0057
    .end array-data
.end method

.method private initTheme(I)V
    .locals 3
    .param p1, "i"    # I

    .prologue
    const/4 v2, 0x0

    .line 290
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    const-string v1, "theme_prefs"

    invoke-interface {v0, v1, p1}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v0

    invoke-interface {v0}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 291
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/MainViewActivity;->finish()V

    .line 292
    const v0, 0x7f060001

    invoke-virtual {p0, v2, v0}, Lcom/wubydax/romcontrol/MainViewActivity;->overridePendingTransition(II)V

    .line 293
    new-instance v0, Landroid/content/Intent;

    const-class v1, Lcom/wubydax/romcontrol/MainViewActivity;

    invoke-direct {v0, p0, v1}, Landroid/content/Intent;-><init>(Landroid/content/Context;Ljava/lang/Class;)V

    invoke-virtual {p0, v0}, Lcom/wubydax/romcontrol/MainViewActivity;->startActivity(Landroid/content/Intent;)V

    .line 294
    const/high16 v0, 0x7f060000

    invoke-virtual {p0, v0, v2}, Lcom/wubydax/romcontrol/MainViewActivity;->overridePendingTransition(II)V

    .line 296
    return-void
.end method

.method private remountSystem(Ljava/lang/String;)V
    .locals 4
    .param p1, "mount"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/Exception;
        }
    .end annotation

    .prologue
    .line 405
    const-string v2, "/system"

    .line 406
    .local v2, "system":Ljava/lang/String;
    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->getMountedAs(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 407
    .local v1, "mounted":Ljava/lang/String;
    const-string v3, "rw"

    invoke-virtual {v1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_1

    const/4 v0, 0x1

    .line 408
    .local v0, "isMountedRW":Z
    :goto_0
    if-eqz v0, :cond_2

    const-string v3, "ro"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 409
    const-string v3, "ro"

    invoke-static {v2, v3}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    .line 413
    :cond_0
    :goto_1
    return-void

    .line 407
    .end local v0    # "isMountedRW":Z
    :cond_1
    const/4 v0, 0x0

    goto :goto_0

    .line 410
    .restart local v0    # "isMountedRW":Z
    :cond_2
    if-nez v0, :cond_0

    const-string v3, "rw"

    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 411
    const-string v3, "rw"

    invoke-static {v2, v3}, Lcom/stericson/RootTools/RootTools;->remount(Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1
.end method

.method private showThemeChooserDialog()V
    .locals 14

    .prologue
    const/4 v13, 0x0

    .line 257
    new-instance v1, Landroid/app/AlertDialog$Builder;

    invoke-direct {v1, p0}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 258
    .local v1, "b":Landroid/app/AlertDialog$Builder;
    new-instance v0, Landroid/widget/ArrayAdapter;

    const v10, 0x7f040027

    invoke-virtual {p0}, Lcom/wubydax/romcontrol/MainViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v11

    const v12, 0x7f0d0001

    invoke-virtual {v11, v12}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v11

    invoke-direct {v0, p0, v10, v11}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    .line 259
    .local v0, "adapter":Landroid/widget/Adapter;
    const v10, 0x7f08001e

    invoke-virtual {p0, v10}, Lcom/wubydax/romcontrol/MainViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v1, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    check-cast v0, Landroid/widget/ListAdapter;

    .end local v0    # "adapter":Landroid/widget/Adapter;
    invoke-static {p0}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v11

    const-string v12, "theme_prefs"

    invoke-interface {v11, v12, v13}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v11

    new-instance v12, Lcom/wubydax/romcontrol/MainViewActivity$1;

    invoke-direct {v12, p0}, Lcom/wubydax/romcontrol/MainViewActivity$1;-><init>(Lcom/wubydax/romcontrol/MainViewActivity;)V

    invoke-virtual {v10, v0, v11, v12}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 268
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v3

    .line 269
    .local v3, "d":Landroid/app/AlertDialog;
    invoke-virtual {v3}, Landroid/app/AlertDialog;->show()V

    .line 270
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 271
    .local v9, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/MainViewActivity;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 272
    .local v8, "theme":Landroid/content/res/Resources$Theme;
    const v10, 0x7f0100b7

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v9, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 274
    const/4 v10, -0x2

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 275
    .local v2, "cancel":Landroid/widget/Button;
    iget v10, v9, Landroid/util/TypedValue;->data:I

    invoke-virtual {v2, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 276
    const/4 v10, -0x1

    invoke-virtual {v3, v10}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v5

    .line 277
    .local v5, "ok":Landroid/widget/Button;
    iget v10, v9, Landroid/util/TypedValue;->data:I

    invoke-virtual {v5, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 278
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const v11, 0x7f02003b

    invoke-virtual {v10, v11}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 279
    invoke-virtual {v3}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v4

    .line 280
    .local v4, "lv":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/MainViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090046

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v7

    .line 281
    .local v7, "paddingTop":I
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/MainViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v10

    const v11, 0x7f090045

    invoke-virtual {v10, v11}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v10

    invoke-static {v10}, Ljava/lang/Math;->round(F)I

    move-result v6

    .line 282
    .local v6, "paddingBottom":I
    invoke-virtual {v4, v13, v7, v13, v6}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 283
    return-void
.end method


# virtual methods
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
    .line 85
    new-instance v2, Ljava/util/ArrayList;

    invoke-direct {v2}, Ljava/util/ArrayList;-><init>()V

    .line 96
    .local v2, "items":Ljava/util/List;, "Ljava/util/List<Lcom/wubydax/romcontrol/NavItem;>;"
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/MainViewActivity;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    const/high16 v6, 0x7f0d0000

    invoke-virtual {v5, v6}, Landroid/content/res/Resources;->getStringArray(I)[Ljava/lang/String;

    move-result-object v4

    .line 97
    .local v4, "mTitles":[Ljava/lang/String;
    const/4 v5, 0x5

    new-array v3, v5, [I

    fill-array-data v3, :array_0

    .line 102
    .local v3, "mIcons":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v5, v4

    if-ge v1, v5, :cond_0

    array-length v5, v3

    if-ge v1, v5, :cond_0

    .line 103
    new-instance v0, Lcom/wubydax/romcontrol/NavItem;

    invoke-direct {v0}, Lcom/wubydax/romcontrol/NavItem;-><init>()V

    .line 104
    .local v0, "current":Lcom/wubydax/romcontrol/NavItem;
    aget-object v5, v4, v1

    invoke-virtual {v0, v5}, Lcom/wubydax/romcontrol/NavItem;->setText(Ljava/lang/String;)V

    .line 105
    aget v5, v3, v1

    invoke-virtual {v0, v5}, Lcom/wubydax/romcontrol/NavItem;->setDrawable(I)V

    .line 106
    invoke-interface {v2, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 102
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 109
    .end local v0    # "current":Lcom/wubydax/romcontrol/NavItem;
    :cond_0
    return-object v2

    .line 97
    :array_0
    .array-data 4
        0x7f020049
        0x7f020043
        0x7f020040
        0x7f02003f
        0x7f020048
    .end array-data
.end method

.method public onBackPressed()V
    .locals 1

    .prologue
    .line 142
    iget-object v0, p0, Lcom/wubydax/romcontrol/MainViewActivity;->mNavigationDrawerFragment:Lcom/wubydax/romcontrol/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->isDrawerOpen()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 143
    iget-object v0, p0, Lcom/wubydax/romcontrol/MainViewActivity;->mNavigationDrawerFragment:Lcom/wubydax/romcontrol/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->closeDrawer()V

    .line 148
    :goto_0
    return-void

    .line 144
    :cond_0
    iget-object v0, p0, Lcom/wubydax/romcontrol/MainViewActivity;->overlay:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getVisibility()I

    move-result v0

    if-nez v0, :cond_1

    .line 145
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/MainViewActivity;->showHideRebootMenu()V

    goto :goto_0

    .line 147
    :cond_1
    invoke-super {p0}, Landroid/support/v7/app/AppCompatActivity;->onBackPressed()V

    goto :goto_0
.end method

.method public onClick(Landroid/view/View;)V
    .locals 2
    .param p1, "v"    # Landroid/view/View;

    .prologue
    .line 185
    invoke-virtual {p1}, Landroid/view/View;->getId()I

    move-result v0

    .line 186
    .local v0, "id":I
    packed-switch v0, :pswitch_data_0

    .line 210
    :goto_0
    return-void

    .line 190
    :pswitch_0
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/MainViewActivity;->showHideRebootMenu()V

    goto :goto_0

    .line 193
    :pswitch_1
    const-string v1, "reboot"

    invoke-direct {p0, v1}, Lcom/wubydax/romcontrol/MainViewActivity;->getRebootAction(Ljava/lang/String;)V

    goto :goto_0

    .line 196
    :pswitch_2
    const-string v1, "busybox killall system_server"

    invoke-direct {p0, v1}, Lcom/wubydax/romcontrol/MainViewActivity;->getRebootAction(Ljava/lang/String;)V

    goto :goto_0

    .line 199
    :pswitch_3
    const-string v1, "reboot recovery"

    invoke-direct {p0, v1}, Lcom/wubydax/romcontrol/MainViewActivity;->getRebootAction(Ljava/lang/String;)V

    goto :goto_0

    .line 202
    :pswitch_4
    const-string v1, "reboot download"

    invoke-direct {p0, v1}, Lcom/wubydax/romcontrol/MainViewActivity;->getRebootAction(Ljava/lang/String;)V

    goto :goto_0

    .line 205
    :pswitch_5
    const-string v1, "pkill com.android.systemui"

    invoke-direct {p0, v1}, Lcom/wubydax/romcontrol/MainViewActivity;->getRebootAction(Ljava/lang/String;)V

    goto :goto_0

    .line 186
    :pswitch_data_0
    .packed-switch 0x7f0f0056
        :pswitch_0
        :pswitch_5
        :pswitch_4
        :pswitch_3
        :pswitch_2
        :pswitch_1
    .end packed-switch
.end method

.method protected onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 70
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreate(Landroid/os/Bundle;)V

    .line 72
    new-instance v1, Lcom/wubydax/romcontrol/ThemeSelectorUtility;

    invoke-direct {v1, p0}, Lcom/wubydax/romcontrol/ThemeSelectorUtility;-><init>(Landroid/content/Context;)V

    .line 73
    .local v1, "theme":Lcom/wubydax/romcontrol/ThemeSelectorUtility;
    invoke-virtual {v1, p0}, Lcom/wubydax/romcontrol/ThemeSelectorUtility;->onActivityCreateSetTheme(Landroid/app/Activity;)V

    .line 75
    new-instance v0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;

    invoke-direct {v0, p0}, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;-><init>(Lcom/wubydax/romcontrol/MainViewActivity;)V

    .line 76
    .local v0, "suPrompt":Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;
    const/4 v2, 0x0

    new-array v2, v2, [Ljava/lang/Void;

    invoke-virtual {v0, v2}, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    .line 81
    return-void
.end method

.method public onCreateOptionsMenu(Landroid/view/Menu;)Z
    .locals 2
    .param p1, "menu"    # Landroid/view/Menu;

    .prologue
    .line 153
    iget-object v0, p0, Lcom/wubydax/romcontrol/MainViewActivity;->mNavigationDrawerFragment:Lcom/wubydax/romcontrol/NavigationDrawerFragment;

    invoke-virtual {v0}, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->isDrawerOpen()Z

    move-result v0

    if-nez v0, :cond_0

    .line 157
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/MainViewActivity;->getMenuInflater()Landroid/view/MenuInflater;

    move-result-object v0

    const/high16 v1, 0x7f100000

    invoke-virtual {v0, v1, p1}, Landroid/view/MenuInflater;->inflate(ILandroid/view/Menu;)V

    .line 158
    const/4 v0, 0x1

    .line 160
    :goto_0
    return v0

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onCreateOptionsMenu(Landroid/view/Menu;)Z

    move-result v0

    goto :goto_0
.end method

.method public onNavigationDrawerItemSelected(I)V
    .locals 3
    .param p1, "position"    # I

    .prologue
    const/4 v1, 0x0

    const v2, 0x7f0f0055

    .line 117
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/MainViewActivity;->getMenu()Ljava/util/List;

    move-result-object v0

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wubydax/romcontrol/NavItem;

    invoke-virtual {v0}, Lcom/wubydax/romcontrol/NavItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/wubydax/romcontrol/MainViewActivity;->setTitle(Ljava/lang/CharSequence;)V

    .line 118
    packed-switch p1, :pswitch_data_0

    .line 137
    :goto_0
    return-void

    .line 120
    :pswitch_0
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/MainViewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/wubydax/romcontrol/UIPrefsFragment;

    invoke-direct {v1}, Lcom/wubydax/romcontrol/UIPrefsFragment;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 123
    :pswitch_1
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/MainViewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/wubydax/romcontrol/PhonePrefsFragment;

    invoke-direct {v1}, Lcom/wubydax/romcontrol/PhonePrefsFragment;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 126
    :pswitch_2
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/MainViewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/wubydax/romcontrol/FrameworksGeneralFragment;

    invoke-direct {v1}, Lcom/wubydax/romcontrol/FrameworksGeneralFragment;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 129
    :pswitch_3
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/MainViewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentManager;->beginTransaction()Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0, v1}, Landroid/app/FragmentTransaction;->addToBackStack(Ljava/lang/String;)Landroid/app/FragmentTransaction;

    move-result-object v0

    new-instance v1, Lcom/wubydax/romcontrol/AppLinksFragment;

    invoke-direct {v1}, Lcom/wubydax/romcontrol/AppLinksFragment;-><init>()V

    invoke-virtual {v0, v2, v1}, Landroid/app/FragmentTransaction;->replace(ILandroid/app/Fragment;)Landroid/app/FragmentTransaction;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/FragmentTransaction;->commitAllowingStateLoss()I

    goto :goto_0

    .line 132
    :pswitch_4
    invoke-direct {p0}, Lcom/wubydax/romcontrol/MainViewActivity;->showThemeChooserDialog()V

    goto :goto_0

    .line 118
    nop

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method

.method public onOptionsItemSelected(Landroid/view/MenuItem;)Z
    .locals 2
    .param p1, "item"    # Landroid/view/MenuItem;

    .prologue
    .line 169
    invoke-interface {p1}, Landroid/view/MenuItem;->getItemId()I

    move-result v0

    .line 172
    .local v0, "id":I
    const v1, 0x7f0f007a

    if-ne v0, v1, :cond_0

    .line 173
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/MainViewActivity;->showHideRebootMenu()V

    .line 174
    const/4 v1, 0x1

    .line 177
    :goto_0
    return v1

    :cond_0
    invoke-super {p0, p1}, Landroid/support/v7/app/AppCompatActivity;->onOptionsItemSelected(Landroid/view/MenuItem;)Z

    move-result v1

    goto :goto_0
.end method

.method public showHideRebootMenu()V
    .locals 3

    .prologue
    .line 243
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lcom/wubydax/romcontrol/MainViewActivity;->rebootFabs:[Lcom/software/shell/fab/ActionButton;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 244
    iget-object v1, p0, Lcom/wubydax/romcontrol/MainViewActivity;->rebootFabs:[Lcom/software/shell/fab/ActionButton;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/software/shell/fab/ActionButton;->isShown()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 245
    iget-object v1, p0, Lcom/wubydax/romcontrol/MainViewActivity;->overlay:Landroid/view/View;

    const/16 v2, 0x8

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 246
    iget-object v1, p0, Lcom/wubydax/romcontrol/MainViewActivity;->rebootFabs:[Lcom/software/shell/fab/ActionButton;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/software/shell/fab/ActionButton;->hide()V

    .line 243
    :goto_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 248
    :cond_0
    iget-object v1, p0, Lcom/wubydax/romcontrol/MainViewActivity;->overlay:Landroid/view/View;

    const/4 v2, 0x0

    invoke-virtual {v1, v2}, Landroid/view/View;->setVisibility(I)V

    .line 249
    iget-object v1, p0, Lcom/wubydax/romcontrol/MainViewActivity;->rebootFabs:[Lcom/software/shell/fab/ActionButton;

    aget-object v1, v1, v0

    invoke-virtual {v1}, Lcom/software/shell/fab/ActionButton;->show()V

    goto :goto_1

    .line 253
    :cond_1
    return-void
.end method
