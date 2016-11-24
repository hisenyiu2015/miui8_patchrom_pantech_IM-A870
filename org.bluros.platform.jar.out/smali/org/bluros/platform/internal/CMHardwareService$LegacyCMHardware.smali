.class Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;
.super Ljava/lang/Object;
.source "CMHardwareService.java"

# interfaces
.implements Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bluros/platform/internal/CMHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "LegacyCMHardware"
.end annotation


# instance fields
.field private mSupportedFeatures:I

.field final synthetic this$0:Lorg/bluros/platform/internal/CMHardwareService;


# direct methods
.method public constructor <init>(Lorg/bluros/platform/internal/CMHardwareService;)V
    .locals 2
    .param p1, "this$0"    # Lorg/bluros/platform/internal/CMHardwareService;

    .prologue
    .line 111
    iput-object p1, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->this$0:Lorg/bluros/platform/internal/CMHardwareService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 109
    const/4 v0, 0x0

    iput v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 112
    invoke-static {}, Lorg/bluros/hardware/AdaptiveBacklight;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 113
    iget v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x1

    iput v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 114
    :cond_0
    invoke-static {}, Lorg/bluros/hardware/ColorEnhancement;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 115
    iget v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x2

    iput v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 116
    :cond_1
    invoke-static {}, Lorg/bluros/hardware/DisplayColorCalibration;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 117
    iget v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x4

    iput v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 118
    :cond_2
    invoke-static {}, Lorg/bluros/hardware/DisplayGammaCalibration;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 119
    iget v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x8

    iput v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 120
    :cond_3
    invoke-static {}, Lorg/bluros/hardware/HighTouchSensitivity;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_4

    .line 121
    iget v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x10

    iput v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 122
    :cond_4
    invoke-static {}, Lorg/bluros/hardware/KeyDisabler;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_5

    .line 123
    iget v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x20

    iput v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 124
    :cond_5
    invoke-static {}, Lorg/bluros/hardware/LongTermOrbits;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_6

    .line 125
    iget v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit8 v0, v0, 0x40

    iput v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 126
    :cond_6
    invoke-static {}, Lorg/bluros/hardware/SerialNumber;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_7

    .line 127
    iget v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x80

    iput v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 128
    :cond_7
    invoke-static {}, Lorg/bluros/hardware/SunlightEnhancement;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_8

    .line 129
    iget v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x100

    iput v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 130
    :cond_8
    invoke-static {}, Lorg/bluros/hardware/TapToWake;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_9

    .line 131
    iget v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x200

    iput v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 132
    :cond_9
    invoke-static {}, Lorg/bluros/hardware/VibratorHW;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_a

    .line 133
    iget v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x400

    iput v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 134
    :cond_a
    invoke-static {}, Lorg/bluros/hardware/TouchscreenHovering;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_b

    .line 135
    iget v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x800

    iput v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 136
    :cond_b
    invoke-static {}, Lorg/bluros/hardware/AutoContrast;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_c

    .line 137
    iget v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x1000

    iput v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 138
    :cond_c
    invoke-static {}, Lorg/bluros/hardware/DisplayModeControl;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_d

    .line 139
    iget v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x2000

    iput v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 140
    :cond_d
    invoke-static {}, Lorg/bluros/hardware/PersistentStorage;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_e

    .line 141
    iget v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    or-int/lit16 v0, v0, 0x4000

    iput v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 142
    :cond_e
    invoke-static {}, Lorg/bluros/hardware/ThermalMonitor;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_f

    .line 143
    iget v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    const v1, 0x8000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 144
    :cond_f
    invoke-static {}, Lorg/bluros/hardware/UniqueDeviceId;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_10

    .line 145
    iget v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    const/high16 v1, 0x10000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 146
    :cond_10
    invoke-static {}, Lorg/bluros/hardware/ColorBalance;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_11

    .line 147
    iget v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    const/high16 v1, 0x20000

    or-int/2addr v0, v1

    iput v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    .line 111
    :cond_11
    return-void
