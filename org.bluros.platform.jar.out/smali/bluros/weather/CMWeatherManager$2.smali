.class Lbluros/weather/CMWeatherManager$2;
.super Lbluros/weather/IRequestInfoListener$Stub;
.source "CMWeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbluros/weather/CMWeatherManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbluros/weather/CMWeatherManager;


# direct methods
.method constructor <init>(Lbluros/weather/CMWeatherManager;)V
    .locals 0
    .param p1, "this$0"    # Lbluros/weather/CMWeatherManager;

    .prologue
    .line 332
    iput-object p1, p0, Lbluros/weather/CMWeatherManager$2;->this$0:Lbluros/weather/CMWeatherManager;

    invoke-direct {p0}, Lbluros/weather/IRequestInfoListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onLookupCityRequestCompleted(Lbluros/weather/RequestInfo;ILjava/util/List;)V
    .locals 3
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

    .prologue
    .line 354
    .local p3, "weatherLocations":Ljava/util/List;, "Ljava/util/List<Lbluros/weather/WeatherLocation;>;"
    iget-object v1, p0, Lbluros/weather/CMWeatherManager$2;->this$0:Lbluros/weather/CMWeatherManager;

    invoke-static {v1}, Lbluros/weather/CMWeatherManager;->-get1(Lbluros/weather/CMWeatherManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbluros/weather/CMWeatherManager$LookupCityRequestListener;

    .line 355
    .local v0, "listener":Lbluros/weather/CMWeatherManager$LookupCityRequestListener;
    if-eqz v0, :cond_0

    .line 356
    iget-object v1, p0, Lbluros/weather/CMWeatherManager$2;->this$0:Lbluros/weather/CMWeatherManager;

    invoke-static {v1}, Lbluros/weather/CMWeatherManager;->-get0(Lbluros/weather/CMWeatherManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lbluros/weather/CMWeatherManager$2$2;

    invoke-direct {v2, p0, v0, p2, p3}, Lbluros/weather/CMWeatherManager$2$2;-><init>(Lbluros/weather/CMWeatherManager$2;Lbluros/weather/CMWeatherManager$LookupCityRequestListener;ILjava/util/List;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 351
    :cond_0
    return-void
.end method

.method public onWeatherRequestCompleted(Lbluros/weather/RequestInfo;ILbluros/weather/WeatherInfo;)V
    .locals 3
    .param p1, "requestInfo"    # Lbluros/weather/RequestInfo;
    .param p2, "status"    # I
    .param p3, "weatherInfo"    # Lbluros/weather/WeatherInfo;

    .prologue
    .line 338
    iget-object v1, p0, Lbluros/weather/CMWeatherManager$2;->this$0:Lbluros/weather/CMWeatherManager;

    invoke-static {v1}, Lbluros/weather/CMWeatherManager;->-get3(Lbluros/weather/CMWeatherManager;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1, p1}, Ljava/util/Map;->remove(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbluros/weather/CMWeatherManager$WeatherUpdateRequestListener;

    .line 339
    .local v0, "listener":Lbluros/weather/CMWeatherManager$WeatherUpdateRequestListener;
    if-eqz v0, :cond_0

    .line 340
    iget-object v1, p0, Lbluros/weather/CMWeatherManager$2;->this$0:Lbluros/weather/CMWeatherManager;

    invoke-static {v1}, Lbluros/weather/CMWeatherManager;->-get0(Lbluros/weather/CMWeatherManager;)Landroid/os/Handler;

    move-result-object v1

    new-instance v2, Lbluros/weather/CMWeatherManager$2$1;

    invoke-direct {v2, p0, v0, p2, p3}, Lbluros/weather/CMWeatherManager$2$1;-><init>(Lbluros/weather/CMWeatherManager$2;Lbluros/weather/CMWeatherManager$WeatherUpdateRequestListener;ILbluros/weather/WeatherInfo;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 336
    :cond_0
    return-void
.end method
