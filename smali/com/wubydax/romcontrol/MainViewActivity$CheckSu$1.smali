.class Lcom/wubydax/romcontrol/MainViewActivity$CheckSu$1;
.super Ljava/lang/Object;
.source "MainViewActivity.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->onPostExecute(Ljava/lang/Boolean;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;


# direct methods
.method constructor <init>(Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;)V
    .locals 0

    .prologue
    .line 338
    iput-object p1, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu$1;->this$1:Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 1
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    .line 341
    iget-object v0, p0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu$1;->this$1:Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;

    iget-object v0, v0, Lcom/wubydax/romcontrol/MainViewActivity$CheckSu;->this$0:Lcom/wubydax/romcontrol/MainViewActivity;

    invoke-virtual {v0}, Lcom/wubydax/romcontrol/MainViewActivity;->finish()V

    .line 342
    return-void
.end method
