.class public final Lbluros/hardware/CMHardwareManager;
.super Ljava/lang/Object;
.source "CMHardwareManager.java"


# static fields
.field private static final BOOLEAN_FEATURES:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field public static final COLOR_CALIBRATION_BLUE_INDEX:I = 0x2

.field public static final COLOR_CALIBRATION_DEFAULT_INDEX:I = 0x3

.field public static final COLOR_CALIBRATION_GREEN_INDEX:I = 0x1

.field public static final COLOR_CALIBRATION_MAX_INDEX:I = 0x5

.field public static final COLOR_CALIBRATION_MIN_INDEX:I = 0x4

.field public static final COLOR_CALIBRATION_RED_INDEX:I = 0x0

.field public static final FEATURE_ADAPTIVE_BACKLIGHT:I = 0x1

.field public static final FEATURE_AUTO_CONTRAST:I = 0x1000

.field public static final FEATURE_COLOR_BALANCE:I = 0x20000

.field public static final FEATURE_COLOR_ENHANCEMENT:I = 0x2

.field public static final FEATURE_DISPLAY_COLOR_CALIBRATION:I = 0x4

.field public static final FEATURE_DISPLAY_GAMMA_CALIBRATION:I = 0x8

.field public static final FEATURE_DISPLAY_MODES:I = 0x2000

.field public static final FEATURE_HIGH_TOUCH_SENSITIVITY:I = 0x10

.field public static final FEATURE_KEY_DISABLE:I = 0x20

.field public static final FEATURE_LONG_TERM_ORBITS:I = 0x40

.field public static final FEATURE_PERSISTENT_STORAGE:I = 0x4000

.field public static final FEATURE_SERIAL_NUMBER:I = 0x80

.field public static final FEATURE_SUNLIGHT_ENHANCEMENT:I = 0x100

.field public static final FEATURE_TAP_TO_WAKE:I = 0x200

.field public static final FEATURE_THERMAL_MONITOR:I = 0x8000

.field public static final FEATURE_TOUCH_HOVERING:I = 0x800

.field public static final FEATURE_UNIQUE_DEVICE_ID:I = 0x10000

.field public static final FEATURE_VIBRATOR:I = 0x400

.field public static final GAMMA_CALIBRATION_BLUE_INDEX:I = 0x2

.field public static final GAMMA_CALIBRATION_GREEN_INDEX:I = 0x1

.field public static final GAMMA_CALIBRATION_MAX_INDEX:I = 0x4

.field public static final GAMMA_CALIBRATION_MIN_INDEX:I = 0x3

.field public static final GAMMA_CALIBRATION_RED_INDEX:I = 0x0

.field private static final TAG:Ljava/lang/String; = "CMHardwareManager"

.field public static final VIBRATOR_DEFAULT_INDEX:I = 0x1

.field public static final VIBRATOR_INTENSITY_INDEX:I = 0x0

.field public static final VIBRATOR_MAX_INDEX:I = 0x3

.field public static final VIBRATOR_MIN_INDEX:I = 0x2

.field public static final VIBRATOR_WARNING_INDEX:I = 0x4

.field private static sCMHardwareManagerInstance:Lbluros/hardware/CMHardwareManager;

.field private static sService:Lbluros/hardware/ICMHardwareService;


