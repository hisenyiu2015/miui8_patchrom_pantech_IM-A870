.class public abstract Landroid/dolby/IDsServiceCallbacks$Stub;
.super Landroid/os/Binder;
.source "IDsServiceCallbacks.java"

# interfaces
.implements Landroid/dolby/IDsServiceCallbacks;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/dolby/IDsServiceCallbacks;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/dolby/IDsServiceCallbacks$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.dolby.IDsServiceCallbacks"

.field static final TRANSACTION_onDsApParamChange:I = 0x8

.field static final TRANSACTION_onDsOn:I = 0x1

.field static final TRANSACTION_onEqSettingsChanged:I = 0x7

.field static final TRANSACTION_onProfileNameChanged:I = 0x4

.field static final TRANSACTION_onProfileSelected:I = 0x2

.field static final TRANSACTION_onProfileSettingsChanged:I = 0x3

.field static final TRANSACTION_onVisualizerSuspended:I = 0x6

.field static final TRANSACTION_onVisualizerUpdated:I = 0x5


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 19
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 21
    const-string/jumbo v0, "android.dolby.IDsServiceCallbacks"

    invoke-virtual {p0, p0, v0}, Landroid/dolby/IDsServiceCallbacks$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 19
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/dolby/IDsServiceCallbacks;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 29
    if-nez p0, :cond_0

    .line 30
    return-object v1

    .line 32
    :cond_0
    const-string/jumbo v1, "android.dolby.IDsServiceCallbacks"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 33
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/dolby/IDsServiceCallbacks;

    if-eqz v1, :cond_1

    .line 34
    check-cast v0, Landroid/dolby/IDsServiceCallbacks;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 36
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/dolby/IDsServiceCallbacks$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/dolby/IDsServiceCallbacks$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 40
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 8
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 44
    sparse-switch p1, :sswitch_data_0

    .line 132
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v6

    return v6

    .line 48
    :sswitch_0
    const-string/jumbo v6, "android.dolby.IDsServiceCallbacks"

    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 49
    return v7

    .line 53
    :sswitch_1
    const-string/jumbo v6, "android.dolby.IDsServiceCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 55
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_0

    const/4 v1, 0x1

    .line 56
    .local v1, "_arg0":Z
    :goto_0
    invoke-virtual {p0, v1}, Landroid/dolby/IDsServiceCallbacks$Stub;->onDsOn(Z)V

    .line 57
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 58
    return v7

    .line 55
    .end local v1    # "_arg0":Z
    :cond_0
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_0

    .line 62
    .end local v1    # "_arg0":Z
    :sswitch_2
    const-string/jumbo v6, "android.dolby.IDsServiceCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 64
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 65
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Landroid/dolby/IDsServiceCallbacks$Stub;->onProfileSelected(I)V

    .line 66
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 67
    return v7

    .line 71
    .end local v0    # "_arg0":I
    :sswitch_3
    const-string/jumbo v6, "android.dolby.IDsServiceCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 73
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 74
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Landroid/dolby/IDsServiceCallbacks$Stub;->onProfileSettingsChanged(I)V

    .line 75
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 76
    return v7

    .line 80
    .end local v0    # "_arg0":I
    :sswitch_4
    const-string/jumbo v6, "android.dolby.IDsServiceCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 82
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 84
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 85
    .local v4, "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Landroid/dolby/IDsServiceCallbacks$Stub;->onProfileNameChanged(ILjava/lang/String;)V

    .line 86
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 87
    return v7

    .line 91
    .end local v0    # "_arg0":I
    .end local v4    # "_arg1":Ljava/lang/String;
    :sswitch_5
    const-string/jumbo v6, "android.dolby.IDsServiceCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 93
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 95
    .local v2, "_arg0":[F
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v5

    .line 96
    .local v5, "_arg1":[F
    invoke-virtual {p0, v2, v5}, Landroid/dolby/IDsServiceCallbacks$Stub;->onVisualizerUpdated([F[F)V

    .line 97
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 98
    return v7

    .line 102
    .end local v2    # "_arg0":[F
    .end local v5    # "_arg1":[F
    :sswitch_6
    const-string/jumbo v6, "android.dolby.IDsServiceCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 104
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v6

    if-eqz v6, :cond_1

    const/4 v1, 0x1

    .line 105
    .restart local v1    # "_arg0":Z
    :goto_1
    invoke-virtual {p0, v1}, Landroid/dolby/IDsServiceCallbacks$Stub;->onVisualizerSuspended(Z)V

    .line 106
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 107
    return v7

    .line 104
    .end local v1    # "_arg0":Z
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_1

    .line 111
    .end local v1    # "_arg0":Z
    :sswitch_7
    const-string/jumbo v6, "android.dolby.IDsServiceCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 113
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 115
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 116
    .local v3, "_arg1":I
    invoke-virtual {p0, v0, v3}, Landroid/dolby/IDsServiceCallbacks$Stub;->onEqSettingsChanged(II)V

    .line 117
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 118
    return v7

    .line 122
    .end local v0    # "_arg0":I
    .end local v3    # "_arg1":I
    :sswitch_8
    const-string/jumbo v6, "android.dolby.IDsServiceCallbacks"

    invoke-virtual {p2, v6}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 124
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 126
    .restart local v0    # "_arg0":I
    invoke-virtual {p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v4

    .line 127
    .restart local v4    # "_arg1":Ljava/lang/String;
    invoke-virtual {p0, v0, v4}, Landroid/dolby/IDsServiceCallbacks$Stub;->onDsApParamChange(ILjava/lang/String;)V

    .line 128
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 129
    return v7

    .line 44
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
