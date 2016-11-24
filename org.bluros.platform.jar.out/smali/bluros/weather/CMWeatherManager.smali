.class public Lbluros/weather/CMWeatherManager;
.super Ljava/lang/Object;
.source "CMWeatherManager.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbluros/weather/CMWeatherManager$RequestStatus;,
        Lbluros/weather/CMWeatherManager$WeatherUpdateRequestListener;,
        Lbluros/weather/CMWeatherManager$LookupCityRequestListener;,
        Lbluros/weather/CMWeatherManager$WeatherServiceProviderChangeListener;,
        Lbluros/weather/CMWeatherManager$1;,
        Lbluros/weather/CMWeatherManager$2;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String;

.field private static sInstance:Lbluros/weather/CMWeatherManager;

.field private static sWeatherManagerService:Lbluros/weather/ICMWeatherManager;


# instance fields
.field private mContext:Landroid/content/Context;

.field private mHandler:Landroid/os/Handler;

.field private mLookupNameRequestListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lbluros/weather/RequestInfo;",
            "Lbluros/weather/CMWeatherManager$LookupCityRequestListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mProviderChangeListener:Lbluros/weather/IWeatherServiceProviderChangeListener;

.field private mProviderChangedListeners:Ljava/util/Set;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Set",
            "<",
            "Lbluros/weather/CMWeatherManager$WeatherServiceProviderChangeListener;",
            ">;"
        }
    .end annotation
.end field

.field private final mRequestInfoListener:Lbluros/weather/IRequestInfoListener;

.field private mWeatherUpdateRequestListeners:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map",
            "<",
            "Lbluros/weather/RequestInfo;",
            "Lbluros/weather/CMWeatherManager$WeatherUpdateRequestListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lbluros/weather/CMWeatherManager;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Lbluros/weather/CMWeatherManager;->mHandler:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get1(Lbluros/weather/CMWeatherManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lbluros/weather/CMWeatherManager;->mLookupNameRequestListeners:Ljava/util/Map;

    return-object v0
.end method

.method static synthetic -get2(Lbluros/weather/CMWeatherManager;)Ljava/util/Set;
    .locals 1

    iget-object v0, p0, Lbluros/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    return-object v0
.end method

