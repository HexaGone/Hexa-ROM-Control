.class public final Lcom/software/shell/uitools/resutils/id/IdGenerator;
.super Ljava/lang/Object;
.source "IdGenerator.java"


# static fields
.field private static final LOG_TAG:Ljava/lang/String;

.field private static final NEXT_ID:Ljava/util/concurrent/atomic/AtomicInteger;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x1

    .line 40
    const-string v0, "[UI Tools][%s]"

    new-array v1, v4, [Ljava/lang/Object;

    const/4 v2, 0x0

    const-class v3, Lcom/software/shell/uitools/resutils/id/IdGenerator;

    invoke-virtual {v3}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v3

    aput-object v3, v1, v2

    invoke-static {v0, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/software/shell/uitools/resutils/id/IdGenerator;->LOG_TAG:Ljava/lang/String;

    .line 51
    new-instance v0, Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-direct {v0, v4}, Ljava/util/concurrent/atomic/AtomicInteger;-><init>(I)V

    sput-object v0, Lcom/software/shell/uitools/resutils/id/IdGenerator;->NEXT_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .prologue
    .line 45
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 46
    return-void
.end method

.method public static next()I
    .locals 4

    .prologue
    .line 62
    .local v0, "newValue":I
    .local v1, "result":I
    :cond_0
    sget-object v2, Lcom/software/shell/uitools/resutils/id/IdGenerator;->NEXT_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2}, Ljava/util/concurrent/atomic/AtomicInteger;->get()I

    move-result v1

    .line 63
    add-int/lit8 v0, v1, 0x1

    .line 64
    const v2, 0xffffff

    if-le v0, v2, :cond_1

    .line 65
    const/4 v0, 0x1

    .line 67
    :cond_1
    sget-object v2, Lcom/software/shell/uitools/resutils/id/IdGenerator;->NEXT_ID:Ljava/util/concurrent/atomic/AtomicInteger;

    invoke-virtual {v2, v1, v0}, Ljava/util/concurrent/atomic/AtomicInteger;->compareAndSet(II)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 68
    new-instance v2, Ljava/lang/StringBuilder;

    const-string v3, "Next generated id is: "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 69
    return v1
.end method
