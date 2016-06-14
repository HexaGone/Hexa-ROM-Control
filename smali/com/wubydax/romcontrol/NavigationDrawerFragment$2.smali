.class Lcom/wubydax/romcontrol/NavigationDrawerFragment$2;
.super Ljava/lang/Object;
.source "NavigationDrawerFragment.java"

# interfaces
.implements Ljava/lang/Runnable;


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
.method constructor <init>(Lcom/wubydax/romcontrol/NavigationDrawerFragment;)V
    .locals 0

    .prologue
    .line 215
    iput-object p1, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment$2;->this$0:Lcom/wubydax/romcontrol/NavigationDrawerFragment;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 218
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavigationDrawerFragment$2;->this$0:Lcom/wubydax/romcontrol/NavigationDrawerFragment;

    # getter for: Lcom/wubydax/romcontrol/NavigationDrawerFragment;->mActionBarDrawerToggle:Landroid/support/v7/app/ActionBarDrawerToggle;
    invoke-static {v0}, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->access$100(Lcom/wubydax/romcontrol/NavigationDrawerFragment;)Landroid/support/v7/app/ActionBarDrawerToggle;

    move-result-object v0

    invoke-virtual {v0}, Landroid/support/v7/app/ActionBarDrawerToggle;->syncState()V

    .line 219
    return-void
.end method
