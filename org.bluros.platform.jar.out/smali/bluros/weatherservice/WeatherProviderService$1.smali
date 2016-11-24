.class Lbluros/weatherservice/WeatherProviderService$1;
.super Lbluros/weatherservice/IWeatherProviderService$Stub;
.source "WeatherProviderService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbluros/weatherservice/WeatherProviderService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbluros/weatherservice/WeatherProviderService;


# direct methods
.method constructor <init>(Lbluros/weatherservice/WeatherProviderService;)V
    .locals 0
    .param p1, "this$0"    # Lbluros/weatherservice/WeatherProviderService;

    .prologue
    .line 92
    iput-object p1, p0, Lbluros/weatherservice/WeatherProviderService$1;->this$0:Lbluros/weatherservice/WeatherProviderService;

    invoke-direct {p0}, Lbluros/weatherservice/IWeatherProviderService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public cancelOngoingRequests()V
    .locals 5

    .prologue
    .line 111
    iget-object v2, p0, Lbluros/weatherservice/WeatherProviderService$1;->this$0:Lbluros/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lbluros/weatherservice/WeatherProviderService;->-get2(Lbluros/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    .line 112
    :try_start_0
    iget-object v2, p0, Lbluros/weatherservice/WeatherProviderService$1;->this$0:Lbluros/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lbluros/weatherservice/WeatherProviderService;->-get2(Lbluros/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "request$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbluros/weatherservice/ServiceRequest;

    .line 113
    .local v0, "request":Lbluros/weatherservice/ServiceRequest;
    invoke-virtual {v0}, Lbluros/weatherservice/ServiceRequest;->cancel()V

    .line 114
    iget-object v2, p0, Lbluros/weatherservice/WeatherProviderService$1;->this$0:Lbluros/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lbluros/weatherservice/WeatherProviderService;->-get2(Lbluros/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 115
    iget-object v2, p0, Lbluros/weatherservice/WeatherProviderService$1;->this$0:Lbluros/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lbluros/weatherservice/WeatherProviderService;->-get1(Lbluros/weatherservice/WeatherProviderService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    .line 111
    .end local v0    # "request":Lbluros/weatherservice/ServiceRequest;
    .end local v1    # "request$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2

    .restart local v1    # "request$iterator":Ljava/util/Iterator;
    :cond_0
    monitor-exit v3

    .line 110
    return-void
.end method

.method public cancelRequest(I)V
    .locals 5
    .param p1, "requestId"    # I

    .prologue
    .line 123
    iget-object v2, p0, Lbluros/weatherservice/WeatherProviderService$1;->this$0:Lbluros/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lbluros/weatherservice/WeatherProviderService;->-get2(Lbluros/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v3

    monitor-enter v3

    .line 124
    :try_start_0
    iget-object v2, p0, Lbluros/weatherservice/WeatherProviderService$1;->this$0:Lbluros/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lbluros/weatherservice/WeatherProviderService;->-get2(Lbluros/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "request$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lbluros/weatherservice/ServiceRequest;

    .line 125
    .local v0, "request":Lbluros/weatherservice/ServiceRequest;
    invoke-virtual {v0}, Lbluros/weatherservice/ServiceRequest;->getRequestInfo()Lbluros/weather/RequestInfo;

    move-result-object v2

    invoke-virtual {v2}, Lbluros/weather/RequestInfo;->hashCode()I

    move-result v2

    if-ne v2, p1, :cond_0

    .line 126
    iget-object v2, p0, Lbluros/weatherservice/WeatherProviderService$1;->this$0:Lbluros/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lbluros/weatherservice/WeatherProviderService;->-get2(Lbluros/weatherservice/WeatherProviderService;)Ljava/util/Set;

    move-result-object v2

    invoke-interface {v2, v0}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 127
    invoke-virtual {v0}, Lbluros/weatherservice/ServiceRequest;->cancel()V

    .line 128
    iget-object v2, p0, Lbluros/weatherservice/WeatherProviderService$1;->this$0:Lbluros/weatherservice/WeatherProviderService;

    invoke-static {v2}, Lbluros/weatherservice/WeatherProviderService;->-get1(Lbluros/weatherservice/WeatherProviderService;)Landroid/os/Handler;

    move-result-object v2

    const/4 v4, 0x3

    invoke-virtual {v2, v4, v0}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Message;->sendToTarget()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .end local v0    # "request":Lbluros/weatherservice/ServiceRequest;
    :cond_1
    monitor-exit v3

    .line 122
    return-void

    .line 123
    .end local v1    # "request$iterator":Ljava/util/Iterator;
    :catchall_0
    move-exception v2

    monitor-exit v3

    throw v2
.end method

.method public processCityNameLookupRequest(Lbluros/weather/RequestInfo;)V
    .locals 2
    .param p1, "info"    # Lbluros/weather/RequestInfo;

    .prologue
    .line 101
    iget-object v0, p0, Lbluros/weatherservice/WeatherProviderService$1;->this$0:Lbluros/weatherservice/WeatherProviderService;

    invoke-static {v0}, Lbluros/weatherservice/WeatherProviderService;->-get1(Lbluros/weatherservice/WeatherProviderService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 100
    return-void
.end method

.method public processWeatherUpdateRequest(Lbluros/weather/RequestInfo;)V
    .locals 2
    .param p1, "info"    # Lbluros/weather/RequestInfo;

    .prologue
    .line 96
    iget-object v0, p0, Lbluros/weatherservice/WeatherProviderService$1;->this$0:Lbluros/weatherservice/WeatherProviderService;

    invoke-static {v0}, Lbluros/weatherservice/WeatherProviderService;->-get1(Lbluros/weatherservice/WeatherProviderService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x2

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 95
    return-void
.end method

.method public setServiceClient(Lbluros/weatherservice/IWeatherProviderServiceClient;)V
    .locals 2
    .param p1, "client"    # Lbluros/weatherservice/IWeatherProviderServiceClient;

    .prologue
    .line 106
    iget-object v0, p0, Lbluros/weatherservice/WeatherProviderService$1;->this$0:Lbluros/weatherservice/WeatherProviderService;

    invoke-static {v0}, Lbluros/weatherservice/WeatherProviderService;->-get1(Lbluros/weatherservice/WeatherProviderService;)Landroid/os/Handler;

    move-result-object v0

    const/4 v1, 0x1

    invoke-virtual {v0, v1, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    invoke-virtual {v0}, Landroid/os/Message;->sendToTarget()V

    .line 105
    return-void
.end method