.end method

.method private rgbToString([I)Ljava/lang/String;
    .locals 2
    .param p1, "rgb"    # [I

    .prologue
    .line 222
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 223
    .local v0, "builder":Ljava/lang/StringBuilder;
    const/4 v1, 0x0

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 224
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 225
    const/4 v1, 0x1

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 226
    const-string/jumbo v1, " "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 227
    const/4 v1, 0x2

    aget v1, p1, v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 228
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method private splitStringToInt(Ljava/lang/String;Ljava/lang/String;)[I
    .locals 6
    .param p1, "input"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 205
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 206
    :cond_0
    return-object v5

    .line 208
    :cond_1
    invoke-virtual {p1, p2}, Ljava/lang/String;->split(Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v3

    .line 210
    .local v3, "strArray":[Ljava/lang/String;
    :try_start_0
    array-length v4, v3

    new-array v2, v4, [I

    .line 211
    .local v2, "intArray":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v4, v3

    if-ge v1, v4, :cond_2

    .line 212
    aget-object v4, v3, v1

    invoke-static {v4}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v4

    aput v4, v2, v1
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    .line 211
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 214
    :cond_2
    return-object v2

    .line 215
    .end local v1    # "i":I
    .end local v2    # "intArray":[I
    :catch_0
    move-exception v0

    .line 218
    .local v0, "e":Ljava/lang/NumberFormatException;
    return-object v5
.end method


# virtual methods
.method public get(I)Z
    .locals 3
    .param p1, "feature"    # I

    .prologue
    .line 155
    sparse-switch p1, :sswitch_data_0

    .line 175
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a boolean feature"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 176
    const/4 v0, 0x0

    return v0

    .line 157
    :sswitch_0
    invoke-static {}, Lorg/bluros/hardware/AdaptiveBacklight;->isEnabled()Z

    move-result v0

    return v0

    .line 159
    :sswitch_1
    invoke-static {}, Lorg/bluros/hardware/ColorEnhancement;->isEnabled()Z

    move-result v0

    return v0

    .line 161
    :sswitch_2
    invoke-static {}, Lorg/bluros/hardware/HighTouchSensitivity;->isEnabled()Z

    move-result v0

    return v0

    .line 163
    :sswitch_3
    invoke-static {}, Lorg/bluros/hardware/KeyDisabler;->isActive()Z

    move-result v0

    return v0

    .line 165
    :sswitch_4
    invoke-static {}, Lorg/bluros/hardware/SunlightEnhancement;->isEnabled()Z

    move-result v0

    return v0

    .line 167
    :sswitch_5
    invoke-static {}, Lorg/bluros/hardware/TapToWake;->isEnabled()Z

    move-result v0

    return v0

    .line 169
    :sswitch_6
    invoke-static {}, Lorg/bluros/hardware/TouchscreenHovering;->isEnabled()Z

    move-result v0

    return v0

    .line 171
    :sswitch_7
    invoke-static {}, Lorg/bluros/hardware/AutoContrast;->isEnabled()Z

    move-result v0

    return v0

    .line 173
    :sswitch_8
    invoke-static {}, Lorg/bluros/hardware/ThermalMonitor;->isEnabled()Z

    move-result v0

    return v0

    .line 155
    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x100 -> :sswitch_4
        0x200 -> :sswitch_5
        0x800 -> :sswitch_6
        0x1000 -> :sswitch_7
        0x8000 -> :sswitch_8
    .end sparse-switch
.end method

.method public getColorBalance()I
    .locals 1

    .prologue
    .line 355
    invoke-static {}, Lorg/bluros/hardware/ColorBalance;->getValue()I

    move-result v0

    return v0
.end method

.method public getColorBalanceMax()I
    .locals 1

    .prologue
    .line 351
    invoke-static {}, Lorg/bluros/hardware/ColorBalance;->getMaxValue()I

    move-result v0

    return v0
.end method

.method public getColorBalanceMin()I
    .locals 1

    .prologue
    .line 347
    invoke-static {}, Lorg/bluros/hardware/ColorBalance;->getMinValue()I

    move-result v0

    return v0
.end method

.method public getCurrentDisplayMode()Lbluros/hardware/DisplayMode;
    .locals 1

    .prologue
    .line 327
    invoke-static {}, Lorg/bluros/hardware/DisplayModeControl;->getCurrentMode()Lbluros/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultDisplayMode()Lbluros/hardware/DisplayMode;
    .locals 1

    .prologue
    .line 331
    invoke-static {}, Lorg/bluros/hardware/DisplayModeControl;->getDefaultMode()Lbluros/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getDisplayColorCalibration()[I
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 232
    invoke-static {}, Lorg/bluros/hardware/DisplayColorCalibration;->getCurColors()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-direct {p0, v2, v3}, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->splitStringToInt(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 233
    .local v1, "rgb":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eq v2, v7, :cond_1

    .line 234
    :cond_0
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Invalid color calibration string"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 235
    return-object v8

    .line 237
    :cond_1
    const/4 v2, 0x6

    new-array v0, v2, [I

    .line 238
    .local v0, "currentCalibration":[I
    aget v2, v1, v4

    aput v2, v0, v4

    .line 239
    aget v2, v1, v5

    aput v2, v0, v5

    .line 240
    aget v2, v1, v6

    aput v2, v0, v6

    .line 242
    invoke-static {}, Lorg/bluros/hardware/DisplayColorCalibration;->getDefValue()I

    move-result v2

    .line 241
    aput v2, v0, v7

    .line 244
    invoke-static {}, Lorg/bluros/hardware/DisplayColorCalibration;->getMinValue()I

    move-result v2

    .line 243
    const/4 v3, 0x4

    aput v2, v0, v3

    .line 246
    invoke-static {}, Lorg/bluros/hardware/DisplayColorCalibration;->getMaxValue()I

    move-result v2

    .line 245
    const/4 v3, 0x5

    aput v2, v0, v3

    .line 247
    return-object v0
.end method

.method public getDisplayGammaCalibration(I)[I
    .locals 9
    .param p1, "idx"    # I

    .prologue
    const/4 v8, 0x0

    const/4 v7, 0x3

    const/4 v6, 0x2

    const/4 v5, 0x1

    const/4 v4, 0x0

    .line 259
    invoke-static {p1}, Lorg/bluros/hardware/DisplayGammaCalibration;->getCurGamma(I)Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, " "

    invoke-direct {p0, v2, v3}, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->splitStringToInt(Ljava/lang/String;Ljava/lang/String;)[I

    move-result-object v1

    .line 260
    .local v1, "rgb":[I
    if-eqz v1, :cond_0

    array-length v2, v1

    if-eq v2, v7, :cond_1

    .line 261
    :cond_0
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v2

    const-string/jumbo v3, "Invalid gamma calibration string"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 262
    return-object v8

    .line 264
    :cond_1
    const/4 v2, 0x5

    new-array v0, v2, [I

    .line 265
    .local v0, "currentCalibration":[I
    aget v2, v1, v4

    aput v2, v0, v4

    .line 266
    aget v2, v1, v5

    aput v2, v0, v5

    .line 267
    aget v2, v1, v6

    aput v2, v0, v6

    .line 269
    invoke-static {p1}, Lorg/bluros/hardware/DisplayGammaCalibration;->getMinValue(I)I

    move-result v2

    .line 268
    aput v2, v0, v7

    .line 271
    invoke-static {p1}, Lorg/bluros/hardware/DisplayGammaCalibration;->getMaxValue(I)I

    move-result v2

    .line 270
    const/4 v3, 0x4

    aput v2, v0, v3

    .line 272
    return-object v0
.end method

.method public getDisplayModes()[Lbluros/hardware/DisplayMode;
    .locals 1

    .prologue
    .line 323
    invoke-static {}, Lorg/bluros/hardware/DisplayModeControl;->getAvailableModes()[Lbluros/hardware/DisplayMode;

    move-result-object v0

    return-object v0
.end method

.method public getLtoDestination()Ljava/lang/String;
    .locals 2

    .prologue
    .line 298
    invoke-static {}, Lorg/bluros/hardware/LongTermOrbits;->getDestinationLocation()Ljava/io/File;

    move-result-object v0

    .line 299
    .local v0, "file":Ljava/io/File;
    invoke-virtual {v0}, Ljava/io/File;->getAbsolutePath()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public getLtoDownloadInterval()J
    .locals 2

    .prologue
    .line 303
    invoke-static {}, Lorg/bluros/hardware/LongTermOrbits;->getDownloadInterval()J

    move-result-wide v0

    return-wide v0
.end method

.method public getLtoSource()Ljava/lang/String;
    .locals 1

    .prologue
    .line 294
    invoke-static {}, Lorg/bluros/hardware/LongTermOrbits;->getSourceLocation()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getNumGammaControls()I
    .locals 1

    .prologue
    .line 255
    invoke-static {}, Lorg/bluros/hardware/DisplayGammaCalibration;->getNumberOfControls()I

    move-result v0

    return v0
.end method

.method public getSerialNumber()Ljava/lang/String;
    .locals 1

    .prologue
    .line 307
    invoke-static {}, Lorg/bluros/hardware/SerialNumber;->getSerialNumber()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getSupportedFeatures()I
    .locals 1

    .prologue
    .line 151
    iget v0, p0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->mSupportedFeatures:I

    return v0
.end method

.method public getUniqueDeviceId()Ljava/lang/String;
    .locals 1

    .prologue
    .line 311
    invoke-static {}, Lorg/bluros/hardware/UniqueDeviceId;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getVibratorIntensity()[I
    .locals 3

    .prologue
    .line 280
    const/4 v1, 0x5

    new-array v0, v1, [I

    .line 281
    .local v0, "vibrator":[I
    invoke-static {}, Lorg/bluros/hardware/VibratorHW;->getCurIntensity()I

    move-result v1

    const/4 v2, 0x0

    aput v1, v0, v2

    .line 282
    invoke-static {}, Lorg/bluros/hardware/VibratorHW;->getDefaultIntensity()I

    move-result v1

    const/4 v2, 0x1

    aput v1, v0, v2

    .line 283
    invoke-static {}, Lorg/bluros/hardware/VibratorHW;->getMinIntensity()I

    move-result v1

    const/4 v2, 0x2

    aput v1, v0, v2

    .line 284
    invoke-static {}, Lorg/bluros/hardware/VibratorHW;->getMaxIntensity()I

    move-result v1

    const/4 v2, 0x3

    aput v1, v0, v2

    .line 285
    invoke-static {}, Lorg/bluros/hardware/VibratorHW;->getWarningThreshold()I

    move-result v1

    const/4 v2, 0x4

    aput v1, v0, v2

    .line 286
    return-object v0
.end method

.method public isSunlightEnhancementSelfManaged()Z
    .locals 1

    .prologue
    .line 319
    invoke-static {}, Lorg/bluros/hardware/SunlightEnhancement;->isSelfManaged()Z

    move-result v0

    return v0
.end method

.method public readPersistentBytes(Ljava/lang/String;)[B
    .locals 1
    .param p1, "key"    # Ljava/lang/String;

    .prologue
    .line 343
    invoke-static {p1}, Lorg/bluros/hardware/PersistentStorage;->get(Ljava/lang/String;)[B

    move-result-object v0

    return-object v0
.end method

.method public requireAdaptiveBacklightForSunlightEnhancement()Z
    .locals 1

    .prologue
    .line 315
    invoke-static {}, Lorg/bluros/hardware/SunlightEnhancement;->isAdaptiveBacklightRequired()Z

    move-result v0

    return v0
.end method

.method public set(IZ)Z
    .locals 3
    .param p1, "feature"    # I
    .param p2, "enable"    # Z

    .prologue
    .line 181
    sparse-switch p1, :sswitch_data_0

    .line 199
    invoke-static {}, Lorg/bluros/platform/internal/CMHardwareService;->-get0()Ljava/lang/String;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "feature "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " is not a boolean feature"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 200
    const/4 v0, 0x0

    return v0

    .line 183
    :sswitch_0
    invoke-static {p2}, Lorg/bluros/hardware/AdaptiveBacklight;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 185
    :sswitch_1
    invoke-static {p2}, Lorg/bluros/hardware/ColorEnhancement;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 187
    :sswitch_2
    invoke-static {p2}, Lorg/bluros/hardware/HighTouchSensitivity;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 189
    :sswitch_3
    invoke-static {p2}, Lorg/bluros/hardware/KeyDisabler;->setActive(Z)Z

    move-result v0

    return v0

    .line 191
    :sswitch_4
    invoke-static {p2}, Lorg/bluros/hardware/SunlightEnhancement;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 193
    :sswitch_5
    invoke-static {p2}, Lorg/bluros/hardware/TapToWake;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 195
    :sswitch_6
    invoke-static {p2}, Lorg/bluros/hardware/TouchscreenHovering;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 197
    :sswitch_7
    invoke-static {p2}, Lorg/bluros/hardware/AutoContrast;->setEnabled(Z)Z

    move-result v0

    return v0

    .line 181
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_0
        0x2 -> :sswitch_1
        0x10 -> :sswitch_2
        0x20 -> :sswitch_3
        0x100 -> :sswitch_4
        0x200 -> :sswitch_5
        0x800 -> :sswitch_6
        0x1000 -> :sswitch_7
    .end sparse-switch
.end method

.method public setColorBalance(I)Z
    .locals 1
    .param p1, "value"    # I

    .prologue
    .line 359
    invoke-static {p1}, Lorg/bluros/hardware/ColorBalance;->setValue(I)Z

    move-result v0

    return v0
.end method

.method public setDisplayColorCalibration([I)Z
    .locals 1
    .param p1, "rgb"    # [I

    .prologue
    .line 251
    invoke-direct {p0, p1}, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->rgbToString([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lorg/bluros/hardware/DisplayColorCalibration;->setColors(Ljava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDisplayGammaCalibration(I[I)Z
    .locals 1
    .param p1, "idx"    # I
    .param p2, "rgb"    # [I

    .prologue
    .line 276
    invoke-direct {p0, p2}, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;->rgbToString([I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p1, v0}, Lorg/bluros/hardware/DisplayGammaCalibration;->setGamma(ILjava/lang/String;)Z

    move-result v0

    return v0
.end method

.method public setDisplayMode(Lbluros/hardware/DisplayMode;Z)Z
    .locals 1
    .param p1, "mode"    # Lbluros/hardware/DisplayMode;
    .param p2, "makeDefault"    # Z

    .prologue
    .line 335
    invoke-static {p1, p2}, Lorg/bluros/hardware/DisplayModeControl;->setMode(Lbluros/hardware/DisplayMode;Z)Z

    move-result v0

    return v0
.end method

.method public setVibratorIntensity(I)Z
    .locals 1
    .param p1, "intensity"    # I

    .prologue
    .line 290
    invoke-static {p1}, Lorg/bluros/hardware/VibratorHW;->setIntensity(I)Z

    move-result v0

    return v0
.end method

.method public writePersistentBytes(Ljava/lang/String;[B)Z
    .locals 1
    .param p1, "key"    # Ljava/lang/String;
    .param p2, "value"    # [B

    .prologue
    .line 339
    invoke-static {p1, p2}, Lorg/bluros/hardware/PersistentStorage;->set(Ljava/lang/String;[B)Z

    move-result v0

    return v0
.end method
