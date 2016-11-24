.class public interface abstract Lbluros/weatherservice/IWeatherProviderService;
.super Ljava/lang/Object;
.source "IWeatherProviderService.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbluros/weatherservice/IWeatherProviderService$NoOp;,
        Lbluros/weatherservice/IWeatherProviderService$Stub;
    }
.end annotation


# virtual methods
.method public abstract cancelOngoingRequests()V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract cancelRequest(I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract processCityNameLookupRequest(Lbluros/weather/RequestInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract processWeatherUpdateRequest(Lbluros/weather/RequestInfo;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method

.method public abstract setServiceClient(Lbluros/weatherservice/IWeatherProviderServiceClient;)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
