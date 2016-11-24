.class Lbluros/weather/CMWeatherManager$1;
.super Lbluros/weather/IWeatherServiceProviderChangeListener$Stub;
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
    .line 304
    iput-object p1, p0, Lbluros/weather/CMWeatherManager$1;->this$0:Lbluros/weather/CMWeatherManager;

    invoke-direct {p0}, Lbluros/weather/IWeatherServiceProviderChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onWeatherServiceProviderChanged(Ljava/lang/String;)V
    .locals 2
    .param p1, "providerName"    # Ljava/lang/String;

    .prologue
    .line 307
    iget-object v0, p0, Lbluros/weather/CMWeatherManager$1;->this$0:Lbluros/weather/CMWeatherManager;

    invoke-static {v0}, Lbluros/weather/CMWeatherManager;->-get0(Lbluros/weather/CMWeatherManager;)Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lbluros/weather/CMWeatherManager$1$1;

    invoke-direct {v1, p0, p1}, Lbluros/weather/CMWeatherManager$1$1;-><init>(Lbluros/weather/CMWeatherManager$1;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 306
    return-void
.end method
