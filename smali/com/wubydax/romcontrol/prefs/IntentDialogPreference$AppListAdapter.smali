.class Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;
.super Landroid/widget/BaseAdapter;
.source "IntentDialogPreference.java"

# interfaces
.implements Landroid/widget/SectionIndexer;
.implements Landroid/widget/Filterable;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "AppListAdapter"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter$ViewHolder;
    }
.end annotation


# instance fields
.field private alphaIndexer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field filteredList:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;"
        }
    .end annotation
.end field

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

.field private sections:[Ljava/lang/String;

.field final synthetic this$0:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;


# direct methods
.method public constructor <init>(Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;Ljava/util/List;)V
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Landroid/content/pm/ApplicationInfo;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 286
    .local p2, "appList":Ljava/util/List;, "Ljava/util/List<Landroid/content/pm/ApplicationInfo;>;"
    iput-object p1, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->this$0:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;

    invoke-direct {p0}, Landroid/widget/BaseAdapter;-><init>()V

    .line 288
    iput-object p2, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->mAppList:Ljava/util/List;

    .line 289
    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->mAppList:Ljava/util/List;

    iput-object v5, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->filteredList:Ljava/util/List;

    .line 291
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    iput-object v5, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    .line 292
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->filteredList:Ljava/util/List;

    invoke-interface {v5}, Ljava/util/List;->size()I

    move-result v5

    if-ge v0, v5, :cond_1

    .line 293
    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->filteredList:Ljava/util/List;

    invoke-interface {v5, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Landroid/content/pm/ApplicationInfo;

    iget-object v6, p1, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v5, v6}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-interface {v5}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 294
    .local v1, "s":Ljava/lang/String;
    const/4 v5, 0x0

    const/4 v6, 0x1

    invoke-virtual {v1, v5, v6}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v2

    .line 295
    .local v2, "s1":Ljava/lang/String;
    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    invoke-virtual {v5, v2}, Ljava/util/HashMap;->containsKey(Ljava/lang/Object;)Z

    move-result v5

    if-nez v5, :cond_0

    .line 296
    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v6

    invoke-virtual {v5, v2, v6}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 292
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 299
    .end local v1    # "s":Ljava/lang/String;
    .end local v2    # "s1":Ljava/lang/String;
    :cond_1
    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    invoke-virtual {v5}, Ljava/util/HashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    .line 300
    .local v3, "sectionLetters":Ljava/util/Set;, "Ljava/util/Set<Ljava/lang/String;>;"
    new-instance v4, Ljava/util/ArrayList;

    invoke-direct {v4, v3}, Ljava/util/ArrayList;-><init>(Ljava/util/Collection;)V

    .line 301
    .local v4, "sectionList":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-static {v4}, Ljava/util/Collections;->sort(Ljava/util/List;)V

    .line 302
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    new-array v5, v5, [Ljava/lang/String;

    iput-object v5, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->sections:[Ljava/lang/String;

    .line 303
    const/4 v0, 0x0

    :goto_1
    invoke-virtual {v4}, Ljava/util/ArrayList;->size()I

    move-result v5

    if-ge v0, v5, :cond_2

    .line 304
    iget-object v6, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->sections:[Ljava/lang/String;

    invoke-virtual {v4, v0}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    aput-object v5, v6, v0

    .line 303
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 306
    :cond_2
    return-void
.end method


# virtual methods
.method public getCount()I
    .locals 1

    .prologue
    .line 368
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->filteredList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 369
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->filteredList:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    .line 371
    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public getFilter()Landroid/widget/Filter;
    .locals 1

    .prologue
    .line 330
    new-instance v0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter$1;

    invoke-direct {v0, p0}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter$1;-><init>(Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;)V

    .line 356
    .local v0, "filter":Landroid/widget/Filter;
    return-object v0
.end method

.method public getItem(I)Landroid/content/pm/ApplicationInfo;
    .locals 1
    .param p1, "position"    # I

    .prologue
    .line 376
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->filteredList:Ljava/util/List;

    if-eqz v0, :cond_0

    .line 377
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->filteredList:Ljava/util/List;

    invoke-interface {v0, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 379
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic getItem(I)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 280
    invoke-virtual {p0, p1}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->getItem(I)Landroid/content/pm/ApplicationInfo;

    move-result-object v0

    return-object v0
.end method

.method public getItemId(I)J
    .locals 2
    .param p1, "position"    # I

    .prologue
    .line 384
    const-wide/16 v0, 0x0

    return-wide v0
.end method

.method public getPositionForSection(I)I
    .locals 2
    .param p1, "sectionIndex"    # I

    .prologue
    .line 315
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->sections:[Ljava/lang/String;

    aget-object v1, v1, p1

    invoke-virtual {v0, v1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v0

    return v0
.end method

.method public getSectionForPosition(I)I
    .locals 3
    .param p1, "position"    # I

    .prologue
    .line 320
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->sections:[Ljava/lang/String;

    array-length v1, v1

    add-int/lit8 v0, v1, -0x1

    .local v0, "i":I
    :goto_0
    if-ltz v0, :cond_1

    .line 321
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->alphaIndexer:Ljava/util/HashMap;

    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->sections:[Ljava/lang/String;

    aget-object v2, v2, v0

    invoke-virtual {v1, v2}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    if-lt p1, v1, :cond_0

    .line 325
    .end local v0    # "i":I
    :goto_1
    return v0

    .line 320
    .restart local v0    # "i":I
    :cond_0
    add-int/lit8 v0, v0, -0x1

    goto :goto_0

    .line 325
    :cond_1
    const/4 v0, 0x0

    goto :goto_1
.end method

.method public getSections()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 310
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->sections:[Ljava/lang/String;

    return-object v0
.end method

.method public getView(ILandroid/view/View;Landroid/view/ViewGroup;)Landroid/view/View;
    .locals 6
    .param p1, "position"    # I
    .param p2, "convertView"    # Landroid/view/View;
    .param p3, "parent"    # Landroid/view/ViewGroup;

    .prologue
    .line 390
    if-nez p2, :cond_0

    .line 391
    iget-object v4, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->this$0:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;

    iget-object v4, v4, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->c:Landroid/content/Context;

    invoke-static {v4}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v2

    .line 392
    .local v2, "inflater":Landroid/view/LayoutInflater;
    const v4, 0x7f04001a

    const/4 v5, 0x0

    invoke-virtual {v2, v4, p3, v5}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object p2

    .line 393
    new-instance v3, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter$ViewHolder;

    invoke-direct {v3, p0}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter$ViewHolder;-><init>(Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;)V

    .line 394
    .local v3, "viewHolder":Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter$ViewHolder;
    const v4, 0x7f0f0060

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter$ViewHolder;->mAppNames:Landroid/widget/TextView;

    .line 395
    const v4, 0x7f0f0061

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/TextView;

    iput-object v4, v3, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter$ViewHolder;->mAppPackage:Landroid/widget/TextView;

    .line 396
    const v4, 0x7f0f005e

    invoke-virtual {p2, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v4

    check-cast v4, Landroid/widget/ImageView;

    iput-object v4, v3, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter$ViewHolder;->mAppIcon:Landroid/widget/ImageView;

    .line 397
    invoke-virtual {p2, v3}, Landroid/view/View;->setTag(Ljava/lang/Object;)V

    .line 399
    .end local v2    # "inflater":Landroid/view/LayoutInflater;
    .end local v3    # "viewHolder":Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter$ViewHolder;
    :cond_0
    invoke-virtual {p2}, Landroid/view/View;->getTag()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter$ViewHolder;

    .line 400
    .local v1, "holder":Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter$ViewHolder;
    iget-object v4, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->filteredList:Ljava/util/List;

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/content/pm/ApplicationInfo;

    .line 402
    .local v0, "applicationInfo":Landroid/content/pm/ApplicationInfo;
    iget-object v4, v1, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter$ViewHolder;->mAppNames:Landroid/widget/TextView;

    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->this$0:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;

    iget-object v5, v5, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 403
    iget-object v4, v1, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter$ViewHolder;->mAppPackage:Landroid/widget/TextView;

    iget-object v5, v0, Landroid/content/pm/ApplicationInfo;->packageName:Ljava/lang/String;

    invoke-virtual {v4, v5}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 404
    iget-object v4, v1, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter$ViewHolder;->mAppIcon:Landroid/widget/ImageView;

    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->this$0:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;

    iget-object v5, v5, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->pm:Landroid/content/pm/PackageManager;

    invoke-virtual {v0, v5}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;

    move-result-object v5

    invoke-virtual {v4, v5}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 406
    return-object p2
.end method
