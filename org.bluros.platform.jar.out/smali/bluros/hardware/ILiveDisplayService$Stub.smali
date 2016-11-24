.class public abstract Lbluros/hardware/ILiveDisplayService$Stub;
.super Landroid/os/Binder;
.source "ILiveDisplayService.java"

# interfaces
.implements Lbluros/hardware/ILiveDisplayService;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbluros/hardware/ILiveDisplayService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbluros/hardware/ILiveDisplayService$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "bluros.hardware.ILiveDisplayService"

.field static final TRANSACTION_getColorAdjustment:I = 0x4

.field static final TRANSACTION_getColorTemperature:I = 0x10

.field static final TRANSACTION_getConfig_0:I = 0x1

.field static final TRANSACTION_getDayColorTemperature:I = 0xc

.field static final TRANSACTION_getMode:I = 0x2

.field static final TRANSACTION_getNightColorTemperature:I = 0xe

.field static final TRANSACTION_isAutoContrastEnabled:I = 0x6

.field static final TRANSACTION_isAutomaticOutdoorModeEnabled:I = 0x11

.field static final TRANSACTION_isCABCEnabled:I = 0x8

.field static final TRANSACTION_isColorEnhancementEnabled:I = 0xa

.field static final TRANSACTION_setAutoContrastEnabled:I = 0x7

.field static final TRANSACTION_setAutomaticOutdoorModeEnabled:I = 0x12

.field static final TRANSACTION_setCABCEnabled:I = 0x9

.field static final TRANSACTION_setColorAdjustment:I = 0x5

.field static final TRANSACTION_setColorEnhancementEnabled:I = 0xb

.field static final TRANSACTION_setDayColorTemperature:I = 0xd

.field static final TRANSACTION_setMode:I = 0x3

