.class public Lcom/android/internal/util/cm/WeatherControllerImpl;
.super Ljava/lang/Object;
.source "WeatherControllerImpl.java"

# interfaces
.implements Lcom/android/internal/util/cm/WeatherController;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/cm/WeatherControllerImpl$Receiver;
    }
.end annotation


# static fields
.field public static final ACTION_FORCE_WEATHER_UPDATE:Ljava/lang/String; = "com.bluros.lockclock.action.FORCE_WEATHER_UPDATE"

.field public static final ACTION_UPDATE_FINISHED:Ljava/lang/String; = "com.bluros.lockclock.action.WEATHER_UPDATE_FINISHED"

.field public static final COMPONENT_WEATHER_FORECAST:Landroid/content/ComponentName;

.field public static final CURRENT_WEATHER_URI:Landroid/net/Uri;

.field private static final DEBUG:Z

.field public static final EXTRA_UPDATE_CANCELLED:Ljava/lang/String; = "update_cancelled"

.field public static final LOCK_CLOCK_PACKAGE_NAME:Ljava/lang/String; = "com.bluros.lockclock"

.field private static final TAG:Ljava/lang/String;

.field public static final WEATHER_PROJECTION:[Ljava/lang/String;


# instance fields
.field private mCachedInfo:Lcom/android/internal/util/cm/WeatherController$WeatherInfo;

.field private final mCallbacks:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/cm/WeatherController$Callback;",
            ">;"
        }
    .end annotation
.end field

.field private final mContext:Landroid/content/Context;

.field private final mReceiver:Lcom/android/internal/util/cm/WeatherControllerImpl$Receiver;


# direct methods
.method static synthetic -get0()Z
    .locals 1

    sget-boolean v0, Lcom/android/internal/util/cm/WeatherControllerImpl;->DEBUG:Z

    return v0
.end method

.method static synthetic -get1()Ljava/lang/String;
    .locals 1

    sget-object v0, Lcom/android/internal/util/cm/WeatherControllerImpl;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/internal/util/cm/WeatherControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/cm/WeatherControllerImpl;->fireCallback()V

    return-void
.end method

