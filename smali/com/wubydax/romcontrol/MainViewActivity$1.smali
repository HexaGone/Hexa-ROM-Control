.class Lcom/wubydax/romcontrol/MainViewActivity$1;
.super Ljava/lang/Object;
.source "MainViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wubydax/romcontrol/MainViewActivity;->showThemeChooserDialog()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wubydax/romcontrol/MainViewActivity;


# direct methods
.method constructor <init>(Lcom/wubydax/romcontrol/MainViewActivity;)V
    .locals 0

    .prologue
    .line 260
    iput-object p1, p0, Lcom/wubydax/romcontrol/MainViewActivity$1;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 264
    iget-object v0, p0, Lcom/wubydax/romcontrol/MainViewActivity$1;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    # invokes: Lcom/wubydax/romcontrol/MainViewActivity;->initTheme(I)V
    invoke-static {v0, p2}, Lcom/wubydax/romcontrol/MainViewActivity;->access$000(Lcom/wubydax/romcontrol/MainViewActivity;I)V

    .line 265
    return-void
.end method
