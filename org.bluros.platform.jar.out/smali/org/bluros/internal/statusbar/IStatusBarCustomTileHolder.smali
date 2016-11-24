.class public interface abstract Lorg/bluros/internal/statusbar/IStatusBarCustomTileHolder;
.super Ljava/lang/Object;
.source "IStatusBarCustomTileHolder.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bluros/internal/statusbar/IStatusBarCustomTileHolder$NoOp;,
        Lorg/bluros/internal/statusbar/IStatusBarCustomTileHolder$Stub;
    }
.end annotation


# virtual methods
.method public abstract get()Lbluros/app/StatusBarPanelCustomTile;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
