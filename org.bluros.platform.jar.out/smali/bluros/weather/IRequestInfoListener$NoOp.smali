.class public Lbluros/weather/IRequestInfoListener$NoOp;
.super Ljava/lang/Object;
.source "IRequestInfoListener.java"

# interfaces
.implements Lbluros/weather/IRequestInfoListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbluros/weather/IRequestInfoListener;
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

.method public onLookupCityRequestCompleted(Lbluros/weather/RequestInfo;ILjava/util/List;)V
    .locals 0
    .param p1, "requestInfo"    # Lbluros/weather/RequestInfo;
    .param p2, "status"    # I
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

    .prologue
    .line 20
    .local p3, "weatherLocation":Ljava/util/List;, "Ljava/util/List<Lbluros/weather/WeatherLocation;>;"
    return-void
.end method

.method public onWeatherRequestCompleted(Lbluros/weather/RequestInfo;ILbluros/weather/WeatherInfo;)V
    .locals 0
    .param p1, "requestInfo"    # Lbluros/weather/RequestInfo;
    .param p2, "status"    # I
    .param p3, "weatherInfo"    # Lbluros/weather/WeatherInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 17
    return-void
.end method
