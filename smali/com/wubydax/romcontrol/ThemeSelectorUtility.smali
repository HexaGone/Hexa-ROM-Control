.class public Lcom/wubydax/romcontrol/ThemeSelectorUtility;
.super Ljava/lang/Object;
.source "ThemeSelectorUtility.java"


# instance fields
.field c:Landroid/content/Context;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 26
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 27
    iput-object p1, p0, Lcom/wubydax/romcontrol/ThemeSelectorUtility;->c:Landroid/content/Context;

    .line 28
    return-void
.end method


# virtual methods
.method public onActivityCreateSetTheme(Landroid/app/Activity;)V
    .locals 4
    .param p1, "activity"    # Landroid/app/Activity;

    .prologue
    .line 36
    iget-object v2, p0, Lcom/wubydax/romcontrol/ThemeSelectorUtility;->c:Landroid/content/Context;

    invoke-static {v2}, Landroid/preference/PreferenceManager;->getDefaultSharedPreferences(Landroid/content/Context;)Landroid/content/SharedPreferences;

    move-result-object v0

    .line 37
    .local v0, "prefs":Landroid/content/SharedPreferences;
    const-string v2, "theme_prefs"

    const/4 v3, 0x0

    invoke-interface {v0, v2, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v1

    .line 39
    .local v1, "themeId":I
    packed-switch v1, :pswitch_data_0

    .line 42
    const v2, 0x7f0a0025

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setTheme(I)V

    .line 49
    :goto_0
    return-void

    .line 45
    :pswitch_0
    const v2, 0x7f0a0026

    invoke-virtual {p1, v2}, Landroid/app/Activity;->setTheme(I)V

    goto :goto_0

    .line 39
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
    .end packed-switch
.end method