.method static synthetic -get3(Lbluros/weather/CMWeatherManager;)Ljava/util/Map;
    .locals 1

    iget-object v0, p0, Lbluros/weather/CMWeatherManager;->mWeatherUpdateRequestListeners:Ljava/util/Map;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 55
    const-class v0, Lbluros/weather/CMWeatherManager;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lbluros/weather/CMWeatherManager;->TAG:Ljava/lang/String;

    .line 43
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 87
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 49
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 48
    iput-object v1, p0, Lbluros/weather/CMWeatherManager;->mWeatherUpdateRequestListeners:Ljava/util/Map;

    .line 51
    new-instance v1, Ljava/util/HashMap;

    invoke-direct {v1}, Ljava/util/HashMap;-><init>()V

    invoke-static {v1}, Ljava/util/Collections;->synchronizedMap(Ljava/util/Map;)Ljava/util/Map;

    move-result-object v1

    .line 50
    iput-object v1, p0, Lbluros/weather/CMWeatherManager;->mLookupNameRequestListeners:Ljava/util/Map;

    .line 53
    new-instance v1, Landroid/util/ArraySet;

    invoke-direct {v1}, Landroid/util/ArraySet;-><init>()V

    iput-object v1, p0, Lbluros/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    .line 304
    new-instance v1, Lbluros/weather/CMWeatherManager$1;

    invoke-direct {v1, p0}, Lbluros/weather/CMWeatherManager$1;-><init>(Lbluros/weather/CMWeatherManager;)V

    .line 303
    iput-object v1, p0, Lbluros/weather/CMWeatherManager;->mProviderChangeListener:Lbluros/weather/IWeatherServiceProviderChangeListener;

    .line 332
    new-instance v1, Lbluros/weather/CMWeatherManager$2;

    invoke-direct {v1, p0}, Lbluros/weather/CMWeatherManager$2;-><init>(Lbluros/weather/CMWeatherManager;)V

    iput-object v1, p0, Lbluros/weather/CMWeatherManager;->mRequestInfoListener:Lbluros/weather/IRequestInfoListener;

    .line 88
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 89
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    move-object v1, v0

    :goto_0
    iput-object v1, p0, Lbluros/weather/CMWeatherManager;->mContext:Landroid/content/Context;

    .line 90
    invoke-static {}, Lbluros/weather/CMWeatherManager;->getService()Lbluros/weather/ICMWeatherManager;

    move-result-object v1

    sput-object v1, Lbluros/weather/CMWeatherManager;->sWeatherManagerService:Lbluros/weather/ICMWeatherManager;

    .line 92
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 93
    const-string/jumbo v2, "org.bluros.weather"

    .line 92
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 93
    sget-object v1, Lbluros/weather/CMWeatherManager;->sWeatherManagerService:Lbluros/weather/ICMWeatherManager;

    if-nez v1, :cond_0

    .line 94
    sget-object v1, Lbluros/weather/CMWeatherManager;->TAG:Ljava/lang/String;

    const-string/jumbo v2, "Unable to bind the CMWeatherManagerService"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 96
    :cond_0
    new-instance v1, Landroid/os/Handler;

    invoke-virtual {v0}, Landroid/content/Context;->getMainLooper()Landroid/os/Looper;

    move-result-object v2

    invoke-direct {v1, v2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object v1, p0, Lbluros/weather/CMWeatherManager;->mHandler:Landroid/os/Handler;

    .line 87
    return-void

    :cond_1
    move-object v1, p1

    .line 89
    goto :goto_0
.end method

.method public static getInstance(Landroid/content/Context;)Lbluros/weather/CMWeatherManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 105
    sget-object v0, Lbluros/weather/CMWeatherManager;->sInstance:Lbluros/weather/CMWeatherManager;

    if-nez v0, :cond_0

    .line 106
    new-instance v0, Lbluros/weather/CMWeatherManager;

    invoke-direct {v0, p0}, Lbluros/weather/CMWeatherManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbluros/weather/CMWeatherManager;->sInstance:Lbluros/weather/CMWeatherManager;

    .line 108
    :cond_0
    sget-object v0, Lbluros/weather/CMWeatherManager;->sInstance:Lbluros/weather/CMWeatherManager;

    return-object v0
.end method

.method public static getService()Lbluros/weather/ICMWeatherManager;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 113
    sget-object v1, Lbluros/weather/CMWeatherManager;->sWeatherManagerService:Lbluros/weather/ICMWeatherManager;

    if-eqz v1, :cond_0

    .line 114
    sget-object v1, Lbluros/weather/CMWeatherManager;->sWeatherManagerService:Lbluros/weather/ICMWeatherManager;

    return-object v1

    .line 116
    :cond_0
    const-string/jumbo v1, "cmweather"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 117
    .local v0, "binder":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 118
    invoke-static {v0}, Lbluros/weather/ICMWeatherManager$Stub;->asInterface(Landroid/os/IBinder;)Lbluros/weather/ICMWeatherManager;

    move-result-object v1

    sput-object v1, Lbluros/weather/CMWeatherManager;->sWeatherManagerService:Lbluros/weather/ICMWeatherManager;

    .line 119
    sget-object v1, Lbluros/weather/CMWeatherManager;->sWeatherManagerService:Lbluros/weather/ICMWeatherManager;

    return-object v1

    .line 121
    :cond_1
    return-object v2
.end method


# virtual methods
.method public cancelRequest(I)V
    .locals 2
    .param p1, "requestId"    # I

    .prologue
    .line 232
    sget-object v1, Lbluros/weather/CMWeatherManager;->sWeatherManagerService:Lbluros/weather/ICMWeatherManager;

    if-nez v1, :cond_0

    .line 233
    return-void

    .line 237
    :cond_0
    :try_start_0
    sget-object v1, Lbluros/weather/CMWeatherManager;->sWeatherManagerService:Lbluros/weather/ICMWeatherManager;

    invoke-interface {v1, p1}, Lbluros/weather/ICMWeatherManager;->cancelRequest(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 231
    :goto_0
    return-void

    .line 238
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getActiveWeatherServiceProviderLabel()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 294
    sget-object v1, Lbluros/weather/CMWeatherManager;->sWeatherManagerService:Lbluros/weather/ICMWeatherManager;

    if-nez v1, :cond_0

    return-object v2

    .line 297
    :cond_0
    :try_start_0
    sget-object v1, Lbluros/weather/CMWeatherManager;->sWeatherManagerService:Lbluros/weather/ICMWeatherManager;

    invoke-interface {v1}, Lbluros/weather/ICMWeatherManager;->getActiveWeatherServiceProviderLabel()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 298
    :catch_0
    move-exception v0

    .line 300
    .local v0, "e":Landroid/os/RemoteException;
    return-object v2
.end method

.method public lookupCity(Ljava/lang/String;Lbluros/weather/CMWeatherManager$LookupCityRequestListener;)I
    .locals 5
    .param p1, "city"    # Ljava/lang/String;
    .param p2, "listener"    # Lbluros/weather/CMWeatherManager$LookupCityRequestListener;

    .prologue
    const/4 v4, -0x1

    .line 211
    sget-object v2, Lbluros/weather/CMWeatherManager;->sWeatherManagerService:Lbluros/weather/ICMWeatherManager;

    if-nez v2, :cond_0

    .line 212
    return v4

    .line 215
    :cond_0
    :try_start_0
    new-instance v2, Lbluros/weather/RequestInfo$Builder;

    .line 216
    iget-object v3, p0, Lbluros/weather/CMWeatherManager;->mRequestInfoListener:Lbluros/weather/IRequestInfoListener;

    .line 215
    invoke-direct {v2, v3}, Lbluros/weather/RequestInfo$Builder;-><init>(Lbluros/weather/IRequestInfoListener;)V

    invoke-virtual {v2, p1}, Lbluros/weather/RequestInfo$Builder;->setCityName(Ljava/lang/String;)Lbluros/weather/RequestInfo$Builder;

    move-result-object v2

    invoke-virtual {v2}, Lbluros/weather/RequestInfo$Builder;->build()Lbluros/weather/RequestInfo;

    move-result-object v1

    .line 219
    .local v1, "info":Lbluros/weather/RequestInfo;
    if-eqz p2, :cond_1

    iget-object v2, p0, Lbluros/weather/CMWeatherManager;->mLookupNameRequestListeners:Ljava/util/Map;

    invoke-interface {v2, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 220
    :cond_1
    sget-object v2, Lbluros/weather/CMWeatherManager;->sWeatherManagerService:Lbluros/weather/ICMWeatherManager;

    invoke-interface {v2, v1}, Lbluros/weather/ICMWeatherManager;->lookupCity(Lbluros/weather/RequestInfo;)V

    .line 221
    invoke-virtual {v1}, Lbluros/weather/RequestInfo;->hashCode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 222
    .end local v1    # "info":Lbluros/weather/RequestInfo;
    :catch_0
    move-exception v0

    .line 223
    .local v0, "e":Landroid/os/RemoteException;
    return v4
.end method

.method public registerWeatherServiceProviderChangeListener(Lbluros/weather/CMWeatherManager$WeatherServiceProviderChangeListener;)V
    .locals 4
    .param p1, "listener"    # Lbluros/weather/CMWeatherManager$WeatherServiceProviderChangeListener;

    .prologue
    .line 249
    sget-object v1, Lbluros/weather/CMWeatherManager;->sWeatherManagerService:Lbluros/weather/ICMWeatherManager;

    if-nez v1, :cond_0

    return-void

    .line 251
    :cond_0
    iget-object v2, p0, Lbluros/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    monitor-enter v2

    .line 252
    :try_start_0
    iget-object v1, p0, Lbluros/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 253
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Listener already registered"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 251
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 255
    :cond_1
    :try_start_1
    iget-object v1, p0, Lbluros/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 257
    :try_start_2
    sget-object v1, Lbluros/weather/CMWeatherManager;->sWeatherManagerService:Lbluros/weather/ICMWeatherManager;

    .line 258
    iget-object v3, p0, Lbluros/weather/CMWeatherManager;->mProviderChangeListener:Lbluros/weather/IWeatherServiceProviderChangeListener;

    .line 257
    invoke-interface {v1, v3}, Lbluros/weather/ICMWeatherManager;->registerWeatherServiceProviderChangeListener(Lbluros/weather/IWeatherServiceProviderChangeListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 262
    :cond_2
    :goto_0
    :try_start_3
    iget-object v1, p0, Lbluros/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->add(Ljava/lang/Object;)Z
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    monitor-exit v2

    .line 248
    return-void

    .line 259
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public requestWeatherUpdate(Landroid/location/Location;Lbluros/weather/CMWeatherManager$WeatherUpdateRequestListener;)I
    .locals 7
    .param p1, "location"    # Landroid/location/Location;
    .param p2, "listener"    # Lbluros/weather/CMWeatherManager$WeatherUpdateRequestListener;

    .prologue
    const/4 v6, -0x1

    .line 138
    sget-object v3, Lbluros/weather/CMWeatherManager;->sWeatherManagerService:Lbluros/weather/ICMWeatherManager;

    if-nez v3, :cond_0

    .line 139
    return v6

    .line 143
    :cond_0
    :try_start_0
    iget-object v3, p0, Lbluros/weather/CMWeatherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 144
    const-string/jumbo v4, "weather_temperature_unit"

    .line 145
    const/4 v5, 0x2

    .line 143
    invoke-static {v3, v4, v5}, Lbluros/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 147
    .local v2, "tempUnit":I
    new-instance v3, Lbluros/weather/RequestInfo$Builder;

    .line 148
    iget-object v4, p0, Lbluros/weather/CMWeatherManager;->mRequestInfoListener:Lbluros/weather/IRequestInfoListener;

    .line 147
    invoke-direct {v3, v4}, Lbluros/weather/RequestInfo$Builder;-><init>(Lbluros/weather/IRequestInfoListener;)V

    invoke-virtual {v3, p1}, Lbluros/weather/RequestInfo$Builder;->setLocation(Landroid/location/Location;)Lbluros/weather/RequestInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lbluros/weather/RequestInfo$Builder;->setTemperatureUnit(I)Lbluros/weather/RequestInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lbluros/weather/RequestInfo$Builder;->build()Lbluros/weather/RequestInfo;

    move-result-object v1

    .line 152
    .local v1, "info":Lbluros/weather/RequestInfo;
    if-eqz p2, :cond_1

    iget-object v3, p0, Lbluros/weather/CMWeatherManager;->mWeatherUpdateRequestListeners:Ljava/util/Map;

    invoke-interface {v3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 153
    :cond_1
    sget-object v3, Lbluros/weather/CMWeatherManager;->sWeatherManagerService:Lbluros/weather/ICMWeatherManager;

    invoke-interface {v3, v1}, Lbluros/weather/ICMWeatherManager;->updateWeather(Lbluros/weather/RequestInfo;)V

    .line 154
    invoke-virtual {v1}, Lbluros/weather/RequestInfo;->hashCode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 155
    .end local v1    # "info":Lbluros/weather/RequestInfo;
    .end local v2    # "tempUnit":I
    :catch_0
    move-exception v0

    .line 156
    .local v0, "e":Landroid/os/RemoteException;
    return v6
.end method

.method public requestWeatherUpdate(Lbluros/weather/WeatherLocation;Lbluros/weather/CMWeatherManager$WeatherUpdateRequestListener;)I
    .locals 7
    .param p1, "weatherLocation"    # Lbluros/weather/WeatherLocation;
    .param p2, "listener"    # Lbluros/weather/CMWeatherManager$WeatherUpdateRequestListener;

    .prologue
    const/4 v6, -0x1

    .line 176
    sget-object v3, Lbluros/weather/CMWeatherManager;->sWeatherManagerService:Lbluros/weather/ICMWeatherManager;

    if-nez v3, :cond_0

    .line 177
    return v6

    .line 181
    :cond_0
    :try_start_0
    iget-object v3, p0, Lbluros/weather/CMWeatherManager;->mContext:Landroid/content/Context;

    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 182
    const-string/jumbo v4, "weather_temperature_unit"

    .line 183
    const/4 v5, 0x2

    .line 181
    invoke-static {v3, v4, v5}, Lbluros/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v2

    .line 185
    .local v2, "tempUnit":I
    new-instance v3, Lbluros/weather/RequestInfo$Builder;

    .line 186
    iget-object v4, p0, Lbluros/weather/CMWeatherManager;->mRequestInfoListener:Lbluros/weather/IRequestInfoListener;

    .line 185
    invoke-direct {v3, v4}, Lbluros/weather/RequestInfo$Builder;-><init>(Lbluros/weather/IRequestInfoListener;)V

    invoke-virtual {v3, p1}, Lbluros/weather/RequestInfo$Builder;->setWeatherLocation(Lbluros/weather/WeatherLocation;)Lbluros/weather/RequestInfo$Builder;

    move-result-object v3

    invoke-virtual {v3, v2}, Lbluros/weather/RequestInfo$Builder;->setTemperatureUnit(I)Lbluros/weather/RequestInfo$Builder;

    move-result-object v3

    invoke-virtual {v3}, Lbluros/weather/RequestInfo$Builder;->build()Lbluros/weather/RequestInfo;

    move-result-object v1

    .line 190
    .local v1, "info":Lbluros/weather/RequestInfo;
    if-eqz p2, :cond_1

    iget-object v3, p0, Lbluros/weather/CMWeatherManager;->mWeatherUpdateRequestListeners:Ljava/util/Map;

    invoke-interface {v3, v1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 191
    :cond_1
    sget-object v3, Lbluros/weather/CMWeatherManager;->sWeatherManagerService:Lbluros/weather/ICMWeatherManager;

    invoke-interface {v3, v1}, Lbluros/weather/ICMWeatherManager;->updateWeather(Lbluros/weather/RequestInfo;)V

    .line 192
    invoke-virtual {v1}, Lbluros/weather/RequestInfo;->hashCode()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    return v3

    .line 193
    .end local v1    # "info":Lbluros/weather/RequestInfo;
    .end local v2    # "tempUnit":I
    :catch_0
    move-exception v0

    .line 194
    .local v0, "e":Landroid/os/RemoteException;
    return v6
.end method

.method public unregisterWeatherServiceProviderChangeListener(Lbluros/weather/CMWeatherManager$WeatherServiceProviderChangeListener;)V
    .locals 4
    .param p1, "listener"    # Lbluros/weather/CMWeatherManager$WeatherServiceProviderChangeListener;

    .prologue
    .line 272
    sget-object v1, Lbluros/weather/CMWeatherManager;->sWeatherManagerService:Lbluros/weather/ICMWeatherManager;

    if-nez v1, :cond_0

    return-void

    .line 274
    :cond_0
    iget-object v2, p0, Lbluros/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    monitor-enter v2

    .line 275
    :try_start_0
    iget-object v1, p0, Lbluros/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_1

    .line 276
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Listener was never registered"

    invoke-direct {v1, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 274
    :catchall_0
    move-exception v1

    monitor-exit v2

    throw v1

    .line 278
    :cond_1
    :try_start_1
    iget-object v1, p0, Lbluros/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1, p1}, Ljava/util/Set;->remove(Ljava/lang/Object;)Z

    .line 279
    iget-object v1, p0, Lbluros/weather/CMWeatherManager;->mProviderChangedListeners:Ljava/util/Set;

    invoke-interface {v1}, Ljava/util/Set;->size()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v1

    if-nez v1, :cond_2

    .line 281
    :try_start_2
    sget-object v1, Lbluros/weather/CMWeatherManager;->sWeatherManagerService:Lbluros/weather/ICMWeatherManager;

    .line 282
    iget-object v3, p0, Lbluros/weather/CMWeatherManager;->mProviderChangeListener:Lbluros/weather/IWeatherServiceProviderChangeListener;

    .line 281
    invoke-interface {v1, v3}, Lbluros/weather/ICMWeatherManager;->unregisterWeatherServiceProviderChangeListener(Lbluros/weather/IWeatherServiceProviderChangeListener;)V
    :try_end_2
    .catch Landroid/os/RemoteException; {:try_start_2 .. :try_end_2} :catch_0
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    :cond_2
    :goto_0
    monitor-exit v2

    .line 271
    return-void

    .line 283
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
