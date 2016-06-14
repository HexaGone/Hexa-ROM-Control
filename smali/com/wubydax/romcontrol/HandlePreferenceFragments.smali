.class public Lcom/wubydax/romcontrol/HandlePreferenceFragments;
.super Ljava/lang/Object;
.source "HandlePreferenceFragments.java"

# interfaces
.implements Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;
.implements Landroid/preference/Preference$OnPreferenceClickListener;


# instance fields
.field adapter:Landroid/widget/ListAdapter;

.field c:Landroid/content/Context;

.field cr:Landroid/content/ContentResolver;

.field ed:Landroid/content/SharedPreferences$Editor;

.field isOutOfBounds:Z

.field pf:Landroid/preference/PreferenceFragment;

.field pm:Landroid/preference/PreferenceManager;

.field prefs:Landroid/content/SharedPreferences;

.field spName:Ljava/lang/String;


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/preference/PreferenceFragment;Ljava/lang/String;)V
    .locals 4
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "pf"    # Landroid/preference/PreferenceFragment;
    .param p3, "spName"    # Ljava/lang/String;

    .prologue
    .line 76
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 77
    iput-object p2, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    .line 78
    iput-object p1, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->c:Landroid/content/Context;

    .line 79
    iput-object p3, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->spName:Ljava/lang/String;

    .line 80
    invoke-virtual {p2}, Landroid/preference/PreferenceFragment;->getPreferenceManager()Landroid/preference/PreferenceManager;

    move-result-object v1

    iput-object v1, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->pm:Landroid/preference/PreferenceManager;

    .line 81
    iget-object v1, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->pm:Landroid/preference/PreferenceManager;

    invoke-virtual {v1, p3}, Landroid/preference/PreferenceManager;->setSharedPreferencesName(Ljava/lang/String;)V

    .line 82
    iget-object v1, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->pm:Landroid/preference/PreferenceManager;

    invoke-virtual {v1}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v1

    iput-object v1, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->prefs:Landroid/content/SharedPreferences;

    .line 83
    iget-object v1, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v1}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v1

    iput-object v1, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->ed:Landroid/content/SharedPreferences$Editor;

    .line 84
    iget-object v1, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    iput-object v1, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    .line 85
    iget-object v1, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->c:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const-string v2, "xml"

    iget-object v3, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->c:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, p3, v2, v3}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v0

    .line 86
    .local v0, "id":I
    invoke-virtual {p2, v0}, Landroid/preference/PreferenceFragment;->addPreferencesFromResource(I)V

    .line 87
    return-void
.end method

