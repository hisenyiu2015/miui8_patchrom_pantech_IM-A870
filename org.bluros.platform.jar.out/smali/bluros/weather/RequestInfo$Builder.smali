.class Lbluros/weather/RequestInfo$Builder;
.super Ljava/lang/Object;
.source "RequestInfo.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbluros/weather/RequestInfo;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = "Builder"
.end annotation


# instance fields
.field private mCityName:Ljava/lang/String;

.field private mIsQueryOnly:Z

.field private mListener:Lbluros/weather/IRequestInfoListener;

.field private mLocation:Landroid/location/Location;

.field private mRequestType:I

.field private mTempUnit:I

.field private mWeatherLocation:Lbluros/weather/WeatherLocation;


# direct methods
.method public constructor <init>(Lbluros/weather/IRequestInfoListener;)V
    .locals 1
    .param p1, "listener"    # Lbluros/weather/IRequestInfoListener;

    .prologue
    .line 70
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    const/4 v0, 0x2

    iput v0, p0, Lbluros/weather/RequestInfo$Builder;->mTempUnit:I

    .line 68
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbluros/weather/RequestInfo$Builder;->mIsQueryOnly:Z

    .line 71
    iput-object p1, p0, Lbluros/weather/RequestInfo$Builder;->mListener:Lbluros/weather/IRequestInfoListener;

    .line 70
    return-void
.end method

