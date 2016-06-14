.class public Lcom/wubydax/romcontrol/NavItem;
.super Ljava/lang/Object;
.source "NavItem.java"


# instance fields
.field private mDrawable:I

.field private mText:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 16
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public getIcon()I
    .locals 1

    .prologue
    .line 31
    iget v0, p0, Lcom/wubydax/romcontrol/NavItem;->mDrawable:I

    return v0
.end method

.method public getText()Ljava/lang/String;
    .locals 1

    .prologue
    .line 23
    iget-object v0, p0, Lcom/wubydax/romcontrol/NavItem;->mText:Ljava/lang/String;

    return-object v0
.end method

.method public setDrawable(I)V
    .locals 0
    .param p1, "drawable"    # I

    .prologue
    .line 35
    iput p1, p0, Lcom/wubydax/romcontrol/NavItem;->mDrawable:I

    .line 36
    return-void
.end method

.method public setText(Ljava/lang/String;)V
    .locals 0
    .param p1, "text"    # Ljava/lang/String;

    .prologue
    .line 27
    iput-object p1, p0, Lcom/wubydax/romcontrol/NavItem;->mText:Ljava/lang/String;

    .line 28
    return-void
.end method
