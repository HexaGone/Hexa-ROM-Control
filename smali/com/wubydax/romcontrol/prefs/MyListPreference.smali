.class public Lcom/wubydax/romcontrol/prefs/MyListPreference;
.super Landroid/preference/ListPreference;
.source "MyListPreference.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/wubydax/romcontrol/prefs/MyListPreference$SavedState;
    }
.end annotation


# instance fields
.field adapter:Landroid/widget/ArrayAdapter;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/widget/ArrayAdapter",
            "<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private mClickedDialogEntryIndex:I

.field private mEntries:[Ljava/lang/CharSequence;

.field private mEntryValues:[Ljava/lang/CharSequence;

.field private mValue:Ljava/lang/String;

.field private mValueSet:Z


# direct methods
.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;

    .prologue
    .line 48
    invoke-direct {p0, p1, p2}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;)V

    .line 49
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "attrs"    # Landroid/util/AttributeSet;
    .param p3, "defStyleAttr"    # I
    .param p4, "defStyleRes"    # I

    .prologue
    .line 44
    invoke-direct {p0, p1, p2, p3, p4}, Landroid/preference/ListPreference;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;II)V

    .line 45
    return-void
.end method

.method static synthetic access$002(Lcom/wubydax/romcontrol/prefs/MyListPreference;I)I
    .locals 0
    .param p0, "x0"    # Lcom/wubydax/romcontrol/prefs/MyListPreference;
    .param p1, "x1"    # I

    .prologue
    .line 34
    iput p1, p0, Lcom/wubydax/romcontrol/prefs/MyListPreference;->mClickedDialogEntryIndex:I

    return p1
.end method

.method private getValueIndex()I
    .locals 1

    .prologue
    .line 88
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/MyListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->findIndexOfValue(Ljava/lang/String;)I

    move-result v0

    return v0
.end method