.method static synthetic -wrap1(Lcom/android/internal/util/cm/WeatherControllerImpl;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/internal/util/cm/WeatherControllerImpl;->queryWeather()V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    const/4 v3, 0x3

    .line 35
    const-class v0, Lcom/android/internal/util/cm/WeatherController;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lcom/android/internal/util/cm/WeatherControllerImpl;->TAG:Ljava/lang/String;

    .line 36
    sget-object v0, Lcom/android/internal/util/cm/WeatherControllerImpl;->TAG:Ljava/lang/String;

    invoke-static {v0, v3}, Landroid/util/Log;->isLoggable(Ljava/lang/String;I)Z

    move-result v0

    sput-boolean v0, Lcom/android/internal/util/cm/WeatherControllerImpl;->DEBUG:Z

    .line 38
    new-instance v0, Landroid/content/ComponentName;

    .line 39
    const-string/jumbo v1, "com.bluros.lockclock"

    const-string/jumbo v2, "com.bluros.lockclock.weather.ForecastActivity"

    .line 38
    invoke-direct {v0, v1, v2}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lcom/android/internal/util/cm/WeatherControllerImpl;->COMPONENT_WEATHER_FORECAST:Landroid/content/ComponentName;

    .line 46
    const-string/jumbo v0, "content://com.bluros.lockclock.weather.provider/weather/current"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 45
    sput-object v0, Lcom/android/internal/util/cm/WeatherControllerImpl;->CURRENT_WEATHER_URI:Landroid/net/Uri;

    .line 47
    const/4 v0, 0x4

    new-array v0, v0, [Ljava/lang/String;

    .line 48
    const-string/jumbo v1, "temperature"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 49
    const-string/jumbo v1, "city"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 50
    const-string/jumbo v1, "condition"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 51
    const-string/jumbo v1, "condition_code"

    aput-object v1, v0, v3

    .line 47
    sput-object v0, Lcom/android/internal/util/cm/WeatherControllerImpl;->WEATHER_PROJECTION:[Ljava/lang/String;

    .line 33
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 61
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 55
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    iput-object v1, p0, Lcom/android/internal/util/cm/WeatherControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    .line 56
    new-instance v1, Lcom/android/internal/util/cm/WeatherControllerImpl$Receiver;

    const/4 v2, 0x0

    invoke-direct {v1, p0, v2}, Lcom/android/internal/util/cm/WeatherControllerImpl$Receiver;-><init>(Lcom/android/internal/util/cm/WeatherControllerImpl;Lcom/android/internal/util/cm/WeatherControllerImpl$Receiver;)V

    iput-object v1, p0, Lcom/android/internal/util/cm/WeatherControllerImpl;->mReceiver:Lcom/android/internal/util/cm/WeatherControllerImpl$Receiver;

    .line 59
    new-instance v1, Lcom/android/internal/util/cm/WeatherController$WeatherInfo;

    invoke-direct {v1}, Lcom/android/internal/util/cm/WeatherController$WeatherInfo;-><init>()V

    iput-object v1, p0, Lcom/android/internal/util/cm/WeatherControllerImpl;->mCachedInfo:Lcom/android/internal/util/cm/WeatherController$WeatherInfo;

    .line 62
    iput-object p1, p0, Lcom/android/internal/util/cm/WeatherControllerImpl;->mContext:Landroid/content/Context;

    .line 63
    iget-object v1, p0, Lcom/android/internal/util/cm/WeatherControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v2, "connectivity"

    invoke-virtual {v1, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    .line 64
    invoke-direct {p0}, Lcom/android/internal/util/cm/WeatherControllerImpl;->queryWeather()V

    .line 65
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 66
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "com.bluros.lockclock.action.WEATHER_UPDATE_FINISHED"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 67
    iget-object v1, p0, Lcom/android/internal/util/cm/WeatherControllerImpl;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/internal/util/cm/WeatherControllerImpl;->mReceiver:Lcom/android/internal/util/cm/WeatherControllerImpl$Receiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 61
    return-void
.end method

.method private fireCallback()V
    .locals 3

    .prologue
    .line 120
    iget-object v2, p0, Lcom/android/internal/util/cm/WeatherControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "callback$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/cm/WeatherController$Callback;

    .line 121
    .local v0, "callback":Lcom/android/internal/util/cm/WeatherController$Callback;
    iget-object v2, p0, Lcom/android/internal/util/cm/WeatherControllerImpl;->mCachedInfo:Lcom/android/internal/util/cm/WeatherController$WeatherInfo;

    invoke-interface {v0, v2}, Lcom/android/internal/util/cm/WeatherController$Callback;->onWeatherChanged(Lcom/android/internal/util/cm/WeatherController$WeatherInfo;)V

    goto :goto_0

    .line 119
    .end local v0    # "callback":Lcom/android/internal/util/cm/WeatherController$Callback;
    :cond_0
    return-void
.end method

.method private getIcon(I)Landroid/graphics/drawable/Drawable;
    .locals 5
    .param p1, "conditionCode"    # I

    .prologue
    .line 86
    :try_start_0
    iget-object v2, p0, Lcom/android/internal/util/cm/WeatherControllerImpl;->mContext:Landroid/content/Context;

    const-string/jumbo v3, "com.bluros.lockclock"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->createPackageContext(Ljava/lang/String;I)Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    .line 87
    .local v1, "resources":Landroid/content/res/Resources;
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "weather_"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 88
    const-string/jumbo v3, "drawable"

    const-string/jumbo v4, "com.bluros.lockclock"

    .line 87
    invoke-virtual {v1, v2, v3, v4}, Landroid/content/res/Resources;->getIdentifier(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)I

    move-result v2

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDrawable(I)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    return-object v2

    .line 89
    .end local v1    # "resources":Landroid/content/res/Resources;
    :catch_0
    move-exception v0

    .line 90
    .local v0, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    const/4 v2, 0x0

    return-object v2
.end method

.method private queryWeather()V
    .locals 7

    .prologue
    const/4 v3, 0x0

    .line 100
    iget-object v0, p0, Lcom/android/internal/util/cm/WeatherControllerImpl;->mContext:Landroid/content/Context;

    invoke-virtual {v0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    sget-object v1, Lcom/android/internal/util/cm/WeatherControllerImpl;->CURRENT_WEATHER_URI:Landroid/net/Uri;

    sget-object v2, Lcom/android/internal/util/cm/WeatherControllerImpl;->WEATHER_PROJECTION:[Ljava/lang/String;

    move-object v4, v3

    move-object v5, v3

    invoke-virtual/range {v0 .. v5}, Landroid/content/ContentResolver;->query(Landroid/net/Uri;[Ljava/lang/String;Ljava/lang/String;[Ljava/lang/String;Ljava/lang/String;)Landroid/database/Cursor;

    move-result-object v6

    .line 102
    .local v6, "c":Landroid/database/Cursor;
    if-nez v6, :cond_1

    .line 103
    sget-boolean v0, Lcom/android/internal/util/cm/WeatherControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_0

    sget-object v0, Lcom/android/internal/util/cm/WeatherControllerImpl;->TAG:Ljava/lang/String;

    const-string/jumbo v1, "cursor was null for temperature, forcing weather update"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 104
    :cond_0
    iget-object v0, p0, Lcom/android/internal/util/cm/WeatherControllerImpl;->mContext:Landroid/content/Context;

    new-instance v1, Landroid/content/Intent;

    const-string/jumbo v2, "com.bluros.lockclock.action.FORCE_WEATHER_UPDATE"

    invoke-direct {v1, v2}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;)V

    .line 99
    :goto_0
    return-void

    .line 107
    :cond_1
    :try_start_0
    invoke-interface {v6}, Landroid/database/Cursor;->moveToFirst()Z

    .line 108
    iget-object v0, p0, Lcom/android/internal/util/cm/WeatherControllerImpl;->mCachedInfo:Lcom/android/internal/util/cm/WeatherController$WeatherInfo;

    const/4 v1, 0x0

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/util/cm/WeatherController$WeatherInfo;->temp:Ljava/lang/String;

    .line 109
    iget-object v0, p0, Lcom/android/internal/util/cm/WeatherControllerImpl;->mCachedInfo:Lcom/android/internal/util/cm/WeatherController$WeatherInfo;

    const/4 v1, 0x1

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/util/cm/WeatherController$WeatherInfo;->city:Ljava/lang/String;

    .line 110
    iget-object v0, p0, Lcom/android/internal/util/cm/WeatherControllerImpl;->mCachedInfo:Lcom/android/internal/util/cm/WeatherController$WeatherInfo;

    const/4 v1, 0x2

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getString(I)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/util/cm/WeatherController$WeatherInfo;->condition:Ljava/lang/String;

    .line 111
    iget-object v0, p0, Lcom/android/internal/util/cm/WeatherControllerImpl;->mCachedInfo:Lcom/android/internal/util/cm/WeatherController$WeatherInfo;

    const/4 v1, 0x3

    invoke-interface {v6, v1}, Landroid/database/Cursor;->getInt(I)I

    move-result v1

    iput v1, v0, Lcom/android/internal/util/cm/WeatherController$WeatherInfo;->conditionCode:I

    .line 112
    iget-object v0, p0, Lcom/android/internal/util/cm/WeatherControllerImpl;->mCachedInfo:Lcom/android/internal/util/cm/WeatherController$WeatherInfo;

    iget-object v1, p0, Lcom/android/internal/util/cm/WeatherControllerImpl;->mCachedInfo:Lcom/android/internal/util/cm/WeatherController$WeatherInfo;

    iget v1, v1, Lcom/android/internal/util/cm/WeatherController$WeatherInfo;->conditionCode:I

    invoke-direct {p0, v1}, Lcom/android/internal/util/cm/WeatherControllerImpl;->getIcon(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    iput-object v1, v0, Lcom/android/internal/util/cm/WeatherController$WeatherInfo;->conditionDrawable:Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 114
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    goto :goto_0

    .line 113
    :catchall_0
    move-exception v0

    .line 114
    invoke-interface {v6}, Landroid/database/Cursor;->close()V

    .line 113
    throw v0
.end method


# virtual methods
.method public addCallback(Lcom/android/internal/util/cm/WeatherController$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/util/cm/WeatherController$Callback;

    .prologue
    .line 71
    if-eqz p1, :cond_0

    iget-object v0, p0, Lcom/android/internal/util/cm/WeatherControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->contains(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    :cond_0
    return-void

    .line 72
    :cond_1
    sget-boolean v0, Lcom/android/internal/util/cm/WeatherControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_2

    sget-object v0, Lcom/android/internal/util/cm/WeatherControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "addCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 73
    :cond_2
    iget-object v0, p0, Lcom/android/internal/util/cm/WeatherControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 74
    iget-object v0, p0, Lcom/android/internal/util/cm/WeatherControllerImpl;->mCachedInfo:Lcom/android/internal/util/cm/WeatherController$WeatherInfo;

    invoke-interface {p1, v0}, Lcom/android/internal/util/cm/WeatherController$Callback;->onWeatherChanged(Lcom/android/internal/util/cm/WeatherController$WeatherInfo;)V

    .line 70
    return-void
.end method

.method public getWeatherInfo()Lcom/android/internal/util/cm/WeatherController$WeatherInfo;
    .locals 1

    .prologue
    .line 96
    iget-object v0, p0, Lcom/android/internal/util/cm/WeatherControllerImpl;->mCachedInfo:Lcom/android/internal/util/cm/WeatherController$WeatherInfo;

    return-object v0
.end method

.method public removeCallback(Lcom/android/internal/util/cm/WeatherController$Callback;)V
    .locals 3
    .param p1, "callback"    # Lcom/android/internal/util/cm/WeatherController$Callback;

    .prologue
    .line 78
    if-nez p1, :cond_0

    return-void

    .line 79
    :cond_0
    sget-boolean v0, Lcom/android/internal/util/cm/WeatherControllerImpl;->DEBUG:Z

    if-eqz v0, :cond_1

    sget-object v0, Lcom/android/internal/util/cm/WeatherControllerImpl;->TAG:Ljava/lang/String;

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "removeCallback "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 80
    :cond_1
    iget-object v0, p0, Lcom/android/internal/util/cm/WeatherControllerImpl;->mCallbacks:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 77
    return-void
.end method
