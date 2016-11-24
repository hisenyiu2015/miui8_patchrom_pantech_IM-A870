.class Lorg/bluros/platform/internal/CMHardwareService$1;
.super Lbluros/hardware/ICMHardwareService$Stub;
.source "CMHardwareService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bluros/platform/internal/CMHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bluros/platform/internal/CMHardwareService;


# direct methods
.method constructor <init>(Lorg/bluros/platform/internal/CMHardwareService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bluros/platform/internal/CMHardwareService;

    .prologue
    .line 413
    iput-object p1, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-direct {p0}, Lbluros/hardware/ICMHardwareService$Stub;-><init>()V

    return-void
.end method

.method private isSupported(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 416
    invoke-virtual {p0}, Lorg/bluros/platform/internal/CMHardwareService$1;->getSupportedFeatures()I

    move-result v0

    and-int/2addr v0, p1

    if-ne v0, p1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method


# virtual methods
.method public get(I)Z
    .locals 3
    .param p1, "feature"    # I

    .prologue
    .line 428
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 429
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 428
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 430
    invoke-direct {p0, p1}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 431
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 432
    const/4 v0, 0x0

    return v0

    .line 434
    :cond_0
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->get(I)Z

    move-result v0

    return v0
.end method

.method public getColorBalance()I
    .locals 3

    .prologue
    .line 737
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 738
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 737
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 739
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 740
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->getColorBalance()I

    move-result v0

    return v0

    .line 742
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColorBalanceMax()I
    .locals 3

    .prologue
    .line 727
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 728
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 727
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 729
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 730
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->getColorBalanceMax()I

    move-result v0

    return v0

    .line 732
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getColorBalanceMin()I
    .locals 3

    .prologue
    .line 717
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 718
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 717
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 719
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 720
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->getColorBalanceMin()I

    move-result v0

    return v0

    .line 722
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public getCurrentDisplayMode()Lbluros/hardware/DisplayMode;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 619
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 620
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 619
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 621
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 622
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display modes are not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 623
    return-object v2

    .line 625
    :cond_0
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->getCurrentDisplayMode()Lbluros/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDisplayMode()Lbluros/hardware/DisplayMode;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 630
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 631
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 630
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 632
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 633
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display modes are not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    return-object v2

    .line 636
    :cond_0
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->getDefaultDisplayMode()Lbluros/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayColorCalibration()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 450
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 451
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 450
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 453
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display color calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 454
    return-object v2

    .line 456
    :cond_0
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->getDisplayColorCalibration()[I

    move-result-object v0

    return-object v0
.end method

.method public getDisplayGammaCalibration(I)[I
    .locals 3
    .param p1, "idx"    # I

    .prologue
    const/4 v2, 0x0

    .line 487
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 488
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 487
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 489
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 490
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display gamma calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    return-object v2

    .line 493
    :cond_0
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->getDisplayGammaCalibration(I)[I

    move-result-object v0

    return-object v0
.end method

.method public getDisplayModes()[Lbluros/hardware/DisplayMode;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 608
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 609
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 608
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 610
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 611
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display modes are not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 612
    return-object v2

    .line 614
    :cond_0
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->getDisplayModes()[Lbluros/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getLtoDestination()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 542
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 543
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 542
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 544
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 545
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Long term orbits is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 546
    return-object v2

    .line 548
    :cond_0
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->getLtoDestination()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getLtoDownloadInterval()J
    .locals 3

    .prologue
    .line 553
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 554
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 553
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 555
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 556
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Long term orbits is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 557
    const-wide/16 v0, 0x0

    return-wide v0

    .line 559
    :cond_0
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->getLtoDownloadInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLtoSource()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 531
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 532
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 531
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 533
    const/16 v0, 0x40

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 534
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Long term orbits is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 535
    return-object v2

    .line 537
    :cond_0
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->getLtoSource()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumGammaControls()I
    .locals 3

    .prologue
    .line 476
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 477
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 476
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 478
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 479
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display gamma calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    const/4 v0, 0x0

    return v0

    .line 482
    :cond_0
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->getNumGammaControls()I

    move-result v0

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 564
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 565
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 564
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 566
    const/16 v0, 0x80

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 567
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Serial number is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 568
    return-object v2

    .line 570
    :cond_0
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFeatures()I
    .locals 3

    .prologue
    .line 421
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 422
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 421
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->getSupportedFeatures()I

    move-result v0

    return v0
.end method

.method public getThermalState()I
    .locals 3

    .prologue
    .line 687
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 688
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 687
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 689
    const v0, 0x8000

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 690
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get3(Lorg/bluros/platform/internal/CMHardwareService;)I

    move-result v0

    return v0

    .line 692
    :cond_0
    const/4 v0, -0x1

    return v0
.end method

.method public getUniqueDeviceId()Ljava/lang/String;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 575
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 576
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 575
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 577
    const/high16 v0, 0x10000

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 578
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Unique device ID is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 579
    return-object v2

    .line 581
    :cond_0
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVibratorIntensity()[I
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 509
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 510
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 509
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 511
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 512
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Vibrator is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 513
    return-object v2

    .line 515
    :cond_0
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->getVibratorIntensity()[I

    move-result-object v0

    return-object v0
.end method

.method public isSunlightEnhancementSelfManaged()Z
    .locals 3

    .prologue
    .line 597
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 598
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 597
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 599
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 600
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Sunlight enhancement is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 601
    const/4 v0, 0x0

    return v0

    .line 603
    :cond_0
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->isSunlightEnhancementSelfManaged()Z

    move-result v0

    return v0
.end method

.method public readPersistentBytes(Ljava/lang/String;)[B
    .locals 4
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v3, 0x0

    .line 672
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 673
    const-string/jumbo v1, "bluros.permission.MANAGE_PERSISTENT_STORAGE"

    .line 672
    invoke-virtual {v0, v1, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 674
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    if-nez v0, :cond_1

    .line 675
    :cond_0
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 676
    return-object v3

    .line 674
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v1, 0x40

    if-gt v0, v1, :cond_0

    .line 678
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_2

    .line 679
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Persistent storage is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    return-object v3

    .line 682
    :cond_2
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->readPersistentBytes(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public registerThermalListener(Lbluros/hardware/IThermalListenerCallback;)Z
    .locals 3
    .param p1, "callback"    # Lbluros/hardware/IThermalListenerCallback;

    .prologue
    .line 697
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 698
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 697
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 699
    const v0, 0x8000

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 700
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get4(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    move-result v0

    return v0

    .line 702
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public requireAdaptiveBacklightForSunlightEnhancement()Z
    .locals 3

    .prologue
    .line 586
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 587
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 586
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 588
    const/16 v0, 0x100

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 589
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Sunlight enhancement is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 590
    const/4 v0, 0x0

    return v0

    .line 592
    :cond_0
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->requireAdaptiveBacklightForSunlightEnhancement()Z

    move-result v0

    return v0
.end method

.method public set(IZ)Z
    .locals 3
    .param p1, "feature"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 439
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 440
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 439
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    invoke-direct {p0, p1}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 442
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not supported"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 443
    const/4 v0, 0x0

    return v0

    .line 445
    :cond_0
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->set(IZ)Z

    move-result v0

    return v0
.end method

.method public setColorBalance(I)Z
    .locals 3
    .param p1, "value"    # I

    .prologue
    .line 747
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 748
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 747
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 749
    const/high16 v0, 0x20000

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 750
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->setColorBalance(I)Z

    move-result v0

    return v0

    .line 752
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setDisplayColorCalibration([I)Z
    .locals 4
    .param p1, "rgb"    # [I

    .prologue
    const/4 v3, 0x0

    .line 461
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 462
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 461
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 463
    const/4 v0, 0x4

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 464
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display color calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    return v3

    .line 467
    :cond_0
    array-length v0, p1

    const/4 v1, 0x3

    if-ge v0, v1, :cond_1

    .line 468
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Invalid color calibration"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 469
    return v3

    .line 471
    :cond_1
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->setDisplayColorCalibration([I)Z

    move-result v0

    return v0
.end method

.method public setDisplayGammaCalibration(I[I)Z
    .locals 3
    .param p1, "idx"    # I
    .param p2, "rgb"    # [I

    .prologue
    .line 498
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 499
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 498
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 500
    const/16 v0, 0x8

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 501
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display gamma calibration is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    const/4 v0, 0x0

    return v0

    .line 504
    :cond_0
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->setDisplayGammaCalibration(I[I)Z

    move-result v0

    return v0
.end method

.method public setDisplayMode(Lbluros/hardware/DisplayMode;Z)Z
    .locals 3
    .param p1, "mode"    # Lbluros/hardware/DisplayMode;
    .param p2, "makeDefault"    # Z

    .prologue
    .line 641
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 642
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 641
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 643
    const/16 v0, 0x2000

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 644
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Display modes are not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 645
    const/4 v0, 0x0

    return v0

    .line 647
    :cond_0
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->setDisplayMode(Lbluros/hardware/DisplayMode;Z)Z

    move-result v0

    return v0
.end method

.method public setVibratorIntensity(I)Z
    .locals 3
    .param p1, "intensity"    # I

    .prologue
    .line 520
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 521
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 520
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    const/16 v0, 0x400

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_0

    .line 523
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Vibrator is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 524
    const/4 v0, 0x0

    return v0

    .line 526
    :cond_0
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->setVibratorIntensity(I)Z

    move-result v0

    return v0
.end method

.method public unRegisterThermalListener(Lbluros/hardware/IThermalListenerCallback;)Z
    .locals 3
    .param p1, "callback"    # Lbluros/hardware/IThermalListenerCallback;

    .prologue
    .line 707
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v0

    .line 708
    const-string/jumbo v1, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    const/4 v2, 0x0

    .line 707
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 709
    const v0, 0x8000

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 710
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get4(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/os/RemoteCallbackList;

    move-result-object v0

    invoke-virtual {v0, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    move-result v0

    return v0

    .line 712
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public writePersistentBytes(Ljava/lang/String;[B)Z
    .locals 5
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    const/4 v0, 0x0

    const/4 v4, 0x0

    .line 652
    iget-object v1, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v1}, Lorg/bluros/platform/internal/CMHardwareService;->-get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;

    move-result-object v1

    .line 653
    const-string/jumbo v2, "bluros.permission.MANAGE_PERSISTENT_STORAGE"

    .line 652
    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 654
    if-eqz p1, :cond_0

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    if-nez v1, :cond_1

    .line 655
    :cond_0
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Invalid key: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 656
    return v4

    .line 654
    :cond_1
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v1

    const/16 v2, 0x40

    if-gt v1, v2, :cond_0

    .line 659
    if-eqz p2, :cond_4

    array-length v1, p2

    const/16 v2, 0x1000

    if-gt v1, v2, :cond_2

    array-length v1, p2

    if-nez v1, :cond_4

    .line 660
    :cond_2
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Invalid value: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    if-eqz p2, :cond_3

    invoke-static {p2}, Ljava/util/Arrays;->toString([B)Ljava/lang/String;

    move-result-object v0

    :cond_3
    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v1, v0}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 661
    return v4

    .line 663
    :cond_4
    const/16 v0, 0x4000

    invoke-direct {p0, v0}, Lorg/bluros/platform/internal/CMHardwareService$1;->isSupported(I)Z

    move-result v0

    if-nez v0, :cond_5

    .line 664
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    const-string/jumbo v1, "Persistent storage is not supported"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 665
    return v4

    .line 667
    :cond_5
    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService$1;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-static {v0}, Lorg/bluros/platform/internal/CMHardwareService;->-get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    invoke-interface {v0, p1, p2}, Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;->writePersistentBytes(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method
