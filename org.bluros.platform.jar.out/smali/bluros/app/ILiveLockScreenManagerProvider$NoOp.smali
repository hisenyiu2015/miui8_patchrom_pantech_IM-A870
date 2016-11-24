.class public Lbluros/app/ILiveLockScreenManagerProvider$NoOp;
.super Ljava/lang/Object;
.source "ILiveLockScreenManagerProvider.java"

# interfaces
.implements Lbluros/app/ILiveLockScreenManagerProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbluros/app/ILiveLockScreenManagerProvider;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoOp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 15
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 19
    const/4 v0, 0x0

    return-object v0
.end method

.method public cancelLiveLockScreen(Ljava/lang/String;II)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 30
    return-void
.end method

.method public enqueueLiveLockScreen(Ljava/lang/String;ILbluros/app/LiveLockScreenInfo;[II)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "lls"    # Lbluros/app/LiveLockScreenInfo;
    .param p4, "idReceived"    # [I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 24
    return-void
.end method

.method public getCurrentLiveLockScreen()Lbluros/app/LiveLockScreenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 38
    const/4 v0, 0x0

    return-object v0
.end method

.method public getLiveLockScreenEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 51
    const/4 v0, 0x0

    return v0
.end method

.method public registerChangeListener(Lbluros/app/ILiveLockScreenChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Lbluros/app/ILiveLockScreenChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 59
    const/4 v0, 0x0

    return v0
.end method

.method public unregisterChangeListener(Lbluros/app/ILiveLockScreenChangeListener;)Z
    .locals 1
    .param p1, "listener"    # Lbluros/app/ILiveLockScreenChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 66
    const/4 v0, 0x0

    return v0
.end method

.method public updateDefaultLiveLockScreen(Lbluros/app/LiveLockScreenInfo;)V
    .locals 0
    .param p1, "llsInfo"    # Lbluros/app/LiveLockScreenInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 43
    return-void
.end method