.field static final TRANSACTION_setNightColorTemperature:I = 0xf


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 95
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 97
    const-string/jumbo v0, "bluros.hardware.ILiveDisplayService"

    invoke-virtual {p0, p0, v0}, Lbluros/hardware/ILiveDisplayService$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 95
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Lbluros/hardware/ILiveDisplayService;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 105
    if-nez p0, :cond_0

    .line 106
    return-object v1

    .line 108
    :cond_0
    const-string/jumbo v1, "bluros.hardware.ILiveDisplayService"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 109
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Lbluros/hardware/ILiveDisplayService;

    if-eqz v1, :cond_1

    .line 110
    check-cast v0, Lbluros/hardware/ILiveDisplayService;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 112
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Lbluros/hardware/ILiveDisplayService$Stub$Proxy;

    invoke-direct {v1, p0}, Lbluros/hardware/ILiveDisplayService$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 116
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 10
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
    const/4 v7, 0x0

    const/4 v8, 0x1

    .line 120
    sparse-switch p1, :sswitch_data_0

    .line 294
    invoke-super {p0, p1, p2, p3, p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v7

    return v7

    .line 124
    :sswitch_0
    const-string/jumbo v7, "bluros.hardware.ILiveDisplayService"

    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 125
    return v8

    .line 129
    :sswitch_1
    const-string/jumbo v9, "bluros.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 130
    invoke-virtual {p0}, Lbluros/hardware/ILiveDisplayService$Stub;->getConfig()Lbluros/hardware/LiveDisplayConfig;

    move-result-object v4

    .line 131
    .local v4, "_result":Lbluros/hardware/LiveDisplayConfig;
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 132
    if-eqz v4, :cond_0

    .line 133
    invoke-virtual {p3, v8}, Landroid/os/Parcel;->writeInt(I)V

    .line 134
    invoke-virtual {v4, p3, v8}, Lbluros/hardware/LiveDisplayConfig;->writeToParcel(Landroid/os/Parcel;I)V

    .line 139
    :goto_0
    return v8

    .line 137
    :cond_0
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    goto :goto_0

    .line 143
    .end local v4    # "_result":Lbluros/hardware/LiveDisplayConfig;
    :sswitch_2
    const-string/jumbo v7, "bluros.hardware.ILiveDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 144
    invoke-virtual {p0}, Lbluros/hardware/ILiveDisplayService$Stub;->getMode()I

    move-result v3

    .line 145
    .local v3, "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 146
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 147
    return v8

    .line 151
    .end local v3    # "_result":I
    :sswitch_3
    const-string/jumbo v9, "bluros.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 154
    .local v0, "_arg0":I
    invoke-virtual {p0, v0}, Lbluros/hardware/ILiveDisplayService$Stub;->setMode(I)Z

    move-result v5

    .line 155
    .local v5, "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 156
    if-eqz v5, :cond_1

    move v7, v8

    :cond_1
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 157
    return v8

    .line 161
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_4
    const-string/jumbo v7, "bluros.hardware.ILiveDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 162
    invoke-virtual {p0}, Lbluros/hardware/ILiveDisplayService$Stub;->getColorAdjustment()[F

    move-result-object v6

    .line 163
    .local v6, "_result":[F
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 164
    invoke-virtual {p3, v6}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 165
    return v8

    .line 169
    .end local v6    # "_result":[F
    :sswitch_5
    const-string/jumbo v9, "bluros.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 171
    invoke-virtual {p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v2

    .line 172
    .local v2, "_arg0":[F
    invoke-virtual {p0, v2}, Lbluros/hardware/ILiveDisplayService$Stub;->setColorAdjustment([F)Z

    move-result v5

    .line 173
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 174
    if-eqz v5, :cond_2

    move v7, v8

    :cond_2
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 175
    return v8

    .line 179
    .end local v2    # "_arg0":[F
    .end local v5    # "_result":Z
    :sswitch_6
    const-string/jumbo v9, "bluros.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 180
    invoke-virtual {p0}, Lbluros/hardware/ILiveDisplayService$Stub;->isAutoContrastEnabled()Z

    move-result v5

    .line 181
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 182
    if-eqz v5, :cond_3

    move v7, v8

    :cond_3
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 183
    return v8

    .line 187
    .end local v5    # "_result":Z
    :sswitch_7
    const-string/jumbo v9, "bluros.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 189
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_5

    const/4 v1, 0x1

    .line 190
    .local v1, "_arg0":Z
    :goto_1
    invoke-virtual {p0, v1}, Lbluros/hardware/ILiveDisplayService$Stub;->setAutoContrastEnabled(Z)Z

    move-result v5

    .line 191
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 192
    if-eqz v5, :cond_4

    move v7, v8

    :cond_4
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 193
    return v8

    .line 189
    .end local v1    # "_arg0":Z
    .end local v5    # "_result":Z
    :cond_5
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_1

    .line 197
    .end local v1    # "_arg0":Z
    :sswitch_8
    const-string/jumbo v9, "bluros.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 198
    invoke-virtual {p0}, Lbluros/hardware/ILiveDisplayService$Stub;->isCABCEnabled()Z

    move-result v5

    .line 199
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 200
    if-eqz v5, :cond_6

    move v7, v8

    :cond_6
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 201
    return v8

    .line 205
    .end local v5    # "_result":Z
    :sswitch_9
    const-string/jumbo v9, "bluros.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 207
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_8

    const/4 v1, 0x1

    .line 208
    .restart local v1    # "_arg0":Z
    :goto_2
    invoke-virtual {p0, v1}, Lbluros/hardware/ILiveDisplayService$Stub;->setCABCEnabled(Z)Z

    move-result v5

    .line 209
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 210
    if-eqz v5, :cond_7

    move v7, v8

    :cond_7
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 211
    return v8

    .line 207
    .end local v1    # "_arg0":Z
    .end local v5    # "_result":Z
    :cond_8
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_2

    .line 215
    .end local v1    # "_arg0":Z
    :sswitch_a
    const-string/jumbo v9, "bluros.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 216
    invoke-virtual {p0}, Lbluros/hardware/ILiveDisplayService$Stub;->isColorEnhancementEnabled()Z

    move-result v5

    .line 217
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 218
    if-eqz v5, :cond_9

    move v7, v8

    :cond_9
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 219
    return v8

    .line 223
    .end local v5    # "_result":Z
    :sswitch_b
    const-string/jumbo v9, "bluros.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 225
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_b

    const/4 v1, 0x1

    .line 226
    .restart local v1    # "_arg0":Z
    :goto_3
    invoke-virtual {p0, v1}, Lbluros/hardware/ILiveDisplayService$Stub;->setColorEnhancementEnabled(Z)Z

    move-result v5

    .line 227
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    if-eqz v5, :cond_a

    move v7, v8

    :cond_a
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    return v8

    .line 225
    .end local v1    # "_arg0":Z
    .end local v5    # "_result":Z
    :cond_b
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_3

    .line 233
    .end local v1    # "_arg0":Z
    :sswitch_c
    const-string/jumbo v7, "bluros.hardware.ILiveDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 234
    invoke-virtual {p0}, Lbluros/hardware/ILiveDisplayService$Stub;->getDayColorTemperature()I

    move-result v3

    .line 235
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 236
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 237
    return v8

    .line 241
    .end local v3    # "_result":I
    :sswitch_d
    const-string/jumbo v9, "bluros.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 243
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 244
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lbluros/hardware/ILiveDisplayService$Stub;->setDayColorTemperature(I)Z

    move-result v5

    .line 245
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 246
    if-eqz v5, :cond_c

    move v7, v8

    :cond_c
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 247
    return v8

    .line 251
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_e
    const-string/jumbo v7, "bluros.hardware.ILiveDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 252
    invoke-virtual {p0}, Lbluros/hardware/ILiveDisplayService$Stub;->getNightColorTemperature()I

    move-result v3

    .line 253
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 254
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 255
    return v8

    .line 259
    .end local v3    # "_result":I
    :sswitch_f
    const-string/jumbo v9, "bluros.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 261
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v0

    .line 262
    .restart local v0    # "_arg0":I
    invoke-virtual {p0, v0}, Lbluros/hardware/ILiveDisplayService$Stub;->setNightColorTemperature(I)Z

    move-result v5

    .line 263
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 264
    if-eqz v5, :cond_d

    move v7, v8

    :cond_d
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 265
    return v8

    .line 269
    .end local v0    # "_arg0":I
    .end local v5    # "_result":Z
    :sswitch_10
    const-string/jumbo v7, "bluros.hardware.ILiveDisplayService"

    invoke-virtual {p2, v7}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 270
    invoke-virtual {p0}, Lbluros/hardware/ILiveDisplayService$Stub;->getColorTemperature()I

    move-result v3

    .line 271
    .restart local v3    # "_result":I
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 272
    invoke-virtual {p3, v3}, Landroid/os/Parcel;->writeInt(I)V

    .line 273
    return v8

    .line 277
    .end local v3    # "_result":I
    :sswitch_11
    const-string/jumbo v9, "bluros.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 278
    invoke-virtual {p0}, Lbluros/hardware/ILiveDisplayService$Stub;->isAutomaticOutdoorModeEnabled()Z

    move-result v5

    .line 279
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 280
    if-eqz v5, :cond_e

    move v7, v8

    :cond_e
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 281
    return v8

    .line 285
    .end local v5    # "_result":Z
    :sswitch_12
    const-string/jumbo v9, "bluros.hardware.ILiveDisplayService"

    invoke-virtual {p2, v9}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 287
    invoke-virtual {p2}, Landroid/os/Parcel;->readInt()I

    move-result v9

    if-eqz v9, :cond_10

    const/4 v1, 0x1

    .line 288
    .restart local v1    # "_arg0":Z
    :goto_4
    invoke-virtual {p0, v1}, Lbluros/hardware/ILiveDisplayService$Stub;->setAutomaticOutdoorModeEnabled(Z)Z

    move-result v5

    .line 289
    .restart local v5    # "_result":Z
    invoke-virtual {p3}, Landroid/os/Parcel;->writeNoException()V

    .line 290
    if-eqz v5, :cond_f

    move v7, v8

    :cond_f
    invoke-virtual {p3, v7}, Landroid/os/Parcel;->writeInt(I)V

    .line 291
    return v8

    .line 287
    .end local v1    # "_arg0":Z
    .end local v5    # "_result":Z
    :cond_10
    const/4 v1, 0x0

    .restart local v1    # "_arg0":Z
    goto :goto_4

    .line 120
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
        0x5f4e5446 -> :sswitch_0
    .end sparse-switch
.end method
