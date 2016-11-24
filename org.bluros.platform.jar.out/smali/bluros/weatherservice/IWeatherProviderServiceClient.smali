.class public interface abstract Lbluros/weatherservice/IWeatherProviderServiceClient;
.super Ljava/lang/Object;
.source "IWeatherProviderServiceClient.java"

# interfaces
.implements Landroid/os/IInterface;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbluros/weatherservice/IWeatherProviderServiceClient$NoOp;,
        Lbluros/weatherservice/IWeatherProviderServiceClient$Stub;
    }
.end annotation


# virtual methods
.method public abstract setServiceRequestState(Lbluros/weather/RequestInfo;Lbluros/weatherservice/ServiceRequestResult;I)V
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation
.end method
