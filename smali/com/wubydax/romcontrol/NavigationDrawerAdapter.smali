.class public Lcom/wubydax/romcontrol/NavigationDrawerAdapter;
.super Landroid/support/v7/widget/RecyclerView$Adapter;
.source "NavigationDrawerAdapter.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;
    }
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/support/v7/widget/RecyclerView$Adapter",
        "<",
        "Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;",
        ">;"
    }
.end annotation


# instance fields
.field private context:Landroid/content/Context;

.field private mData:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Lcom/wubydax/romcontrol/NavItem;",
            ">;"
        }
    .end annotation
.end field

.field private mNavigationDrawerCallbacks:Lcom/wubydax/romcontrol/NavigationDrawerCallbacks;

.field private mSelectedPosition:I

.field private mSelectedView:Landroid/view/View;


# direct methods
.method public constructor <init>(Ljava/util/List;Landroid/content/Context;)V
    .locals 0
    .param p2, "c"    # Landroid/content/Context;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List",
            "<",
            "Lcom/wubydax/romcontrol/NavItem;",
            ">;",
            "Landroid/content/Context;",
            ")V"
        }
    .end annotation

    .prologue
    .line 42
    .local p1, "data":Ljava/util/List;, "Ljava/util/List<Lcom/wubydax/romcontrol/NavItem;>;"
    invoke-direct {p0}, Landroid/support/v7/widget/RecyclerView$Adapter;-><init>()V

    .line 43
    iput-object p1, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->mData:Ljava/util/List;

    .line 44
    iput-object p2, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->context:Landroid/content/Context;

    .line 45
    return-void
.end method

.method static synthetic access$000(Lcom/wubydax/romcontrol/NavigationDrawerAdapter;)Landroid/view/View;
    .locals 1
    .param p0, "x0"    # Lcom/wubydax/romcontrol/NavigationDrawerAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->mSelectedView:Landroid/view/View;

    return-object v0
.end method

.method static synthetic access$002(Lcom/wubydax/romcontrol/NavigationDrawerAdapter;Landroid/view/View;)Landroid/view/View;
    .locals 0
    .param p0, "x0"    # Lcom/wubydax/romcontrol/NavigationDrawerAdapter;
    .param p1, "x1"    # Landroid/view/View;

    .prologue
    .line 34
    iput-object p1, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->mSelectedView:Landroid/view/View;

    return-object p1
.end method

.method static synthetic access$102(Lcom/wubydax/romcontrol/NavigationDrawerAdapter;I)I
    .locals 0
    .param p0, "x0"    # Lcom/wubydax/romcontrol/NavigationDrawerAdapter;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->mSelectedPosition:I

    return p1
.end method

.method static synthetic access$200(Lcom/wubydax/romcontrol/NavigationDrawerAdapter;)Lcom/wubydax/romcontrol/NavigationDrawerCallbacks;
    .locals 1
    .param p0, "x0"    # Lcom/wubydax/romcontrol/NavigationDrawerAdapter;

    .prologue
    .line 34
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->mNavigationDrawerCallbacks:Lcom/wubydax/romcontrol/NavigationDrawerCallbacks;

    return-object v0
.end method


# virtual methods
.method public getItemCount()I
    .locals 1

    .prologue
    .line 113
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->mData:Ljava/util/List;

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0}, Ljava/util/List;->size()I

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public bridge synthetic onBindViewHolder(Landroid/support/v7/widget/RecyclerView$ViewHolder;I)V
    .locals 0

    .prologue
    .line 34
    check-cast p1, Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;

    invoke-virtual {p0, p1, p2}, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->onBindViewHolder(Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;I)V

    return-void
.end method

.method public onBindViewHolder(Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;I)V
    .locals 2
    .param p1, "viewHolder"    # Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;
    .param p2, "i"    # I

    .prologue
    .line 92
    iget-object v1, p1, Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wubydax/romcontrol/NavItem;

    invoke-virtual {v0}, Lcom/wubydax/romcontrol/NavItem;->getText()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 93
    iget-object v1, p1, Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;->icon:Landroid/widget/ImageView;

    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->mData:Ljava/util/List;

    invoke-interface {v0, p2}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/wubydax/romcontrol/NavItem;

    invoke-virtual {v0}, Lcom/wubydax/romcontrol/NavItem;->getIcon()I

    move-result v0

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 94
    iget v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->mSelectedPosition:I

    if-ne v0, p2, :cond_1

    .line 95
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->mSelectedView:Landroid/view/View;

    if-eqz v0, :cond_0

    .line 96
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->mSelectedView:Landroid/view/View;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 98
    :cond_0
    iput p2, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->mSelectedPosition:I

    .line 99
    iget-object v0, p1, Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;->itemView:Landroid/view/View;

    iput-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->mSelectedView:Landroid/view/View;

    .line 100
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->mSelectedView:Landroid/view/View;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/View;->setSelected(Z)V

    .line 103
    :cond_1
    return-void
