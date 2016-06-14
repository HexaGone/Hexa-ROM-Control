.class public Lcom/wubydax/romcontrol/UIPrefsFragment;
.super Landroid/preference/PreferenceFragment;
.source "UIPrefsFragment.java"


# instance fields
.field hpf:Lcom/wubydax/romcontrol/HandlePreferenceFragments;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 23
    invoke-direct {p0}, Landroid/preference/PreferenceFragment;-><init>()V

    return-void
.end method


# virtual methods
.method public onCreate(Landroid/os/Bundle;)V
    .locals 3
    .param p1, "savedInstanceState"    # Landroid/os/Bundle;

    .prologue
    .line 28
    invoke-super {p0, p1}, Landroid/preference/PreferenceFragment;->onCreate(Landroid/os/Bundle;)V

    .line 29
    new-instance v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;

    invoke-virtual {p0}, Lcom/wubydax/romcontrol/UIPrefsFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    const-string v2, "ui_prefs"

    invoke-direct {v0, v1, p0, v2}, Lcom/wubydax/romcontrol/HandlePreferenceFragments;-><init>(Landroid/content/Context;Landroid/preference/PreferenceFragment;Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wubydax/romcontrol/UIPrefsFragment;->hpf:Lcom/wubydax/romcontrol/HandlePreferenceFragments;

    .line 30
    return-void
.end method

.method public onPause()V
    .locals 1

    .prologue
    .line 40
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onPause()V

    .line 41
    iget-object v0, p0, Lcom/wubydax/romcontrol/UIPrefsFragment;->hpf:Lcom/wubydax/romcontrol/HandlePreferenceFragments;

    invoke-virtual {v0}, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->onPauseFragment()V

    .line 42
    return-void
.end method

.method public onResume()V
    .locals 1

    .prologue
    .line 34
    invoke-super {p0}, Landroid/preference/PreferenceFragment;->onResume()V

    .line 35
    iget-object v0, p0, Lcom/wubydax/romcontrol/UIPrefsFragment;->hpf:Lcom/wubydax/romcontrol/HandlePreferenceFragments;

    invoke-virtual {v0}, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->onResumeFragment()V

    .line 36
    return-void
.end method
