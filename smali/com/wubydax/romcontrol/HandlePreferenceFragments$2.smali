.class Lcom/wubydax/romcontrol/HandlePreferenceFragments$2;
.super Ljava/lang/Object;
.source "HandlePreferenceFragments.java"

# interfaces
.implements Landroid/content/DialogInterface$OnClickListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/wubydax/romcontrol/HandlePreferenceFragments;->appRebootRequired(Ljava/lang/String;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/wubydax/romcontrol/HandlePreferenceFragments;

.field final synthetic val$pckgName:Ljava/lang/String;


# direct methods
.method constructor <init>(Lcom/wubydax/romcontrol/HandlePreferenceFragments;Ljava/lang/String;)V
    .locals 0

    .prologue
    .line 459
    iput-object p1, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments$2;->this$0:Lcom/wubydax/romcontrol/HandlePreferenceFragments;

    iput-object p2, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments$2;->val$pckgName:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onClick(Landroid/content/DialogInterface;I)V
    .locals 6
    .param p1, "dialog"    # Landroid/content/DialogInterface;
    .param p2, "which"    # I

    .prologue
    const/4 v2, 0x1

    const/4 v5, 0x0

    .line 462
    new-instance v0, Lcom/stericson/RootShell/execution/Command;

    new-array v2, v2, [Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "pkill "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lcom/wubydax/romcontrol/HandlePreferenceFragments$2;->val$pckgName:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v2, v5

    invoke-direct {v0, v5, v2}, Lcom/stericson/RootShell/execution/Command;-><init>(I[Ljava/lang/String;)V

    .line 464
    .local v0, "c":Lcom/stericson/RootShell/execution/Command;
    const/4 v2, 0x1

    :try_start_0
    invoke-static {v2}, Lcom/stericson/RootTools/RootTools;->getShell(Z)Lcom/stericson/RootShell/execution/Shell;

    move-result-object v2

    invoke-virtual {v2, v0}, Lcom/stericson/RootShell/execution/Shell;->add(Lcom/stericson/RootShell/execution/Command;)Lcom/stericson/RootShell/execution/Command;
    :try_end_0
    .catch Ljava/io/IOException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/TimeoutException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Lcom/stericson/RootShell/exceptions/RootDeniedException; {:try_start_0 .. :try_end_0} :catch_2

    .line 472
    :goto_0
    return-void

    .line 465
    :catch_0
    move-exception v1

    .line 466
    .local v1, "e":Ljava/io/IOException;
    invoke-virtual {v1}, Ljava/io/IOException;->printStackTrace()V

    goto :goto_0

    .line 467
    .end local v1    # "e":Ljava/io/IOException;
    :catch_1
    move-exception v1

    .line 468
    .local v1, "e":Ljava/util/concurrent/TimeoutException;
    invoke-virtual {v1}, Ljava/util/concurrent/TimeoutException;->printStackTrace()V

    goto :goto_0

    .line 469
    .end local v1    # "e":Ljava/util/concurrent/TimeoutException;
    :catch_2
    move-exception v1

    .line 470
    .local v1, "e":Lcom/stericson/RootShell/exceptions/RootDeniedException;
    invoke-virtual {v1}, Lcom/stericson/RootShell/exceptions/RootDeniedException;->printStackTrace()V

    goto :goto_0
.end method