# virtual methods
.method protected onDialogClosed(Z)V
    .locals 3
    .param p1, "positiveResult"    # Z

    .prologue
    .line 109
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onDialogClosed(Z)V

    .line 111
    if-eqz p1, :cond_0

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/MyListPreference;->mClickedDialogEntryIndex:I

    if-ltz v1, :cond_0

    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/MyListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    if-eqz v1, :cond_0

    .line 112
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/MyListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    iget v2, p0, Lcom/wubydax/romcontrol/prefs/MyListPreference;->mClickedDialogEntryIndex:I

    aget-object v1, v1, v2

    invoke-interface {v1}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v0

    .line 113
    .local v0, "value":Ljava/lang/String;
    invoke-virtual {p0, v0}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->callChangeListener(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 114
    invoke-virtual {p0, v0}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->setValue(Ljava/lang/String;)V

    .line 117
    .end local v0    # "value":Ljava/lang/String;
    :cond_0
    return-void
.end method

.method protected onGetDefaultValue(Landroid/content/res/TypedArray;I)Ljava/lang/Object;
    .locals 1
    .param p1, "a"    # Landroid/content/res/TypedArray;
    .param p2, "index"    # I

    .prologue
    .line 121
    invoke-virtual {p1, p2}, Landroid/content/res/TypedArray;->getString(I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method protected onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V
    .locals 4
    .param p1, "builder"    # Landroid/app/AlertDialog$Builder;

    .prologue
    .line 66
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->getEntries()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/MyListPreference;->mEntries:[Ljava/lang/CharSequence;

    .line 67
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->getEntryValues()[Ljava/lang/CharSequence;

    move-result-object v0

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/MyListPreference;->mEntryValues:[Ljava/lang/CharSequence;

    .line 68
    new-instance v0, Landroid/widget/ArrayAdapter;

    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    const v2, 0x7f040027

    iget-object v3, p0, Lcom/wubydax/romcontrol/prefs/MyListPreference;->mEntries:[Ljava/lang/CharSequence;

    invoke-direct {v0, v1, v2, v3}, Landroid/widget/ArrayAdapter;-><init>(Landroid/content/Context;I[Ljava/lang/Object;)V

    iput-object v0, p0, Lcom/wubydax/romcontrol/prefs/MyListPreference;->adapter:Landroid/widget/ArrayAdapter;

    .line 69
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onPrepareDialogBuilder(Landroid/app/AlertDialog$Builder;)V

    .line 70
    invoke-direct {p0}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->getValueIndex()I

    move-result v0

    iput v0, p0, Lcom/wubydax/romcontrol/prefs/MyListPreference;->mClickedDialogEntryIndex:I

    .line 72
    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/MyListPreference;->adapter:Landroid/widget/ArrayAdapter;

    iget v1, p0, Lcom/wubydax/romcontrol/prefs/MyListPreference;->mClickedDialogEntryIndex:I

    new-instance v2, Lcom/wubydax/romcontrol/prefs/MyListPreference$1;

    invoke-direct {v2, p0}, Lcom/wubydax/romcontrol/prefs/MyListPreference$1;-><init>(Lcom/wubydax/romcontrol/prefs/MyListPreference;)V

    invoke-virtual {p1, v0, v1, v2}, Landroid/app/AlertDialog$Builder;->setSingleChoiceItems(Landroid/widget/ListAdapter;ILandroid/content/DialogInterface$OnClickListener;)Landroid/app/AlertDialog$Builder;

    .line 86
    return-void
.end method

.method protected onRestoreInstanceState(Landroid/os/Parcelable;)V
    .locals 3
    .param p1, "state"    # Landroid/os/Parcelable;

    .prologue
    .line 144
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v1

    const-class v2, Lcom/wubydax/romcontrol/prefs/MyListPreference$SavedState;

    invoke-virtual {v1, v2}, Ljava/lang/Object;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 146
    :cond_0
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 153
    :goto_0
    return-void

    :cond_1
    move-object v0, p1

    .line 150
    check-cast v0, Lcom/wubydax/romcontrol/prefs/MyListPreference$SavedState;

    .line 151
    .local v0, "myState":Lcom/wubydax/romcontrol/prefs/MyListPreference$SavedState;
    invoke-virtual {v0}, Lcom/wubydax/romcontrol/prefs/MyListPreference$SavedState;->getSuperState()Landroid/os/Parcelable;

    move-result-object v1

    invoke-super {p0, v1}, Landroid/preference/ListPreference;->onRestoreInstanceState(Landroid/os/Parcelable;)V

    .line 152
    iget-object v1, v0, Lcom/wubydax/romcontrol/prefs/MyListPreference$SavedState;->value:Ljava/lang/String;

    invoke-virtual {p0, v1}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->setValue(Ljava/lang/String;)V

    goto :goto_0
.end method

.method protected onSaveInstanceState()Landroid/os/Parcelable;
    .locals 3

    .prologue
    .line 131
    invoke-super {p0}, Landroid/preference/ListPreference;->onSaveInstanceState()Landroid/os/Parcelable;

    move-result-object v1

    .line 132
    .local v1, "superState":Landroid/os/Parcelable;
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->isPersistent()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 139
    .end local v1    # "superState":Landroid/os/Parcelable;
    :goto_0
    return-object v1

    .line 137
    .restart local v1    # "superState":Landroid/os/Parcelable;
    :cond_0
    new-instance v0, Lcom/wubydax/romcontrol/prefs/MyListPreference$SavedState;

    invoke-direct {v0, v1}, Lcom/wubydax/romcontrol/prefs/MyListPreference$SavedState;-><init>(Landroid/os/Parcelable;)V

    .line 138
    .local v0, "myState":Lcom/wubydax/romcontrol/prefs/MyListPreference$SavedState;
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->getValue()Ljava/lang/String;

    move-result-object v2

    iput-object v2, v0, Lcom/wubydax/romcontrol/prefs/MyListPreference$SavedState;->value:Ljava/lang/String;

    move-object v1, v0

    .line 139
    goto :goto_0
.end method

.method protected onSetInitialValue(ZLjava/lang/Object;)V
    .locals 1
    .param p1, "restoreValue"    # Z
    .param p2, "defaultValue"    # Ljava/lang/Object;

    .prologue
    .line 126
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/wubydax/romcontrol/prefs/MyListPreference;->mValue:Ljava/lang/String;

    invoke-virtual {p0, v0}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->getPersistedString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p2

    .end local p2    # "defaultValue":Ljava/lang/Object;
    :goto_0
    invoke-virtual {p0, p2}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->setValue(Ljava/lang/String;)V

    .line 127
    return-void

    .line 126
    .restart local p2    # "defaultValue":Ljava/lang/Object;
    :cond_0
    check-cast p2, Ljava/lang/String;

    goto :goto_0
.end method

.method public setValue(Ljava/lang/String;)V
    .locals 3
    .param p1, "value"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x1

    .line 52
    iget-object v2, p0, Lcom/wubydax/romcontrol/prefs/MyListPreference;->mValue:Ljava/lang/String;

    invoke-static {v2, p1}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v2

    if-nez v2, :cond_2

    move v0, v1

    .line 53
    .local v0, "changed":Z
    :goto_0
    if-nez v0, :cond_0

    iget-boolean v2, p0, Lcom/wubydax/romcontrol/prefs/MyListPreference;->mValueSet:Z

    if-nez v2, :cond_1

    .line 54
    :cond_0
    iput-object p1, p0, Lcom/wubydax/romcontrol/prefs/MyListPreference;->mValue:Ljava/lang/String;

    .line 55
    iput-boolean v1, p0, Lcom/wubydax/romcontrol/prefs/MyListPreference;->mValueSet:Z

    .line 56
    invoke-virtual {p0, p1}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->persistString(Ljava/lang/String;)Z

    .line 57
    if-eqz v0, :cond_1

    .line 58
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->notifyChanged()V

    .line 61
    :cond_1
    return-void

    .line 52
    .end local v0    # "changed":Z
    :cond_2
    const/4 v0, 0x0

    goto :goto_0
.end method

.method protected showDialog(Landroid/os/Bundle;)V
    .locals 9
    .param p1, "state"    # Landroid/os/Bundle;

    .prologue
    const/4 v8, 0x0

    .line 93
    invoke-super {p0, p1}, Landroid/preference/ListPreference;->showDialog(Landroid/os/Bundle;)V

    .line 94
    new-instance v5, Landroid/util/TypedValue;

    invoke-direct {v5}, Landroid/util/TypedValue;-><init>()V

    .line 95
    .local v5, "typedValue":Landroid/util/TypedValue;
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v4

    .line 96
    .local v4, "theme":Landroid/content/res/Resources$Theme;
    const v6, 0x7f0100b7

    const/4 v7, 0x1

    invoke-virtual {v4, v6, v5, v7}, Landroid/content/res/Resources$Theme;->resolveAttribute(ILandroid/util/TypedValue;Z)Z

    .line 97
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->getDialog()Landroid/app/Dialog;

    move-result-object v1

    check-cast v1, Landroid/app/AlertDialog;

    .line 98
    .local v1, "dialog":Landroid/app/AlertDialog;
    invoke-virtual {v1}, Landroid/app/AlertDialog;->show()V

    .line 99
    const/4 v6, -0x2

    invoke-virtual {v1, v6}, Landroid/app/AlertDialog;->getButton(I)Landroid/widget/Button;

    move-result-object v0

    .line 100
    .local v0, "cancel":Landroid/widget/Button;
    iget v6, v5, Landroid/util/TypedValue;->data:I

    invoke-virtual {v0, v6}, Landroid/widget/Button;->setTextColor(I)V

    .line 101
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getWindow()Landroid/view/Window;

    move-result-object v6

    const v7, 0x7f02003b

    invoke-virtual {v6, v7}, Landroid/view/Window;->setBackgroundDrawableResource(I)V

    .line 102
    invoke-virtual {v1}, Landroid/app/AlertDialog;->getListView()Landroid/widget/ListView;

    move-result-object v2

    .line 103
    .local v2, "lv":Landroid/widget/ListView;
    invoke-virtual {p0}, Lcom/wubydax/romcontrol/prefs/MyListPreference;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v6

    const v7, 0x7f090046

    invoke-virtual {v6, v7}, Landroid/content/res/Resources;->getDimension(I)F

    move-result v6

    invoke-static {v6}, Ljava/lang/Math;->round(F)I

    move-result v3

    .line 104
    .local v3, "padding":I
    invoke-virtual {v2, v8, v3, v8, v8}, Landroid/widget/ListView;->setPadding(IIII)V

    .line 105
    return-void
.end method
