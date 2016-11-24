.class public Lbluros/weatherservice/IWeatherProviderService$NoOp;
.super Ljava/lang/Object;
.source "IWeatherProviderService.java"

# interfaces
.implements Lbluros/weatherservice/IWeatherProviderService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbluros/weatherservice/IWeatherProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "NoOp"
.end annotation


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 11
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 1

    .prologue
    .line 15
    const/4 v0, 0x0

    return-object v0
.end method

.method public cancelOngoingRequests()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 26
    return-void
.end method

.method public cancelRequest(I)V
    .locals 0
    .param p1, "requestId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 29
    return-void
.end method

.method public processCityNameLookupRequest(Lbluros/weather/RequestInfo;)V
    .locals 0
    .param p1, "request"    # Lbluros/weather/RequestInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 20
    return-void
.end method

.method public processWeatherUpdateRequest(Lbluros/weather/RequestInfo;)V
    .locals 0
    .param p1, "request"    # Lbluros/weather/RequestInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 17
    return-void
.end method

.method public setServiceClient(Lbluros/weatherservice/IWeatherProviderServiceClient;)V
    .locals 0
    .param p1, "client"    # Lbluros/weatherservice/IWeatherProviderServiceClient;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 23
    return-void
.end method
