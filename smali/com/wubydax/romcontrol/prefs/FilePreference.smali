.class public Lcom/wubydax/romcontrol/prefs/FilePreference;
.super Landroid/preference/SwitchPreference;
.source "FilePreference.java"

# interfaces
.implements Landroid/widget/CompoundButton$OnCheckedChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field c:Landroid/content/Context;

.field defaultNameSpace:Ljava/lang/String;

.field file:Ljava/io/File;

.field isOn:Z

.field key:Ljava/lang/String;

.field summaryOff:Ljava/lang/CharSequence;

.field summaryOn:Ljava/lang/CharSequence;

.field swView:Landroid/widget/Switch;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 43
    invoke-direct {p0, p1, p2}, Landroid/preference/SwitchPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 44
    iput-object p1, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->c:Landroid/content/Context;

    .line 45
    const v0, 0x7f04001d

    invoke-virtual {p0, v0}, Lcom/wubydax/romcontrol/prefs/FilePreference;->setWidgetLayoutResource(I)V

    .line 46
    const-string v0, "http://schemas.android.com/apk/res/android"

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->defaultNameSpace:Ljava/lang/String;

    .line 47
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->defaultNameSpace:Ljava/lang/String;

    const-string v1, "key"

    const-string v2, "file"

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/wubydax/romcontrol/prefs/FilePreference;->getStringForAttr(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->key:Ljava/lang/String;

    .line 48
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->defaultNameSpace:Ljava/lang/String;

    const-string v1, "summaryOn"

    const-string v2, ""

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/wubydax/romcontrol/prefs/FilePreference;->getStringForAttr(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->summaryOn:Ljava/lang/CharSequence;

    .line 49
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->defaultNameSpace:Ljava/lang/String;

    const-string v1, "summaryOff"

    const-string v2, ""

    invoke-direct {p0, p2, v0, v1, v2}, Lcom/wubydax/romcontrol/prefs/FilePreference;->getStringForAttr(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->summaryOff:Ljava/lang/CharSequence;

    .line 51
    new-instance v0, Ljava/io/File;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->c:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    sget-object v2, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->key:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->file:Ljava/io/File;

    .line 52
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->file:Ljava/io/File;

    invoke-virtual {v0}, Ljava/io/File;->exists()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    iput-boolean v0, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->isOn:Z

    .line 53
    invoke-virtual {p0, p0}, Lcom/wubydax/romcontrol/prefs/FilePreference;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 54
    return-void

    .line 52
    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private getStringForAttr(Landroid/util/AttributeSet;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p1, "attrs"    # Landroid/util/AttributeSet;
    .param p2, "ns"    # Ljava/lang/String;
    .param p3, "attrName"    # Ljava/lang/String;
    .param p4, "defaultValue"    # Ljava/lang/String;

    .prologue
    .line 58
    invoke-interface {p1, p2, p3}, Landroid/util/AttributeSet;->getAttributeValue(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 59
    .local v0, "value":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 60
    move-object v0, p4

    .line 61
    :cond_0
    return-object v0
.end method


# virtual methods
.method protected onBindView(Landroid/view/View;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-super {p0, p1}, Landroid/preference/SwitchPreference;->onBindView(Landroid/view/View;)V

    .line 67
    const v2, 0x7f0f006a

    invoke-virtual {p1, v2}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/Switch;

    iput-object v2, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->swView:Landroid/widget/Switch;

    .line 68
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->swView:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->isOn:Z

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 69
    iget-boolean v2, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->isOn:Z

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v0

    .line 70
    .local v0, "isOnValue":Ljava/lang/String;
    const/4 v2, 0x0

    invoke-virtual {p0, v2}, Lcom/wubydax/romcontrol/prefs/FilePreference;->getPersistedBoolean(Z)Z

    move-result v2

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v1

    .line 71
    .local v1, "persistedBoolValue":Ljava/lang/String;
    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_0

    .line 72
    iget-boolean v2, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->isOn:Z

    invoke-virtual {p0, v2}, Lcom/wubydax/romcontrol/prefs/FilePreference;->persistBoolean(Z)Z

    .line 74
    :cond_0
    invoke-virtual {p0, p1}, Lcom/wubydax/romcontrol/prefs/FilePreference;->syncSummaryView(Landroid/view/View;)V

    .line 75
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->swView:Landroid/widget/Switch;

    invoke-virtual {v2, p0}, Landroid/widget/Switch;->setOnCheckedChangeListener(Landroid/widget/CompoundButton$OnCheckedChangeListener;)V

    .line 76
    return-void
.end method

.method public onCheckedChanged(Landroid/widget/CompoundButton;Z)V
    .locals 0
    .param p1, "buttonView"    # Landroid/widget/CompoundButton;
    .param p2, "isChecked"    # Z

    .prologue
    .line 112
    invoke-virtual {p0, p2}, Lcom/wubydax/romcontrol/prefs/FilePreference;->persistBoolean(Z)Z

    .line 113
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/FilePreference;->notifyChanged()V

    .line 114
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 5
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    const/4 v4, 0x1

    .line 119
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->swView:Landroid/widget/Switch;

    invoke-virtual {v2}, Landroid/widget/Switch;->isChecked()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 121
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->delete()Z

    .line 122
    const/4 v2, 0x0

    iput-boolean v2, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->isOn:Z

    .line 135
    :goto_0
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->swView:Landroid/widget/Switch;

    iget-boolean v3, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->isOn:Z

    invoke-virtual {v2, v3}, Landroid/widget/Switch;->setChecked(Z)V

    .line 136
    return v4

    .line 127
    :cond_0
    :try_start_0
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->file:Ljava/io/File;

    invoke-virtual {v2}, Ljava/io/File;->createNewFile()Z

    .line 128
    new-instance v1, Ljava/io/BufferedOutputStream;

    new-instance v2, Ljava/io/FileOutputStream;

    iget-object v3, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->file:Ljava/io/File;

    invoke-direct {v2, v3}, Ljava/io/FileOutputStream;-><init>(Ljava/io/File;)V

    const/16 v3, 0x4000

    invoke-direct {v1, v2, v3}, Ljava/io/BufferedOutputStream;-><init>(Ljava/io/OutputStream;I)V

    .line 129
    .local v1, "fout":Ljava/io/BufferedOutputStream;
    invoke-virtual {v1}, Ljava/io/BufferedOutputStream;->close()V

    .line 130
    const/4 v2, 0x1

    iput-boolean v2, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->isOn:Z
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 131
    .end local v1    # "fout":Ljava/io/BufferedOutputStream;
    :catch_0
    move-exception v0

    .line 132
    .local v0, "e":Ljava/io/IOException;
    invoke-virtual {v0}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0
.end method

.method syncSummaryView(Landroid/view/View;)V
    .locals 5
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 80
    const v4, 0x1020010

    invoke-virtual {p1, v4}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v2

    check-cast v2, Landroid/widget/TextView;

    .line 81
    .local v2, "summaryView":Landroid/widget/TextView;
    if-eqz v2, :cond_3

    .line 82
    const/4 v3, 0x1

    .line 83
    .local v3, "useDefaultSummary":Z
    iget-boolean v4, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->isOn:Z

    if-eqz v4, :cond_4

    iget-object v4, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->summaryOn:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_4

    .line 84
    iget-object v4, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->summaryOn:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 85
    const/4 v3, 0x0

    .line 90
    :cond_0
    :goto_0
    if-eqz v3, :cond_1

    .line 91
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/FilePreference;->getSummary()Ljava/lang/CharSequence;

    move-result-object v1

    .line 92
    .local v1, "summary":Ljava/lang/CharSequence;
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 93
    invoke-virtual {v2, v1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 94
    const/4 v3, 0x0

    .line 97
    .end local v1    # "summary":Ljava/lang/CharSequence;
    :cond_1
    const/16 v0, 0x8

    .line 98
    .local v0, "newVisibility":I
    if-nez v3, :cond_2

    .line 100
    const/4 v0, 0x0

    .line 102
    :cond_2
    invoke-virtual {v2}, Landroid/widget/TextView;->getVisibility()I

    move-result v4

    if-eq v0, v4, :cond_3

    .line 103
    invoke-virtual {v2, v0}, Landroid/widget/TextView;->setVisibility(I)V

    .line 106
    .end local v0    # "newVisibility":I
    .end local v3    # "useDefaultSummary":Z
    :cond_3
    return-void

    .line 86
    .restart local v3    # "useDefaultSummary":Z
    :cond_4
    iget-boolean v4, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->isOn:Z

    if-nez v4, :cond_0

    iget-object v4, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->summaryOff:Ljava/lang/CharSequence;

    invoke-static {v4}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_0

    .line 87
    iget-object v4, p0, Lcom/wubydax/romcontrol/prefs/FilePreference;->summaryOff:Ljava/lang/CharSequence;

    invoke-virtual {v2, v4}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 88
    const/4 v3, 0x0

    goto :goto_0
.end method