.method private getAllPrefs()V
    .locals 3

    .prologue
    .line 103
    iget-object v2, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    invoke-virtual {v2}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v2

    invoke-virtual {v2}, Landroid/preference/PreferenceScreen;->getRootAdapter()Landroid/widget/ListAdapter;

    move-result-object v2

    iput-object v2, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->adapter:Landroid/widget/ListAdapter;

    .line 104
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v2, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v2}, Landroid/widget/ListAdapter;->getCount()I

    move-result v2

    if-ge v0, v2, :cond_1

    .line 105
    iget-object v2, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->adapter:Landroid/widget/ListAdapter;

    invoke-interface {v2, v0}, Landroid/widget/ListAdapter;->getItem(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/preference/Preference;

    .line 106
    .local v1, "p":Landroid/preference/Preference;
    instance-of v2, v1, Landroid/preference/PreferenceScreen;

    if-eqz v2, :cond_0

    .line 108
    invoke-virtual {p0, v1}, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->allGroups(Landroid/preference/Preference;)V

    .line 104
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 112
    .end local v1    # "p":Landroid/preference/Preference;
    :cond_1
    return-void
.end method

.method private initAllKeys()V
    .locals 25

    .prologue
    .line 178
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->pm:Landroid/preference/PreferenceManager;

    move-object/from16 v22, v0

    invoke-virtual/range {v22 .. v22}, Landroid/preference/PreferenceManager;->getSharedPreferences()Landroid/content/SharedPreferences;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences;->getAll()Ljava/util/Map;

    move-result-object v12

    .line 180
    .local v12, "keys":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;*>;"
    invoke-interface {v12}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v10

    .local v10, "i$":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v10}, Ljava/util/Iterator;->hasNext()Z

    move-result v22

    if-eqz v22, :cond_c

    invoke-interface {v10}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Ljava/util/Map$Entry;

    .line 182
    .local v8, "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    invoke-interface {v8}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Ljava/lang/String;

    .line 183
    .local v11, "key":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v17

    .line 185
    .local v17, "p":Landroid/preference/Preference;
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Ljava/lang/Boolean;

    move/from16 v22, v0

    if-eqz v22, :cond_3

    .line 186
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/wubydax/romcontrol/prefs/FilePreference;

    move/from16 v22, v0

    if-nez v22, :cond_0

    .line 189
    const/4 v3, 0x0

    .line 191
    .local v3, "actualInt":I
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const/16 v23, 0x1

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v0, v11, v1}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v5

    .line 193
    .local v5, "boolValue":Z
    if-eqz v5, :cond_1

    const/16 v18, 0x1

    .line 196
    .local v18, "prefInt":I
    :goto_1
    :try_start_0
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 202
    :goto_2
    if-nez v3, :cond_2

    const/4 v2, 0x0

    .line 203
    .local v2, "actualBoolean":Z
    :goto_3
    invoke-static {v5}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v22

    invoke-static {v2}, Ljava/lang/String;->valueOf(Z)Ljava/lang/String;

    move-result-object v23

    invoke-virtual/range {v22 .. v23}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_0

    .line 204
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->ed:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v11, v2}, Landroid/content/SharedPreferences$Editor;->putBoolean(Ljava/lang/String;Z)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto :goto_0

    .line 193
    .end local v2    # "actualBoolean":Z
    .end local v18    # "prefInt":I
    :cond_1
    const/16 v18, 0x0

    goto :goto_1

    .line 197
    .restart local v18    # "prefInt":I
    :catch_0
    move-exception v6

    .line 198
    .local v6, "e":Landroid/provider/Settings$SettingNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v0, v11, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 199
    move/from16 v3, v18

    goto :goto_2

    .line 202
    .end local v6    # "e":Landroid/provider/Settings$SettingNotFoundException;
    :cond_2
    const/4 v2, 0x1

    goto :goto_3

    .line 207
    .end local v3    # "actualInt":I
    .end local v5    # "boolValue":Z
    .end local v18    # "prefInt":I
    :cond_3
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Ljava/lang/Integer;

    move/from16 v22, v0

    if-eqz v22, :cond_4

    .line 208
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const/16 v23, 0x0

    move-object/from16 v0, v22

    move/from16 v1, v23

    invoke-interface {v0, v11, v1}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v18

    .line 209
    .restart local v18    # "prefInt":I
    const/4 v3, 0x0

    .line 211
    .restart local v3    # "actualInt":I
    :try_start_1
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    :try_end_1
    .catch Landroid/provider/Settings$SettingNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    move-result v3

    .line 216
    :goto_4
    move/from16 v0, v18

    if-eq v0, v3, :cond_0

    .line 217
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->ed:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-interface {v0, v11, v3}, Landroid/content/SharedPreferences$Editor;->putInt(Ljava/lang/String;I)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    goto/16 :goto_0

    .line 212
    :catch_1
    move-exception v6

    .line 213
    .restart local v6    # "e":Landroid/provider/Settings$SettingNotFoundException;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move/from16 v1, v18

    invoke-static {v0, v11, v1}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 214
    move/from16 v3, v18

    goto :goto_4

    .line 220
    .end local v3    # "actualInt":I
    .end local v6    # "e":Landroid/provider/Settings$SettingNotFoundException;
    .end local v18    # "prefInt":I
    :cond_4
    invoke-interface {v8}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v22

    move-object/from16 v0, v22

    instance-of v0, v0, Ljava/lang/String;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 221
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->prefs:Landroid/content/SharedPreferences;

    move-object/from16 v22, v0

    const-string v23, ""

    move-object/from16 v0, v22

    move-object/from16 v1, v23

    invoke-interface {v0, v11, v1}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v19

    .line 222
    .local v19, "prefString":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-static {v0, v11}, Landroid/provider/Settings$System;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    .line 223
    .local v4, "actualString":Ljava/lang/String;
    if-nez v4, :cond_b

    move-object/from16 v21, v19

    .line 230
    .local v21, "t":Ljava/lang/String;
    :goto_5
    :try_start_2
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/wubydax/romcontrol/prefs/MyListPreference;

    move/from16 v22, v0

    if-eqz v22, :cond_5

    .line 231
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v16

    check-cast v16, Lcom/wubydax/romcontrol/prefs/MyListPreference;

    .line 232
    .local v16, "mlp":Lcom/wubydax/romcontrol/prefs/MyListPreference;
    invoke-virtual/range {v16 .. v16}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v7

    .line 236
    .local v7, "entries":[Ljava/lang/CharSequence;
    move-object/from16 v0, v16

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v22

    aget-object v20, v7, v22

    check-cast v20, Ljava/lang/String;

    .line 237
    .local v20, "s":Ljava/lang/String;
    const-string v22, "listview index"

    move-object/from16 v0, v22

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 238
    const/16 v22, 0x0

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->isOutOfBounds:Z
    :try_end_2
    .catch Ljava/lang/IndexOutOfBoundsException; {:try_start_2 .. :try_end_2} :catch_2

    .line 247
    .end local v7    # "entries":[Ljava/lang/CharSequence;
    .end local v16    # "mlp":Lcom/wubydax/romcontrol/prefs/MyListPreference;
    .end local v20    # "s":Ljava/lang/String;
    :cond_5
    :goto_6
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/wubydax/romcontrol/prefs/MyListPreference;

    move/from16 v22, v0

    if-eqz v22, :cond_8

    .line 249
    move-object/from16 v0, p0

    iget-boolean v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->isOutOfBounds:Z

    move/from16 v22, v0

    if-nez v22, :cond_8

    .line 250
    if-nez v4, :cond_6

    .line 251
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v0, v11, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 253
    :cond_6
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_7

    .line 254
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->c:Landroid/content/Context;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 256
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->ed:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v11, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 260
    :cond_7
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v13

    check-cast v13, Lcom/wubydax/romcontrol/prefs/MyListPreference;

    .line 261
    .local v13, "l":Lcom/wubydax/romcontrol/prefs/MyListPreference;
    invoke-virtual {v13}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v14

    .line 262
    .local v14, "mEntries":[Ljava/lang/CharSequence;
    move-object/from16 v0, v21

    invoke-virtual {v13, v0}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v15

    .line 263
    .local v15, "mValueIndex":I
    aget-object v22, v14, v15

    move-object/from16 v0, v22

    invoke-virtual {v13, v0}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 266
    .end local v13    # "l":Lcom/wubydax/romcontrol/prefs/MyListPreference;
    .end local v14    # "mEntries":[Ljava/lang/CharSequence;
    .end local v15    # "mValueIndex":I
    :cond_8
    move-object/from16 v0, v17

    instance-of v0, v0, Lcom/wubydax/romcontrol/prefs/MyEditTextPreference;

    move/from16 v22, v0

    if-eqz v22, :cond_0

    .line 267
    if-nez v4, :cond_9

    .line 268
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v19

    invoke-static {v0, v11, v1}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 270
    :cond_9
    move-object/from16 v0, v19

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v22

    if-nez v22, :cond_a

    .line 271
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->c:Landroid/content/Context;

    move-object/from16 v22, v0

    new-instance v23, Ljava/lang/StringBuilder;

    invoke-direct/range {v23 .. v23}, Ljava/lang/StringBuilder;-><init>()V

    move-object/from16 v0, v23

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    const-string v24, "/"

    invoke-virtual/range {v23 .. v24}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    move-object/from16 v0, v23

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v23

    invoke-virtual/range {v23 .. v23}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v23

    const/16 v24, 0x0

    invoke-static/range {v22 .. v24}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v22

    invoke-virtual/range {v22 .. v22}, Landroid/widget/Toast;->show()V

    .line 273
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->ed:Landroid/content/SharedPreferences$Editor;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    move-object/from16 v1, v21

    invoke-interface {v0, v11, v1}, Landroid/content/SharedPreferences$Editor;->putString(Ljava/lang/String;Ljava/lang/String;)Landroid/content/SharedPreferences$Editor;

    move-result-object v22

    invoke-interface/range {v22 .. v22}, Landroid/content/SharedPreferences$Editor;->commit()Z

    .line 275
    :cond_a
    move-object/from16 v0, p0

    iget-object v0, v0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    move-object/from16 v22, v0

    move-object/from16 v0, v22

    invoke-virtual {v0, v11}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Lcom/wubydax/romcontrol/prefs/MyEditTextPreference;

    .line 276
    .local v9, "et":Lcom/wubydax/romcontrol/prefs/MyEditTextPreference;
    move-object/from16 v0, v21

    invoke-virtual {v9, v0}, Lcom/wubydax/romcontrol/prefs/MyEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_0

    .end local v9    # "et":Lcom/wubydax/romcontrol/prefs/MyEditTextPreference;
    .end local v21    # "t":Ljava/lang/String;
    :cond_b
    move-object/from16 v21, v4

    .line 223
    goto/16 :goto_5

    .line 241
    .restart local v21    # "t":Ljava/lang/String;
    :catch_2
    move-exception v6

    .line 242
    .local v6, "e":Ljava/lang/IndexOutOfBoundsException;
    const-string v22, "listview index"

    const-string v23, "exception"

    invoke-static/range {v22 .. v23}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    const/16 v22, 0x1

    move/from16 v0, v22

    move-object/from16 v1, p0

    iput-boolean v0, v1, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->isOutOfBounds:Z

    goto/16 :goto_6

    .line 281
    .end local v4    # "actualString":Ljava/lang/String;
    .end local v6    # "e":Ljava/lang/IndexOutOfBoundsException;
    .end local v8    # "entry":Ljava/util/Map$Entry;, "Ljava/util/Map$Entry<Ljava/lang/String;*>;"
    .end local v11    # "key":Ljava/lang/String;
    .end local v17    # "p":Landroid/preference/Preference;
    .end local v19    # "prefString":Ljava/lang/String;
    .end local v21    # "t":Ljava/lang/String;
    :cond_c
    return-void
.end method

.method private updateDatabase(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences;)V
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "o"    # Ljava/lang/Object;
    .param p3, "sp"    # Landroid/content/SharedPreferences;

    .prologue
    const/4 v0, 0x1

    const/4 v3, 0x0

    .line 339
    const-string v2, ""

    .line 341
    .local v2, "value":Ljava/lang/String;
    instance-of v4, p2, Landroid/preference/SwitchPreference;

    if-nez v4, :cond_0

    instance-of v4, p2, Landroid/preference/CheckBoxPreference;

    if-eqz v4, :cond_3

    .line 342
    :cond_0
    invoke-interface {p3, p1, v0}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v1

    .line 343
    .local v1, "isEnabled":Z
    if-eqz v1, :cond_2

    .line 344
    .local v0, "dbInt":I
    :goto_0
    iget-object v3, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    invoke-static {v3, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 355
    .end local v0    # "dbInt":I
    .end local v1    # "isEnabled":Z
    :cond_1
    :goto_1
    return-void

    .restart local v1    # "isEnabled":Z
    :cond_2
    move v0, v3

    .line 343
    goto :goto_0

    .line 345
    .end local v1    # "isEnabled":Z
    :cond_3
    instance-of v4, p2, Lcom/wubydax/romcontrol/prefs/MyEditTextPreference;

    if-nez v4, :cond_4

    instance-of v4, p2, Lcom/wubydax/romcontrol/prefs/MyListPreference;

    if-nez v4, :cond_4

    instance-of v4, p2, Lcom/wubydax/romcontrol/prefs/IntentDialogPreference;

    if-eqz v4, :cond_5

    .line 346
    :cond_4
    const-string v3, ""

    invoke-interface {p3, p1, v3}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 347
    iget-object v3, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    invoke-static {v3, p1, v2}, Landroid/provider/Settings$System;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    goto :goto_1

    .line 348
    :cond_5
    instance-of v4, p2, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;

    if-eqz v4, :cond_6

    .line 349
    const/4 v3, -0x1

    invoke-interface {p3, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 350
    .restart local v0    # "dbInt":I
    iget-object v3, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    invoke-static {v3, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1

    .line 351
    .end local v0    # "dbInt":I
    :cond_6
    instance-of v4, p2, Lcom/wubydax/romcontrol/prefs/SeekBarPreference;

    if-eqz v4, :cond_1

    .line 352
    invoke-interface {p3, p1, v3}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v0

    .line 353
    .restart local v0    # "dbInt":I
    iget-object v3, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->cr:Landroid/content/ContentResolver;

    invoke-static {v3, p1, v0}, Landroid/provider/Settings$System;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    goto :goto_1
.end method


# virtual methods
.method public allGroups(Landroid/preference/Preference;)V
    .locals 11
    .param p1, "p"    # Landroid/preference/Preference;

    .prologue
    .line 115
    move-object v8, p1

    check-cast v8, Landroid/preference/PreferenceScreen;

    .line 116
    .local v8, "ps":Landroid/preference/PreferenceScreen;
    invoke-virtual {v8, p0}, Landroid/preference/PreferenceScreen;->setOnPreferenceClickListener(Landroid/preference/Preference$OnPreferenceClickListener;)V

    .line 120
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v9

    if-eqz v9, :cond_0

    .line 121
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v9

    if-eqz v9, :cond_0

    .line 122
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v9

    const-string v10, "."

    invoke-virtual {v9, v10}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v3

    .line 123
    .local v3, "lastDot":I
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getKey()Ljava/lang/String;

    move-result-object v9

    const/4 v10, 0x0

    invoke-virtual {v9, v10, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v5

    .line 126
    .local v5, "pkgName":Ljava/lang/String;
    :try_start_0
    iget-object v9, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->c:Landroid/content/Context;

    invoke-virtual {v9}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v9

    invoke-virtual {v9, v5}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;

    move-result-object v2

    .line 127
    .local v2, "icon":Landroid/graphics/drawable/Drawable;
    invoke-virtual {v8, v2}, Landroid/preference/PreferenceScreen;->setIcon(Landroid/graphics/drawable/Drawable;)V
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 140
    .end local v2    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v3    # "lastDot":I
    .end local v5    # "pkgName":Ljava/lang/String;
    :cond_0
    :goto_0
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_1
    invoke-virtual {v8}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v9

    if-ge v1, v9, :cond_2

    .line 141
    invoke-virtual {v8, v1}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v4

    .line 142
    .local v4, "p1":Landroid/preference/Preference;
    instance-of v9, v4, Landroid/preference/PreferenceScreen;

    if-eqz v9, :cond_1

    .line 145
    invoke-virtual {p0, v4}, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->allGroups(Landroid/preference/Preference;)V

    .line 140
    :cond_1
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 128
    .end local v1    # "i":I
    .end local v4    # "p1":Landroid/preference/Preference;
    .restart local v3    # "lastDot":I
    .restart local v5    # "pkgName":Ljava/lang/String;
    :catch_0
    move-exception v0

    .line 129
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v0}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    .line 132
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->buildPreferenceParentTree()Ljava/util/Map;

    move-result-object v7

    .line 133
    .local v7, "preferenceParentTree":Ljava/util/Map;, "Ljava/util/Map<Landroid/preference/Preference;Landroid/preference/PreferenceScreen;>;"
    invoke-interface {v7, v8}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v6

    check-cast v6, Landroid/preference/PreferenceScreen;

    .line 134
    .local v6, "preferenceParent":Landroid/preference/PreferenceScreen;
    invoke-virtual {v6, v8}, Landroid/preference/PreferenceScreen;->removePreference(Landroid/preference/Preference;)Z

    goto :goto_0

    .line 149
    .end local v0    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v3    # "lastDot":I
    .end local v5    # "pkgName":Ljava/lang/String;
    .end local v6    # "preferenceParent":Landroid/preference/PreferenceScreen;
    .end local v7    # "preferenceParentTree":Ljava/util/Map;, "Ljava/util/Map<Landroid/preference/Preference;Landroid/preference/PreferenceScreen;>;"
    .restart local v1    # "i":I
    :cond_2
    return-void
.end method

.method public appRebootRequired(Ljava/lang/String;)V
    .locals 14
    .param p1, "pckgName"    # Ljava/lang/String;

    .prologue
    .line 439
    iget-object v10, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->c:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v7

    .line 440
    .local v7, "pm":Landroid/content/pm/PackageManager;
    const-string v1, ""

    .line 441
    .local v1, "appName":Ljava/lang/String;
    const/4 v0, 0x0

    .line 443
    .local v0, "appIcon":Landroid/graphics/drawable/Drawable;
    const/4 v10, 0x0

    :try_start_0
    invoke-virtual {v7, p1, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/pm/ApplicationInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v1

    .line 444
    const/4 v10, 0x0

    invoke-virtual {v7, p1, v10}, Landroid/content/pm/PackageManager;->getApplicationInfo(Ljava/lang/String;I)Landroid/content/pm/ApplicationInfo;

    move-result-object v10

    invoke-virtual {v10, v7}, Landroid/content/pm/ApplicationInfo;->loadIcon(Landroid/content/pm/PackageManager;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v0

    .line 448
    :goto_0
    new-instance v2, Landroid/app/AlertDialog$Builder;

    iget-object v10, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->c:Landroid/content/Context;

    invoke-direct {v2, v10}, Landroid/app/AlertDialog$Builder;-><init>(Landroid/content/Context;)V

    .line 449
    .local v2, "b":Landroid/app/AlertDialog$Builder;
    iget-object v10, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->c:Landroid/content/Context;

    const v11, 0x7f080014

    invoke-virtual {v10, v11}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/String;->toUpperCase()Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Landroid/app/AlertDialog$Builder;->setTitle(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/4 v11, -0x1

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setIcon(I)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    invoke-virtual {v10, v0}, Landroid/app/AlertDialog$Builder;->setIcon(Landroid/graphics/drawable/Drawable;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    iget-object v11, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->c:Landroid/content/Context;

    const v12, 0x7f080013

    invoke-virtual {v11, v12}, Landroid/content/Context;->getString(I)Ljava/lang/String;

    move-result-object v11

    const/4 v12, 0x1

    new-array v12, v12, [Ljava/lang/Object;

    const/4 v13, 0x0

    aput-object v1, v12, v13

    invoke-static {v11, v12}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Landroid/app/AlertDialog$Builder;->setMessage(Ljava/lang/CharSequence;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const/high16 v11, 0x1040000

    new-instance v12, Lcom/wubydax/romcontrol/HandlePreferenceFragments$3;

    invoke-direct {v12, p0}, Lcom/wubydax/romcontrol/HandlePreferenceFragments$3;-><init>(Lcom/wubydax/romcontrol/HandlePreferenceFragments;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setNegativeButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    move-result-object v10

    const v11, 0x104000a

    new-instance v12, Lcom/wubydax/romcontrol/HandlePreferenceFragments$2;

    invoke-direct {v12, p0, p1}, Lcom/wubydax/romcontrol/HandlePreferenceFragments$2;-><init>(Lcom/wubydax/romcontrol/HandlePreferenceFragments;Ljava/lang/String;)V

    invoke-virtual {v10, v11, v12}, Landroid/app/AlertDialog$Builder;->setPositiveButton(ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 474
    invoke-virtual {v2}, Landroid/app/AlertDialog$Builder;->create()Landroid/app/AlertDialog;

    move-result-object v4

    .line 475
    .local v4, "d":Landroid/app/AlertDialog;
    invoke-virtual {v4}, Landroid/app/AlertDialog;->show()V

    .line 476
    new-instance v9, Landroid/util/TypedValue;

    invoke-direct {v9}, Landroid/util/TypedValue;-><init>()V

    .line 477
    .local v9, "typedValue":Landroid/util/TypedValue;
    iget-object v10, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->c:Landroid/content/Context;

    invoke-virtual {v10}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v8

    .line 478
    .local v8, "theme":Landroid/content/res/Resources$Theme;
    const v10, 0x7f0100b7

    const/4 v11, 0x1

    invoke-virtual {v8, v10, v9, v11}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 479
    const/4 v10, -0x2

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v3

    .line 480
    .local v3, "cancel":Landroid/widget/Button;
    const/4 v10, -0x1

    invoke-virtual {v4, v10}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v6

    .line 481
    .local v6, "ok":Landroid/widget/Button;
    iget v10, v9, Landroid/util/TypedValue;->data:I

    invoke-virtual {v3, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 482
    iget v10, v9, Landroid/util/TypedValue;->data:I

    invoke-virtual {v6, v10}, Landroid/widget/Button;->setTextColor(I)V

    .line 483
    invoke-virtual {v4}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v10

    const v11, 0x7f02003b

    invoke-virtual {v10, v11}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 485
    return-void

    .line 445
    .end local v2    # "b":Landroid/app/AlertDialog$Builder;
    .end local v3    # "cancel":Landroid/widget/Button;
    .end local v4    # "d":Landroid/app/AlertDialog;
    .end local v6    # "ok":Landroid/widget/Button;
    .end local v8    # "theme":Landroid/content/res/Resources$Theme;
    .end local v9    # "typedValue":Landroid/util/TypedValue;
    :catch_0
    move-exception v5

    .line 446
    .local v5, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    invoke-virtual {v5}, Landroid/content/pm/PackageManager$NameNotFoundException;->printStackTrace()V

    goto/16 :goto_0
.end method

.method public buildPreferenceParentTree()Ljava/util/Map;
    .locals 7
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/preference/Preference;",
            "Landroid/preference/PreferenceScreen;",
            ">;"
        }
    .end annotation

    .prologue
    .line 153
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 154
    .local v5, "result":Ljava/util/Map;, "Ljava/util/Map<Landroid/preference/Preference;Landroid/preference/PreferenceScreen;>;"
    new-instance v2, Ljava/util/Stack;

    invoke-direct {v2}, Ljava/util/Stack;-><init>()V

    .line 155
    .local v2, "curParents":Ljava/util/Stack;, "Ljava/util/Stack<Landroid/preference/PreferenceScreen;>;"
    iget-object v6, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    invoke-virtual {v6}, Landroid/preference/PreferenceFragment;->getPreferenceScreen()Landroid/preference/PreferenceScreen;

    move-result-object v6

    invoke-virtual {v2, v6}, Ljava/util/Stack;->add(Ljava/lang/Object;)Z

    .line 156
    :cond_0
    invoke-virtual {v2}, Ljava/util/Stack;->isEmpty()Z

    move-result v6

    if-nez v6, :cond_2

    .line 157
    invoke-virtual {v2}, Ljava/util/Stack;->pop()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Landroid/preference/PreferenceScreen;

    .line 158
    .local v4, "parent":Landroid/preference/PreferenceScreen;
    invoke-virtual {v4}, Landroid/preference/PreferenceScreen;->getPreferenceCount()I

    move-result v1

    .line 159
    .local v1, "childCount":I
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    if-ge v3, v1, :cond_0

    .line 160
    invoke-virtual {v4, v3}, Landroid/preference/PreferenceScreen;->getPreference(I)Landroid/preference/Preference;

    move-result-object v0

    .line 161
    .local v0, "child":Landroid/preference/Preference;
    invoke-interface {v5, v0, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 162
    instance-of v6, v0, Landroid/preference/PreferenceScreen;

    if-eqz v6, :cond_1

    .line 163
    check-cast v0, Landroid/preference/PreferenceScreen;

    .end local v0    # "child":Landroid/preference/Preference;
    invoke-virtual {v2, v0}, Ljava/util/Stack;->push(Ljava/lang/Object;)Ljava/lang/Object;

    .line 159
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 166
    .end local v1    # "childCount":I
    .end local v3    # "i":I
    .end local v4    # "parent":Landroid/preference/PreferenceScreen;
    :cond_2
    return-object v5
.end method

.method public onPauseFragment()V
    .locals 1

    .prologue
    .line 286
    iget-object v0, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->unregisterOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 287
    return-void
.end method

.method public onPreferenceClick(Landroid/preference/Preference;)Z
    .locals 14
    .param p1, "preference"    # Landroid/preference/Preference;

    .prologue
    .line 359
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_3

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    const-string v11, "script#"

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_3

    .line 367
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v11

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v12

    const-string v13, "#"

    invoke-virtual {v12, v13}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v12

    add-int/lit8 v12, v12, 0x1

    invoke-virtual {v11, v12}, Ljava/lang/String;->substring(I)Ljava/lang/String;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, ".sh"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    .line 368
    .local v9, "scriptName":Ljava/lang/String;
    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v11, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->c:Landroid/content/Context;

    invoke-virtual {v11}, Landroid/content/Context;->getFilesDir()Ljava/io/File;

    move-result-object v11

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string v11, "scripts"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    sget-object v11, Ljava/io/File;->separator:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 369
    .local v6, "pathToScript":Ljava/lang/String;
    new-instance v8, Ljava/io/File;

    invoke-direct {v8, v6}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    .line 370
    .local v8, "script":Ljava/io/File;
    invoke-virtual {v8}, Ljava/io/File;->exists()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 371
    invoke-virtual {v8}, Ljava/io/File;->canExecute()Z

    move-result v10

    if-eqz v10, :cond_2

    const/4 v5, 0x1

    .line 372
    .local v5, "isChmoded":Z
    :goto_0
    if-nez v5, :cond_0

    .line 373
    const/4 v10, 0x1

    invoke-virtual {v8, v10}, Ljava/io/File;->setExecutable(Z)Z

    .line 375
    :cond_0
    new-instance v2, Lcom/wubydax/romcontrol/HandlePreferenceFragments$1;

    const/4 v10, 0x0

    const/4 v11, 0x1

    new-array v11, v11, [Ljava/lang/String;

    const/4 v12, 0x0

    aput-object v6, v11, v12

    invoke-direct {v2, p0, v10, v11}, Lcom/wubydax/romcontrol/HandlePreferenceFragments$1;-><init>(Lcom/wubydax/romcontrol/HandlePreferenceFragments;I[Ljava/lang/String;)V

    .line 388
    .local v2, "command":Lcom/stericson/RootShell/execution/Command;
    const/4 v10, 0x1

    :try_start_0
    invoke-static {v10}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootShell/execution/Shell;

    move-result-object v10

    invoke-virtual {v10, v2}, Lcom/stericson/RootShell/execution/Shell;->add(Lcom/stericson/RootShell/execution/Command;)Lcom/stericson/RootShell/execution/Command;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/stericson/RootShell/exceptions/RootDeniedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 419
    .end local v2    # "command":Lcom/stericson/RootShell/execution/Command;
    .end local v5    # "isChmoded":Z
    .end local v6    # "pathToScript":Ljava/lang/String;
    .end local v8    # "script":Ljava/io/File;
    .end local v9    # "scriptName":Ljava/lang/String;
    :cond_1
    :goto_1
    const/4 v10, 0x1

    return v10

    .line 371
    .restart local v6    # "pathToScript":Ljava/lang/String;
    .restart local v8    # "script":Ljava/io/File;
    .restart local v9    # "scriptName":Ljava/lang/String;
    :cond_2
    const/4 v5, 0x0

    goto :goto_0

    .line 389
    .restart local v2    # "command":Lcom/stericson/RootShell/execution/Command;
    .restart local v5    # "isChmoded":Z
    :catch_0
    move-exception v3

    .line 390
    .local v3, "e":Ljava/io/IOException;
    invoke-virtual {v3}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_1

    .line 391
    .end local v3    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v3

    .line 392
    .local v3, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v3}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_1

    .line 393
    .end local v3    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_2
    move-exception v3

    .line 394
    .local v3, "e":Lcom/stericson/RootShell/exceptions/RootDeniedException;
    invoke-virtual {v3}, Lcom/stericson/RootShell/exceptions/RootDeniedException;->printStackTrace()V

    goto :goto_1

    .line 403
    .end local v2    # "command":Lcom/stericson/RootShell/execution/Command;
    .end local v3    # "e":Lcom/stericson/RootShell/exceptions/RootDeniedException;
    .end local v5    # "isChmoded":Z
    .end local v6    # "pathToScript":Ljava/lang/String;
    .end local v8    # "script":Ljava/io/File;
    .end local v9    # "scriptName":Ljava/lang/String;
    :cond_3
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    if-eqz v10, :cond_4

    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    const-string v11, "."

    invoke-virtual {v10, v11}, Ljava/lang/String;->contains(Ljava/lang/CharSequence;)Z

    move-result v10

    if-eqz v10, :cond_4

    .line 404
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v1

    .line 405
    .local v1, "cls":Ljava/lang/String;
    const/4 v10, 0x0

    const-string v11, "."

    invoke-virtual {v1, v11}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v11

    invoke-virtual {v1, v10, v11}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 406
    .local v7, "pkg":Ljava/lang/String;
    new-instance v10, Landroid/content/Intent;

    const-string v11, "android.intent.action.MAIN"

    invoke-direct {v10, v11}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v10, v7, v1}, Landroid/content/Intent;->setClassName(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    move-result-object v10

    const/high16 v11, 0x10000000

    invoke-virtual {v10, v11}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    move-result-object v10

    new-instance v11, Landroid/content/ComponentName;

    invoke-direct {v11, v7, v1}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v10, v11}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v4

    .line 411
    .local v4, "intent":Landroid/content/Intent;
    :try_start_1
    iget-object v10, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->c:Landroid/content/Context;

    invoke-virtual {v10, v4}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_3

    goto :goto_1

    .line 412
    :catch_3
    move-exception v0

    .line 413
    .local v0, "anf":Landroid/content/ActivityNotFoundException;
    iget-object v10, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->c:Landroid/content/Context;

    const-string v11, "App not installed or intent not valid"

    const/4 v12, 0x0

    invoke-static {v10, v11, v12}, Landroid/widget/Toast;->makeText(Landroid/content/Context;Ljava/lang/CharSequence;I)Landroid/widget/Toast;

    move-result-object v10

    invoke-virtual {v10}, Landroid/widget/Toast;->show()V

    goto :goto_1

    .line 416
    .end local v0    # "anf":Landroid/content/ActivityNotFoundException;
    .end local v1    # "cls":Ljava/lang/String;
    .end local v4    # "intent":Landroid/content/Intent;
    .end local v7    # "pkg":Ljava/lang/String;
    :cond_4
    invoke-virtual {p1}, Landroid/preference/Preference;->getKey()Ljava/lang/String;

    move-result-object v10

    if-nez v10, :cond_1

    goto :goto_1
.end method

.method public onResumeFragment()V
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->prefs:Landroid/content/SharedPreferences;

    invoke-interface {v0, p0}, Landroid/content/SharedPreferences;->registerOnSharedPreferenceChangeListener(Landroid/content/SharedPreferences$OnSharedPreferenceChangeListener;)V

    .line 97
    invoke-direct {p0}, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->initAllKeys()V

    .line 98
    invoke-direct {p0}, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->getAllPrefs()V

    .line 99
    return-void
.end method

.method public onSharedPreferenceChanged(Landroid/content/SharedPreferences;Ljava/lang/String;)V
    .locals 13
    .param p1, "sharedPreferences"    # Landroid/content/SharedPreferences;
    .param p2, "key"    # Ljava/lang/String;

    .prologue
    .line 294
    iget-object v10, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    invoke-virtual {v10, p2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v8

    .line 295
    .local v8, "p":Landroid/preference/Preference;
    invoke-virtual {v8}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v11

    const/4 v10, -0x1

    invoke-virtual {v11}, Ljava/lang/String;->hashCode()I

    move-result v12

    sparse-switch v12, :sswitch_data_0

    :cond_0
    :goto_0
    packed-switch v10, :pswitch_data_0

    .line 330
    :cond_1
    :goto_1
    instance-of v10, v8, Lcom/wubydax/romcontrol/prefs/FilePreference;

    if-eqz v10, :cond_3

    .line 334
    :goto_2
    return-void

    .line 295
    :sswitch_0
    const-string v12, "SwitchPreference"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x0

    goto :goto_0

    :sswitch_1
    const-string v12, "CheckBoxPreference"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x1

    goto :goto_0

    :sswitch_2
    const-string v12, "MyListPreference"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x2

    goto :goto_0

    :sswitch_3
    const-string v12, "MyEditTextPreference"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x3

    goto :goto_0

    :sswitch_4
    const-string v12, "ColorPickerPreference"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    const/4 v10, 0x4

    goto :goto_0

    .line 297
    :pswitch_0
    iget-object v10, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    invoke-virtual {v10, p2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v9

    check-cast v9, Landroid/preference/SwitchPreference;

    .line 298
    .local v9, "s":Landroid/preference/SwitchPreference;
    const/4 v10, 0x1

    invoke-interface {p1, p2, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v9, v10}, Landroid/preference/SwitchPreference;->setChecked(Z)V

    goto :goto_1

    .line 301
    .end local v9    # "s":Landroid/preference/SwitchPreference;
    :pswitch_1
    iget-object v10, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    invoke-virtual {v10, p2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v0

    check-cast v0, Landroid/preference/CheckBoxPreference;

    .line 302
    .local v0, "cbp":Landroid/preference/CheckBoxPreference;
    const/4 v10, 0x1

    invoke-interface {p1, p2, v10}, Landroid/content/SharedPreferences;->getBoolean(Ljava/lang/String;Z)Z

    move-result v10

    invoke-virtual {v0, v10}, Landroid/preference/CheckBoxPreference;->setChecked(Z)V

    goto :goto_1

    .line 305
    .end local v0    # "cbp":Landroid/preference/CheckBoxPreference;
    :pswitch_2
    iget-object v10, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    invoke-virtual {v10, p2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v4

    check-cast v4, Lcom/wubydax/romcontrol/prefs/MyListPreference;

    .line 306
    .local v4, "l":Lcom/wubydax/romcontrol/prefs/MyListPreference;
    const-string v10, ""

    invoke-interface {p1, p2, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    .line 308
    .local v5, "lValue":Ljava/lang/String;
    iget-boolean v10, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->isOutOfBounds:Z

    if-nez v10, :cond_2

    .line 309
    invoke-virtual {v4}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v6

    .line 310
    .local v6, "mEntries":[Ljava/lang/CharSequence;
    invoke-virtual {v4, v5}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v7

    .line 311
    .local v7, "mValueIndex":I
    aget-object v10, v6, v7

    invoke-virtual {v4, v10}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    .line 312
    invoke-virtual {v4, v5}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v10

    aget-object v10, v6, v10

    invoke-virtual {v4, v10}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 314
    .end local v6    # "mEntries":[Ljava/lang/CharSequence;
    .end local v7    # "mValueIndex":I
    :cond_2
    const-string v10, ""

    invoke-virtual {v4, v10}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 318
    .end local v4    # "l":Lcom/wubydax/romcontrol/prefs/MyListPreference;
    .end local v5    # "lValue":Ljava/lang/String;
    :pswitch_3
    iget-object v10, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    invoke-virtual {v10, p2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v2

    check-cast v2, Lcom/wubydax/romcontrol/prefs/MyEditTextPreference;

    .line 319
    .local v2, "et":Lcom/wubydax/romcontrol/prefs/MyEditTextPreference;
    const-string v10, ""

    invoke-interface {p1, p2, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v3

    .line 320
    .local v3, "etValue":Ljava/lang/String;
    if-eqz v3, :cond_1

    .line 321
    const-string v10, ""

    invoke-interface {p1, p2, v10}, Landroid/content/SharedPreferences;->getString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v10

    invoke-virtual {v2, v10}, Lcom/wubydax/romcontrol/prefs/MyEditTextPreference;->setSummary(Ljava/lang/CharSequence;)V

    goto/16 :goto_1

    .line 325
    .end local v2    # "et":Lcom/wubydax/romcontrol/prefs/MyEditTextPreference;
    .end local v3    # "etValue":Ljava/lang/String;
    :pswitch_4
    iget-object v10, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->pf:Landroid/preference/PreferenceFragment;

    invoke-virtual {v10, p2}, Landroid/preference/PreferenceFragment;->findPreference(Ljava/lang/CharSequence;)Landroid/preference/Preference;

    move-result-object v1

    check-cast v1, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;

    .line 326
    .local v1, "cpp":Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;
    const/4 v10, -0x1

    invoke-interface {p1, p2, v10}, Landroid/content/SharedPreferences;->getInt(Ljava/lang/String;I)I

    move-result v10

    invoke-virtual {v1, v10}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->setColor(I)V

    goto/16 :goto_1

    .line 332
    .end local v1    # "cpp":Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;
    :cond_3
    invoke-direct {p0, p2, v8, p1}, Lcom/wubydax/romcontrol/HandlePreferenceFragments;->updateDatabase(Ljava/lang/String;Ljava/lang/Object;Landroid/content/SharedPreferences;)V

    goto/16 :goto_2

    .line 295
    nop

    :sswitch_data_0
    .sparse-switch
        0x44f557e -> :sswitch_3
        0x1c1b08fe -> :sswitch_1
        0x350a234f -> :sswitch_0
        0x3f675d05 -> :sswitch_2
        0x7ed4656c -> :sswitch_4
    .end sparse-switch

    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
    .end packed-switch
.end method