.end method

.method public bridge synthetic onCreateViewHolder(Landroid/view/ViewGroup;I)Landroid/support/v7/widget/RecyclerView$ViewHolder;
    .locals 1

    .prologue
    .line 34
    invoke-virtual {p0, p1, p2}, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;

    move-result-object v0

    return-object v0
.end method

.method public onCreateViewHolder(Landroid/view/ViewGroup;I)Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;
    .locals 10
    .param p1, "viewGroup"    # Landroid/view/ViewGroup;
    .param p2, "i"    # I

    .prologue
    const/4 v9, 0x1

    .line 55
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-static {v6}, Landroid/view/LayoutInflater;->from(Landroid/content/Context;)Landroid/view/LayoutInflater;

    move-result-object v6

    const v7, 0x7f04001c

    const/4 v8, 0x0

    invoke-virtual {v6, v7, p1, v8}, Landroid/view/LayoutInflater;->inflate(ILandroid/view/ViewGroup;Z)Landroid/view/View;

    move-result-object v3

    .line 56
    .local v3, "v":Landroid/view/View;
    new-instance v4, Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;

    invoke-direct {v4, v3}, Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;-><init>(Landroid/view/View;)V

    .line 57
    .local v4, "viewHolder":Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;
    iget-object v6, v4, Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;->itemView:Landroid/view/View;

    invoke-virtual {v6, v9}, Landroid/view/View;->setClickable(Z)V

    .line 58
    iget-object v6, v4, Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;->itemView:Landroid/view/View;

    new-instance v7, Lcom/wubydax/romcontrol/NavigationDrawerAdapter$1;

    invoke-direct {v7, p0, v4}, Lcom/wubydax/romcontrol/NavigationDrawerAdapter$1;-><init>(Lcom/wubydax/romcontrol/NavigationDrawerAdapter;Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;)V

    invoke-virtual {v6, v7}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 77
    new-instance v2, Landroid/util/TypedValue;

    invoke-direct {v2}, Landroid/util/TypedValue;-><init>()V

    .line 78
    .local v2, "typedValue":Landroid/util/TypedValue;
    iget-object v6, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->context:Landroid/content/Context;

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v1

    .line 79
    .local v1, "theme":Landroid/content/res/Resources$Theme;
    const v6, 0x7f010006

    invoke-virtual {v1, v6, v2, v9}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 80
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    iget v7, v2, Landroid/util/TypedValue;->resourceId:I

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getXml(I)Landroid/content/res/XmlResourceParser;

    move-result-object v5

    .line 82
    .local v5, "xrp":Landroid/content/res/XmlResourceParser;
    :try_start_0
    invoke-virtual {p1}, Landroid/view/ViewGroup;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    invoke-static {v6, v5}, Landroid/content/res/ColorStateList;->createFromXml(Landroid/content/res/Resources;Lorg/xmlpull/v1/XmlPullParser;)Landroid/content/res/ColorStateList;

    move-result-object v0

    .line 83
    .local v0, "csl":Landroid/content/res/ColorStateList;
    iget-object v6, v4, Lcom/wubydax/romcontrol/NavigationDrawerAdapter$ViewHolder;->textView:Landroid/widget/TextView;

    invoke-virtual {v6, v0}, Landroid/widget/TextView;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 87
    .end local v0    # "csl":Landroid/content/res/ColorStateList;
    :goto_0
    return-object v4

    .line 85
    :catch_0
    move-exception v6

    goto :goto_0
.end method

.method public selectPosition(I)V
    .locals 0
    .param p1, "position"    # I

    .prologue
    .line 107
    iput p1, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->mSelectedPosition:I

    .line 108
    invoke-virtual {p0, p1}, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->notifyItemChanged(I)V

    .line 109
    return-void
.end method

.method public setNavigationDrawerCallbacks(Lcom/wubydax/romcontrol/NavigationDrawerCallbacks;)V
    .locals 0
    .param p1, "navigationDrawerCallbacks"    # Lcom/wubydax/romcontrol/NavigationDrawerCallbacks;

    .prologue
    .line 49
    iput-object p1, p0, Lcom/wubydax/romcontrol/NavigationDrawerAdapter;->mNavigationDrawerCallbacks:Lcom/wubydax/romcontrol/NavigationDrawerCallbacks;

    .line 50
    return-void
.end method
