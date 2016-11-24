.class public interface abstract Lbluros/app/ILiveLockScreenManager;
.super Ljava/lang/Object;
.source "ILiveLockScreenManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbluros/app/ILiveLockScreenManager$NoOp;,
        Lbluros/app/ILiveLockScreenManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelLiveLockScreen(Ljava/lang/String;II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract enqueueLiveLockScreen(Ljava/lang/String;ILbluros/app/LiveLockScreenInfo;[II)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getCurrentLiveLockScreen()Lbluros/app/LiveLockScreenInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getDefaultLiveLockScreen()Lbluros/app/LiveLockScreenInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getLiveLockScreenEnabled()Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerChangeListener(Lbluros/app/ILiveLockScreenChangeListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setDefaultLiveLockScreen(Lbluros/app/LiveLockScreenInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setLiveLockScreenEnabled(Z)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterChangeListener(Lbluros/app/ILiveLockScreenChangeListener;)Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
