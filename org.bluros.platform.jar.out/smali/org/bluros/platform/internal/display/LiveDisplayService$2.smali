.class Lorg/bluros/platform/internal/display/LiveDisplayService$2;
.super Lbluros/hardware/ILiveDisplayService$Stub;
.source "LiveDisplayService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bluros/platform/internal/display/LiveDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;


# direct methods
.method constructor <init>(Lorg/bluros/platform/internal/display/LiveDisplayService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bluros/platform/internal/display/LiveDisplayService;

    .prologue
    .line 351
    iput-object p1, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-direct {p0}, Lbluros/hardware/ILiveDisplayService$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 470
    iget-object v1, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v1}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get3(Lorg/bluros/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v2, "android.permission.DUMP"

    const-string/jumbo v3, "LiveDisplay"

    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 472
    invoke-virtual {p2}, Ljava/io/PrintWriter;->println()V

    .line 473
    const-string/jumbo v1, "LiveDisplay Service State:"

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 474
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mState="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v2}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get8(Lorg/bluros/platform/internal/display/LiveDisplayService;)Lorg/bluros/platform/internal/display/LiveDisplayService$State;

    move-result-object v2

    invoke-virtual {v2}, Lorg/bluros/platform/internal/display/LiveDisplayService$State;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 475
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mConfig="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v2}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get2(Lorg/bluros/platform/internal/display/LiveDisplayService;)Lbluros/hardware/LiveDisplayConfig;

    move-result-object v2

    invoke-virtual {v2}, Lbluros/hardware/LiveDisplayConfig;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 476
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "  mAwaitingNudge="

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v2}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get0(Lorg/bluros/platform/internal/display/LiveDisplayService;)Z

    move-result v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p2, v1}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 478
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    iget-object v1, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v1}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get5(Lorg/bluros/platform/internal/display/LiveDisplayService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/List;->size()I

    move-result v1

    if-ge v0, v1, :cond_0

    .line 479
    iget-object v1, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v1}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get5(Lorg/bluros/platform/internal/display/LiveDisplayService;)Ljava/util/List;

    move-result-object v1

    invoke-interface {v1, v0}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/bluros/platform/internal/display/LiveDisplayFeature;

    invoke-virtual {v1, p2}, Lorg/bluros/platform/internal/display/LiveDisplayFeature;->dump(Ljava/io/PrintWriter;)V

    .line 478
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 469
    :cond_0
    return-void
.end method

