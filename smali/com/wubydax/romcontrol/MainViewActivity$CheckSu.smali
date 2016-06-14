.class public Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;
.super Landroid/os/AsyncTask;
.source "MainViewActivity.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wubydax/romcontrol/MainViewActivity;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CheckSu"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Landroid/os/AsyncTask",
        "<",
        "Ljava/lang/Void;",
        "Ljava/lang/Void;",
        "Ljava/lang/Boolean;",
        ">;"
    }
.end annotation


# instance fields
.field mProgressDialog:Landroid/app/ProgressDialog;

.field final synthetic this$0:Lcom/wubydax/romcontrol/MainViewActivity;


# direct methods
.method public constructor <init>(Lcom/wubydax/romcontrol/MainViewActivity;)V
    .locals 0

    .prologue
    .line 299
    iput-object p1, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;
    .locals 3
    .param p1, "voids"    # [Ljava/lang/Void;

    .prologue
    .line 314
    invoke-static {}, Lcom/stericson/RootTools/RootTools;->isAccessGiven()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 315
    iget-object v0, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    iget-object v1, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    invoke-virtual {v1}, Lcom/wubydax/romcontrol/MainViewActivity;->getAssets()Landroid/content/res/AssetManager;

    move-result-object v1

    iput-object v1, v0, Lcom/wubydax/romcontrol/MainViewActivity;->am:Landroid/content/res/AssetManager;

    .line 318
    iget-object v0, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    new-instance v1, Lcom/wubydax/romcontrol/HandleScripts;

    iget-object v2, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    invoke-direct {v1, v2}, Lcom/wubydax/romcontrol/HandleScripts;-><init>(Landroid/content/Context;)V

    iput-object v1, v0, Lcom/wubydax/romcontrol/MainViewActivity;->hs:Lcom/wubydax/romcontrol/HandleScripts;

    .line 319
    iget-object v0, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    iget-object v0, v0, Lcom/wubydax/romcontrol/MainViewActivity;->hs:Lcom/wubydax/romcontrol/HandleScripts;

    invoke-virtual {v0}, Lcom/wubydax/romcontrol/HandleScripts;->copyAssetFolder()Z

    .line 320
    const/4 v0, 0x1

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    .line 324
    :goto_0
    return-object v0

    :cond_0
    const/4 v0, 0x0

    invoke-static {v0}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    goto :goto_0
.end method