# instance fields
.field private mContext:Landroid/content/Context;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    const/4 v4, 0x2

    const/4 v3, 0x1

    .line 138
    const/16 v0, 0x9

    new-array v0, v0, [Ljava/lang/Integer;

    .line 139
    invoke-static {v3}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 140
    invoke-static {v4}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v3

    .line 141
    const/16 v1, 0x10

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    aput-object v1, v0, v4

    .line 142
    const/16 v1, 0x20

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 143
    const/16 v1, 0x100

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 144
    const/16 v1, 0x200

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x5

    aput-object v1, v0, v2

    .line 145
    const/16 v1, 0x800

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x6

    aput-object v1, v0, v2

    .line 146
    const/16 v1, 0x1000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/4 v2, 0x7

    aput-object v1, v0, v2

    .line 147
    const v1, 0x8000

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const/16 v2, 0x8

    aput-object v1, v0, v2

    .line 138
    invoke-static {v0}, Ljava/util/Arrays;->asList([Ljava/lang/Object;)Ljava/util/List;

    move-result-object v0

    sput-object v0, Lbluros/hardware/CMHardwareManager;->BOOLEAN_FEATURES:Ljava/util/List;

    .line 41
    return-void
.end method

.method private constructor <init>(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 155
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 156
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v0

    .line 157
    .local v0, "appContext":Landroid/content/Context;
    if-eqz v0, :cond_1

    .line 158
    iput-object v0, p0, Lbluros/hardware/CMHardwareManager;->mContext:Landroid/content/Context;

    .line 162
    :goto_0
    invoke-static {}, Lbluros/hardware/CMHardwareManager;->getService()Lbluros/hardware/ICMHardwareService;

    move-result-object v1

    sput-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    .line 164
    invoke-virtual {p1}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v1

    .line 165
    const-string/jumbo v2, "org.bluros.hardware"

    .line 164
    invoke-virtual {v1, v2}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 165
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_2

    .line 155
    :cond_0
    :goto_1
    return-void

    .line 160
    :cond_1
    iput-object p1, p0, Lbluros/hardware/CMHardwareManager;->mContext:Landroid/content/Context;

    goto :goto_0

    .line 166
    :cond_2
    const-string/jumbo v1, "CMHardwareManager"

    const-string/jumbo v2, "Unable to get CMHardwareService. The service either crashed, was not started, or the interface has been called to early in SystemServer init"

    invoke-static {v1, v2}, Landroid/util/Log;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_1
.end method

.method private checkService()Z
    .locals 2

    .prologue
    .line 849
    sget-object v0, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    if-nez v0, :cond_0

    .line 850
    const-string/jumbo v0, "CMHardwareManager"

    const-string/jumbo v1, "not connected to CMHardwareManagerService"

    invoke-static {v0, v1}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 851
    const/4 v0, 0x0

    return v0

    .line 853
    :cond_0
    const/4 v0, 0x1

    return v0
.end method

.method private getArrayValue([III)I
    .locals 1
    .param p1, "arr"    # [I
    .param p2, "idx"    # I
    .param p3, "defaultValue"    # I

    .prologue
    .line 269
    if-eqz p1, :cond_0

    array-length v0, p1

    if-gt v0, p2, :cond_1

    .line 270
    :cond_0
    return p3

    .line 273
    :cond_1
    aget v0, p1, p2

    return v0
.end method

.method private getDisplayColorCalibrationArray()[I
    .locals 2

    .prologue
    .line 387
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 388
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1}, Lbluros/hardware/ICMHardwareService;->getDisplayColorCalibration()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 390
    :catch_0
    move-exception v0

    .line 392
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method private getDisplayGammaCalibrationArray(I)[I
    .locals 2
    .param p1, "idx"    # I

    .prologue
    .line 595
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 596
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lbluros/hardware/ICMHardwareService;->getDisplayGammaCalibration(I)[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 598
    :catch_0
    move-exception v0

    .line 600
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public static getInstance(Landroid/content/Context;)Lbluros/hardware/CMHardwareManager;
    .locals 1
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 178
    sget-object v0, Lbluros/hardware/CMHardwareManager;->sCMHardwareManagerInstance:Lbluros/hardware/CMHardwareManager;

    if-nez v0, :cond_0

    .line 179
    new-instance v0, Lbluros/hardware/CMHardwareManager;

    invoke-direct {v0, p0}, Lbluros/hardware/CMHardwareManager;-><init>(Landroid/content/Context;)V

    sput-object v0, Lbluros/hardware/CMHardwareManager;->sCMHardwareManagerInstance:Lbluros/hardware/CMHardwareManager;

    .line 181
    :cond_0
    sget-object v0, Lbluros/hardware/CMHardwareManager;->sCMHardwareManagerInstance:Lbluros/hardware/CMHardwareManager;

    return-object v0
.end method

.method public static getService()Lbluros/hardware/ICMHardwareService;
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 186
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    if-eqz v1, :cond_0

    .line 187
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    return-object v1

    .line 189
    :cond_0
    const-string/jumbo v1, "cmhardware"

    invoke-static {v1}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v0

    .line 190
    .local v0, "b":Landroid/os/IBinder;
    if-eqz v0, :cond_1

    .line 191
    invoke-static {v0}, Lbluros/hardware/ICMHardwareService$Stub;->asInterface(Landroid/os/IBinder;)Lbluros/hardware/ICMHardwareService;

    move-result-object v1

    sput-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    .line 192
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    return-object v1

    .line 194
    :cond_1
    return-object v2
.end method

.method private getVibratorIntensityArray()[I
    .locals 2

    .prologue
    .line 299
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 300
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1}, Lbluros/hardware/ICMHardwareService;->getVibratorIntensity()[I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 302
    :catch_0
    move-exception v0

    .line 304
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method


# virtual methods
.method public deletePersistentObject(Ljava/lang/String;)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 564
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 565
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    const/4 v2, 0x0

    invoke-interface {v1, p1, v2}, Lbluros/hardware/ICMHardwareService;->writePersistentBytes(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 567
    :catch_0
    move-exception v0

    .line 569
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public get(I)Z
    .locals 4
    .param p1, "feature"    # I

    .prologue
    .line 231
    sget-object v1, Lbluros/hardware/CMHardwareManager;->BOOLEAN_FEATURES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 232
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a boolean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 236
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 237
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lbluros/hardware/ICMHardwareService;->get(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 239
    :catch_0
    move-exception v0

    .line 241
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public getColorBalance()I
    .locals 2

    .prologue
    .line 827
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 828
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1}, Lbluros/hardware/ICMHardwareService;->getColorBalance()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 830
    :catch_0
    move-exception v0

    .line 832
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getColorBalanceRange()Landroid/util/Range;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 813
    const/4 v2, 0x0

    .line 814
    .local v2, "min":I
    const/4 v1, 0x0

    .line 816
    .local v1, "max":I
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 817
    sget-object v3, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v3}, Lbluros/hardware/ICMHardwareService;->getColorBalanceMin()I

    move-result v2

    .line 818
    sget-object v3, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v3}, Lbluros/hardware/ICMHardwareService;->getColorBalanceMax()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    .line 822
    :cond_0
    :goto_0
    new-instance v3, Landroid/util/Range;

    invoke-static {v2}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v5

    invoke-direct {v3, v4, v5}, Landroid/util/Range;-><init>(Ljava/lang/Comparable;Ljava/lang/Comparable;)V

    return-object v3

    .line 820
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public getCurrentDisplayMode()Lbluros/hardware/DisplayMode;
    .locals 2

    .prologue
    .line 778
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 779
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1}, Lbluros/hardware/ICMHardwareService;->getCurrentDisplayMode()Lbluros/hardware/DisplayMode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 781
    :catch_0
    move-exception v0

    .line 783
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDefaultDisplayMode()Lbluros/hardware/DisplayMode;
    .locals 2

    .prologue
    .line 791
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 792
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1}, Lbluros/hardware/ICMHardwareService;->getDefaultDisplayMode()Lbluros/hardware/DisplayMode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 794
    :catch_0
    move-exception v0

    .line 796
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getDisplayColorCalibration()[I
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 399
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->getDisplayColorCalibrationArray()[I

    move-result-object v0

    .line 400
    .local v0, "arr":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, v2, :cond_1

    .line 401
    :cond_0
    return-object v3

    .line 403
    :cond_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    return-object v1
.end method

.method public getDisplayColorCalibrationDefault()I
    .locals 3

    .prologue
    .line 410
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->getDisplayColorCalibrationArray()[I

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lbluros/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayColorCalibrationMax()I
    .locals 3

    .prologue
    .line 424
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->getDisplayColorCalibrationArray()[I

    move-result-object v0

    const/4 v1, 0x5

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lbluros/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayColorCalibrationMin()I
    .locals 3

    .prologue
    .line 417
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->getDisplayColorCalibrationArray()[I

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lbluros/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayGammaCalibration(I)[I
    .locals 4
    .param p1, "idx"    # I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v3, 0x0

    const/4 v2, 0x3

    .line 624
    invoke-direct {p0, p1}, Lbluros/hardware/CMHardwareManager;->getDisplayGammaCalibrationArray(I)[I

    move-result-object v0

    .line 625
    .local v0, "arr":[I
    if-eqz v0, :cond_0

    array-length v1, v0

    if-ge v1, v2, :cond_1

    .line 626
    :cond_0
    return-object v3

    .line 628
    :cond_1
    invoke-static {v0, v2}, Ljava/util/Arrays;->copyOf([II)[I

    move-result-object v1

    return-object v1
.end method

.method public getDisplayGammaCalibrationMax()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 644
    invoke-direct {p0, v2}, Lbluros/hardware/CMHardwareManager;->getDisplayGammaCalibrationArray(I)[I

    move-result-object v0

    const/4 v1, 0x4

    invoke-direct {p0, v0, v1, v2}, Lbluros/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayGammaCalibrationMin()I
    .locals 3
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    const/4 v2, 0x0

    .line 636
    invoke-direct {p0, v2}, Lbluros/hardware/CMHardwareManager;->getDisplayGammaCalibrationArray(I)[I

    move-result-object v0

    const/4 v1, 0x3

    invoke-direct {p0, v0, v1, v2}, Lbluros/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getDisplayModes()[Lbluros/hardware/DisplayMode;
    .locals 2

    .prologue
    .line 765
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 766
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1}, Lbluros/hardware/ICMHardwareService;->getDisplayModes()[Lbluros/hardware/DisplayMode;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 768
    :catch_0
    move-exception v0

    .line 770
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLtoDestination()Ljava/lang/String;
    .locals 2

    .prologue
    .line 686
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 687
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1}, Lbluros/hardware/ICMHardwareService;->getLtoDestination()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 689
    :catch_0
    move-exception v0

    .line 691
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getLtoDownloadInterval()J
    .locals 4

    .prologue
    .line 699
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 700
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1}, Lbluros/hardware/ICMHardwareService;->getLtoDownloadInterval()J
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 702
    :catch_0
    move-exception v0

    .line 704
    :cond_0
    const-wide/16 v2, 0x0

    return-wide v2
.end method

.method public getLtoSource()Ljava/lang/String;
    .locals 2

    .prologue
    .line 673
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 674
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1}, Lbluros/hardware/ICMHardwareService;->getLtoSource()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 676
    :catch_0
    move-exception v0

    .line 678
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getNumGammaControls()I
    .locals 2
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 609
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 610
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1}, Lbluros/hardware/ICMHardwareService;->getNumGammaControls()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 612
    :catch_0
    move-exception v0

    .line 614
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 2

    .prologue
    .line 712
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 713
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1}, Lbluros/hardware/ICMHardwareService;->getSerialNumber()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 715
    :catch_0
    move-exception v0

    .line 717
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getSupportedFeatures()I
    .locals 2

    .prologue
    .line 202
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 203
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1}, Lbluros/hardware/ICMHardwareService;->getSupportedFeatures()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 205
    :catch_0
    move-exception v0

    .line 207
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public getThermalState()I
    .locals 2

    .prologue
    .line 861
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 862
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1}, Lbluros/hardware/ICMHardwareService;->getThermalState()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 864
    :catch_0
    move-exception v0

    .line 866
    :cond_0
    const/4 v1, -0x1

    return v1
.end method

.method public getUniqueDeviceId()Ljava/lang/String;
    .locals 2

    .prologue
    .line 725
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 726
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1}, Lbluros/hardware/ICMHardwareService;->getUniqueDeviceId()Ljava/lang/String;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 728
    :catch_0
    move-exception v0

    .line 730
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public getVibratorDefaultIntensity()I
    .locals 3

    .prologue
    .line 318
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lbluros/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorIntensity()I
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 311
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    invoke-direct {p0, v0, v1, v1}, Lbluros/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorMaxIntensity()I
    .locals 3

    .prologue
    .line 332
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x3

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lbluros/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorMinIntensity()I
    .locals 3

    .prologue
    .line 325
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x2

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lbluros/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public getVibratorWarningIntensity()I
    .locals 3

    .prologue
    .line 339
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->getVibratorIntensityArray()[I

    move-result-object v0

    const/4 v1, 0x4

    const/4 v2, 0x0

    invoke-direct {p0, v0, v1, v2}, Lbluros/hardware/CMHardwareManager;->getArrayValue([III)I

    move-result v0

    return v0
.end method

.method public isSunlightEnhancementSelfManaged()Z
    .locals 2

    .prologue
    .line 752
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 753
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1}, Lbluros/hardware/ICMHardwareService;->isSunlightEnhancementSelfManaged()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 755
    :catch_0
    move-exception v0

    .line 757
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public isSupported(I)Z
    .locals 1
    .param p1, "feature"    # I

    .prologue
    .line 218
    invoke-virtual {p0}, Lbluros/hardware/CMHardwareManager;->getSupportedFeatures()I

    move-result v0

    and-int/2addr v0, p1

    if-ne p1, v0, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public readPersistentBytes(Ljava/lang/String;)[B
    .locals 2
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 549
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 550
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lbluros/hardware/ICMHardwareService;->readPersistentBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    return-object v1

    .line 552
    :catch_0
    move-exception v0

    .line 554
    :cond_0
    const/4 v1, 0x0

    return-object v1
.end method

.method public readPersistentInt(Ljava/lang/String;)I
    .locals 3
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 530
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 531
    sget-object v2, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v2, p1}, Lbluros/hardware/ICMHardwareService;->readPersistentBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 532
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 533
    invoke-static {v0}, Ljava/nio/ByteBuffer;->wrap([B)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->getInt()I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 536
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v1

    .line 538
    :cond_0
    const/4 v2, 0x0

    return v2
.end method

.method public readPersistentString(Ljava/lang/String;)Ljava/lang/String;
    .locals 6
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 509
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 510
    sget-object v3, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v3, p1}, Lbluros/hardware/ICMHardwareService;->readPersistentBytes(Ljava/lang/String;)[B

    move-result-object v0

    .line 511
    .local v0, "bytes":[B
    if-eqz v0, :cond_0

    .line 512
    new-instance v3, Ljava/lang/String;

    const-string/jumbo v4, "UTF-8"

    invoke-direct {v3, v0, v4}, Ljava/lang/String;-><init>([BLjava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v3

    .line 516
    .end local v0    # "bytes":[B
    :catch_0
    move-exception v2

    .line 517
    .local v2, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v3, "CMHardwareManager"

    invoke-virtual {v2}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 519
    .end local v2    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_0
    :goto_0
    return-object v5

    .line 515
    :catch_1
    move-exception v1

    .local v1, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method

.method public registerThermalListener(Lbluros/hardware/ThermalListenerCallback;)Z
    .locals 2
    .param p1, "thermalCallback"    # Lbluros/hardware/ThermalListenerCallback;

    .prologue
    .line 875
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 876
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lbluros/hardware/ICMHardwareService;->registerThermalListener(Lbluros/hardware/IThermalListenerCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 878
    :catch_0
    move-exception v0

    .line 880
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public requireAdaptiveBacklightForSunlightEnhancement()Z
    .locals 2

    .prologue
    .line 739
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 740
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1}, Lbluros/hardware/ICMHardwareService;->requireAdaptiveBacklightForSunlightEnhancement()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 742
    :catch_0
    move-exception v0

    .line 744
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public set(IZ)Z
    .locals 4
    .param p1, "feature"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 255
    sget-object v1, Lbluros/hardware/CMHardwareManager;->BOOLEAN_FEATURES:Ljava/util/List;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v2

    invoke-interface {v1, v2}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_0

    .line 256
    new-instance v1, Ljava/lang/IllegalArgumentException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " is not a boolean"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 260
    :cond_0
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_1

    .line 261
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1, p1, p2}, Lbluros/hardware/ICMHardwareService;->set(IZ)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 263
    :catch_0
    move-exception v0

    .line 265
    :cond_1
    const/4 v1, 0x0

    return v1
.end method

.method public setColorBalance(I)Z
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 837
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 838
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lbluros/hardware/ICMHardwareService;->setColorBalance(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 840
    :catch_0
    move-exception v0

    .line 842
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setDisplayColorCalibration([I)Z
    .locals 2
    .param p1, "rgb"    # [I

    .prologue
    .line 438
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 439
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lbluros/hardware/ICMHardwareService;->setDisplayColorCalibration([I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 441
    :catch_0
    move-exception v0

    .line 443
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setDisplayGammaCalibration(I[I)Z
    .locals 2
    .param p1, "idx"    # I
    .param p2, "rgb"    # [I
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .prologue
    .line 660
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 661
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1, p1, p2}, Lbluros/hardware/ICMHardwareService;->setDisplayGammaCalibration(I[I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 663
    :catch_0
    move-exception v0

    .line 665
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setDisplayMode(Lbluros/hardware/DisplayMode;Z)Z
    .locals 2
    .param p1, "mode"    # Lbluros/hardware/DisplayMode;
    .param p2, "makeDefault"    # Z

    .prologue
    .line 804
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 805
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1, p1, p2}, Lbluros/hardware/ICMHardwareService;->setDisplayMode(Lbluros/hardware/DisplayMode;Z)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 807
    :catch_0
    move-exception v0

    .line 809
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public setVibratorIntensity(I)Z
    .locals 2
    .param p1, "intensity"    # I

    .prologue
    .line 352
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 353
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lbluros/hardware/ICMHardwareService;->setVibratorIntensity(I)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 355
    :catch_0
    move-exception v0

    .line 357
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public unRegisterThermalListener(Lbluros/hardware/ThermalListenerCallback;)Z
    .locals 2
    .param p1, "thermalCallback"    # Lbluros/hardware/ThermalListenerCallback;

    .prologue
    .line 889
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 890
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1, p1}, Lbluros/hardware/ICMHardwareService;->unRegisterThermalListener(Lbluros/hardware/IThermalListenerCallback;)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 892
    :catch_0
    move-exception v0

    .line 894
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public writePersistentBytes(Ljava/lang/String;[B)Z
    .locals 2
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 493
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 494
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    invoke-interface {v1, p1, p2}, Lbluros/hardware/ICMHardwareService;->writePersistentBytes(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 496
    :catch_0
    move-exception v0

    .line 498
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public writePersistentInt(Ljava/lang/String;I)Z
    .locals 3
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 475
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 476
    sget-object v1, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    .line 477
    const/4 v2, 0x4

    invoke-static {v2}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    move-result-object v2

    invoke-virtual {v2}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v2

    .line 476
    invoke-interface {v1, p1, v2}, Lbluros/hardware/ICMHardwareService;->writePersistentBytes(Ljava/lang/String;[B)Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v1

    return v1

    .line 479
    :catch_0
    move-exception v0

    .line 481
    :cond_0
    const/4 v1, 0x0

    return v1
.end method

.method public writePersistentString(Ljava/lang/String;Ljava/lang/String;)Z
    .locals 4
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 455
    :try_start_0
    invoke-direct {p0}, Lbluros/hardware/CMHardwareManager;->checkService()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 456
    sget-object v3, Lbluros/hardware/CMHardwareManager;->sService:Lbluros/hardware/ICMHardwareService;

    .line 457
    if-nez p2, :cond_0

    .line 456
    :goto_0
    invoke-interface {v3, p1, v2}, Lbluros/hardware/ICMHardwareService;->writePersistentBytes(Ljava/lang/String;[B)Z

    move-result v2

    return v2

    .line 457
    :cond_0
    const-string/jumbo v2, "UTF-8"

    invoke-virtual {p2, v2}, Ljava/lang/String;->getBytes(Ljava/lang/String;)[B
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/io/UnsupportedEncodingException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v2

    goto :goto_0

    .line 460
    :catch_0
    move-exception v1

    .line 461
    .local v1, "e":Ljava/io/UnsupportedEncodingException;
    const-string/jumbo v2, "CMHardwareManager"

    invoke-virtual {v1}, Ljava/io/UnsupportedEncodingException;->getMessage()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 463
    .end local v1    # "e":Ljava/io/UnsupportedEncodingException;
    :cond_1
    :goto_1
    const/4 v2, 0x0

    return v2

    .line 459
    :catch_1
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_1
.end method
