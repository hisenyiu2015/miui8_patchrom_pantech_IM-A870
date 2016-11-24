.class Lorg/bluros/platform/internal/ThemeManagerService$1;
.super Landroid/content/BroadcastReceiver;
.source "ThemeManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bluros/platform/internal/ThemeManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bluros/platform/internal/ThemeManagerService;


# direct methods
.method constructor <init>(Lorg/bluros/platform/internal/ThemeManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bluros/platform/internal/ThemeManagerService;

    .prologue
    .line 1004
    iput-object p1, p0, Lorg/bluros/platform/internal/ThemeManagerService$1;->this$0:Lorg/bluros/platform/internal/ThemeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1007
    iget-object v1, p0, Lorg/bluros/platform/internal/ThemeManagerService$1;->this$0:Lorg/bluros/platform/internal/ThemeManagerService;

    invoke-static {v1}, Lorg/bluros/platform/internal/ThemeManagerService;->-get14(Lorg/bluros/platform/internal/ThemeManagerService;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 1009
    new-instance v0, Lbluros/themes/ThemeChangeRequest$Builder;

    invoke-direct {v0}, Lbluros/themes/ThemeChangeRequest$Builder;-><init>()V

    .line 1010
    .local v0, "builder":Lbluros/themes/ThemeChangeRequest$Builder;
    const-string/jumbo v1, ""

    invoke-virtual {v0, v1}, Lbluros/themes/ThemeChangeRequest$Builder;->setWallpaper(Ljava/lang/String;)Lbluros/themes/ThemeChangeRequest$Builder;

    .line 1011
    iget-object v1, p0, Lorg/bluros/platform/internal/ThemeManagerService$1;->this$0:Lorg/bluros/platform/internal/ThemeManagerService;

    invoke-virtual {v0}, Lbluros/themes/ThemeChangeRequest$Builder;->build()Lbluros/themes/ThemeChangeRequest;

    move-result-object v2

    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v4

    invoke-static {v1, v2, v4, v5}, Lorg/bluros/platform/internal/ThemeManagerService;->-wrap7(Lorg/bluros/platform/internal/ThemeManagerService;Lbluros/themes/ThemeChangeRequest;J)V

    .line 1006
    .end local v0    # "builder":Lbluros/themes/ThemeChangeRequest$Builder;
    :goto_0
    return-void

    .line 1013
    :cond_0
    iget-object v1, p0, Lorg/bluros/platform/internal/ThemeManagerService$1;->this$0:Lorg/bluros/platform/internal/ThemeManagerService;

    const/4 v2, 0x0

    invoke-static {v1, v2}, Lorg/bluros/platform/internal/ThemeManagerService;->-set1(Lorg/bluros/platform/internal/ThemeManagerService;Z)Z

    goto :goto_0
.end method
