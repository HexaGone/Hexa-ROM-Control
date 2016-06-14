.class public Lcom/wubydax/romcontrol/AppLinksFragment;
.super Landroid/preference/PreferenceFragment;
.source "AppLinksFragment.java"


# instance fields
.field hpf:Lcom/wubydax/romcontrol/HandlePreferenceFragments;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 8
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 13
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 14
    new-instance v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;

    invoke-virtual {p0}, Lcom/wubydax/romcontrol/AppLinksFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "app_links_prefs"

    invoke-direct {v0, v1, p0, v2}, Lcom/wubydax/romcontrol/HandlePreferenceFragments;-><init>(Landroid/content/Context;Landroid/preference/PreferenceFragment;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wubydax/romcontrol/AppLinksFragment;->hpf:Lcom/wubydax/romcontrol/HandlePreferenceFragments;

    .line 15
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 25
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 26
    iget-object v0, p0, Lcom/wubydax/romcontrol/AppLinksFragment;->hpf:Lcom/wubydax/romcontrol/HandlePreferenceFragments;

    invoke-virtual {v0}, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->onPauseFragment()V

    .line 27
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 19
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 20
    iget-object v0, p0, Lcom/wubydax/romcontrol/AppLinksFragment;->hpf:Lcom/wubydax/romcontrol/HandlePreferenceFragments;

    invoke-virtual {v0}, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->onResumeFragment()V

    .line 21
    return-void
.end method
