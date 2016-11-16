.class public Lcom/android/internal/util/cm/WeatherController$WeatherInfo;
.super Ljava/lang/Object;
.source "WeatherController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/internal/util/cm/WeatherController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x9
    name = "WeatherInfo"
.end annotation


# instance fields
.field public city:Ljava/lang/String;

.field public condition:Ljava/lang/String;

.field public conditionCode:I

.field public conditionDrawable:Landroid/graphics/drawable/Drawable;

.field public temp:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 29
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 30
    iput-object v1, p0, Lcom/android/internal/util/cm/WeatherController$WeatherInfo;->temp:Ljava/lang/String;

    .line 31
    iput-object v1, p0, Lcom/android/internal/util/cm/WeatherController$WeatherInfo;->city:Ljava/lang/String;

    .line 32
    iput-object v1, p0, Lcom/android/internal/util/cm/WeatherController$WeatherInfo;->condition:Ljava/lang/String;

    .line 33
    const/4 v0, 0x0

    iput v0, p0, Lcom/android/internal/util/cm/WeatherController$WeatherInfo;->conditionCode:I

    .line 34
    iput-object v1, p0, Lcom/android/internal/util/cm/WeatherController$WeatherInfo;->conditionDrawable:Landroid/graphics/drawable/Drawable;

    .line 29
    return-void
.end method
