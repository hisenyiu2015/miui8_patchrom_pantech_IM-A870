.class public abstract Lbluros/hardware/ICMHardwareService$Stub;
.super Landroid/os/Binder;
.source "ICMHardwareService.java"

# interfaces
.implements Lbluros/hardware/ICMHardwareService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbluros/hardware/ICMHardwareService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbluros/hardware/ICMHardwareService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "bluros.hardware.ICMHardwareService"

.field static final TRANSACTION_get:I = 0x2

.field static final TRANSACTION_getColorBalance:I = 0x1d

.field static final TRANSACTION_getColorBalanceMax:I = 0x1c

.field static final TRANSACTION_getColorBalanceMin:I = 0x1b

.field static final TRANSACTION_getCurrentDisplayMode:I = 0x11

.field static final TRANSACTION_getDefaultDisplayMode:I = 0x12

.field static final TRANSACTION_getDisplayColorCalibration:I = 0x4

.field static final TRANSACTION_getDisplayGammaCalibration:I = 0x7

.field static final TRANSACTION_getDisplayModes:I = 0x10

.field static final TRANSACTION_getLtoDestination:I = 0xc

.field static final TRANSACTION_getLtoDownloadInterval:I = 0xd

.field static final TRANSACTION_getLtoSource:I = 0xb

.field static final TRANSACTION_getNumGammaControls:I = 0x6

.field static final TRANSACTION_getSerialNumber:I = 0xe

.field static final TRANSACTION_getSupportedFeatures:I = 0x1

.field static final TRANSACTION_getThermalState:I = 0x16

.field static final TRANSACTION_getUniqueDeviceId:I = 0x1a

.field static final TRANSACTION_getVibratorIntensity:I = 0x9

.field static final TRANSACTION_isSunlightEnhancementSelfManaged:I = 0x19

.field static final TRANSACTION_readPersistentBytes:I = 0x15

.field static final TRANSACTION_registerThermalListener:I = 0x17

.field static final TRANSACTION_requireAdaptiveBacklightForSunlightEnhancement:I = 0xf

.field static final TRANSACTION_set:I = 0x3

.field static final TRANSACTION_setColorBalance:I = 0x1e

.field static final TRANSACTION_setDisplayColorCalibration:I = 0x5

.field static final TRANSACTION_setDisplayGammaCalibration:I = 0x8

.field static final TRANSACTION_setDisplayMode:I = 0x13

.field static final TRANSACTION_setVibratorIntensity:I = 0xa

.field static final TRANSACTION_unRegisterThermalListener:I = 0x18

