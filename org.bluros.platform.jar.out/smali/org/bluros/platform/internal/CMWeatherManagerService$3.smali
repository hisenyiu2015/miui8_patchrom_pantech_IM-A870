.class Lorg/bluros/platform/internal/CMWeatherManagerService$3;
.super Ljava/lang/Object;
.source "CMWeatherManagerService.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bluros/platform/internal/CMWeatherManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bluros/platform/internal/CMWeatherManagerService;


# direct methods
.method constructor <init>(Lorg/bluros/platform/internal/CMWeatherManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bluros/platform/internal/CMWeatherManagerService;

    .prologue
    .line 307
    iput-object p1, p0, Lorg/bluros/platform/internal/CMWeatherManagerService$3;->this$0:Lorg/bluros/platform/internal/CMWeatherManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 310
    iget-object v1, p0, Lorg/bluros/platform/internal/CMWeatherManagerService$3;->this$0:Lorg/bluros/platform/internal/CMWeatherManagerService;

    invoke-static {p2}, Lbluros/weatherservice/IWeatherProviderService$Stub;->asInterface(Landroid/os/IBinder;)Lbluros/weatherservice/IWeatherProviderService;

    move-result-object v2

    invoke-static {v1, v2}, Lorg/bluros/platform/internal/CMWeatherManagerService;->-set2(Lorg/bluros/platform/internal/CMWeatherManagerService;Lbluros/weatherservice/IWeatherProviderService;)Lbluros/weatherservice/IWeatherProviderService;

    .line 311
    iget-object v1, p0, Lorg/bluros/platform/internal/CMWeatherManagerService$3;->this$0:Lorg/bluros/platform/internal/CMWeatherManagerService;

    const/4 v2, 0x1

    invoke-static {v1, v2}, Lorg/bluros/platform/internal/CMWeatherManagerService;->-set0(Lorg/bluros/platform/internal/CMWeatherManagerService;Z)Z

    .line 313
    :try_start_0
    iget-object v1, p0, Lorg/bluros/platform/internal/CMWeatherManagerService$3;->this$0:Lorg/bluros/platform/internal/CMWeatherManagerService;

    invoke-static {v1}, Lorg/bluros/platform/internal/CMWeatherManagerService;->-get7(Lorg/bluros/platform/internal/CMWeatherManagerService;)Lbluros/weatherservice/IWeatherProviderService;

    move-result-object v1

    iget-object v2, p0, Lorg/bluros/platform/internal/CMWeatherManagerService$3;->this$0:Lorg/bluros/platform/internal/CMWeatherManagerService;

    invoke-static {v2}, Lorg/bluros/platform/internal/CMWeatherManagerService;->-get6(Lorg/bluros/platform/internal/CMWeatherManagerService;)Lbluros/weatherservice/IWeatherProviderServiceClient;

    move-result-object v2

    invoke-interface {v1, v2}, Lbluros/weatherservice/IWeatherProviderService;->setServiceClient(Lbluros/weatherservice/IWeatherProviderServiceClient;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 316
    :goto_0
    iget-object v1, p0, Lorg/bluros/platform/internal/CMWeatherManagerService$3;->this$0:Lorg/bluros/platform/internal/CMWeatherManagerService;

    invoke-static {v1}, Lorg/bluros/platform/internal/CMWeatherManagerService;->-get5(Lorg/bluros/platform/internal/CMWeatherManagerService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 317
    iget-object v1, p0, Lorg/bluros/platform/internal/CMWeatherManagerService$3;->this$0:Lorg/bluros/platform/internal/CMWeatherManagerService;

    invoke-static {v1, p1}, Lorg/bluros/platform/internal/CMWeatherManagerService;->-wrap6(Lorg/bluros/platform/internal/CMWeatherManagerService;Landroid/content/ComponentName;)V

    .line 319
    :cond_0
    iget-object v1, p0, Lorg/bluros/platform/internal/CMWeatherManagerService$3;->this$0:Lorg/bluros/platform/internal/CMWeatherManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/bluros/platform/internal/CMWeatherManagerService;->-set1(Lorg/bluros/platform/internal/CMWeatherManagerService;Z)Z

    .line 309
    return-void

    .line 314
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 324
    iget-object v0, p0, Lorg/bluros/platform/internal/CMWeatherManagerService$3;->this$0:Lorg/bluros/platform/internal/CMWeatherManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bluros/platform/internal/CMWeatherManagerService;->-set2(Lorg/bluros/platform/internal/CMWeatherManagerService;Lbluros/weatherservice/IWeatherProviderService;)Lbluros/weatherservice/IWeatherProviderService;

    .line 325
    iget-object v0, p0, Lorg/bluros/platform/internal/CMWeatherManagerService$3;->this$0:Lorg/bluros/platform/internal/CMWeatherManagerService;

    const/4 v1, 0x0

    invoke-static {v0, v1}, Lorg/bluros/platform/internal/CMWeatherManagerService;->-set0(Lorg/bluros/platform/internal/CMWeatherManagerService;Z)Z

    .line 326
    invoke-static {}, Lorg/bluros/platform/internal/CMWeatherManagerService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Connection with "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {p1}, Landroid/content/ComponentName;->flattenToString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " has been closed"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    return-void
.end method