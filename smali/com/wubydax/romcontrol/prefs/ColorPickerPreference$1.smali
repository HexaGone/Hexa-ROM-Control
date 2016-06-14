.class Lcom/wubydax/romcontrol/prefs/ColorPickerPreference$1;
.super Landroid/view/ViewOutlineProvider;
.source "ColorPickerPreference.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->setPreviewColor()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;


# direct methods
.method constructor <init>(Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;)V
    .locals 0

    .prologue
    .line 137
    iput-object p1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference$1;->this$0:Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;

    invoke-direct {p0}, Landroid/view/ViewOutlineProvider;-><init>()V

    return-void
.end method


# virtual methods
.method public getOutline(Landroid/view/View;Landroid/graphics/Outline;)V
    .locals 4
    .param p1, "view"    # Landroid/view/View;
    .param p2, "outline"    # Landroid/graphics/Outline;

    .prologue
    const/4 v3, 0x0

    .line 140
    iget-object v1, p0, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference$1;->this$0:Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;

    invoke-virtual {v1}, Lcom/wubydax/romcontrol/prefs/ColorPickerPreference;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f090044

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    .line 141
    .local v0, "size":I
    invoke-virtual {p2, v3, v3, v0, v0}, Landroid/graphics/Outline;->setOval(IIII)V

    .line 143
    return-void
.end method
