.class Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$2;
.super Landroid/os/AsyncTask;
.source "IntentDialogPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->createList()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation

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


# instance fields
.field final synthetic this$0:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;


# direct methods
.method constructor <init>(Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;)V
    .locals 0

    .prologue
    .line 249
    iput-object p1, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$2;->this$0:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;

    invoke-direct {p0}, Landroid/os/AsyncTask;-><init>()V

    return-void
.end method


# virtual methods
.method protected bridge synthetic doInBackground([Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 249
    check-cast p1, [Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$2;->doInBackground([Ljava/lang/Void;)Ljava/lang/Void;

    move-result-object v0

    return-object v0
.end method

.method protected varargs doInBackground([Ljava/lang/Void;)Ljava/lang/Void;
    .locals 4
    .param p1, "params"    # [Ljava/lang/Void;

    .prologue
    .line 259
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$2;->this$0:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;

    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$2;->this$0:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;

    # invokes: Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->createAppList()Ljava/util/List;
    invoke-static {v1}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->access$000(Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;)Ljava/util/List;

    move-result-object v1

    iput-object v1, v0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->mAppList:Ljava/util/List;

    .line 260
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$2;->this$0:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;

    iget-object v0, v0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->mAppList:Ljava/util/List;

    new-instance v1, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$2$1;

    invoke-direct {v1, p0}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$2$1;-><init>(Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$2;)V

    invoke-static {v0, v1}, Ljava/util/Collections;->sort(Ljava/util/List;Ljava/util/Comparator;)V

    .line 267
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$2;->this$0:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;

    new-instance v1, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;

    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$2;->this$0:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;

    iget-object v3, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$2;->this$0:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;

    iget-object v3, v3, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->mAppList:Ljava/util/List;

    invoke-direct {v1, v2, v3}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;-><init>(Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;Ljava/util/List;)V

    iput-object v1, v0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->appListAdapter:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;

    .line 268
    const/4 v0, 0x0

    return-object v0
.end method

.method protected bridge synthetic onPostExecute(Ljava/lang/Object;)V
    .locals 0

    .prologue
    .line 249
    check-cast p1, Ljava/lang/Void;

    invoke-virtual {p0, p1}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$2;->onPostExecute(Ljava/lang/Void;)V

    return-void
.end method

.method protected onPostExecute(Ljava/lang/Void;)V
    .locals 2
    .param p1, "aVoid"    # Ljava/lang/Void;

    .prologue
    .line 273
    invoke-super {p0, p1}, Landroid/os/AsyncTask;->onPostExecute(Ljava/lang/Object;)V

    .line 274
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$2;->this$0:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;

    iget-object v0, v0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->pb:Landroid/widget/ProgressBar;

    const/16 v1, 0x8

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 275
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$2;->this$0:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;

    iget-object v0, v0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->lv:Landroid/widget/ListView;

    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$2;->this$0:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;

    iget-object v1, v1, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->appListAdapter:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;

    invoke-virtual {v0, v1}, Landroid/widget/ListView;->setAdapter(Landroid/widget/ListAdapter;)V

    .line 276
    return-void
.end method

.method protected onPreExecute()V
    .locals 2

    .prologue
    .line 252
    invoke-super {p0}, Landroid/os/AsyncTask;->onPreExecute()V

    .line 253
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$2;->this$0:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;

    iget-object v0, v0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->pb:Landroid/widget/ProgressBar;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Landroid/widget/ProgressBar;->setVisibility(I)V

    .line 254
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$2;->this$0:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;

    iget-object v0, v0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->pb:Landroid/widget/ProgressBar;

    invoke-virtual {v0}, Landroid/widget/ProgressBar;->refreshDrawableState()V

    .line 255
    return-void
.end method
