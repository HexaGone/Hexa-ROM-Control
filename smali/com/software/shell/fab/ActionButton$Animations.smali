.class public final enum Lcom/software/shell/fab/ActionButton$Animations;
.super Ljava/lang/Enum;
.source "ActionButton.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/software/shell/fab/ActionButton;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x4019
    name = "Animations"
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Lcom/software/shell/fab/ActionButton$Animations;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Lcom/software/shell/fab/ActionButton$Animations;

.field public static final enum FADE_IN:Lcom/software/shell/fab/ActionButton$Animations;

.field public static final enum FADE_OUT:Lcom/software/shell/fab/ActionButton$Animations;

.field public static final enum JUMP_FROM_DOWN:Lcom/software/shell/fab/ActionButton$Animations;

.field public static final enum JUMP_FROM_RIGHT:Lcom/software/shell/fab/ActionButton$Animations;

.field public static final enum JUMP_TO_DOWN:Lcom/software/shell/fab/ActionButton$Animations;

.field public static final enum JUMP_TO_RIGHT:Lcom/software/shell/fab/ActionButton$Animations;

.field public static final enum NONE:Lcom/software/shell/fab/ActionButton$Animations;

.field public static final enum ROLL_FROM_DOWN:Lcom/software/shell/fab/ActionButton$Animations;

.field public static final enum ROLL_FROM_RIGHT:Lcom/software/shell/fab/ActionButton$Animations;

.field public static final enum ROLL_TO_DOWN:Lcom/software/shell/fab/ActionButton$Animations;

.field public static final enum ROLL_TO_RIGHT:Lcom/software/shell/fab/ActionButton$Animations;

.field public static final enum SCALE_DOWN:Lcom/software/shell/fab/ActionButton$Animations;

.field public static final enum SCALE_UP:Lcom/software/shell/fab/ActionButton$Animations;


