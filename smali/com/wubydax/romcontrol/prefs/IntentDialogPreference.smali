.class public Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;
.super Landroid/preference/DialogPreference;
.source "IntentDialogPreference.java"

# interfaces
.implements Landroid/widget/AdapterView$OnItemClickListener;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;
    }
.end annotation


# instance fields
.field ai:Landroid/content/pm/ApplicationInfo;

.field appIcon:Landroid/graphics/drawable/Drawable;

.field appListAdapter:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;

.field c:Landroid/content/Context;

.field isSearch:Z

.field loadApps:Landroid/os/AsyncTask;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/AsyncTask",
            "<",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            "Ljava/lang/Void;",
            ">;"
        }
    .end annotation
.end field

.field lv:Landroid/widget/ListView;

.field mAppList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

.field mSummary:Ljava/lang/String;

.field mValue:Ljava/lang/String;

.field pb:Landroid/widget/ProgressBar;

.field pm:Landroid/content/pm/PackageManager;

.field prefAppIcon:Landroid/widget/ImageView;

.field search:Landroid/widget/EditText;

.field separator:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    const/4 v2, 0x0

    .line 75
    invoke-direct {p0, p1, p2}, Landroid/preference/DialogPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 76
    iput-object p1, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->c:Landroid/content/Context;

    .line 77
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->c:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v0

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    .line 78
    const-string v0, "setSeparatorString"

    const-string v1, "/"

    invoke-direct {p0, p2, v2, v0, v1}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->getStringForAttr(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->separator:Ljava/lang/String;

    .line 79
    const-string v0, "includeSearch"

    const/4 v1, 0x0

    invoke-interface {p2, v2, v0, v1}, Landroid/util/AttributeSet;->getAttributeBooleanValue(Ljava/lang/String;Ljava/lang/String;Z)Z

    move-result v0

    iput-boolean v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->isSearch:Z

    .line 80
    const v0, 0x7f040020

    invoke-virtual {p0, v0}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->setDialogLayoutResource(I)V

    .line 81
    const v0, 0x7f040021

    invoke-virtual {p0, v0}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->setWidgetLayoutResource(I)V

    .line 82
    return-void
.end method

.method static synthetic access$000(Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;)Ljava/util/List;
    .locals 1
    .param p0, "x0"    # Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;

    .prologue
    .line 58
    invoke-direct {p0}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->createAppList()Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method private createAppList()Ljava/util/List;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation

    .prologue
    .line 199
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    .line 200
    .local v0, "appList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Landroid/content/pm/ApplicationInfo;>;"
    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    const/16 v6, 0x80

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getInstalledApplications(I)Ljava/util/List;

    move-result-object v4

    .line 201
    .local v4, "list":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v3

    .line 203
    .local v3, "l":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v3, :cond_1

    .line 205
    :try_start_0
    iget-object v6, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v5, v5, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v6, v5}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v5

    if-eqz v5, :cond_0

    .line 206
    invoke-interface {v4, v2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    invoke-virtual {v0, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 203
    :cond_0
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 208
    :catch_0
    move-exception v1

    .line 209
    .local v1, "ex":Ljava/lang/Exception;
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_1

    .line 212
    .end local v1    # "ex":Ljava/lang/Exception;
    :cond_1
    return-object v0
.end method

.method private createList()V
    .locals 2

    .prologue
    .line 249
    new-instance v0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$2;

    invoke-direct {v0, p0}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$2;-><init>(Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;)V

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Void;

    invoke-virtual {v0, v1}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$2;->execute([Ljava/lang/Object;)Landroid/os/AsyncTask;

    move-result-object v0

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->loadApps:Landroid/os/AsyncTask;

    .line 278
    return-void
.end method

.method private getAppName(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 186
    iget-object v4, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->separator:Ljava/lang/String;

    invoke-virtual {p1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 187
    .local v3, "split":[Ljava/lang/String;
    aget-object v2, v3, v5

    .line 188
    .local v2, "pkgName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 190
    .local v0, "appName":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    const/4 v5, 0x0

    invoke-virtual {v4, v2, v5}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v4

    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v4

    invoke-interface {v4}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 195
    :goto_0
    return-object v0

    .line 191
    :catch_0
    move-exception v1

    .line 192
    .local v1, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v1}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0
.end method

.method private getStringForAttr(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "ns"    # Ljava/lang/String;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 85
    invoke-interface {p1, p2, p3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 86
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 87
    move-object v0, p4

    .line 88
    :cond_0
    return-object v0
.end method


# virtual methods
.method public getAppIcon()Landroid/graphics/drawable/Drawable;
    .locals 6

    .prologue
    .line 217
    const/4 v4, 0x0

    invoke-virtual {p0, v4}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 218
    .local v1, "intent":Ljava/lang/String;
    if-eqz v1, :cond_0

    .line 219
    iget-object v4, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->separator:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 220
    .local v3, "splitValue":[Ljava/lang/String;
    const/4 v4, 0x0

    aget-object v2, v3, v4

    .line 222
    .local v2, "pkg":Ljava/lang/String;
    :try_start_0
    iget-object v4, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v4, v2}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->appIcon:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 229
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "splitValue":[Ljava/lang/String;
    :goto_0
    iget-object v4, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->appIcon:Landroid/graphics/drawable/Drawable;

    return-object v4

    .line 223
    .restart local v2    # "pkg":Ljava/lang/String;
    .restart local v3    # "splitValue":[Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 224
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto :goto_0

    .line 227
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v2    # "pkg":Ljava/lang/String;
    .end local v3    # "splitValue":[Ljava/lang/String;
    :cond_0
    iget-object v4, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->c:Landroid/content/Context;

    invoke-virtual {v4}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    const v5, 0x7f02003f

    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;

    move-result-object v4

    iput-object v4, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->appIcon:Landroid/graphics/drawable/Drawable;

    goto :goto_0
.end method

.method protected onBindDialogView(Landroid/view/View;)V
    .locals 3
    .param p1, "view"    # Landroid/view/View;

    .prologue
    const/4 v1, 0x1

    const/4 v2, 0x0

    .line 101
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindDialogView(Landroid/view/View;)V

    .line 102
    const v0, 0x7f0f0071

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ListView;

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->lv:Landroid/widget/ListView;

    .line 103
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->lv:Landroid/widget/ListView;

    invoke-virtual {v0, p0}, Landroid/widget/ListView;->setOnItemClickListener(Landroid/widget/AdapterView$OnItemClickListener;)V

    .line 104
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->lv:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFastScrollEnabled(Z)V

    .line 105
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->lv:Landroid/widget/ListView;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setFadingEdgeLength(I)V

    .line 106
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->lv:Landroid/widget/ListView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setDivider(Landroid/graphics/drawable/Drawable;)V

    .line 107
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->lv:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setDividerHeight(I)V

    .line 108
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->lv:Landroid/widget/ListView;

    invoke-virtual {v0, v2}, Landroid/widget/ListView;->setScrollingCacheEnabled(Z)V

    .line 109
    const v0, 0x7f0f0072

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ProgressBar;

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->pb:Landroid/widget/ProgressBar;

    .line 110
    iget-boolean v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->isSearch:Z

    if-eqz v0, :cond_0

    .line 111
    const v0, 0x7f0f0070

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/EditText;

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->search:Landroid/widget/EditText;

    .line 112
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->search:Landroid/widget/EditText;

    invoke-virtual {v0, v2}, Landroid/widget/EditText;->setVisibility(I)V

    .line 113
    invoke-direct {p0}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->createList()V

    .line 114
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->search:Landroid/widget/EditText;

    new-instance v1, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$1;

    invoke-direct {v1, p0}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$1;-><init>(Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;)V

    invoke-virtual {v0, v1}, Landroid/widget/EditText;->addTextChangedListener(Landroid/text/TextWatcher;)V

    .line 134
    :goto_0
    return-void

    .line 130
    :cond_0
    invoke-direct {p0}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->createList()V

    goto :goto_0
.end method

.method protected onBindView(Landroid/view/View;)V
    .locals 2
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 93
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->onBindView(Landroid/view/View;)V

    .line 94
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->getAppIcon()Landroid/graphics/drawable/Drawable;

    .line 95
    const v0, 0x7f0f0073

    invoke-virtual {p1, v0}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/widget/ImageView;

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->prefAppIcon:Landroid/widget/ImageView;

    .line 96
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->prefAppIcon:Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->appIcon:Landroid/graphics/drawable/Drawable;

    invoke-virtual {v0, v1}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 97
    return-void
.end method

.method public onDismiss(Landroid/content/DialogInterface;)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;

    .prologue
    .line 138
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->loadApps:Landroid/os/AsyncTask;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->loadApps:Landroid/os/AsyncTask;

    invoke-virtual {v0}, Landroid/os/AsyncTask;->getStatus()Landroid/os/AsyncTask$Status;

    move-result-object v0

    sget-object v1, Landroid/os/AsyncTask$Status;->RUNNING:Landroid/os/AsyncTask$Status;

    if-ne v0, v1, :cond_0

    .line 139
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->loadApps:Landroid/os/AsyncTask;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/os/AsyncTask;->cancel(Z)Z

    .line 140
    const/4 v0, 0x0

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->loadApps:Landroid/os/AsyncTask;

    .line 142
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 146
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public onItemClick(Landroid/widget/AdapterView;Landroid/view/View;IJ)V
    .locals 9
    .param p2, "view"    # Landroid/view/View;
    .param p3, "position"    # I
    .param p4, "id"    # J
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/widget/AdapterView",
            "<*>;",
            "Landroid/view/View;",
            "IJ)V"
        }
    .end annotation

    .prologue
    .local p1, "parent":Landroid/widget/AdapterView;, "Landroid/widget/AdapterView<*>;"
    const/4 v8, 0x0

    .line 234
    invoke-virtual {p1, p3}, Landroid/widget/AdapterView;->getItemAtPosition(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 235
    .local v0, "appInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    iget-object v6, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v5, v6}, Landroid/content/pm/PackageManager;->getLaunchIntentForPackage(Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v1

    .line 236
    .local v1, "intent":Landroid/content/Intent;
    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v1, v8}, Landroid/content/pm/PackageManager;->resolveActivity(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v4

    .line 237
    .local v4, "ri":Landroid/content/pm/ResolveInfo;
    iget-object v5, v4, Landroid/content/pm/ResolveInfo;->activityInfo:Landroid/content/pm/ActivityInfo;

    iget-object v3, v5, Landroid/content/pm/ActivityInfo;->name:Ljava/lang/String;

    .line 238
    .local v3, "launchableActivity":Ljava/lang/String;
    const-string v5, "%1$s%2$s%3$s"

    const/4 v6, 0x3

    new-array v6, v6, [Ljava/lang/Object;

    iget-object v7, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    aput-object v7, v6, v8

    const/4 v7, 0x1

    iget-object v8, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->separator:Ljava/lang/String;

    aput-object v8, v6, v7

    const/4 v7, 0x2

    aput-object v3, v6, v7

    invoke-static {v5, v6}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v2

    .line 239
    .local v2, "intentString":Ljava/lang/String;
    if-nez v2, :cond_0

    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->mSummary:Ljava/lang/String;

    :goto_0
    invoke-virtual {p0, v5}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 240
    invoke-virtual {p0, v2}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->persistString(Ljava/lang/String;)Z

    .line 241
    iput-object v2, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->mValue:Ljava/lang/String;

    .line 242
    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    iput-object v5, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->appIcon:Landroid/graphics/drawable/Drawable;

    .line 243
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v5

    invoke-virtual {v5}, Landroid/app/Dialog;->dismiss()V

    .line 245
    return-void

    .line 239
    :cond_0
    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    goto :goto_0
.end method

.method public onParentChanged(Landroid/preference/Preference;Z)V
    .locals 0
    .param p1, "parent"    # Landroid/preference/Preference;
    .param p2, "disableChild"    # Z

    .prologue
    .line 178
    invoke-super {p0, p1, p2}, Landroid/preference/DialogPreference;->onParentChanged(Landroid/preference/Preference;Z)V

    .line 179
    return-void
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 3
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    const/4 v2, 0x0

    .line 151
    if-eqz p1, :cond_1

    .line 152
    invoke-virtual {p0, v2}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 153
    .local v1, "value":Ljava/lang/String;
    invoke-direct {p0, v1}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->getAppName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 154
    .local v0, "appName":Ljava/lang/String;
    if-nez v0, :cond_0

    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->mSummary:Ljava/lang/String;

    .end local v0    # "appName":Ljava/lang/String;
    :cond_0
    invoke-virtual {p0, v0}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 159
    .end local v1    # "value":Ljava/lang/String;
    :goto_0
    return-void

    .line 156
    :cond_1
    invoke-virtual {p0, v2}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->persistString(Ljava/lang/String;)Z

    .line 157
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->mSummary:Ljava/lang/String;

    invoke-virtual {p0, v2}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto :goto_0
.end method

.method public setDefaultSummary(Ljava/lang/String;)V
    .locals 0
    .param p1, "summary"    # Ljava/lang/String;

    .prologue
    .line 182
    iput-object p1, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->mSummary:Ljava/lang/String;

    .line 183
    return-void
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 7
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    .line 163
    invoke-super {p0, p1}, Landroid/preference/DialogPreference;->showDialog(Landroid/os/Bundle;)V

    .line 164
    new-instance v4, Landroid/util/TypedValue;

    invoke-direct {v4}, Landroid/util/TypedValue;-><init>()V

    .line 165
    .local v4, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->getContext()Landroid/content/Context;

    move-result-object v5

    invoke-virtual {v5}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v3

    .line 166
    .local v3, "theme":Landroid/content/res/Resources$Theme;
    const v5, 0x7f0100b7

    const/4 v6, 0x1

    invoke-virtual {v3, v5, v4, v6}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 167
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 168
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 169
    const/4 v5, -0x2

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 170
    .local v0, "cancel":Landroid/widget/Button;
    const/4 v5, -0x1

    invoke-virtual {v1, v5}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v2

    .line 171
    .local v2, "ok":Landroid/widget/Button;
    const/16 v5, 0x8

    invoke-virtual {v2, v5}, Landroid/widget/Button;->setVisibility(I)V

    .line 172
    iget v5, v4, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, v5}, Landroid/widget/Button;->setTextColor(I)V

    .line 173
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v5

    const v6, 0x7f02003b

    invoke-virtual {v5, v6}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 174
    return-void
.end method
