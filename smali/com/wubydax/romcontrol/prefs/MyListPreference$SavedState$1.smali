.class final Lcom/wubydax/romcontrol/prefs/MyListPreference$SavedState$1;
.super Ljava/lang/Object;
.source "MyListPreference.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/wubydax/romcontrol/prefs/MyListPreference$SavedState;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation

.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Landroid/os/Parcelable$Creator",
        "<",
        "Lcom/wubydax/romcontrol/prefs/MyListPreference$SavedState;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 174
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lcom/wubydax/romcontrol/prefs/MyListPreference$SavedState;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 176
    new-instance v0, Lcom/wubydax/romcontrol/prefs/MyListPreference$SavedState;

    invoke-direct {v0, p1}, Lcom/wubydax/romcontrol/prefs/MyListPreference$SavedState;-><init>(Landroid/os/Parcel;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/wubydax/romcontrol/prefs/MyListPreference$SavedState$1;->createFromParcel(Landroid/os/Parcel;)Lcom/wubydax/romcontrol/prefs/MyListPreference$SavedState;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lcom/wubydax/romcontrol/prefs/MyListPreference$SavedState;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 180
    new-array v0, p1, [Lcom/wubydax/romcontrol/prefs/MyListPreference$SavedState;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 174
    invoke-virtual {p0, p1}, Lcom/wubydax/romcontrol/prefs/MyListPreference$SavedState$1;->newArray(I)[Lcom/wubydax/romcontrol/prefs/MyListPreference$SavedState;

    move-result-object v0

    return-object v0
.end method
