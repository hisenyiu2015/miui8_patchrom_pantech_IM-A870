.class final Lbluros/hardware/DisplayMode$1;
.super Ljava/lang/Object;
.source "DisplayMode.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbluros/hardware/DisplayMode;
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
        "Lbluros/hardware/DisplayMode;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lbluros/hardware/DisplayMode;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 100
    new-instance v0, Lbluros/hardware/DisplayMode;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lbluros/hardware/DisplayMode;-><init>(Landroid/os/Parcel;Lbluros/hardware/DisplayMode;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 99
    invoke-virtual {p0, p1}, Lbluros/hardware/DisplayMode$1;->createFromParcel(Landroid/os/Parcel;)Lbluros/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lbluros/hardware/DisplayMode;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 105
    new-array v0, p1, [Lbluros/hardware/DisplayMode;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 104
    invoke-virtual {p0, p1}, Lbluros/hardware/DisplayMode$1;->newArray(I)[Lbluros/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method