.method public getColorAdjustment()[F
    .locals 1

    .prologue
    .line 379
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get4(Lorg/bluros/platform/internal/display/LiveDisplayService;)Lorg/bluros/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bluros/platform/internal/display/DisplayHardwareController;->getColorAdjustment()[F

    move-result-object v0

    return-object v0
.end method

.method public getColorTemperature()I
    .locals 1

    .prologue
    .line 465
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get1(Lorg/bluros/platform/internal/display/LiveDisplayService;)Lorg/bluros/platform/internal/display/ColorTemperatureController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bluros/platform/internal/display/ColorTemperatureController;->getColorTemperature()I

    move-result v0

    return v0
.end method

.method public getConfig()Lbluros/hardware/LiveDisplayConfig;
    .locals 1

    .prologue
    .line 355
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get2(Lorg/bluros/platform/internal/display/LiveDisplayService;)Lbluros/hardware/LiveDisplayConfig;

    move-result-object v0

    return-object v0
.end method

.method public getDayColorTemperature()I
    .locals 1

    .prologue
    .line 439
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get1(Lorg/bluros/platform/internal/display/LiveDisplayService;)Lorg/bluros/platform/internal/display/ColorTemperatureController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bluros/platform/internal/display/ColorTemperatureController;->getDayColorTemperature()I

    move-result v0

    return v0
.end method

.method public getMode()I
    .locals 1

    .prologue
    .line 360
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get2(Lorg/bluros/platform/internal/display/LiveDisplayService;)Lbluros/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lbluros/hardware/LiveDisplayConfig;->hasModeSupport()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 361
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get6(Lorg/bluros/platform/internal/display/LiveDisplayService;)Lorg/bluros/platform/internal/display/LiveDisplayService$ModeObserver;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService$ModeObserver;->getMode()I

    move-result v0

    return v0

    .line 363
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getNightColorTemperature()I
    .locals 1

    .prologue
    .line 452
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get1(Lorg/bluros/platform/internal/display/LiveDisplayService;)Lorg/bluros/platform/internal/display/ColorTemperatureController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bluros/platform/internal/display/ColorTemperatureController;->getNightColorTemperature()I

    move-result v0

    return v0
.end method

.method public isAutoContrastEnabled()Z
    .locals 1

    .prologue
    .line 391
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get4(Lorg/bluros/platform/internal/display/LiveDisplayService;)Lorg/bluros/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bluros/platform/internal/display/DisplayHardwareController;->isAutoContrastEnabled()Z

    move-result v0

    return v0
.end method

.method public isAutomaticOutdoorModeEnabled()Z
    .locals 1

    .prologue
    .line 427
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get7(Lorg/bluros/platform/internal/display/LiveDisplayService;)Lorg/bluros/platform/internal/display/OutdoorModeController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bluros/platform/internal/display/OutdoorModeController;->isAutomaticOutdoorModeEnabled()Z

    move-result v0

    return v0
.end method

.method public isCABCEnabled()Z
    .locals 1

    .prologue
    .line 403
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get4(Lorg/bluros/platform/internal/display/LiveDisplayService;)Lorg/bluros/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bluros/platform/internal/display/DisplayHardwareController;->isCABCEnabled()Z

    move-result v0

    return v0
.end method

.method public isColorEnhancementEnabled()Z
    .locals 1

    .prologue
    .line 415
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get4(Lorg/bluros/platform/internal/display/LiveDisplayService;)Lorg/bluros/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0}, Lorg/bluros/platform/internal/display/DisplayHardwareController;->isColorEnhancementEnabled()Z

    move-result v0

    return v0
.end method

.method public setAutoContrastEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 396
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get3(Lorg/bluros/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    .line 397
    const-string/jumbo v1, "bluros.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    .line 396
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 398
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get4(Lorg/bluros/platform/internal/display/LiveDisplayService;)Lorg/bluros/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bluros/platform/internal/display/DisplayHardwareController;->setAutoContrastEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setAutomaticOutdoorModeEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 432
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get3(Lorg/bluros/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    .line 433
    const-string/jumbo v1, "bluros.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    .line 432
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get7(Lorg/bluros/platform/internal/display/LiveDisplayService;)Lorg/bluros/platform/internal/display/OutdoorModeController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bluros/platform/internal/display/OutdoorModeController;->setAutomaticOutdoorModeEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setCABCEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 408
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get3(Lorg/bluros/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    .line 409
    const-string/jumbo v1, "bluros.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    .line 408
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get4(Lorg/bluros/platform/internal/display/LiveDisplayService;)Lorg/bluros/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bluros/platform/internal/display/DisplayHardwareController;->setCABCEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setColorAdjustment([F)Z
    .locals 3
    .param p1, "adj"    # [F

    .prologue
    .line 384
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get3(Lorg/bluros/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    .line 385
    const-string/jumbo v1, "bluros.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    .line 384
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 386
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get4(Lorg/bluros/platform/internal/display/LiveDisplayService;)Lorg/bluros/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bluros/platform/internal/display/DisplayHardwareController;->setColorAdjustment([F)Z

    move-result v0

    return v0
.end method

.method public setColorEnhancementEnabled(Z)Z
    .locals 3
    .param p1, "enabled"    # Z

    .prologue
    .line 420
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get3(Lorg/bluros/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    .line 421
    const-string/jumbo v1, "bluros.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    .line 420
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 422
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get4(Lorg/bluros/platform/internal/display/LiveDisplayService;)Lorg/bluros/platform/internal/display/DisplayHardwareController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bluros/platform/internal/display/DisplayHardwareController;->setColorEnhancementEnabled(Z)Z

    move-result v0

    return v0
.end method

.method public setDayColorTemperature(I)Z
    .locals 3
    .param p1, "temperature"    # I

    .prologue
    .line 444
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get3(Lorg/bluros/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    .line 445
    const-string/jumbo v1, "bluros.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    .line 444
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 446
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get1(Lorg/bluros/platform/internal/display/LiveDisplayService;)Lorg/bluros/platform/internal/display/ColorTemperatureController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bluros/platform/internal/display/ColorTemperatureController;->setDayColorTemperature(I)V

    .line 447
    const/4 v0, 0x1

    return v0
.end method

.method public setMode(I)Z
    .locals 3
    .param p1, "mode"    # I

    .prologue
    .line 369
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get3(Lorg/bluros/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    .line 370
    const-string/jumbo v1, "bluros.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    .line 369
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 371
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get2(Lorg/bluros/platform/internal/display/LiveDisplayService;)Lbluros/hardware/LiveDisplayConfig;

    move-result-object v0

    invoke-virtual {v0}, Lbluros/hardware/LiveDisplayConfig;->hasModeSupport()Z

    move-result v0

    if-nez v0, :cond_0

    .line 372
    const/4 v0, 0x0

    return v0

    .line 374
    :cond_0
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get6(Lorg/bluros/platform/internal/display/LiveDisplayService;)Lorg/bluros/platform/internal/display/LiveDisplayService$ModeObserver;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bluros/platform/internal/display/LiveDisplayService$ModeObserver;->setMode(I)Z

    move-result v0

    return v0
.end method

.method public setNightColorTemperature(I)Z
    .locals 3
    .param p1, "temperature"    # I

    .prologue
    .line 457
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get3(Lorg/bluros/platform/internal/display/LiveDisplayService;)Landroid/content/Context;

    move-result-object v0

    .line 458
    const-string/jumbo v1, "bluros.permission.MANAGE_LIVEDISPLAY"

    const/4 v2, 0x0

    .line 457
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 459
    iget-object v0, p0, Lorg/bluros/platform/internal/display/LiveDisplayService$2;->this$0:Lorg/bluros/platform/internal/display/LiveDisplayService;

    invoke-static {v0}, Lorg/bluros/platform/internal/display/LiveDisplayService;->-get1(Lorg/bluros/platform/internal/display/LiveDisplayService;)Lorg/bluros/platform/internal/display/ColorTemperatureController;

    move-result-object v0

    invoke-virtual {v0, p1}, Lorg/bluros/platform/internal/display/ColorTemperatureController;->setNightColorTemperature(I)V

    .line 460
    const/4 v0, 0x1

    return v0
.end method
