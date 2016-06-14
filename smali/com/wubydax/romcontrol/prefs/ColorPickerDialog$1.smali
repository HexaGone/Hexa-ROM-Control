.class Lcom/wubydax/romcontrol/prefs/ColorPickerDialog$1;
.super Ljava/lang/Object;
.source "ColorPickerDialog.java"

# interfaces
.implements Landroid/widget/TextView$OnEditorActionListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->setUp(I)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;


# direct methods
.method constructor <init>(Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;)V
    .locals 0

    .prologue
    .line 111
    iput-object p1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog$1;->this$0:Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onEditorAction(Landroid/widget/TextView;ILandroid/view/KeyEvent;)Z
    .locals 9
    .param p1, "v"    # Landroid/widget/TextView;
    .param p2, "actionId"    # I
    .param p3, "event"    # Landroid/view/KeyEvent;

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    const/high16 v8, -0x10000

    .line 115
    const/4 v6, 0x6

    if-ne p2, v6, :cond_2

    .line 116
    invoke-virtual {p1}, Landroid/widget/TextView;->getContext()Landroid/content/Context;

    move-result-object v6

    const-string v7, "input_method"

    invoke-virtual {v6, v7}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/view/inputmethod/InputMethodManager;

    .line 117
    .local v2, "imm":Landroid/view/inputmethod/InputMethodManager;
    invoke-virtual {p1}, Landroid/widget/TextView;->getWindowToken()Landroid/os/IBinder;

    move-result-object v6

    invoke-virtual {v2, v6, v5}, Landroid/view/inputmethod/InputMethodManager;->hideSoftInputFromWindow(Landroid/os/IBinder;I)Z

    .line 118
    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog$1;->this$0:Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;

    # getter for: Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->access$000(Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5}, Landroid/widget/EditText;->getText()Landroid/text/Editable;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object v3

    .line 119
    .local v3, "s":Ljava/lang/String;
    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/4 v6, 0x5

    if-gt v5, v6, :cond_0

    invoke-virtual {v3}, Ljava/lang/String;->length()I

    move-result v5

    const/16 v6, 0xa

    if-ge v5, v6, :cond_1

    .line 121
    :cond_0
    :try_start_0
    invoke-virtual {v3}, Ljava/lang/String;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v5}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->convertToColorInt(Ljava/lang/String;)I

    move-result v0

    .line 122
    .local v0, "c":I
    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog$1;->this$0:Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;

    # getter for: Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mColorPicker:Lcom/wubydax/romcontrol/prefs/ColorPickerView;
    invoke-static {v5}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->access$100(Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;)Lcom/wubydax/romcontrol/prefs/ColorPickerView;

    move-result-object v5

    const/4 v6, 0x1

    invoke-virtual {v5, v0, v6}, Lcom/wubydax/romcontrol/prefs/ColorPickerView;->setColor(IZ)V

    .line 123
    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog$1;->this$0:Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;

    # getter for: Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->access$000(Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v5

    iget-object v6, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog$1;->this$0:Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;

    # getter for: Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexDefaultTextColor:Landroid/content/res/ColorStateList;
    invoke-static {v6}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->access$200(Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;)Landroid/content/res/ColorStateList;

    move-result-object v6

    invoke-virtual {v5, v6}, Landroid/widget/EditText;->setTextColor(Landroid/content/res/ColorStateList;)V
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 132
    .end local v0    # "c":I
    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v3    # "s":Ljava/lang/String;
    :goto_0
    return v4

    .line 124
    .restart local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .restart local v3    # "s":Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 125
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog$1;->this$0:Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;

    # getter for: Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->access$000(Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .line 128
    .end local v1    # "e":Ljava/lang/IllegalArgumentException;
    :cond_1
    iget-object v5, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog$1;->this$0:Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;

    # getter for: Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->mHexVal:Landroid/widget/EditText;
    invoke-static {v5}, Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;->access$000(Lcom/wubydax/romcontrol/prefs/ColorPickerDialog;)Landroid/widget/EditText;

    move-result-object v5

    invoke-virtual {v5, v8}, Landroid/widget/EditText;->setTextColor(I)V

    goto :goto_0

    .end local v2    # "imm":Landroid/view/inputmethod/InputMethodManager;
    .end local v3    # "s":Ljava/lang/String;
    :cond_2
    move v4, v5

    .line 132
    goto :goto_0
.end method
