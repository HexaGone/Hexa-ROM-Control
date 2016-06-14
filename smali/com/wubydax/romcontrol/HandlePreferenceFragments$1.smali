.class Lcom/wubydax/romcontrol/HandlePreferenceFragments$1;
.super Lcom/stericson/RootShell/execution/Command;
.source "HandlePreferenceFragments.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wubydax/romcontrol/HandlePreferenceFragments;->onPreferenceClick(Landroid/preference/Preference;)Z
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wubydax/romcontrol/HandlePreferenceFragments;


# direct methods
.method varargs constructor <init>(Lcom/wubydax/romcontrol/HandlePreferenceFragments;I[Ljava/lang/String;)V
    .locals 0
    .param p2, "x0"    # I
    .param p3, "x1"    # [Ljava/lang/String;

    .prologue
    .line 375
    iput-object p1, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments$1;->this$0:Lcom/wubydax/romcontrol/HandlePreferenceFragments;

    invoke-direct {p0, p2, p3}, Lcom/stericson/RootShell/execution/Command;-><init>(I[Ljava/lang/String;)V

    return-void
.end method


# virtual methods
.method public commandCompleted(II)V
    .locals 3
    .param p1, "id"    # I
    .param p2, "exitcode"    # I

    .prologue
    const/4 v2, 0x0

    .line 378
    invoke-super {p0, p1, p2}, Lcom/stericson/RootShell/execution/Command;->commandCompleted(II)V

    .line 379
    if-eqz p2, :cond_0

    .line 380
    iget-object v0, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments$1;->this$0:Lcom/wubydax/romcontrol/HandlePreferenceFragments;

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->c:Landroid/content/Context;

    invoke-static {p2}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    .line 385
    :goto_0
    return-void

    .line 382
    :cond_0
    iget-object v0, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments$1;->this$0:Lcom/wubydax/romcontrol/HandlePreferenceFragments;

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->c:Landroid/content/Context;

    const-string v1, "Executed Successfully"

    invoke-static {v0, v1, v2}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v0

    invoke-virtual {v0}, Landroid/widget/Toast;->show()V

    goto :goto_0
.end method
