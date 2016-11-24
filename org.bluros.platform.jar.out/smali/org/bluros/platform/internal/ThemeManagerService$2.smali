.class Lorg/bluros/platform/internal/ThemeManagerService$2;
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
    .line 1018
    iput-object p1, p0, Lorg/bluros/platform/internal/ThemeManagerService$2;->this$0:Lorg/bluros/platform/internal/ThemeManagerService;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 6
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 1021
    const-string/jumbo v4, "android.intent.extra.user_handle"

    const/4 v5, -0x1

    invoke-virtual {p2, v4, v5}, Landroid/content/Intent;->getIntExtra(Ljava/lang/String;I)I

    move-result v3

    .line 1022
    .local v3, "userHandle":I
    if-ltz v3, :cond_0

    iget-object v4, p0, Lorg/bluros/platform/internal/ThemeManagerService$2;->this$0:Lorg/bluros/platform/internal/ThemeManagerService;

    invoke-static {v4}, Lorg/bluros/platform/internal/ThemeManagerService;->-get3(Lorg/bluros/platform/internal/ThemeManagerService;)I

    move-result v4

    if-eq v3, v4, :cond_0

    .line 1023
    iget-object v4, p0, Lorg/bluros/platform/internal/ThemeManagerService$2;->this$0:Lorg/bluros/platform/internal/ThemeManagerService;

    invoke-static {v4, v3}, Lorg/bluros/platform/internal/ThemeManagerService;->-set0(Lorg/bluros/platform/internal/ThemeManagerService;I)I

    .line 1024
    iget-object v4, p0, Lorg/bluros/platform/internal/ThemeManagerService$2;->this$0:Lorg/bluros/platform/internal/ThemeManagerService;

    invoke-static {v4}, Lorg/bluros/platform/internal/ThemeManagerService;->-get2(Lorg/bluros/platform/internal/ThemeManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-virtual {v4}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v4

    invoke-static {v4, v3}, Landroid/content/res/ThemeConfig;->getBootThemeForUser(Landroid/content/ContentResolver;I)Landroid/content/res/ThemeConfig;

    move-result-object v0

    .line 1030
    .local v0, "config":Landroid/content/res/ThemeConfig;
    new-instance v4, Lbluros/themes/ThemeChangeRequest$Builder;

    invoke-direct {v4, v0}, Lbluros/themes/ThemeChangeRequest$Builder;-><init>(Landroid/content/res/ThemeConfig;)V

    invoke-virtual {v4}, Lbluros/themes/ThemeChangeRequest$Builder;->build()Lbluros/themes/ThemeChangeRequest;

    move-result-object v2

    .line 1032
    .local v2, "request":Lbluros/themes/ThemeChangeRequest;
    :try_start_0
    iget-object v4, p0, Lorg/bluros/platform/internal/ThemeManagerService$2;->this$0:Lorg/bluros/platform/internal/ThemeManagerService;

    invoke-static {v4}, Lorg/bluros/platform/internal/ThemeManagerService;->-get12(Lorg/bluros/platform/internal/ThemeManagerService;)Landroid/os/IBinder;

    move-result-object v4

    check-cast v4, Lbluros/themes/IThemeService;

    const/4 v5, 0x1

    invoke-interface {v4, v2, v5}, Lbluros/themes/IThemeService;->requestThemeChange(Lbluros/themes/ThemeChangeRequest;Z)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1020
    .end local v0    # "config":Landroid/content/res/ThemeConfig;
    .end local v2    # "request":Lbluros/themes/ThemeChangeRequest;
    :cond_0
    :goto_0
    return-void

    .line 1033
    .restart local v0    # "config":Landroid/content/res/ThemeConfig;
    .restart local v2    # "request":Lbluros/themes/ThemeChangeRequest;
    :catch_0
    move-exception v1

    .line 1034
    .local v1, "e":Landroid/os/RemoteException;
    invoke-static {}, Lorg/bluros/platform/internal/ThemeManagerService;->-get0()Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "Unable to change theme for user change"

    invoke-static {v4, v5, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method
