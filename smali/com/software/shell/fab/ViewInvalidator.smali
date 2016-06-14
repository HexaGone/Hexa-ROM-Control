.class Lcom/software/shell/fab/ViewInvalidator;
.super Ljava/lang/Object;
.source "ViewInvalidator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;


# instance fields
.field private invalidationDelay:J

.field private invalidationDelayedRequired:Z

.field private invalidationRequired:Z

.field private final view:Landroid/view/View;


# direct methods
.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 39
    const-string v0, "[FAB][%s]"

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/software/shell/fab/ViewInvalidator;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/software/shell/fab/ViewInvalidator;->LOG_TAG:Ljava/lang/String;

    return-void
.end method

.method constructor <init>(Landroid/view/View;)V
    .locals 0
    .param p1, "view"    # Landroid/view/View;

    .prologue
    .line 66
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    iput-object p1, p0, Lcom/software/shell/fab/ViewInvalidator;->view:Landroid/view/View;

    .line 68
    return-void
.end method

.method private reset()V
    .locals 2

    .prologue
    const/4 v0, 0x0

    .line 142
    iput-boolean v0, p0, Lcom/software/shell/fab/ViewInvalidator;->invalidationRequired:Z

    .line 143
    iput-boolean v0, p0, Lcom/software/shell/fab/ViewInvalidator;->invalidationDelayedRequired:Z

    .line 144
    const-wide/16 v0, 0x0

    invoke-virtual {p0, v0, v1}, Lcom/software/shell/fab/ViewInvalidator;->setInvalidationDelay(J)V

    .line 145
    sget-object v0, Lcom/software/shell/fab/ViewInvalidator;->LOG_TAG:Ljava/lang/String;

    const-string v1, "View invalidator configuration reset"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 146
    return-void
.end method


# virtual methods
.method getInvalidationDelay()J
    .locals 2

    .prologue
    .line 111
    iget-wide v0, p0, Lcom/software/shell/fab/ViewInvalidator;->invalidationDelay:J

    return-wide v0
.end method

.method invalidate()V
    .locals 4

    .prologue
    .line 127
    invoke-virtual {p0}, Lcom/software/shell/fab/ViewInvalidator;->isInvalidationRequired()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 128
    iget-object v0, p0, Lcom/software/shell/fab/ViewInvalidator;->view:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->postInvalidate()V

    .line 129
    sget-object v0, Lcom/software/shell/fab/ViewInvalidator;->LOG_TAG:Ljava/lang/String;

    const-string v1, "View invalidation called"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 131
    :cond_0
    invoke-virtual {p0}, Lcom/software/shell/fab/ViewInvalidator;->isInvalidationDelayedRequired()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 132
    iget-object v0, p0, Lcom/software/shell/fab/ViewInvalidator;->view:Landroid/view/View;

    invoke-virtual {p0}, Lcom/software/shell/fab/ViewInvalidator;->getInvalidationDelay()J

    move-result-wide v2

    invoke-virtual {v0, v2, v3}, Landroid/view/View;->postInvalidateDelayed(J)V

    .line 133
    sget-object v0, Lcom/software/shell/fab/ViewInvalidator;->LOG_TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "View delay invalidation called. Delay time is: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p0}, Lcom/software/shell/fab/ViewInvalidator;->getInvalidationDelay()J

    move-result-wide v2

    invoke-virtual {v1, v2, v3}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 135
    :cond_1
    invoke-direct {p0}, Lcom/software/shell/fab/ViewInvalidator;->reset()V

    .line 136
    return-void
.end method

.method isInvalidationDelayedRequired()Z
    .locals 1

    .prologue
    .line 94
    iget-boolean v0, p0, Lcom/software/shell/fab/ViewInvalidator;->invalidationDelayedRequired:Z

    return v0
.end method

.method isInvalidationRequired()Z
    .locals 1

    .prologue
    .line 76
    iget-boolean v0, p0, Lcom/software/shell/fab/ViewInvalidator;->invalidationRequired:Z

    return v0
.end method

.method requireDelayedInvalidation()V
    .locals 2

    .prologue
    .line 101
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/software/shell/fab/ViewInvalidator;->invalidationDelayedRequired:Z

    .line 102
    sget-object v0, Lcom/software/shell/fab/ViewInvalidator;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Delayed invalidation required set"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    return-void
.end method

.method requireInvalidation()V
    .locals 2

    .prologue
    .line 84
    const/4 v0, 0x1

    iput-boolean v0, p0, Lcom/software/shell/fab/ViewInvalidator;->invalidationRequired:Z

    .line 85
    sget-object v0, Lcom/software/shell/fab/ViewInvalidator;->LOG_TAG:Ljava/lang/String;

    const-string v1, "Invalidation required set"

    invoke-static {v0, v1}, Landroid/util/Log;->v(Ljava/lang/String;Ljava/lang/String;)I

    .line 86
    return-void
.end method

.method setInvalidationDelay(J)V
    .locals 1
    .param p1, "invalidationDelay"    # J

    .prologue
    .line 120
    iput-wide p1, p0, Lcom/software/shell/fab/ViewInvalidator;->invalidationDelay:J

    .line 121
    return-void
.end method
