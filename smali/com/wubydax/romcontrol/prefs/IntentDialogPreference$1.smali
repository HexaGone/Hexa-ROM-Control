.class Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$1;
.super Ljava/lang/Object;
.source "IntentDialogPreference.java"

# interfaces
.implements Landroid/text/TextWatcher;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->onBindDialogView(Landroid/view/View;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;


# direct methods
.method constructor <init>(Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;)V
    .locals 0

    .prologue
    .line 114
    iput-object p1, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$1;->this$0:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public afterTextChanged(Landroid/text/Editable;)V
    .locals 0
    .param p1, "s"    # Landroid/text/Editable;

    .prologue
    .line 127
    return-void
.end method

.method public beforeTextChanged(Ljava/lang/CharSequence;III)V
    .locals 0
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "count"    # I
    .param p4, "after"    # I

    .prologue
    .line 118
    return-void
.end method

.method public onTextChanged(Ljava/lang/CharSequence;III)V
    .locals 1
    .param p1, "s"    # Ljava/lang/CharSequence;
    .param p2, "start"    # I
    .param p3, "before"    # I
    .param p4, "count"    # I

    .prologue
    .line 122
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$1;->this$0:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;

    iget-object v0, v0, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;->appListAdapter:Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;

    invoke-virtual {v0}, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference$AppListAdapter;->getFilter()Landroid/widget/Filter;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/widget/Filter;->filter(Ljava/lang/CharSequence;)V

    .line 123
    return-void
.end method