# instance fields
.field final animResId:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x4

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 1789
    new-instance v0, Lcom/software/shell/fab/ActionButton$Animations;

    const-string v1, "NONE"

    invoke-static {}, Lcom/software/shell/uitools/resutils/id/IdGenerator;->next()I

    move-result v2

    invoke-direct {v0, v1, v4, v2}, Lcom/software/shell/fab/ActionButton$Animations;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/software/shell/fab/ActionButton$Animations;->NONE:Lcom/software/shell/fab/ActionButton$Animations;

    .line 1794
    new-instance v0, Lcom/software/shell/fab/ActionButton$Animations;

    const-string v1, "FADE_IN"

    sget v2, Lcom/software/shell/fab/R$anim;->fab_fade_in:I

    invoke-direct {v0, v1, v5, v2}, Lcom/software/shell/fab/ActionButton$Animations;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/software/shell/fab/ActionButton$Animations;->FADE_IN:Lcom/software/shell/fab/ActionButton$Animations;

    .line 1799
    new-instance v0, Lcom/software/shell/fab/ActionButton$Animations;

    const-string v1, "FADE_OUT"

    sget v2, Lcom/software/shell/fab/R$anim;->fab_fade_out:I

    invoke-direct {v0, v1, v6, v2}, Lcom/software/shell/fab/ActionButton$Animations;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/software/shell/fab/ActionButton$Animations;->FADE_OUT:Lcom/software/shell/fab/ActionButton$Animations;

    .line 1804
    new-instance v0, Lcom/software/shell/fab/ActionButton$Animations;

    const-string v1, "SCALE_UP"

    sget v2, Lcom/software/shell/fab/R$anim;->fab_scale_up:I

    invoke-direct {v0, v1, v7, v2}, Lcom/software/shell/fab/ActionButton$Animations;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/software/shell/fab/ActionButton$Animations;->SCALE_UP:Lcom/software/shell/fab/ActionButton$Animations;

    .line 1809
    new-instance v0, Lcom/software/shell/fab/ActionButton$Animations;

    const-string v1, "SCALE_DOWN"

    sget v2, Lcom/software/shell/fab/R$anim;->fab_scale_down:I

    invoke-direct {v0, v1, v8, v2}, Lcom/software/shell/fab/ActionButton$Animations;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/software/shell/fab/ActionButton$Animations;->SCALE_DOWN:Lcom/software/shell/fab/ActionButton$Animations;

    .line 1814
    new-instance v0, Lcom/software/shell/fab/ActionButton$Animations;

    const-string v1, "ROLL_FROM_DOWN"

    const/4 v2, 0x5

    sget v3, Lcom/software/shell/fab/R$anim;->fab_roll_from_down:I

    invoke-direct {v0, v1, v2, v3}, Lcom/software/shell/fab/ActionButton$Animations;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/software/shell/fab/ActionButton$Animations;->ROLL_FROM_DOWN:Lcom/software/shell/fab/ActionButton$Animations;

    .line 1819
    new-instance v0, Lcom/software/shell/fab/ActionButton$Animations;

    const-string v1, "ROLL_TO_DOWN"

    const/4 v2, 0x6

    sget v3, Lcom/software/shell/fab/R$anim;->fab_roll_to_down:I

    invoke-direct {v0, v1, v2, v3}, Lcom/software/shell/fab/ActionButton$Animations;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/software/shell/fab/ActionButton$Animations;->ROLL_TO_DOWN:Lcom/software/shell/fab/ActionButton$Animations;

    .line 1824
    new-instance v0, Lcom/software/shell/fab/ActionButton$Animations;

    const-string v1, "ROLL_FROM_RIGHT"

    const/4 v2, 0x7

    sget v3, Lcom/software/shell/fab/R$anim;->fab_roll_from_right:I

    invoke-direct {v0, v1, v2, v3}, Lcom/software/shell/fab/ActionButton$Animations;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/software/shell/fab/ActionButton$Animations;->ROLL_FROM_RIGHT:Lcom/software/shell/fab/ActionButton$Animations;

    .line 1829
    new-instance v0, Lcom/software/shell/fab/ActionButton$Animations;

    const-string v1, "ROLL_TO_RIGHT"

    const/16 v2, 0x8

    sget v3, Lcom/software/shell/fab/R$anim;->fab_roll_to_right:I

    invoke-direct {v0, v1, v2, v3}, Lcom/software/shell/fab/ActionButton$Animations;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/software/shell/fab/ActionButton$Animations;->ROLL_TO_RIGHT:Lcom/software/shell/fab/ActionButton$Animations;

    .line 1834
    new-instance v0, Lcom/software/shell/fab/ActionButton$Animations;

    const-string v1, "JUMP_FROM_DOWN"

    const/16 v2, 0x9

    sget v3, Lcom/software/shell/fab/R$anim;->fab_jump_from_down:I

    invoke-direct {v0, v1, v2, v3}, Lcom/software/shell/fab/ActionButton$Animations;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/software/shell/fab/ActionButton$Animations;->JUMP_FROM_DOWN:Lcom/software/shell/fab/ActionButton$Animations;

    .line 1839
    new-instance v0, Lcom/software/shell/fab/ActionButton$Animations;

    const-string v1, "JUMP_TO_DOWN"

    const/16 v2, 0xa

    sget v3, Lcom/software/shell/fab/R$anim;->fab_jump_to_down:I

    invoke-direct {v0, v1, v2, v3}, Lcom/software/shell/fab/ActionButton$Animations;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/software/shell/fab/ActionButton$Animations;->JUMP_TO_DOWN:Lcom/software/shell/fab/ActionButton$Animations;

    .line 1844
    new-instance v0, Lcom/software/shell/fab/ActionButton$Animations;

    const-string v1, "JUMP_FROM_RIGHT"

    const/16 v2, 0xb

    sget v3, Lcom/software/shell/fab/R$anim;->fab_jump_from_right:I

    invoke-direct {v0, v1, v2, v3}, Lcom/software/shell/fab/ActionButton$Animations;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/software/shell/fab/ActionButton$Animations;->JUMP_FROM_RIGHT:Lcom/software/shell/fab/ActionButton$Animations;

    .line 1849
    new-instance v0, Lcom/software/shell/fab/ActionButton$Animations;

    const-string v1, "JUMP_TO_RIGHT"

    const/16 v2, 0xc

    sget v3, Lcom/software/shell/fab/R$anim;->fab_jump_to_right:I

    invoke-direct {v0, v1, v2, v3}, Lcom/software/shell/fab/ActionButton$Animations;-><init>(Ljava/lang/String;II)V

    sput-object v0, Lcom/software/shell/fab/ActionButton$Animations;->JUMP_TO_RIGHT:Lcom/software/shell/fab/ActionButton$Animations;

    .line 1784
    const/16 v0, 0xd

    new-array v0, v0, [Lcom/software/shell/fab/ActionButton$Animations;

    sget-object v1, Lcom/software/shell/fab/ActionButton$Animations;->NONE:Lcom/software/shell/fab/ActionButton$Animations;

    aput-object v1, v0, v4

    sget-object v1, Lcom/software/shell/fab/ActionButton$Animations;->FADE_IN:Lcom/software/shell/fab/ActionButton$Animations;

    aput-object v1, v0, v5

    sget-object v1, Lcom/software/shell/fab/ActionButton$Animations;->FADE_OUT:Lcom/software/shell/fab/ActionButton$Animations;

    aput-object v1, v0, v6

    sget-object v1, Lcom/software/shell/fab/ActionButton$Animations;->SCALE_UP:Lcom/software/shell/fab/ActionButton$Animations;

    aput-object v1, v0, v7

    sget-object v1, Lcom/software/shell/fab/ActionButton$Animations;->SCALE_DOWN:Lcom/software/shell/fab/ActionButton$Animations;

    aput-object v1, v0, v8

    const/4 v1, 0x5

    sget-object v2, Lcom/software/shell/fab/ActionButton$Animations;->ROLL_FROM_DOWN:Lcom/software/shell/fab/ActionButton$Animations;

    aput-object v2, v0, v1

    const/4 v1, 0x6

    sget-object v2, Lcom/software/shell/fab/ActionButton$Animations;->ROLL_TO_DOWN:Lcom/software/shell/fab/ActionButton$Animations;

    aput-object v2, v0, v1

    const/4 v1, 0x7

    sget-object v2, Lcom/software/shell/fab/ActionButton$Animations;->ROLL_FROM_RIGHT:Lcom/software/shell/fab/ActionButton$Animations;

    aput-object v2, v0, v1

    const/16 v1, 0x8

    sget-object v2, Lcom/software/shell/fab/ActionButton$Animations;->ROLL_TO_RIGHT:Lcom/software/shell/fab/ActionButton$Animations;

    aput-object v2, v0, v1

    const/16 v1, 0x9

    sget-object v2, Lcom/software/shell/fab/ActionButton$Animations;->JUMP_FROM_DOWN:Lcom/software/shell/fab/ActionButton$Animations;

    aput-object v2, v0, v1

    const/16 v1, 0xa

    sget-object v2, Lcom/software/shell/fab/ActionButton$Animations;->JUMP_TO_DOWN:Lcom/software/shell/fab/ActionButton$Animations;

    aput-object v2, v0, v1

    const/16 v1, 0xb

    sget-object v2, Lcom/software/shell/fab/ActionButton$Animations;->JUMP_FROM_RIGHT:Lcom/software/shell/fab/ActionButton$Animations;

    aput-object v2, v0, v1

    const/16 v1, 0xc

    sget-object v2, Lcom/software/shell/fab/ActionButton$Animations;->JUMP_TO_RIGHT:Lcom/software/shell/fab/ActionButton$Animations;

    aput-object v2, v0, v1

    sput-object v0, Lcom/software/shell/fab/ActionButton$Animations;->$VALUES:[Lcom/software/shell/fab/ActionButton$Animations;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "animResId"    # I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)V"
        }
    .end annotation

    .prologue
    .line 1856
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 1857
    iput p3, p0, Lcom/software/shell/fab/ActionButton$Animations;->animResId:I

    .line 1858
    return-void
.end method

.method protected static load(Landroid/content/Context;I)Landroid/view/animation/Animation;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "animResId"    # I

    .prologue
    .line 1868
    sget-object v0, Lcom/software/shell/fab/ActionButton$Animations;->NONE:Lcom/software/shell/fab/ActionButton$Animations;

    iget v0, v0, Lcom/software/shell/fab/ActionButton$Animations;->animResId:I

    if-ne p1, v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return-object v0

    :cond_0
    invoke-static {p0, p1}, Landroid/view/animation/AnimationUtils;->loadAnimation(Landroid/content/Context;I)Landroid/view/animation/Animation;

    move-result-object v0

    goto :goto_0
.end method

.method public static valueOf(Ljava/lang/String;)Lcom/software/shell/fab/ActionButton$Animations;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 1784
    const-class v0, Lcom/software/shell/fab/ActionButton$Animations;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Lcom/software/shell/fab/ActionButton$Animations;

    return-object v0
.end method

.method public static values()[Lcom/software/shell/fab/ActionButton$Animations;
    .locals 1

    .prologue
    .line 1784
    sget-object v0, Lcom/software/shell/fab/ActionButton$Animations;->$VALUES:[Lcom/software/shell/fab/ActionButton$Animations;

    invoke-virtual {v0}, [Lcom/software/shell/fab/ActionButton$Animations;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/software/shell/fab/ActionButton$Animations;

    return-object v0
.end method
