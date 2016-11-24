.class public interface abstract Lbluros/themes/IThemeProcessingListener;
.super Ljava/lang/Object;
.source "IThemeProcessingListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbluros/themes/IThemeProcessingListener$NoOp;,
        Lbluros/themes/IThemeProcessingListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onFinishedProcessing(Ljava/lang/String;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
