.class public interface abstract Lbluros/weather/ICMWeatherManager;
.super Ljava/lang/Object;
.source "ICMWeatherManager.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbluros/weather/ICMWeatherManager$NoOp;,
        Lbluros/weather/ICMWeatherManager$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelRequest(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract getActiveWeatherServiceProviderLabel()Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract lookupCity(Lbluros/weather/RequestInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract registerWeatherServiceProviderChangeListener(Lbluros/weather/IWeatherServiceProviderChangeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract unregisterWeatherServiceProviderChangeListener(Lbluros/weather/IWeatherServiceProviderChangeListener;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract updateWeather(Lbluros/weather/RequestInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
