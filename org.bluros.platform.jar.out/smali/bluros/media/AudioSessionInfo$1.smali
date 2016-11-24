.class final Lbluros/media/AudioSessionInfo$1;
.super Ljava/lang/Object;
.source "AudioSessionInfo.java"

# interfaces
.implements Landroid/os/Parcelable$Creator;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbluros/media/AudioSessionInfo;
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
        "Lbluros/media/AudioSessionInfo;",
        ">;"
    }
.end annotation


# direct methods
.method constructor <init>()V
    .locals 0

    .prologue
    .line 162
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public createFromParcel(Landroid/os/Parcel;)Lbluros/media/AudioSessionInfo;
    .locals 2
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 166
    new-instance v0, Lbluros/media/AudioSessionInfo;

    const/4 v1, 0x0

    invoke-direct {v0, p1, v1}, Lbluros/media/AudioSessionInfo;-><init>(Landroid/os/Parcel;Lbluros/media/AudioSessionInfo;)V

    return-object v0
.end method

.method public bridge synthetic createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 1
    .param p1, "source"    # Landroid/os/Parcel;

    .prologue
    .line 165
    invoke-virtual {p0, p1}, Lbluros/media/AudioSessionInfo$1;->createFromParcel(Landroid/os/Parcel;)Lbluros/media/AudioSessionInfo;

    move-result-object v0

    return-object v0
.end method

.method public newArray(I)[Lbluros/media/AudioSessionInfo;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 171
    new-array v0, p1, [Lbluros/media/AudioSessionInfo;

    return-object v0
.end method

.method public bridge synthetic newArray(I)[Ljava/lang/Object;
    .locals 1
    .param p1, "size"    # I

    .prologue
    .line 170
    invoke-virtual {p0, p1}, Lbluros/media/AudioSessionInfo$1;->newArray(I)[Lbluros/media/AudioSessionInfo;

    move-result-object v0

    return-object v0
.end method
