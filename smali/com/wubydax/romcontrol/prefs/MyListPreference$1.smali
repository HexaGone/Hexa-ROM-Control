.class Lcom/wubydax/romcontrol/prefs/MyListPreference$1;
.super Ljava/lang/Object;
.source "MyListPreference.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wubydax/romcontrol/prefs/MyListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wubydax/romcontrol/prefs/MyListPreference;


# direct methods
.method constructor <init>(Lcom/wubydax/romcontrol/prefs/MyListPreference;)V
    .locals 0

    .prologue
    .line 72
    iput-object p1, p0, Lcom/wubydax/romcontrol/prefs/MyListPreference$1;->this$0:Lcom/wubydax/romcontrol/prefs/MyListPreference;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 2
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 75
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/MyListPreference$1;->this$0:Lcom/wubydax/romcontrol/prefs/MyListPreference;

    # setter for: Lcom/wubydax/romcontrol/prefs/MyListPreference;->mClickedDialogEntryIndex:I
    invoke-static {v0, p2}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->access$002(Lcom/wubydax/romcontrol/prefs/MyListPreference;I)I

    .line 77
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/MyListPreference$1;->this$0:Lcom/wubydax/romcontrol/prefs/MyListPreference;

    const/4 v1, -0x1

    invoke-virtual {v0, p1, v1}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->onClick(Landroid/content/DialogInterface;I)V

    .line 78
    invoke-interface {p1}, Landroid/content/DialogInterface;->dismiss()V

    .line 80
    return-void
.end method
