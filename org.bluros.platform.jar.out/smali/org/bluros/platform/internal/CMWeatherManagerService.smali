.class public Lorg/bluros/platform/internal/CMWeatherManagerService;
.super Lorg/bluros/platform/internal/CMSystemService;
.source "CMWeatherManagerService.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bluros/platform/internal/CMWeatherManagerService$1;,
        Lorg/bluros/platform/internal/CMWeatherManagerService$2;,
        Lorg/bluros/platform/internal/CMWeatherManagerService$3;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mIsWeatherProviderServiceBound:Z

.field private mMutex:Ljava/lang/Object;

.field private final mProviderChangeListeners:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lbluros/weather/IWeatherServiceProviderChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private volatile mReconnectedDuePkgModified:Z

.field private final mService:Landroid/os/IBinder;

.field private final mServiceClient:Lbluros/weatherservice/IWeatherProviderServiceClient;

.field private mWeatherProviderService:Lbluros/weatherservice/IWeatherProviderService;

.field private mWeatherServiceProviderConnection:Landroid/content/ServiceConnection;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bluros/platform/internal/CMWeatherManagerService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lorg/bluros/platform/internal/CMWeatherManagerService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get2(Lorg/bluros/platform/internal/CMWeatherManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mIsWeatherProviderServiceBound:Z

    return v0
.end method

.method static synthetic -get3(Lorg/bluros/platform/internal/CMWeatherManagerService;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mMutex:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get4(Lorg/bluros/platform/internal/CMWeatherManagerService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mProviderChangeListeners:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static synthetic -get5(Lorg/bluros/platform/internal/CMWeatherManagerService;)Z
    .locals 1

    iget-boolean v0, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mReconnectedDuePkgModified:Z

    return v0
.end method

.method static synthetic -get6(Lorg/bluros/platform/internal/CMWeatherManagerService;)Lbluros/weatherservice/IWeatherProviderServiceClient;
    .locals 1

    iget-object v0, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mServiceClient:Lbluros/weatherservice/IWeatherProviderServiceClient;

    return-object v0
.end method

.method static synthetic -get7(Lorg/bluros/platform/internal/CMWeatherManagerService;)Lbluros/weatherservice/IWeatherProviderService;
    .locals 1

    iget-object v0, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mWeatherProviderService:Lbluros/weatherservice/IWeatherProviderService;

    return-object v0
.end method

.method static synthetic -get8(Lorg/bluros/platform/internal/CMWeatherManagerService;)Landroid/content/ServiceConnection;
    .locals 1

    iget-object v0, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mWeatherServiceProviderConnection:Landroid/content/ServiceConnection;

    return-object v0
.end method

.method static synthetic -set0(Lorg/bluros/platform/internal/CMWeatherManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mIsWeatherProviderServiceBound:Z

    return p1
.end method

.method static synthetic -set1(Lorg/bluros/platform/internal/CMWeatherManagerService;Z)Z
    .locals 0

    iput-boolean p1, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mReconnectedDuePkgModified:Z

    return p1
.end method

.method static synthetic -set2(Lorg/bluros/platform/internal/CMWeatherManagerService;Lbluros/weatherservice/IWeatherProviderService;)Lbluros/weatherservice/IWeatherProviderService;
    .locals 0

    iput-object p1, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mWeatherProviderService:Lbluros/weatherservice/IWeatherProviderService;

    return-object p1
.end method

.method static synthetic -wrap0(Lorg/bluros/platform/internal/CMWeatherManagerService;Lbluros/weather/IRequestInfoListener;)Z
    .locals 1
    .param p1, "listener"    # Lbluros/weather/IRequestInfoListener;

    .prologue
    invoke-direct {p0, p1}, Lorg/bluros/platform/internal/CMWeatherManagerService;->isValidListener(Lbluros/weather/IRequestInfoListener;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap1(Lorg/bluros/platform/internal/CMWeatherManagerService;I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/bluros/platform/internal/CMWeatherManagerService;->isValidRequestInfoStatus(I)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap2(Lorg/bluros/platform/internal/CMWeatherManagerService;Lbluros/weather/WeatherInfo;)Z
    .locals 1
    .param p1, "wi"    # Lbluros/weather/WeatherInfo;

    .prologue
    invoke-direct {p0, p1}, Lorg/bluros/platform/internal/CMWeatherManagerService;->updateWeatherInfoLocked(Lbluros/weather/WeatherInfo;)Z

    move-result v0

    return v0
.end method

.method static synthetic -wrap3(Lorg/bluros/platform/internal/CMWeatherManagerService;Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 1
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lorg/bluros/platform/internal/CMWeatherManagerService;->getComponentLabel(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method static synthetic -wrap4(Lorg/bluros/platform/internal/CMWeatherManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/bluros/platform/internal/CMWeatherManagerService;->disconnectClient()V

    return-void
.end method

.method static synthetic -wrap5(Lorg/bluros/platform/internal/CMWeatherManagerService;)V
    .locals 0

    invoke-direct {p0}, Lorg/bluros/platform/internal/CMWeatherManagerService;->enforcePermission()V

    return-void
.end method

.method static synthetic -wrap6(Lorg/bluros/platform/internal/CMWeatherManagerService;Landroid/content/ComponentName;)V
    .locals 0
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    invoke-direct {p0, p1}, Lorg/bluros/platform/internal/CMWeatherManagerService;->notifyProviderChanged(Landroid/content/ComponentName;)V

    return-void
.end method

.method static synthetic -wrap7(Lorg/bluros/platform/internal/CMWeatherManagerService;I)V
    .locals 0
    .param p1, "requestId"    # I

    .prologue
    invoke-direct {p0, p1}, Lorg/bluros/platform/internal/CMWeatherManagerService;->processCancelRequest(I)V

    return-void
.end method

.method static synthetic -wrap8(Lorg/bluros/platform/internal/CMWeatherManagerService;Lbluros/weather/RequestInfo;)V
    .locals 0
    .param p1, "info"    # Lbluros/weather/RequestInfo;

    .prologue
    invoke-direct {p0, p1}, Lorg/bluros/platform/internal/CMWeatherManagerService;->processCityNameLookupRequest(Lbluros/weather/RequestInfo;)V

    return-void
.end method

.method static synthetic -wrap9(Lorg/bluros/platform/internal/CMWeatherManagerService;Lbluros/weather/RequestInfo;)V
    .locals 0
    .param p1, "info"    # Lbluros/weather/RequestInfo;

    .prologue
    invoke-direct {p0, p1}, Lorg/bluros/platform/internal/CMWeatherManagerService;->processWeatherUpdateRequest(Lbluros/weather/RequestInfo;)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 59
    const-class v0, Lorg/bluros/platform/internal/CMWeatherManagerService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bluros/platform/internal/CMWeatherManagerService;->TAG:Ljava/lang/String;

    .line 57
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 220
    invoke-direct {p0, p1}, Lorg/bluros/platform/internal/CMSystemService;-><init>(Landroid/content/Context;)V

    .line 63
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    iput-object v0, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mMutex:Ljava/lang/Object;

    .line 66
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    .line 65
    iput-object v0, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mProviderChangeListeners:Landroid/os/RemoteCallbackList;

    .line 67
    const/4 v0, 0x0

    iput-boolean v0, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mReconnectedDuePkgModified:Z

    .line 70
    new-instance v0, Lorg/bluros/platform/internal/CMWeatherManagerService$1;

    invoke-direct {v0, p0}, Lorg/bluros/platform/internal/CMWeatherManagerService$1;-><init>(Lorg/bluros/platform/internal/CMWeatherManagerService;)V

    .line 69
    iput-object v0, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mServiceClient:Lbluros/weatherservice/IWeatherProviderServiceClient;

    .line 156
    new-instance v0, Lorg/bluros/platform/internal/CMWeatherManagerService$2;

    invoke-direct {v0, p0}, Lorg/bluros/platform/internal/CMWeatherManagerService$2;-><init>(Lorg/bluros/platform/internal/CMWeatherManagerService;)V

    iput-object v0, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mService:Landroid/os/IBinder;

    .line 307
    new-instance v0, Lorg/bluros/platform/internal/CMWeatherManagerService$3;

    invoke-direct {v0, p0}, Lorg/bluros/platform/internal/CMWeatherManagerService$3;-><init>(Lorg/bluros/platform/internal/CMWeatherManagerService;)V

    iput-object v0, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mWeatherServiceProviderConnection:Landroid/content/ServiceConnection;

    .line 221
    iput-object p1, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mContext:Landroid/content/Context;

    .line 219
    return-void
.end method

.method private bindActiveWeatherProviderService()V
    .locals 6

    .prologue
    .line 244
    iget-object v1, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 245
    const-string/jumbo v2, "weather_provider_service"

    .line 244
    invoke-static {v1, v2}, Lbluros/providers/CMSettings$Secure;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 246
    .local v0, "activeProviderService":Ljava/lang/String;
    if-eqz v0, :cond_0

    .line 247
    invoke-virtual {p0}, Lorg/bluros/platform/internal/CMWeatherManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    new-instance v2, Landroid/content/Intent;

    invoke-direct {v2}, Landroid/content/Intent;-><init>()V

    .line 248
    invoke-static {v0}, Landroid/content/ComponentName;->unflattenFromString(Ljava/lang/String;)Landroid/content/ComponentName;

    move-result-object v3

    .line 247
    invoke-virtual {v2, v3}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v2

    .line 249
    iget-object v3, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mWeatherServiceProviderConnection:Landroid/content/ServiceConnection;

    .line 250
    sget-object v4, Landroid/os/UserHandle;->CURRENT:Landroid/os/UserHandle;

    .line 249
    const/4 v5, 0x1

    .line 247
    invoke-virtual {v1, v2, v3, v5, v4}, Landroid/content/Context;->bindServiceAsUser(Landroid/content/Intent;Landroid/content/ServiceConnection;ILandroid/os/UserHandle;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 251
    sget-object v1, Lorg/bluros/platform/internal/CMWeatherManagerService;->TAG:Ljava/lang/String;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Failed to bind service "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    :cond_0
    return-void
.end method

.method private canProcessWeatherUpdateRequest(Lbluros/weather/RequestInfo;)Z
    .locals 4
    .param p1, "info"    # Lbluros/weather/RequestInfo;

    .prologue
    .line 257
    invoke-virtual {p1}, Lbluros/weather/RequestInfo;->getRequestListener()Lbluros/weather/IRequestInfoListener;

    move-result-object v1

    .line 259
    .local v1, "listener":Lbluros/weather/IRequestInfoListener;
    iget-boolean v2, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mIsWeatherProviderServiceBound:Z

    if-nez v2, :cond_1

    .line 260
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lbluros/weather/IRequestInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 263
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 262
    :try_start_0
    invoke-interface {v1, p1, v2, v3}, Lbluros/weather/IRequestInfoListener;->onWeatherRequestCompleted(Lbluros/weather/RequestInfo;ILbluros/weather/WeatherInfo;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 267
    :cond_0
    :goto_0
    const/4 v2, 0x0

    return v2

    .line 264
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 269
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_1
    const/4 v2, 0x1

    return v2
.end method

.method private declared-synchronized disconnectClient()V
    .locals 3

    .prologue
    monitor-enter p0

    .line 497
    :try_start_0
    iget-boolean v1, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mIsWeatherProviderServiceBound:Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    if-eqz v1, :cond_0

    .line 500
    :try_start_1
    iget-object v1, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mWeatherProviderService:Lbluros/weatherservice/IWeatherProviderService;

    invoke-interface {v1}, Lbluros/weatherservice/IWeatherProviderService;->cancelOngoingRequests()V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 506
    :goto_0
    :try_start_2
    iget-object v1, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mWeatherProviderService:Lbluros/weatherservice/IWeatherProviderService;

    const/4 v2, 0x0

    invoke-interface {v1, v2}, Lbluros/weatherservice/IWeatherProviderService;->setServiceClient(Lbluros/weatherservice/IWeatherProviderServiceClient;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_1
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 511
    :goto_1
    :try_start_3
    invoke-virtual {p0}, Lorg/bluros/platform/internal/CMWeatherManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    iget-object v2, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mWeatherServiceProviderConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v1, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 512
    const/4 v1, 0x0

    iput-boolean v1, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mIsWeatherProviderServiceBound:Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :cond_0
    monitor-exit p0

    .line 496
    return-void

    .line 501
    :catch_0
    move-exception v0

    .line 502
    .local v0, "e":Landroid/os/RemoteException;
    :try_start_4
    sget-object v1, Lorg/bluros/platform/internal/CMWeatherManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error occurred while trying to cancel ongoing requests"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_0

    .end local v0    # "e":Landroid/os/RemoteException;
    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 507
    :catch_1
    move-exception v0

    .line 508
    .restart local v0    # "e":Landroid/os/RemoteException;
    :try_start_5
    sget-object v1, Lorg/bluros/platform/internal/CMWeatherManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Error occurred while disconnecting client"

    invoke-static {v1, v2}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_5
    .catchall {:try_start_5 .. :try_end_5} :catchall_0

    goto :goto_1
.end method

.method private enforcePermission()V
    .locals 3

    .prologue
    .line 152
    iget-object v0, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mContext:Landroid/content/Context;

    .line 153
    const-string/jumbo v1, "bluros.permission.ACCESS_WEATHER_MANAGER"

    const/4 v2, 0x0

    .line 152
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 151
    return-void
.end method

.method private getComponentLabel(Landroid/content/ComponentName;)Ljava/lang/String;
    .locals 5
    .param p1, "componentName"    # Landroid/content/ComponentName;

    .prologue
    const/4 v4, 0x0

    .line 209
    iget-object v3, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 210
    .local v1, "pm":Landroid/content/pm/PackageManager;
    new-instance v3, Landroid/content/Intent;

    invoke-direct {v3}, Landroid/content/Intent;-><init>()V

    invoke-virtual {v3, p1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    move-result-object v0

    .line 212
    .local v0, "intent":Landroid/content/Intent;
    const/4 v3, 0x4

    .line 211
    invoke-virtual {v1, v0, v3}, Landroid/content/pm/PackageManager;->resolveService(Landroid/content/Intent;I)Landroid/content/pm/ResolveInfo;

    move-result-object v2

    .line 213
    .local v2, "resolveInfo":Landroid/content/pm/ResolveInfo;
    if-eqz v2, :cond_0

    .line 214
    invoke-virtual {v2, v1}, Landroid/content/pm/ResolveInfo;->loadLabel(Landroid/content/pm/PackageManager;)Ljava/lang/CharSequence;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/CharSequence;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3

    .line 216
    :cond_0
    return-object v4
.end method

.method private isValidListener(Lbluros/weather/IRequestInfoListener;)Z
    .locals 1
    .param p1, "listener"    # Lbluros/weather/IRequestInfoListener;

    .prologue
    .line 148
    if-eqz p1, :cond_0

    invoke-interface {p1}, Lbluros/weather/IRequestInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v0

    invoke-interface {v0}, Landroid/os/IBinder;->pingBinder()Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method private isValidRequestInfoStatus(I)Z
    .locals 1
    .param p1, "state"    # I

    .prologue
    .line 135
    packed-switch p1, :pswitch_data_0

    .line 143
    :pswitch_0
    const/4 v0, 0x0

    return v0

    .line 141
    :pswitch_1
    const/4 v0, 0x1

    return v0

    .line 135
    nop

    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_1
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private notifyProviderChanged(Landroid/content/ComponentName;)V
    .locals 6
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 331
    const/4 v4, 0x0

    .line 332
    .local v4, "providerName":Ljava/lang/String;
    if-eqz p1, :cond_0

    .line 333
    invoke-direct {p0, p1}, Lorg/bluros/platform/internal/CMWeatherManagerService;->getComponentLabel(Landroid/content/ComponentName;)Ljava/lang/String;

    move-result-object v4

    .line 336
    .end local v4    # "providerName":Ljava/lang/String;
    :cond_0
    iget-object v5, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mProviderChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v0

    .line 337
    .local v0, "N":I
    const/4 v2, 0x0

    .local v2, "indx":I
    :goto_0
    if-ge v2, v0, :cond_1

    .line 339
    iget-object v5, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mProviderChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5, v2}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v3

    check-cast v3, Lbluros/weather/IWeatherServiceProviderChangeListener;

    .line 341
    .local v3, "listener":Lbluros/weather/IWeatherServiceProviderChangeListener;
    :try_start_0
    invoke-interface {v3, v4}, Lbluros/weather/IWeatherServiceProviderChangeListener;->onWeatherServiceProviderChanged(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 337
    :goto_1
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 342
    :catch_0
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_1

    .line 345
    .end local v1    # "e":Landroid/os/RemoteException;
    .end local v3    # "listener":Lbluros/weather/IWeatherServiceProviderChangeListener;
    :cond_1
    iget-object v5, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mProviderChangeListeners:Landroid/os/RemoteCallbackList;

    invoke-virtual {v5}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 330
    return-void
.end method

.method private processCancelRequest(I)V
    .locals 2
    .param p1, "requestId"    # I

    .prologue
    .line 299
    iget-boolean v1, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mIsWeatherProviderServiceBound:Z

    if-eqz v1, :cond_0

    .line 301
    :try_start_0
    iget-object v1, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mWeatherProviderService:Lbluros/weatherservice/IWeatherProviderService;

    invoke-interface {v1, p1}, Lbluros/weatherservice/IWeatherProviderService;->cancelRequest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 298
    :cond_0
    :goto_0
    return-void

    .line 302
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private processCityNameLookupRequest(Lbluros/weather/RequestInfo;)V
    .locals 4
    .param p1, "info"    # Lbluros/weather/RequestInfo;

    .prologue
    .line 281
    iget-boolean v2, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mIsWeatherProviderServiceBound:Z

    if-nez v2, :cond_1

    .line 282
    invoke-virtual {p1}, Lbluros/weather/RequestInfo;->getRequestListener()Lbluros/weather/IRequestInfoListener;

    move-result-object v1

    .line 283
    .local v1, "listener":Lbluros/weather/IRequestInfoListener;
    if-eqz v1, :cond_0

    invoke-interface {v1}, Lbluros/weather/IRequestInfoListener;->asBinder()Landroid/os/IBinder;

    move-result-object v2

    invoke-interface {v2}, Landroid/os/IBinder;->pingBinder()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 286
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 285
    :try_start_0
    invoke-interface {v1, p1, v2, v3}, Lbluros/weather/IRequestInfoListener;->onLookupCityRequestCompleted(Lbluros/weather/RequestInfo;ILjava/util/List;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 290
    :cond_0
    :goto_0
    return-void

    .line 287
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 293
    .end local v0    # "e":Landroid/os/RemoteException;
    .end local v1    # "listener":Lbluros/weather/IRequestInfoListener;
    :cond_1
    :try_start_1
    iget-object v2, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mWeatherProviderService:Lbluros/weatherservice/IWeatherProviderService;

    invoke-interface {v2, p1}, Lbluros/weatherservice/IWeatherProviderService;->processCityNameLookupRequest(Lbluros/weather/RequestInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_1

    .line 280
    :goto_1
    return-void

    .line 294
    :catch_1
    move-exception v0

    .restart local v0    # "e":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method private declared-synchronized processWeatherUpdateRequest(Lbluros/weather/RequestInfo;)V
    .locals 2
    .param p1, "info"    # Lbluros/weather/RequestInfo;

    .prologue
    monitor-enter p0

    .line 273
    :try_start_0
    invoke-direct {p0, p1}, Lorg/bluros/platform/internal/CMWeatherManagerService;->canProcessWeatherUpdateRequest(Lbluros/weather/RequestInfo;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v1

    if-nez v1, :cond_0

    monitor-exit p0

    return-void

    .line 275
    :cond_0
    :try_start_1
    iget-object v1, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mWeatherProviderService:Lbluros/weatherservice/IWeatherProviderService;

    invoke-interface {v1, p1}, Lbluros/weatherservice/IWeatherProviderService;->processWeatherUpdateRequest(Lbluros/weather/RequestInfo;)V
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :goto_0
    monitor-exit p0

    .line 272
    return-void

    :catchall_0
    move-exception v1

    monitor-exit p0

    throw v1

    .line 276
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method private registerPackageMonitor()V
    .locals 5

    .prologue
    .line 385
    new-instance v0, Lorg/bluros/platform/internal/CMWeatherManagerService$4;

    invoke-direct {v0, p0}, Lorg/bluros/platform/internal/CMWeatherManagerService$4;-><init>(Lorg/bluros/platform/internal/CMWeatherManagerService;)V

    .line 470
    .local v0, "monitor":Lcom/android/internal/content/PackageMonitor;
    iget-object v1, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mContext:Landroid/content/Context;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-virtual {v2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v2

    sget-object v3, Landroid/os/UserHandle;->ALL:Landroid/os/UserHandle;

    const/4 v4, 0x1

    invoke-virtual {v0, v1, v2, v3, v4}, Lcom/android/internal/content/PackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 384
    return-void
.end method

.method private registerSettingsObserver()V
    .locals 5

    .prologue
    .line 475
    const-string/jumbo v2, "weather_provider_service"

    .line 474
    invoke-static {v2}, Lbluros/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 476
    .local v0, "enabledWeatherProviderServiceUri":Landroid/net/Uri;
    new-instance v1, Lorg/bluros/platform/internal/CMWeatherManagerService$5;

    invoke-static {}, Lcom/android/internal/os/BackgroundThread;->getHandler()Landroid/os/Handler;

    move-result-object v2

    invoke-direct {v1, p0, v2, v0}, Lorg/bluros/platform/internal/CMWeatherManagerService$5;-><init>(Lorg/bluros/platform/internal/CMWeatherManagerService;Landroid/os/Handler;Landroid/net/Uri;)V

    .line 492
    .local v1, "observer":Landroid/database/ContentObserver;
    iget-object v2, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v2

    .line 493
    const/4 v3, 0x0

    const/4 v4, -0x1

    .line 492
    invoke-virtual {v2, v0, v3, v1, v4}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 473
    return-void
.end method

.method private updateWeatherInfoLocked(Lbluros/weather/WeatherInfo;)Z
    .locals 10
    .param p1, "wi"    # Lbluros/weather/WeatherInfo;

    .prologue
    .line 349
    invoke-virtual {p1}, Lbluros/weather/WeatherInfo;->getForecasts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/util/List;->size()I

    move-result v6

    add-int/lit8 v4, v6, 0x1

    .line 350
    .local v4, "size":I
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1, v4}, Ljava/util/ArrayList;-><init>(I)V

    .line 351
    .local v1, "contentValuesList":Ljava/util/List;, "Ljava/util/List<Landroid/content/ContentValues;>;"
    new-instance v0, Landroid/content/ContentValues;

    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 353
    .local v0, "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v6, "city"

    invoke-virtual {p1}, Lbluros/weather/WeatherInfo;->getCity()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/String;)V

    .line 354
    const-string/jumbo v6, "temperature"

    invoke-virtual {p1}, Lbluros/weather/WeatherInfo;->getTemperature()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 355
    const-string/jumbo v6, "temperature_unit"

    invoke-virtual {p1}, Lbluros/weather/WeatherInfo;->getTemperatureUnit()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 356
    const-string/jumbo v6, "condition_code"

    invoke-virtual {p1}, Lbluros/weather/WeatherInfo;->getConditionCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 357
    const-string/jumbo v6, "humidity"

    invoke-virtual {p1}, Lbluros/weather/WeatherInfo;->getHumidity()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 358
    const-string/jumbo v6, "wind_speed"

    invoke-virtual {p1}, Lbluros/weather/WeatherInfo;->getWindSpeed()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 359
    const-string/jumbo v6, "wind_direction"

    invoke-virtual {p1}, Lbluros/weather/WeatherInfo;->getWindDirection()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 360
    const-string/jumbo v6, "wind_speed_unit"

    invoke-virtual {p1}, Lbluros/weather/WeatherInfo;->getWindSpeedUnit()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 361
    const-string/jumbo v6, "timestamp"

    invoke-virtual {p1}, Lbluros/weather/WeatherInfo;->getTimestamp()J

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Long;->valueOf(J)Ljava/lang/Long;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Long;)V

    .line 362
    const-string/jumbo v6, "todays_high"

    invoke-virtual {p1}, Lbluros/weather/WeatherInfo;->getTodaysHigh()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 363
    const-string/jumbo v6, "todays_low"

    invoke-virtual {p1}, Lbluros/weather/WeatherInfo;->getTodaysLow()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 364
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    .line 366
    invoke-virtual {p1}, Lbluros/weather/WeatherInfo;->getForecasts()Ljava/util/List;

    move-result-object v6

    invoke-interface {v6}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "df$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v6

    if-eqz v6, :cond_0

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lbluros/weather/WeatherInfo$DayForecast;

    .line 367
    .local v2, "df":Lbluros/weather/WeatherInfo$DayForecast;
    new-instance v0, Landroid/content/ContentValues;

    .end local v0    # "contentValues":Landroid/content/ContentValues;
    invoke-direct {v0}, Landroid/content/ContentValues;-><init>()V

    .line 368
    .restart local v0    # "contentValues":Landroid/content/ContentValues;
    const-string/jumbo v6, "forecast_low"

    invoke-virtual {v2}, Lbluros/weather/WeatherInfo$DayForecast;->getLow()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 369
    const-string/jumbo v6, "forecast_high"

    invoke-virtual {v2}, Lbluros/weather/WeatherInfo$DayForecast;->getHigh()D

    move-result-wide v8

    invoke-static {v8, v9}, Ljava/lang/Double;->valueOf(D)Ljava/lang/Double;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Double;)V

    .line 370
    const-string/jumbo v6, "forecast_condition_code"

    invoke-virtual {v2}, Lbluros/weather/WeatherInfo$DayForecast;->getConditionCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v0, v6, v7}, Landroid/content/ContentValues;->put(Ljava/lang/String;Ljava/lang/Integer;)V

    .line 371
    invoke-interface {v1, v0}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 374
    .end local v2    # "df":Lbluros/weather/WeatherInfo$DayForecast;
    :cond_0
    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v6

    new-array v5, v6, [Landroid/content/ContentValues;

    .line 375
    .local v5, "updateValues":[Landroid/content/ContentValues;
    invoke-virtual {p0}, Lorg/bluros/platform/internal/CMWeatherManagerService;->getContext()Landroid/content/Context;

    move-result-object v6

    invoke-virtual {v6}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v7

    .line 376
    sget-object v8, Lbluros/providers/WeatherContract$WeatherColumns;->CURRENT_AND_FORECAST_WEATHER_URI:Landroid/net/Uri;

    .line 377
    invoke-interface {v1, v5}, Ljava/util/List;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v6

    check-cast v6, [Landroid/content/ContentValues;

    .line 375
    invoke-virtual {v7, v8, v6}, Landroid/content/ContentResolver;->bulkInsert(Landroid/net/Uri;[Landroid/content/ContentValues;)I

    move-result v6

    if-eq v4, v6, :cond_1

    .line 378
    sget-object v6, Lorg/bluros/platform/internal/CMWeatherManagerService;->TAG:Ljava/lang/String;

    const-string/jumbo v7, "Failed to update the weather content provider"

    invoke-static {v6, v7}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    const/4 v6, 0x0

    return v6

    .line 381
    :cond_1
    const/4 v6, 0x1

    return v6
.end method


# virtual methods
.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 226
    const-string/jumbo v0, "org.bluros.weather"

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 1
    .param p1, "phase"    # I

    .prologue
    .line 238
    const/16 v0, 0x226

    if-ne p1, v0, :cond_0

    .line 239
    invoke-direct {p0}, Lorg/bluros/platform/internal/CMWeatherManagerService;->bindActiveWeatherProviderService()V

    .line 237
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 2

    .prologue
    .line 231
    const-string/jumbo v0, "cmweather"

    iget-object v1, p0, Lorg/bluros/platform/internal/CMWeatherManagerService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/bluros/platform/internal/CMWeatherManagerService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 232
    invoke-direct {p0}, Lorg/bluros/platform/internal/CMWeatherManagerService;->registerPackageMonitor()V

    .line 233
    invoke-direct {p0}, Lorg/bluros/platform/internal/CMWeatherManagerService;->registerSettingsObserver()V

    .line 230
    return-void
.end method
