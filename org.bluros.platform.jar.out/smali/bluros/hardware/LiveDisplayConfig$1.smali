.class final Lbluros/hardware/LiveDisplayConfig$1;
.super Ljava/lang/Object;
.source "LiveDisplayConfig.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbluros/hardware/LiveDisplayConfig;
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
        "Lbluros/hardware/LiveDisplayConfig;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 290
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lbluros/hardware/LiveDisplayConfig;
    .locals 2
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 292
    new-instance v0, Lbluros/hardware/LiveDisplayConfig;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lbluros/hardware/LiveDisplayConfig;-><init>(Landroid/os/Parcel;Lbluros/hardware/LiveDisplayConfig;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "in"    # Landroid/os/Parcel;

    .prologue
    .line 291
    invoke-virtual {p0, p1}, Lbluros/hardware/LiveDisplayConfig$1;->createFromParcel(Landroid/os/Parcel;)Lbluros/hardware/LiveDisplayConfig;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lbluros/hardware/LiveDisplayConfig;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 297
    new-array v0, p1, [Lbluros/hardware/LiveDisplayConfig;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 296
    invoke-virtual {p0, p1}, Lbluros/hardware/LiveDisplayConfig$1;->newArray(I)[Lbluros/hardware/LiveDisplayConfig;

    move-result-object v0

    return-object v0
.end method