.field static final TRANSACTION_writePersistentBytes:I = 0x14


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 143
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 145
    const-string/jumbo v0, "bluros.hardware.ICMHardwareService"

    invoke-virtual {p0, p0, v0}, Lbluros/hardware/ICMHardwareService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 143
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lbluros/hardware/ICMHardwareService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 153
    if-nez p0, :cond_0

    .line 154
    return-object v1

    .line 156
    :cond_0
    const-string/jumbo v1, "bluros.hardware.ICMHardwareService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 157
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lbluros/hardware/ICMHardwareService;

    if-eqz v1, :cond_1

    .line 158
    check-cast v0, Lbluros/hardware/ICMHardwareService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 160
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lbluros/hardware/ICMHardwareService$Stub$Proxy;

    invoke-direct {v1, p0}, Lbluros/hardware/ICMHardwareService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 164
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 22
    .param p1, "code"    # I
    .param p2, "data"    # Landroid/os/Parcel;
    .param p3, "reply"    # Landroid/os/Parcel;
    .param p4, "flags"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 168
    sparse-switch p1, :sswitch_data_0

    .line 465
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v21

    return v21

    .line 172
    :sswitch_0
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p3

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 173
    const/16 v21, 0x1

    return v21

    .line 177
    :sswitch_1
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 178
    invoke-virtual/range {p0 .. p0}, Lbluros/hardware/ICMHardwareService$Stub;->getSupportedFeatures()I

    move-result v12

    .line 179
    .local v12, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 180
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 181
    const/16 v21, 0x1

    return v21

    .line 185
    .end local v12    # "_result":I
    :sswitch_2
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 187
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 188
    .local v4, "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lbluros/hardware/ICMHardwareService$Stub;->get(I)Z

    move-result v17

    .line 189
    .local v17, "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 190
    if-eqz v17, :cond_0

    const/16 v21, 0x1

    :goto_0
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 191
    const/16 v21, 0x1

    return v21

    .line 190
    :cond_0
    const/16 v21, 0x0

    goto :goto_0

    .line 195
    .end local v4    # "_arg0":I
    .end local v17    # "_result":Z
    :sswitch_3
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 197
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 199
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_1

    const/4 v9, 0x1

    .line 200
    .local v9, "_arg1":Z
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v9}, Lbluros/hardware/ICMHardwareService$Stub;->set(IZ)Z

    move-result v17

    .line 201
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 202
    if-eqz v17, :cond_2

    const/16 v21, 0x1

    :goto_2
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 203
    const/16 v21, 0x1

    return v21

    .line 199
    .end local v9    # "_arg1":Z
    .end local v17    # "_result":Z
    :cond_1
    const/4 v9, 0x0

    .restart local v9    # "_arg1":Z
    goto :goto_1

    .line 202
    .restart local v17    # "_result":Z
    :cond_2
    const/16 v21, 0x0

    goto :goto_2

    .line 207
    .end local v4    # "_arg0":I
    .end local v9    # "_arg1":Z
    .end local v17    # "_result":Z
    :sswitch_4
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 208
    invoke-virtual/range {p0 .. p0}, Lbluros/hardware/ICMHardwareService$Stub;->getDisplayColorCalibration()[I

    move-result-object v19

    .line 209
    .local v19, "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 211
    const/16 v21, 0x1

    return v21

    .line 215
    .end local v19    # "_result":[I
    :sswitch_5
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 217
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v8

    .line 218
    .local v8, "_arg0":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Lbluros/hardware/ICMHardwareService$Stub;->setDisplayColorCalibration([I)Z

    move-result v17

    .line 219
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 220
    if-eqz v17, :cond_3

    const/16 v21, 0x1

    :goto_3
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 221
    const/16 v21, 0x1

    return v21

    .line 220
    :cond_3
    const/16 v21, 0x0

    goto :goto_3

    .line 225
    .end local v8    # "_arg0":[I
    .end local v17    # "_result":Z
    :sswitch_6
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 226
    invoke-virtual/range {p0 .. p0}, Lbluros/hardware/ICMHardwareService$Stub;->getNumGammaControls()I

    move-result v12

    .line 227
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/16 v21, 0x1

    return v21

    .line 233
    .end local v12    # "_result":I
    :sswitch_7
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 236
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lbluros/hardware/ICMHardwareService$Stub;->getDisplayGammaCalibration(I)[I

    move-result-object v19

    .line 237
    .restart local v19    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 238
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 239
    const/16 v21, 0x1

    return v21

    .line 243
    .end local v4    # "_arg0":I
    .end local v19    # "_result":[I
    :sswitch_8
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 245
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 247
    .restart local v4    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v11

    .line 248
    .local v11, "_arg1":[I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Lbluros/hardware/ICMHardwareService$Stub;->setDisplayGammaCalibration(I[I)Z

    move-result v17

    .line 249
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 250
    if-eqz v17, :cond_4

    const/16 v21, 0x1

    :goto_4
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 251
    const/16 v21, 0x1

    return v21

    .line 250
    :cond_4
    const/16 v21, 0x0

    goto :goto_4

    .line 255
    .end local v4    # "_arg0":I
    .end local v11    # "_arg1":[I
    .end local v17    # "_result":Z
    :sswitch_9
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 256
    invoke-virtual/range {p0 .. p0}, Lbluros/hardware/ICMHardwareService$Stub;->getVibratorIntensity()[I

    move-result-object v19

    .line 257
    .restart local v19    # "_result":[I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    move-object/from16 v0, p3

    move-object/from16 v1, v19

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 259
    const/16 v21, 0x1

    return v21

    .line 263
    .end local v19    # "_result":[I
    :sswitch_a
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 265
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 266
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lbluros/hardware/ICMHardwareService$Stub;->setVibratorIntensity(I)Z

    move-result v17

    .line 267
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 268
    if-eqz v17, :cond_5

    const/16 v21, 0x1

    :goto_5
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 269
    const/16 v21, 0x1

    return v21

    .line 268
    :cond_5
    const/16 v21, 0x0

    goto :goto_5

    .line 273
    .end local v4    # "_arg0":I
    .end local v17    # "_result":Z
    :sswitch_b
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 274
    invoke-virtual/range {p0 .. p0}, Lbluros/hardware/ICMHardwareService$Stub;->getLtoSource()Ljava/lang/String;

    move-result-object v16

    .line 275
    .local v16, "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 276
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 277
    const/16 v21, 0x1

    return v21

    .line 281
    .end local v16    # "_result":Ljava/lang/String;
    :sswitch_c
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 282
    invoke-virtual/range {p0 .. p0}, Lbluros/hardware/ICMHardwareService$Stub;->getLtoDestination()Ljava/lang/String;

    move-result-object v16

    .line 283
    .restart local v16    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 284
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 285
    const/16 v21, 0x1

    return v21

    .line 289
    .end local v16    # "_result":Ljava/lang/String;
    :sswitch_d
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 290
    invoke-virtual/range {p0 .. p0}, Lbluros/hardware/ICMHardwareService$Stub;->getLtoDownloadInterval()J

    move-result-wide v14

    .line 291
    .local v14, "_result":J
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    move-object/from16 v0, p3

    invoke-virtual {v0, v14, v15}, Landroid/os/Parcel;->writeLong(J)V

    .line 293
    const/16 v21, 0x1

    return v21

    .line 297
    .end local v14    # "_result":J
    :sswitch_e
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 298
    invoke-virtual/range {p0 .. p0}, Lbluros/hardware/ICMHardwareService$Stub;->getSerialNumber()Ljava/lang/String;

    move-result-object v16

    .line 299
    .restart local v16    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 300
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 301
    const/16 v21, 0x1

    return v21

    .line 305
    .end local v16    # "_result":Ljava/lang/String;
    :sswitch_f
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 306
    invoke-virtual/range {p0 .. p0}, Lbluros/hardware/ICMHardwareService$Stub;->requireAdaptiveBacklightForSunlightEnhancement()Z

    move-result v17

    .line 307
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 308
    if-eqz v17, :cond_6

    const/16 v21, 0x1

    :goto_6
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 309
    const/16 v21, 0x1

    return v21

    .line 308
    :cond_6
    const/16 v21, 0x0

    goto :goto_6

    .line 313
    .end local v17    # "_result":Z
    :sswitch_10
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p0 .. p0}, Lbluros/hardware/ICMHardwareService$Stub;->getDisplayModes()[Lbluros/hardware/DisplayMode;

    move-result-object v20

    .line 315
    .local v20, "_result":[Lbluros/hardware/DisplayMode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 316
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move-object/from16 v1, v20

    move/from16 v2, v21

    invoke-virtual {v0, v1, v2}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 317
    const/16 v21, 0x1

    return v21

    .line 321
    .end local v20    # "_result":[Lbluros/hardware/DisplayMode;
    :sswitch_11
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 322
    invoke-virtual/range {p0 .. p0}, Lbluros/hardware/ICMHardwareService$Stub;->getCurrentDisplayMode()Lbluros/hardware/DisplayMode;

    move-result-object v13

    .line 323
    .local v13, "_result":Lbluros/hardware/DisplayMode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 324
    if-eqz v13, :cond_7

    .line 325
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Lbluros/hardware/DisplayMode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 331
    :goto_7
    const/16 v21, 0x1

    return v21

    .line 329
    :cond_7
    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_7

    .line 335
    .end local v13    # "_result":Lbluros/hardware/DisplayMode;
    :sswitch_12
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 336
    invoke-virtual/range {p0 .. p0}, Lbluros/hardware/ICMHardwareService$Stub;->getDefaultDisplayMode()Lbluros/hardware/DisplayMode;

    move-result-object v13

    .line 337
    .restart local v13    # "_result":Lbluros/hardware/DisplayMode;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 338
    if-eqz v13, :cond_8

    .line 339
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 340
    const/16 v21, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v13, v0, v1}, Lbluros/hardware/DisplayMode;->writeToParcel(Landroid/os/Parcel;I)V

    .line 345
    :goto_8
    const/16 v21, 0x1

    return v21

    .line 343
    :cond_8
    const/16 v21, 0x0

    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_8

    .line 349
    .end local v13    # "_result":Lbluros/hardware/DisplayMode;
    :sswitch_13
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 351
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_9

    .line 352
    sget-object v21, Lbluros/hardware/DisplayMode;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v21

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Lbluros/hardware/DisplayMode;

    .line 358
    :goto_9
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v21

    if-eqz v21, :cond_a

    const/4 v9, 0x1

    .line 359
    .restart local v9    # "_arg1":Z
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v9}, Lbluros/hardware/ICMHardwareService$Stub;->setDisplayMode(Lbluros/hardware/DisplayMode;Z)Z

    move-result v17

    .line 360
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    if-eqz v17, :cond_b

    const/16 v21, 0x1

    :goto_b
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    const/16 v21, 0x1

    return v21

    .line 355
    .end local v9    # "_arg1":Z
    .end local v17    # "_result":Z
    :cond_9
    const/4 v5, 0x0

    .local v5, "_arg0":Lbluros/hardware/DisplayMode;
    goto :goto_9

    .line 358
    .end local v5    # "_arg0":Lbluros/hardware/DisplayMode;
    :cond_a
    const/4 v9, 0x0

    .restart local v9    # "_arg1":Z
    goto :goto_a

    .line 361
    .restart local v17    # "_result":Z
    :cond_b
    const/16 v21, 0x0

    goto :goto_b

    .line 366
    .end local v9    # "_arg1":Z
    .end local v17    # "_result":Z
    :sswitch_14
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 370
    .local v7, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createByteArray()[B

    move-result-object v10

    .line 371
    .local v10, "_arg1":[B
    move-object/from16 v0, p0

    invoke-virtual {v0, v7, v10}, Lbluros/hardware/ICMHardwareService$Stub;->writePersistentBytes(Ljava/lang/String;[B)Z

    move-result v17

    .line 372
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 373
    if-eqz v17, :cond_c

    const/16 v21, 0x1

    :goto_c
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 374
    const/16 v21, 0x1

    return v21

    .line 373
    :cond_c
    const/16 v21, 0x0

    goto :goto_c

    .line 378
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v10    # "_arg1":[B
    .end local v17    # "_result":Z
    :sswitch_15
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 380
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v7

    .line 381
    .restart local v7    # "_arg0":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Lbluros/hardware/ICMHardwareService$Stub;->readPersistentBytes(Ljava/lang/String;)[B

    move-result-object v18

    .line 382
    .local v18, "_result":[B
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 383
    move-object/from16 v0, p3

    move-object/from16 v1, v18

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeByteArray([B)V

    .line 384
    const/16 v21, 0x1

    return v21

    .line 388
    .end local v7    # "_arg0":Ljava/lang/String;
    .end local v18    # "_result":[B
    :sswitch_16
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p0 .. p0}, Lbluros/hardware/ICMHardwareService$Stub;->getThermalState()I

    move-result v12

    .line 390
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 391
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 392
    const/16 v21, 0x1

    return v21

    .line 396
    .end local v12    # "_result":I
    :sswitch_17
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 398
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lbluros/hardware/IThermalListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lbluros/hardware/IThermalListenerCallback;

    move-result-object v6

    .line 399
    .local v6, "_arg0":Lbluros/hardware/IThermalListenerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lbluros/hardware/ICMHardwareService$Stub;->registerThermalListener(Lbluros/hardware/IThermalListenerCallback;)Z

    move-result v17

    .line 400
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 401
    if-eqz v17, :cond_d

    const/16 v21, 0x1

    :goto_d
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 402
    const/16 v21, 0x1

    return v21

    .line 401
    :cond_d
    const/16 v21, 0x0

    goto :goto_d

    .line 406
    .end local v6    # "_arg0":Lbluros/hardware/IThermalListenerCallback;
    .end local v17    # "_result":Z
    :sswitch_18
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 408
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v21

    invoke-static/range {v21 .. v21}, Lbluros/hardware/IThermalListenerCallback$Stub;->asInterface(Landroid/os/IBinder;)Lbluros/hardware/IThermalListenerCallback;

    move-result-object v6

    .line 409
    .restart local v6    # "_arg0":Lbluros/hardware/IThermalListenerCallback;
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Lbluros/hardware/ICMHardwareService$Stub;->unRegisterThermalListener(Lbluros/hardware/IThermalListenerCallback;)Z

    move-result v17

    .line 410
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 411
    if-eqz v17, :cond_e

    const/16 v21, 0x1

    :goto_e
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 412
    const/16 v21, 0x1

    return v21

    .line 411
    :cond_e
    const/16 v21, 0x0

    goto :goto_e

    .line 416
    .end local v6    # "_arg0":Lbluros/hardware/IThermalListenerCallback;
    .end local v17    # "_result":Z
    :sswitch_19
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 417
    invoke-virtual/range {p0 .. p0}, Lbluros/hardware/ICMHardwareService$Stub;->isSunlightEnhancementSelfManaged()Z

    move-result v17

    .line 418
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 419
    if-eqz v17, :cond_f

    const/16 v21, 0x1

    :goto_f
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 420
    const/16 v21, 0x1

    return v21

    .line 419
    :cond_f
    const/16 v21, 0x0

    goto :goto_f

    .line 424
    .end local v17    # "_result":Z
    :sswitch_1a
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 425
    invoke-virtual/range {p0 .. p0}, Lbluros/hardware/ICMHardwareService$Stub;->getUniqueDeviceId()Ljava/lang/String;

    move-result-object v16

    .line 426
    .restart local v16    # "_result":Ljava/lang/String;
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 427
    move-object/from16 v0, p3

    move-object/from16 v1, v16

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 428
    const/16 v21, 0x1

    return v21

    .line 432
    .end local v16    # "_result":Ljava/lang/String;
    :sswitch_1b
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 433
    invoke-virtual/range {p0 .. p0}, Lbluros/hardware/ICMHardwareService$Stub;->getColorBalanceMin()I

    move-result v12

    .line 434
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 435
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 436
    const/16 v21, 0x1

    return v21

    .line 440
    .end local v12    # "_result":I
    :sswitch_1c
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p0 .. p0}, Lbluros/hardware/ICMHardwareService$Stub;->getColorBalanceMax()I

    move-result v12

    .line 442
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 443
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 444
    const/16 v21, 0x1

    return v21

    .line 448
    .end local v12    # "_result":I
    :sswitch_1d
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 449
    invoke-virtual/range {p0 .. p0}, Lbluros/hardware/ICMHardwareService$Stub;->getColorBalance()I

    move-result v12

    .line 450
    .restart local v12    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 451
    move-object/from16 v0, p3

    invoke-virtual {v0, v12}, Landroid/os/Parcel;->writeInt(I)V

    .line 452
    const/16 v21, 0x1

    return v21

    .line 456
    .end local v12    # "_result":I
    :sswitch_1e
    const-string/jumbo v21, "bluros.hardware.ICMHardwareService"

    move-object/from16 v0, p2

    move-object/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 458
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v4

    .line 459
    .restart local v4    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Lbluros/hardware/ICMHardwareService$Stub;->setColorBalance(I)Z

    move-result v17

    .line 460
    .restart local v17    # "_result":Z
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 461
    if-eqz v17, :cond_10

    const/16 v21, 0x1

    :goto_10
    move-object/from16 v0, p3

    move/from16 v1, v21

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 462
    const/16 v21, 0x1

    return v21

    .line 461
    :cond_10
    const/16 v21, 0x0

    goto :goto_10

    .line 168
    nop

    :sswitch_data_0
    .sparse-switch
        0x1 -> :sswitch_1
        0x2 -> :sswitch_2
        0x3 -> :sswitch_3
        0x4 -> :sswitch_4
        0x5 -> :sswitch_5
        0x6 -> :sswitch_6
        0x7 -> :sswitch_7
        0x8 -> :sswitch_8
        0x9 -> :sswitch_9
        0xa -> :sswitch_a
        0xb -> :sswitch_b
        0xc -> :sswitch_c
        0xd -> :sswitch_d
        0xe -> :sswitch_e
        0xf -> :sswitch_f
        0x10 -> :sswitch_10
        0x11 -> :sswitch_11
        0x12 -> :sswitch_12
        0x13 -> :sswitch_13
        0x14 -> :sswitch_14
        0x15 -> :sswitch_15
        0x16 -> :sswitch_16
        0x17 -> :sswitch_17
        0x18 -> :sswitch_18
        0x19 -> :sswitch_19
        0x1a -> :sswitch_1a
        0x1b -> :sswitch_1b
        0x1c -> :sswitch_1c
        0x1d -> :sswitch_1d
        0x1e -> :sswitch_1e
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