.method private isValidTempUnit(I)Z
    .locals 1
    .param p1, "unit"    # I

    .prologue
    .line 179
    packed-switch p1, :pswitch_data_0

    .line 184
    const/4 v0, 0x0

    return v0

    .line 182
    :pswitch_0
    const/4 v0, 0x1

    return v0

    .line 179
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public build()Lbluros/weather/RequestInfo;
    .locals 2

    .prologue
    .line 166
    new-instance v0, Lbluros/weather/RequestInfo;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lbluros/weather/RequestInfo;-><init>(Lbluros/weather/RequestInfo;)V

    .line 167
    .local v0, "info":Lbluros/weather/RequestInfo;
    iget-object v1, p0, Lbluros/weather/RequestInfo$Builder;->mListener:Lbluros/weather/IRequestInfoListener;

    invoke-static {v0, v1}, Lbluros/weather/RequestInfo;->-set3(Lbluros/weather/RequestInfo;Lbluros/weather/IRequestInfoListener;)Lbluros/weather/IRequestInfoListener;

    .line 168
    iget v1, p0, Lbluros/weather/RequestInfo$Builder;->mRequestType:I

    invoke-static {v0, v1}, Lbluros/weather/RequestInfo;->-set5(Lbluros/weather/RequestInfo;I)I

    .line 169
    iget-object v1, p0, Lbluros/weather/RequestInfo$Builder;->mCityName:Ljava/lang/String;

    invoke-static {v0, v1}, Lbluros/weather/RequestInfo;->-set0(Lbluros/weather/RequestInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 170
    iget-object v1, p0, Lbluros/weather/RequestInfo$Builder;->mWeatherLocation:Lbluros/weather/WeatherLocation;

    invoke-static {v0, v1}, Lbluros/weather/RequestInfo;->-set7(Lbluros/weather/RequestInfo;Lbluros/weather/WeatherLocation;)Lbluros/weather/WeatherLocation;

    .line 171
    iget-object v1, p0, Lbluros/weather/RequestInfo$Builder;->mLocation:Landroid/location/Location;

    invoke-static {v0, v1}, Lbluros/weather/RequestInfo;->-set4(Lbluros/weather/RequestInfo;Landroid/location/Location;)Landroid/location/Location;

    .line 172
    iget v1, p0, Lbluros/weather/RequestInfo$Builder;->mTempUnit:I

    invoke-static {v0, v1}, Lbluros/weather/RequestInfo;->-set6(Lbluros/weather/RequestInfo;I)I

    .line 173
    iget-boolean v1, p0, Lbluros/weather/RequestInfo$Builder;->mIsQueryOnly:Z

    invoke-static {v0, v1}, Lbluros/weather/RequestInfo;->-set1(Lbluros/weather/RequestInfo;Z)Z

    .line 174
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Lbluros/weather/RequestInfo;->-set2(Lbluros/weather/RequestInfo;Ljava/lang/String;)Ljava/lang/String;

    .line 175
    return-object v0
.end method

.method public queryOnly()Lbluros/weather/RequestInfo$Builder;
    .locals 1

    .prologue
    .line 149
    iget v0, p0, Lbluros/weather/RequestInfo$Builder;->mRequestType:I

    packed-switch v0, :pswitch_data_0

    .line 155
    const/4 v0, 0x0

    iput-boolean v0, p0, Lbluros/weather/RequestInfo$Builder;->mIsQueryOnly:Z

    .line 158
    :goto_0
    return-object p0

    .line 152
    :pswitch_0
    const/4 v0, 0x1

    iput-boolean v0, p0, Lbluros/weather/RequestInfo$Builder;->mIsQueryOnly:Z

    goto :goto_0

    .line 149
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_0
    .end packed-switch
.end method

.method public setCityName(Ljava/lang/String;)Lbluros/weather/RequestInfo$Builder;
    .locals 2
    .param p1, "cityName"    # Ljava/lang/String;

    .prologue
    const/4 v1, 0x0

    .line 80
    if-nez p1, :cond_0

    .line 81
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "City name can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 83
    :cond_0
    iput-object p1, p0, Lbluros/weather/RequestInfo$Builder;->mCityName:Ljava/lang/String;

    .line 84
    const/4 v0, 0x3

    iput v0, p0, Lbluros/weather/RequestInfo$Builder;->mRequestType:I

    .line 85
    iput-object v1, p0, Lbluros/weather/RequestInfo$Builder;->mLocation:Landroid/location/Location;

    .line 86
    iput-object v1, p0, Lbluros/weather/RequestInfo$Builder;->mWeatherLocation:Lbluros/weather/WeatherLocation;

    .line 87
    return-object p0
.end method

.method public setLocation(Landroid/location/Location;)Lbluros/weather/RequestInfo$Builder;
    .locals 2
    .param p1, "location"    # Landroid/location/Location;

    .prologue
    const/4 v1, 0x0

    .line 97
    if-nez p1, :cond_0

    .line 98
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Location can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 100
    :cond_0
    new-instance v0, Landroid/location/Location;

    invoke-direct {v0, p1}, Landroid/location/Location;-><init>(Landroid/location/Location;)V

    iput-object v0, p0, Lbluros/weather/RequestInfo$Builder;->mLocation:Landroid/location/Location;

    .line 101
    iput-object v1, p0, Lbluros/weather/RequestInfo$Builder;->mCityName:Ljava/lang/String;

    .line 102
    iput-object v1, p0, Lbluros/weather/RequestInfo$Builder;->mWeatherLocation:Lbluros/weather/WeatherLocation;

    .line 103
    const/4 v0, 0x1

    iput v0, p0, Lbluros/weather/RequestInfo$Builder;->mRequestType:I

    .line 104
    return-object p0
.end method

.method public setTemperatureUnit(I)Lbluros/weather/RequestInfo$Builder;
    .locals 2
    .param p1, "unit"    # I

    .prologue
    .line 136
    invoke-direct {p0, p1}, Lbluros/weather/RequestInfo$Builder;->isValidTempUnit(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 137
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "Invalid temperature unit"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 139
    :cond_0
    iput p1, p0, Lbluros/weather/RequestInfo$Builder;->mTempUnit:I

    .line 140
    return-object p0
.end method

.method public setWeatherLocation(Lbluros/weather/WeatherLocation;)Lbluros/weather/RequestInfo$Builder;
    .locals 2
    .param p1, "weatherLocation"    # Lbluros/weather/WeatherLocation;

    .prologue
    const/4 v0, 0x0

    .line 114
    if-nez p1, :cond_0

    .line 115
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "WeatherLocation can\'t be null"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 117
    :cond_0
    iput-object p1, p0, Lbluros/weather/RequestInfo$Builder;->mWeatherLocation:Lbluros/weather/WeatherLocation;

    .line 118
    iput-object v0, p0, Lbluros/weather/RequestInfo$Builder;->mLocation:Landroid/location/Location;

    .line 119
    iput-object v0, p0, Lbluros/weather/RequestInfo$Builder;->mCityName:Ljava/lang/String;

    .line 120
    const/4 v0, 0x2

    iput v0, p0, Lbluros/weather/RequestInfo$Builder;->mRequestType:I

    .line 121
    return-object p0
.end method
