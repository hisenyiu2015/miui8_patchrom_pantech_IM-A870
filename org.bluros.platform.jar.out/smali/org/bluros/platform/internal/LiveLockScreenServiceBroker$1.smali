.class Lorg/bluros/platform/internal/LiveLockScreenServiceBroker$1;
.super Ljava/lang/Object;
.source "LiveLockScreenServiceBroker.java"

# interfaces
.implements Lbluros/app/ILiveLockScreenManagerProvider;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;


# direct methods
.method constructor <init>(Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;

    .prologue
    .line 78
    iput-object p1, p0, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker$1;->this$0:Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 117
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
    .line 85
    return-void
.end method

.method public enqueueLiveLockScreen(Ljava/lang/String;ILbluros/app/LiveLockScreenInfo;[II)V
    .locals 0
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "lls"    # Lbluros/app/LiveLockScreenInfo;
    .param p4, "idReceived"    # [I
    .param p5, "userid"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 81
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
    .line 90
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
    .line 100
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
    .line 106
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
    .line 112
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
    .line 94
    return-void
.end method
