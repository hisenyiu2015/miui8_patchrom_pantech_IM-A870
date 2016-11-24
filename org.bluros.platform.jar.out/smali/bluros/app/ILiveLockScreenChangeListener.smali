.class public interface abstract Lbluros/app/ILiveLockScreenChangeListener;
.super Ljava/lang/Object;
.source "ILiveLockScreenChangeListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbluros/app/ILiveLockScreenChangeListener$NoOp;,
        Lbluros/app/ILiveLockScreenChangeListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onLiveLockScreenChanged(Lbluros/app/LiveLockScreenInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
