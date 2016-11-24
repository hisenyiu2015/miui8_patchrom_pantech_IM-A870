.class public Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;
.super Lorg/bluros/platform/internal/ManagedServices;
.source "CMStatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bluros/platform/internal/CMStatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1
    name = "CustomTileListeners"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bluros/platform/internal/CMStatusBarManagerService;


# direct methods
.method static synthetic -wrap0(Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;Lbluros/app/StatusBarPanelCustomTile;)V
    .locals 0
    .param p1, "info"    # Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;
    .param p2, "sbc"    # Lbluros/app/StatusBarPanelCustomTile;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;->notifyPosted(Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;Lbluros/app/StatusBarPanelCustomTile;)V

    return-void
.end method

.method static synthetic -wrap1(Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;Lbluros/app/StatusBarPanelCustomTile;)V
    .locals 0
    .param p1, "info"    # Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;
    .param p2, "sbc"    # Lbluros/app/StatusBarPanelCustomTile;

    .prologue
    invoke-direct {p0, p1, p2}, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;->notifyRemoved(Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;Lbluros/app/StatusBarPanelCustomTile;)V

    return-void
.end method

.method public constructor <init>(Lorg/bluros/platform/internal/CMStatusBarManagerService;)V
    .locals 4
    .param p1, "this$0"    # Lorg/bluros/platform/internal/CMStatusBarManagerService;

    .prologue
    .line 545
    iput-object p1, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;->this$0:Lorg/bluros/platform/internal/CMStatusBarManagerService;

    .line 546
    invoke-static {p1}, Lorg/bluros/platform/internal/CMStatusBarManagerService;->-get0(Lorg/bluros/platform/internal/CMStatusBarManagerService;)Landroid/content/Context;

    move-result-object v0

    invoke-static {p1}, Lorg/bluros/platform/internal/CMStatusBarManagerService;->-get2(Lorg/bluros/platform/internal/CMStatusBarManagerService;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p1, Lorg/bluros/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-static {p1}, Lorg/bluros/platform/internal/CMStatusBarManagerService;->-get3(Lorg/bluros/platform/internal/CMStatusBarManagerService;)Lorg/bluros/platform/internal/ManagedServices$UserProfiles;

    move-result-object v3

    invoke-direct {p0, v0, v1, v2, v3}, Lorg/bluros/platform/internal/ManagedServices;-><init>(Landroid/content/Context;Landroid/os/Handler;Ljava/lang/Object;Lorg/bluros/platform/internal/ManagedServices$UserProfiles;)V

    .line 545
    return-void
.end method

.method private notifyPosted(Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;Lbluros/app/StatusBarPanelCustomTile;)V
    .locals 6
    .param p1, "info"    # Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;
    .param p2, "sbc"    # Lbluros/app/StatusBarPanelCustomTile;

    .prologue
    .line 648
    iget-object v1, p1, Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Lbluros/app/ICustomTileListener;

    .line 649
    .local v1, "listener":Lbluros/app/ICustomTileListener;
    new-instance v2, Lorg/bluros/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;

    invoke-direct {v2, p2}, Lorg/bluros/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;-><init>(Lbluros/app/StatusBarPanelCustomTile;)V

    .line 651
    .local v2, "sbcHolder":Lorg/bluros/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;
    :try_start_0
    invoke-interface {v1, v2}, Lbluros/app/ICustomTileListener;->onCustomTilePosted(Lorg/bluros/internal/statusbar/IStatusBarCustomTileHolder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 647
    :goto_0
    return-void

    .line 652
    :catch_0
    move-exception v0

    .line 653
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to notify listener (posted): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method private notifyRemoved(Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;Lbluros/app/StatusBarPanelCustomTile;)V
    .locals 6
    .param p1, "info"    # Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;
    .param p2, "sbc"    # Lbluros/app/StatusBarPanelCustomTile;

    .prologue
    .line 658
    invoke-virtual {p2}, Lbluros/app/StatusBarPanelCustomTile;->getUserId()I

    move-result v3

    invoke-virtual {p1, v3}, Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;->enabledAndUserMatches(I)Z

    move-result v3

    if-nez v3, :cond_0

    .line 659
    return-void

    .line 661
    :cond_0
    iget-object v1, p1, Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Lbluros/app/ICustomTileListener;

    .line 662
    .local v1, "listener":Lbluros/app/ICustomTileListener;
    new-instance v2, Lorg/bluros/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;

    invoke-direct {v2, p2}, Lorg/bluros/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;-><init>(Lbluros/app/StatusBarPanelCustomTile;)V

    .line 664
    .local v2, "sbcHolder":Lorg/bluros/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;
    :try_start_0
    invoke-interface {v1, v2}, Lbluros/app/ICustomTileListener;->onCustomTileRemoved(Lorg/bluros/internal/statusbar/IStatusBarCustomTileHolder;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 657
    :goto_0
    return-void

    .line 665
    :catch_0
    move-exception v0

    .line 666
    .local v0, "ex":Landroid/os/RemoteException;
    iget-object v3, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;->TAG:Ljava/lang/String;

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "unable to notify listener (removed): "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method


# virtual methods
.method protected asInterface(Landroid/os/IBinder;)Landroid/os/IInterface;
    .locals 1
    .param p1, "binder"    # Landroid/os/IBinder;

    .prologue
    .line 566
    invoke-static {p1}, Lbluros/app/ICustomTileListener$Stub;->asInterface(Landroid/os/IBinder;)Lbluros/app/ICustomTileListener;

    move-result-object v0

    return-object v0
.end method

.method protected getConfig()Lorg/bluros/platform/internal/ManagedServices$Config;
    .locals 2

    .prologue
    .line 551
    new-instance v0, Lorg/bluros/platform/internal/ManagedServices$Config;

    invoke-direct {v0}, Lorg/bluros/platform/internal/ManagedServices$Config;-><init>()V

    .line 552
    .local v0, "c":Lorg/bluros/platform/internal/ManagedServices$Config;
    const-string/jumbo v1, "custom tile listener"

    iput-object v1, v0, Lorg/bluros/platform/internal/ManagedServices$Config;->caption:Ljava/lang/String;

    .line 553
    const-string/jumbo v1, "bluros.app.CustomTileListenerService"

    iput-object v1, v0, Lorg/bluros/platform/internal/ManagedServices$Config;->serviceInterface:Ljava/lang/String;

    .line 557
    const-string/jumbo v1, "bluros.permission.BIND_CUSTOM_TILE_LISTENER_SERVICE"

    .line 556
    iput-object v1, v0, Lorg/bluros/platform/internal/ManagedServices$Config;->bindPermission:Ljava/lang/String;

    .line 560
    const v1, 0x3f060025

    iput v1, v0, Lorg/bluros/platform/internal/ManagedServices$Config;->clientLabel:I

    .line 561
    return-object v0
.end method

.method public notifyPostedLocked(Lbluros/app/StatusBarPanelCustomTile;Lbluros/app/StatusBarPanelCustomTile;)V
    .locals 9
    .param p1, "sbc"    # Lbluros/app/StatusBarPanelCustomTile;
    .param p2, "oldSbc"    # Lbluros/app/StatusBarPanelCustomTile;

    .prologue
    .line 594
    const/4 v4, 0x0

    .line 596
    .local v4, "sbcClone":Lbluros/app/StatusBarPanelCustomTile;
    iget-object v7, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;->mServices:Ljava/util/ArrayList;

    invoke-interface {v7}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .end local v4    # "sbcClone":Lbluros/app/StatusBarPanelCustomTile;
    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_5

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;

    .line 597
    .local v0, "info":Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;
    iget-object v7, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;->this$0:Lorg/bluros/platform/internal/CMStatusBarManagerService;

    invoke-static {v7, p1, v0}, Lorg/bluros/platform/internal/CMStatusBarManagerService;->-wrap1(Lorg/bluros/platform/internal/CMStatusBarManagerService;Lbluros/app/StatusBarPanelCustomTile;Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;)Z

    move-result v6

    .line 598
    .local v6, "sbnVisible":Z
    if-eqz p2, :cond_3

    iget-object v7, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;->this$0:Lorg/bluros/platform/internal/CMStatusBarManagerService;

    invoke-static {v7, p2, v0}, Lorg/bluros/platform/internal/CMStatusBarManagerService;->-wrap1(Lorg/bluros/platform/internal/CMStatusBarManagerService;Lbluros/app/StatusBarPanelCustomTile;Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;)Z

    move-result v3

    .line 600
    :goto_1
    if-nez v3, :cond_1

    if-eqz v6, :cond_0

    .line 605
    :cond_1
    if-eqz v3, :cond_2

    if-eqz v6, :cond_4

    .line 615
    :cond_2
    invoke-virtual {p1}, Lbluros/app/StatusBarPanelCustomTile;->clone()Lbluros/app/StatusBarPanelCustomTile;

    move-result-object v4

    .line 617
    .local v4, "sbcClone":Lbluros/app/StatusBarPanelCustomTile;
    move-object v5, v4

    .line 618
    .local v5, "sbcToPost":Lbluros/app/StatusBarPanelCustomTile;
    iget-object v7, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;->this$0:Lorg/bluros/platform/internal/CMStatusBarManagerService;

    invoke-static {v7}, Lorg/bluros/platform/internal/CMStatusBarManagerService;->-get2(Lorg/bluros/platform/internal/CMStatusBarManagerService;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners$2;

    invoke-direct {v8, p0, v0, v5}, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners$2;-><init>(Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;Lbluros/app/StatusBarPanelCustomTile;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 598
    .end local v4    # "sbcClone":Lbluros/app/StatusBarPanelCustomTile;
    .end local v5    # "sbcToPost":Lbluros/app/StatusBarPanelCustomTile;
    :cond_3
    const/4 v3, 0x0

    .local v3, "oldSbnVisible":Z
    goto :goto_1

    .line 606
    .end local v3    # "oldSbnVisible":Z
    :cond_4
    invoke-virtual {p2}, Lbluros/app/StatusBarPanelCustomTile;->clone()Lbluros/app/StatusBarPanelCustomTile;

    move-result-object v2

    .line 607
    .local v2, "oldSbcClone":Lbluros/app/StatusBarPanelCustomTile;
    iget-object v7, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;->this$0:Lorg/bluros/platform/internal/CMStatusBarManagerService;

    invoke-static {v7}, Lorg/bluros/platform/internal/CMStatusBarManagerService;->-get2(Lorg/bluros/platform/internal/CMStatusBarManagerService;)Landroid/os/Handler;

    move-result-object v7

    new-instance v8, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners$1;

    invoke-direct {v8, p0, v0, v2}, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners$1;-><init>(Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;Lbluros/app/StatusBarPanelCustomTile;)V

    invoke-virtual {v7, v8}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 592
    .end local v0    # "info":Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;
    .end local v2    # "oldSbcClone":Lbluros/app/StatusBarPanelCustomTile;
    .end local v6    # "sbnVisible":Z
    :cond_5
    return-void
.end method

.method public notifyRemovedLocked(Lbluros/app/StatusBarPanelCustomTile;)V
    .locals 5
    .param p1, "sbc"    # Lbluros/app/StatusBarPanelCustomTile;

    .prologue
    .line 632
    invoke-virtual {p1}, Lbluros/app/StatusBarPanelCustomTile;->clone()Lbluros/app/StatusBarPanelCustomTile;

    move-result-object v2

    .line 633
    .local v2, "sbcClone":Lbluros/app/StatusBarPanelCustomTile;
    iget-object v3, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;->mServices:Ljava/util/ArrayList;

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "info$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;

    .line 634
    .local v0, "info":Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;
    iget-object v3, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;->this$0:Lorg/bluros/platform/internal/CMStatusBarManagerService;

    invoke-static {v3, v2, v0}, Lorg/bluros/platform/internal/CMStatusBarManagerService;->-wrap1(Lorg/bluros/platform/internal/CMStatusBarManagerService;Lbluros/app/StatusBarPanelCustomTile;Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 637
    iget-object v3, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;->this$0:Lorg/bluros/platform/internal/CMStatusBarManagerService;

    invoke-static {v3}, Lorg/bluros/platform/internal/CMStatusBarManagerService;->-get2(Lorg/bluros/platform/internal/CMStatusBarManagerService;)Landroid/os/Handler;

    move-result-object v3

    new-instance v4, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners$3;

    invoke-direct {v4, p0, v0, v2}, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners$3;-><init>(Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;Lbluros/app/StatusBarPanelCustomTile;)V

    invoke-virtual {v3, v4}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    goto :goto_0

    .line 630
    .end local v0    # "info":Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;
    :cond_1
    return-void
.end method

.method public onServiceAdded(Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;)V
    .locals 2
    .param p1, "info"    # Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 571
    iget-object v1, p1, Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;->service:Landroid/os/IInterface;

    check-cast v1, Lbluros/app/ICustomTileListener;

    .line 573
    .local v1, "listener":Lbluros/app/ICustomTileListener;
    :try_start_0
    invoke-interface {v1}, Lbluros/app/ICustomTileListener;->onListenerConnected()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 570
    :goto_0
    return-void

    .line 574
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method protected onServiceRemovedLocked(Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;)V
    .locals 0
    .param p1, "removed"    # Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;

    .prologue
    .line 580
    return-void
.end method