.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 299
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->doInBackground([Ljava/lang/Void;)Ljava/lang/Boolean;

    move-result-object v0

    return-object v0
.end method

.method protected onPostExecute(Ljava/lang/Boolean;)V
    .locals 7
    .param p1, "result"    # Ljava/lang/Boolean;

    .prologue
    const v6, 0x7f0f005d

    .line 330
    iget-object v2, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v2}, Landroid/app/ProgressDialog;->dismiss()V

    .line 333
    invoke-virtual {p1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v2

    if-nez v2, :cond_0

    .line 335
    new-instance v1, Landroid/app/AlertDialog$Builder;

    iget-object v2, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    invoke-direct {v1, v2}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 336
    .local v1, "mNoSuBuilder":Landroid/app/AlertDialog$Builder;
    const v2, 0x7f08001c

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setTitle(I)Landroid/app/AlertDialog$Builder;

    .line 337
    const v2, 0x7f08001b

    invoke-virtual {v1, v2}, Landroid/app/AlertDialog$Builder;->setMessage(I)Landroid/app/AlertDialog$Builder;

    .line 338
    const v2, 0x7f080018

    new-instance v3, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu$1;

    invoke-direct {v3, p0}, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu$1;-><init>(Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;)V

    invoke-virtual {v1, v2, v3}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 344
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    .line 345
    invoke-virtual {v1}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v0

    .line 346
    .local v0, "mNoSu":Landroid/app/Dialog;
    invoke-virtual {v0}, Landroid/app/Dialog;->show()V

    .line 370
    .end local v0    # "mNoSu":Landroid/app/Dialog;
    .end local v1    # "mNoSuBuilder":Landroid/app/AlertDialog$Builder;
    :goto_0
    return-void

    .line 351
    :cond_0
    iget-object v2, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    const v3, 0x7f040019

    invoke-virtual {v2, v3}, Lcom/wubydax/romcontrol/MainViewActivity;->setContentView(I)V

    .line 352
    iget-object v3, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    iget-object v2, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    const v4, 0x7f0f0054

    invoke-virtual {v2, v4}, Lcom/wubydax/romcontrol/MainViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v7/widget/Toolbar;

    # setter for: Lcom/wubydax/romcontrol/MainViewActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;
    invoke-static {v3, v2}, Lcom/wubydax/romcontrol/MainViewActivity;->access$102(Lcom/wubydax/romcontrol/MainViewActivity;Landroid/support/v7/widget/Toolbar;)Landroid/support/v7/widget/Toolbar;

    .line 353
    iget-object v2, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    iget-object v3, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    # getter for: Lcom/wubydax/romcontrol/MainViewActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;
    invoke-static {v3}, Lcom/wubydax/romcontrol/MainViewActivity;->access$100(Lcom/wubydax/romcontrol/MainViewActivity;)Landroid/support/v7/widget/Toolbar;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/wubydax/romcontrol/MainViewActivity;->setSupportActionBar(Landroid/support/v7/widget/Toolbar;)V

    .line 355
    iget-object v3, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    iget-object v2, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    invoke-virtual {v2}, Lcom/wubydax/romcontrol/MainViewActivity;->getFragmentManager()Landroid/app/FragmentManager;

    move-result-object v2

    invoke-virtual {v2, v6}, Landroid/app/FragmentManager;->findFragmentById(I)Landroid/app/Fragment;

    move-result-object v2

    check-cast v2, Lcom/wubydax/romcontrol/NavigationDrawerFragment;

    # setter for: Lcom/wubydax/romcontrol/MainViewActivity;->mNavigationDrawerFragment:Lcom/wubydax/romcontrol/NavigationDrawerFragment;
    invoke-static {v3, v2}, Lcom/wubydax/romcontrol/MainViewActivity;->access$202(Lcom/wubydax/romcontrol/MainViewActivity;Lcom/wubydax/romcontrol/NavigationDrawerFragment;)Lcom/wubydax/romcontrol/NavigationDrawerFragment;

    .line 359
    iget-object v2, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    # getter for: Lcom/wubydax/romcontrol/MainViewActivity;->mNavigationDrawerFragment:Lcom/wubydax/romcontrol/NavigationDrawerFragment;
    invoke-static {v2}, Lcom/wubydax/romcontrol/MainViewActivity;->access$200(Lcom/wubydax/romcontrol/MainViewActivity;)Lcom/wubydax/romcontrol/NavigationDrawerFragment;

    move-result-object v3

    iget-object v2, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    const v4, 0x7f0f0053

    invoke-virtual {v2, v4}, Lcom/wubydax/romcontrol/MainViewActivity;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/support/v4/widget/DrawerLayout;

    iget-object v4, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    # getter for: Lcom/wubydax/romcontrol/MainViewActivity;->mToolbar:Landroid/support/v7/widget/Toolbar;
    invoke-static {v4}, Lcom/wubydax/romcontrol/MainViewActivity;->access$100(Lcom/wubydax/romcontrol/MainViewActivity;)Landroid/support/v7/widget/Toolbar;

    move-result-object v4

    iget-object v5, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    invoke-virtual {v3, v6, v2, v4, v5}, Lcom/wubydax/romcontrol/NavigationDrawerFragment;->setup(ILandroid/support/v4/widget/DrawerLayout;Landroid/support/v7/widget/Toolbar;Landroid/content/Context;)V

    .line 360
    iget-object v2, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    # invokes: Lcom/wubydax/romcontrol/MainViewActivity;->initRebootMenu()V
    invoke-static {v2}, Lcom/wubydax/romcontrol/MainViewActivity;->access$300(Lcom/wubydax/romcontrol/MainViewActivity;)V

    goto :goto_0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 299
    check-cast p1, Ljava/lang/Boolean;

    invoke-virtual {p0, p1}, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->onPostExecute(Ljava/lang/Boolean;)V

    return-void
.end method

.method protected onPreExecute()V
    .locals 3

    .prologue
    .line 305
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 306
    new-instance v0, Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    invoke-direct {v0, v1}, Landroid/app/ProgressDialog;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->mProgressDialog:Landroid/app/ProgressDialog;

    .line 307
    iget-object v0, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->mProgressDialog:Landroid/app/ProgressDialog;

    iget-object v1, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    const v2, 0x7f080019

    invoke-virtual {v1, v2}, Lcom/wubydax/romcontrol/MainViewActivity;->getString(I)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/app/ProgressDialog;->setMessage(Ljava/lang/CharSequence;)V

    .line 308
    iget-object v0, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->mProgressDialog:Landroid/app/ProgressDialog;

    invoke-virtual {v0}, Landroid/app/ProgressDialog;->show()V

    .line 309
    return-void
.end method
