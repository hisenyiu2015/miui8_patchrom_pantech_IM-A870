.class public interface abstract Lbluros/weather/IRequestInfoListener;
.super Ljava/lang/Object;
.source "IRequestInfoListener.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbluros/weather/IRequestInfoListener$NoOp;,
        Lbluros/weather/IRequestInfoListener$Stub;
    }
.end annotation


# virtual methods
.method public abstract onLookupCityRequestCompleted(Lbluros/weather/RequestInfo;ILjava/util/List;)V
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lbluros/weather/RequestInfo;",
            "I",
            "Ljava/util/List",
            "<",
            "Lbluros/weather/WeatherLocation;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract onWeatherRequestCompleted(Lbluros/weather/RequestInfo;ILbluros/weather/WeatherInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
