.class public abstract Landroid/dolby/IDs$Stub;
.super Landroid/os/Binder;
.source "IDs.java"

# interfaces
.implements Landroid/dolby/IDs;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/dolby/IDs;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x409
    name = "Stub"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/dolby/IDs$Stub$Proxy;
    }
.end annotation


# static fields
.field private static final DESCRIPTOR:Ljava/lang/String; = "android.dolby.IDs"

.field static final TRANSACTION_getBandCount:I = 0x6

.field static final TRANSACTION_getBandFrequencies:I = 0x7

.field static final TRANSACTION_getDsApParam:I = 0x17

.field static final TRANSACTION_getDsApParamLength:I = 0x18

.field static final TRANSACTION_getDsApVersion:I = 0xe

.field static final TRANSACTION_getDsOn:I = 0x2

.field static final TRANSACTION_getDsVersion:I = 0x10

.field static final TRANSACTION_getGeq:I = 0x15

.field static final TRANSACTION_getIeqPreset:I = 0x12

.field static final TRANSACTION_getMonoSpeaker:I = 0xf

.field static final TRANSACTION_getProfileCount:I = 0x4

.field static final TRANSACTION_getProfileModified:I = 0x13

.field static final TRANSACTION_getProfileNames:I = 0x5

.field static final TRANSACTION_getProfileSettings:I = 0xb

.field static final TRANSACTION_getSelectedProfile:I = 0x9

.field static final TRANSACTION_registerCallback:I = 0x1b

.field static final TRANSACTION_registerDsApParamEvents:I = 0x19

.field static final TRANSACTION_registerVisualizerData:I = 0x1d

.field static final TRANSACTION_resetProfile:I = 0xc

.field static final TRANSACTION_setDsApParam:I = 0x16

.field static final TRANSACTION_setDsOn:I = 0x1

.field static final TRANSACTION_setGeq:I = 0x14

.field static final TRANSACTION_setIeqPreset:I = 0x11

.field static final TRANSACTION_setNonPersistentMode:I = 0x3

.field static final TRANSACTION_setProfileName:I = 0xd

.field static final TRANSACTION_setProfileSettings:I = 0xa

.field static final TRANSACTION_setSelectedProfile:I = 0x8

.field static final TRANSACTION_unregisterCallback:I = 0x1c

.field static final TRANSACTION_unregisterDsApParamEvents:I = 0x1a

.field static final TRANSACTION_unregisterVisualizerData:I = 0x1e


# direct methods
.method public constructor <init>()V
    .locals 1

    .prologue
    .line 13
    invoke-direct {p0}, Landroid/os/Binder;-><init>()V

    .line 15
    const-string/jumbo v0, "android.dolby.IDs"

    invoke-virtual {p0, p0, v0}, Landroid/dolby/IDs$Stub;->attachInterface(Landroid/os/IInterface;Ljava/lang/String;)V

    .line 13
    return-void
.end method

.method public static asInterface(Landroid/os/IBinder;)Landroid/dolby/IDs;
    .locals 2
    .param p0, "obj"    # Landroid/os/IBinder;

    .prologue
    const/4 v1, 0x0

    .line 23
    if-nez p0, :cond_0

    .line 24
    return-object v1

    .line 26
    :cond_0
    const-string/jumbo v1, "android.dolby.IDs"

    invoke-interface {p0, v1}, Landroid/os/IBinder;->queryLocalInterface(Ljava/lang/String;)Landroid/os/IInterface;

    move-result-object v0

    .line 27
    .local v0, "iin":Landroid/os/IInterface;
    if-eqz v0, :cond_1

    instance-of v1, v0, Landroid/dolby/IDs;

    if-eqz v1, :cond_1

    .line 28
    check-cast v0, Landroid/dolby/IDs;

    .end local v0    # "iin":Landroid/os/IInterface;
    return-object v0

    .line 30
    .restart local v0    # "iin":Landroid/os/IInterface;
    :cond_1
    new-instance v1, Landroid/dolby/IDs$Stub$Proxy;

    invoke-direct {v1, p0}, Landroid/dolby/IDs$Stub$Proxy;-><init>(Landroid/os/IBinder;)V

    return-object v1
.end method


# virtual methods
.method public asBinder()Landroid/os/IBinder;
    .locals 0

    .prologue
    .line 34
    return-object p0
.end method

.method public onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z
    .locals 26
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
    .line 38
    sparse-switch p1, :sswitch_data_0

    .line 494
    invoke-super/range {p0 .. p4}, Landroid/os/Binder;->onTransact(ILandroid/os/Parcel;Landroid/os/Parcel;I)Z

    move-result v25

    return v25

    .line 42
    :sswitch_0
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p3

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeString(Ljava/lang/String;)V

    .line 43
    const/16 v25, 0x1

    return v25

    .line 47
    :sswitch_1
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 49
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 51
    .local v3, "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_0

    const/4 v13, 0x1

    .line 52
    .local v13, "_arg1":Z
    :goto_0
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v13}, Landroid/dolby/IDs$Stub;->setDsOn(IZ)I

    move-result v24

    .line 53
    .local v24, "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 54
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 55
    const/16 v25, 0x1

    return v25

    .line 51
    .end local v13    # "_arg1":Z
    .end local v24    # "_result":I
    :cond_0
    const/4 v13, 0x0

    .restart local v13    # "_arg1":Z
    goto :goto_0

    .line 59
    .end local v3    # "_arg0":I
    .end local v13    # "_arg1":Z
    :sswitch_2
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 61
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 62
    .local v10, "_arg0_length":I
    if-gez v10, :cond_1

    .line 63
    const/4 v9, 0x0

    .line 68
    :goto_1
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/dolby/IDs$Stub;->getDsOn([Z)I

    move-result v24

    .line 69
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 70
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 71
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 72
    const/16 v25, 0x1

    return v25

    .line 66
    .end local v24    # "_result":I
    :cond_1
    new-array v9, v10, [Z

    .local v9, "_arg0":[Z
    goto :goto_1

    .line 76
    .end local v9    # "_arg0":[Z
    .end local v10    # "_arg0_length":I
    :sswitch_3
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 78
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_2

    const/4 v6, 0x1

    .line 79
    .local v6, "_arg0":Z
    :goto_2
    move-object/from16 v0, p0

    invoke-virtual {v0, v6}, Landroid/dolby/IDs$Stub;->setNonPersistentMode(Z)I

    move-result v24

    .line 80
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 81
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 82
    const/16 v25, 0x1

    return v25

    .line 78
    .end local v6    # "_arg0":Z
    .end local v24    # "_result":I
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "_arg0":Z
    goto :goto_2

    .line 86
    .end local v6    # "_arg0":Z
    :sswitch_4
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 88
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 89
    .restart local v10    # "_arg0_length":I
    if-gez v10, :cond_3

    .line 90
    const/4 v7, 0x0

    .line 95
    :goto_3
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/dolby/IDs$Stub;->getProfileCount([I)I

    move-result v24

    .line 96
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 97
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 98
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 99
    const/16 v25, 0x1

    return v25

    .line 93
    .end local v24    # "_result":I
    :cond_3
    new-array v7, v10, [I

    .local v7, "_arg0":[I
    goto :goto_3

    .line 103
    .end local v7    # "_arg0":[I
    .end local v10    # "_arg0_length":I
    :sswitch_5
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 105
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 106
    .restart local v10    # "_arg0_length":I
    if-gez v10, :cond_4

    .line 107
    const/4 v8, 0x0

    .line 112
    :goto_4
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/dolby/IDs$Stub;->getProfileNames([Ljava/lang/String;)I

    move-result v24

    .line 113
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 114
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 115
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 116
    const/16 v25, 0x1

    return v25

    .line 110
    .end local v24    # "_result":I
    :cond_4
    new-array v8, v10, [Ljava/lang/String;

    .local v8, "_arg0":[Ljava/lang/String;
    goto :goto_4

    .line 120
    .end local v8    # "_arg0":[Ljava/lang/String;
    .end local v10    # "_arg0_length":I
    :sswitch_6
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 122
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 123
    .restart local v10    # "_arg0_length":I
    if-gez v10, :cond_5

    .line 124
    const/4 v7, 0x0

    .line 129
    :goto_5
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/dolby/IDs$Stub;->getBandCount([I)I

    move-result v24

    .line 130
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 131
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 132
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 133
    const/16 v25, 0x1

    return v25

    .line 127
    .end local v24    # "_result":I
    :cond_5
    new-array v7, v10, [I

    .restart local v7    # "_arg0":[I
    goto :goto_5

    .line 137
    .end local v7    # "_arg0":[I
    .end local v10    # "_arg0_length":I
    :sswitch_7
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 139
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 140
    .restart local v10    # "_arg0_length":I
    if-gez v10, :cond_6

    .line 141
    const/4 v7, 0x0

    .line 146
    :goto_6
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/dolby/IDs$Stub;->getBandFrequencies([I)I

    move-result v24

    .line 147
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 148
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 149
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 150
    const/16 v25, 0x1

    return v25

    .line 144
    .end local v24    # "_result":I
    :cond_6
    new-array v7, v10, [I

    .restart local v7    # "_arg0":[I
    goto :goto_6

    .line 154
    .end local v7    # "_arg0":[I
    .end local v10    # "_arg0_length":I
    :sswitch_8
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 156
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 158
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 159
    .local v11, "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/dolby/IDs$Stub;->setSelectedProfile(II)I

    move-result v24

    .line 160
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 161
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    const/16 v25, 0x1

    return v25

    .line 166
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":I
    .end local v24    # "_result":I
    :sswitch_9
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 168
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 169
    .restart local v10    # "_arg0_length":I
    if-gez v10, :cond_7

    .line 170
    const/4 v7, 0x0

    .line 175
    :goto_7
    move-object/from16 v0, p0

    invoke-virtual {v0, v7}, Landroid/dolby/IDs$Stub;->getSelectedProfile([I)I

    move-result v24

    .line 176
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 177
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 178
    move-object/from16 v0, p3

    invoke-virtual {v0, v7}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 179
    const/16 v25, 0x1

    return v25

    .line 173
    .end local v24    # "_result":I
    :cond_7
    new-array v7, v10, [I

    .restart local v7    # "_arg0":[I
    goto :goto_7

    .line 183
    .end local v7    # "_arg0":[I
    .end local v10    # "_arg0_length":I
    :sswitch_a
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 185
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 187
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 189
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v25

    if-eqz v25, :cond_8

    .line 190
    sget-object v25, Landroid/dolby/DsClientSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    move-object/from16 v0, v25

    move-object/from16 v1, p2

    invoke-interface {v0, v1}, Landroid/os/Parcelable$Creator;->createFromParcel(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v18

    check-cast v18, Landroid/dolby/DsClientSettings;

    .line 195
    :goto_8
    move-object/from16 v0, p0

    move-object/from16 v1, v18

    invoke-virtual {v0, v3, v11, v1}, Landroid/dolby/IDs$Stub;->setProfileSettings(IILandroid/dolby/DsClientSettings;)I

    move-result v24

    .line 196
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 197
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 198
    const/16 v25, 0x1

    return v25

    .line 193
    .end local v24    # "_result":I
    :cond_8
    const/16 v18, 0x0

    .local v18, "_arg2":Landroid/dolby/DsClientSettings;
    goto :goto_8

    .line 202
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":I
    .end local v18    # "_arg2":Landroid/dolby/DsClientSettings;
    :sswitch_b
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 204
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 206
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 207
    .local v16, "_arg1_length":I
    if-gez v16, :cond_9

    .line 208
    const/4 v15, 0x0

    .line 213
    :goto_9
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v15}, Landroid/dolby/IDs$Stub;->getProfileSettings(I[Landroid/dolby/DsClientSettings;)I

    move-result v24

    .line 214
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 215
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 216
    const/16 v25, 0x1

    move-object/from16 v0, p3

    move/from16 v1, v25

    invoke-virtual {v0, v15, v1}, Landroid/os/Parcel;->writeTypedArray([Landroid/os/Parcelable;I)V

    .line 217
    const/16 v25, 0x1

    return v25

    .line 211
    .end local v24    # "_result":I
    :cond_9
    move/from16 v0, v16

    new-array v15, v0, [Landroid/dolby/DsClientSettings;

    .local v15, "_arg1":[Landroid/dolby/DsClientSettings;
    goto :goto_9

    .line 221
    .end local v3    # "_arg0":I
    .end local v15    # "_arg1":[Landroid/dolby/DsClientSettings;
    .end local v16    # "_arg1_length":I
    :sswitch_c
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 223
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 225
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 226
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v11}, Landroid/dolby/IDs$Stub;->resetProfile(II)I

    move-result v24

    .line 227
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 228
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 229
    const/16 v25, 0x1

    return v25

    .line 233
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":I
    .end local v24    # "_result":I
    :sswitch_d
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 235
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 237
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 239
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v19

    .line 240
    .local v19, "_arg2":Ljava/lang/String;
    move-object/from16 v0, p0

    move-object/from16 v1, v19

    invoke-virtual {v0, v3, v11, v1}, Landroid/dolby/IDs$Stub;->setProfileName(IILjava/lang/String;)I

    move-result v24

    .line 241
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 242
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 243
    const/16 v25, 0x1

    return v25

    .line 247
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":I
    .end local v19    # "_arg2":Ljava/lang/String;
    .end local v24    # "_result":I
    :sswitch_e
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 249
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 250
    .restart local v10    # "_arg0_length":I
    if-gez v10, :cond_a

    .line 251
    const/4 v8, 0x0

    .line 256
    :goto_a
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/dolby/IDs$Stub;->getDsApVersion([Ljava/lang/String;)I

    move-result v24

    .line 257
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 258
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 259
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 260
    const/16 v25, 0x1

    return v25

    .line 254
    .end local v24    # "_result":I
    :cond_a
    new-array v8, v10, [Ljava/lang/String;

    .restart local v8    # "_arg0":[Ljava/lang/String;
    goto :goto_a

    .line 264
    .end local v8    # "_arg0":[Ljava/lang/String;
    .end local v10    # "_arg0_length":I
    :sswitch_f
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 266
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 267
    .restart local v10    # "_arg0_length":I
    if-gez v10, :cond_b

    .line 268
    const/4 v9, 0x0

    .line 273
    :goto_b
    move-object/from16 v0, p0

    invoke-virtual {v0, v9}, Landroid/dolby/IDs$Stub;->getMonoSpeaker([Z)I

    move-result v24

    .line 274
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 275
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 276
    move-object/from16 v0, p3

    invoke-virtual {v0, v9}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 277
    const/16 v25, 0x1

    return v25

    .line 271
    .end local v24    # "_result":I
    :cond_b
    new-array v9, v10, [Z

    .restart local v9    # "_arg0":[Z
    goto :goto_b

    .line 281
    .end local v9    # "_arg0":[Z
    .end local v10    # "_arg0_length":I
    :sswitch_10
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 283
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 284
    .restart local v10    # "_arg0_length":I
    if-gez v10, :cond_c

    .line 285
    const/4 v8, 0x0

    .line 290
    :goto_c
    move-object/from16 v0, p0

    invoke-virtual {v0, v8}, Landroid/dolby/IDs$Stub;->getDsVersion([Ljava/lang/String;)I

    move-result v24

    .line 291
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 292
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 293
    move-object/from16 v0, p3

    invoke-virtual {v0, v8}, Landroid/os/Parcel;->writeStringArray([Ljava/lang/String;)V

    .line 294
    const/16 v25, 0x1

    return v25

    .line 288
    .end local v24    # "_result":I
    :cond_c
    new-array v8, v10, [Ljava/lang/String;

    .restart local v8    # "_arg0":[Ljava/lang/String;
    goto :goto_c

    .line 298
    .end local v8    # "_arg0":[Ljava/lang/String;
    .end local v10    # "_arg0_length":I
    :sswitch_11
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 300
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 302
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 304
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 305
    .local v17, "_arg2":I
    move-object/from16 v0, p0

    move/from16 v1, v17

    invoke-virtual {v0, v3, v11, v1}, Landroid/dolby/IDs$Stub;->setIeqPreset(III)I

    move-result v24

    .line 306
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 307
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 308
    const/16 v25, 0x1

    return v25

    .line 312
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v24    # "_result":I
    :sswitch_12
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 314
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 316
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 317
    .restart local v16    # "_arg1_length":I
    if-gez v16, :cond_d

    .line 318
    const/4 v14, 0x0

    .line 323
    :goto_d
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Landroid/dolby/IDs$Stub;->getIeqPreset(I[I)I

    move-result v24

    .line 324
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 325
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 326
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 327
    const/16 v25, 0x1

    return v25

    .line 321
    .end local v24    # "_result":I
    :cond_d
    move/from16 v0, v16

    new-array v14, v0, [I

    .local v14, "_arg1":[I
    goto :goto_d

    .line 331
    .end local v3    # "_arg0":I
    .end local v14    # "_arg1":[I
    .end local v16    # "_arg1_length":I
    :sswitch_13
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 333
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 335
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 336
    .restart local v16    # "_arg1_length":I
    if-gez v16, :cond_e

    .line 337
    const/4 v14, 0x0

    .line 342
    :goto_e
    move-object/from16 v0, p0

    invoke-virtual {v0, v3, v14}, Landroid/dolby/IDs$Stub;->getProfileModified(I[I)I

    move-result v24

    .line 343
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 344
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 345
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 346
    const/16 v25, 0x1

    return v25

    .line 340
    .end local v24    # "_result":I
    :cond_e
    move/from16 v0, v16

    new-array v14, v0, [I

    .restart local v14    # "_arg1":[I
    goto :goto_e

    .line 350
    .end local v3    # "_arg0":I
    .end local v14    # "_arg1":[I
    .end local v16    # "_arg1_length":I
    :sswitch_14
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 352
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 354
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 356
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v17

    .line 358
    .restart local v17    # "_arg2":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createFloatArray()[F

    move-result-object v23

    .line 359
    .local v23, "_arg3":[F
    move-object/from16 v0, p0

    move/from16 v1, v17

    move-object/from16 v2, v23

    invoke-virtual {v0, v3, v11, v1, v2}, Landroid/dolby/IDs$Stub;->setGeq(III[F)I

    move-result v24

    .line 360
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 361
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 362
    const/16 v25, 0x1

    return v25

    .line 366
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":I
    .end local v17    # "_arg2":I
    .end local v23    # "_arg3":[F
    .end local v24    # "_result":I
    :sswitch_15
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 368
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 370
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 372
    .restart local v11    # "_arg1":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v22

    .line 373
    .local v22, "_arg2_length":I
    if-gez v22, :cond_f

    .line 374
    const/16 v20, 0x0

    .line 379
    :goto_f
    move-object/from16 v0, p0

    move-object/from16 v1, v20

    invoke-virtual {v0, v3, v11, v1}, Landroid/dolby/IDs$Stub;->getGeq(II[F)I

    move-result v24

    .line 380
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 381
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 382
    move-object/from16 v0, p3

    move-object/from16 v1, v20

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeFloatArray([F)V

    .line 383
    const/16 v25, 0x1

    return v25

    .line 377
    .end local v24    # "_result":I
    :cond_f
    move/from16 v0, v22

    new-array v0, v0, [F

    move-object/from16 v20, v0

    .local v20, "_arg2":[F
    goto :goto_f

    .line 387
    .end local v3    # "_arg0":I
    .end local v11    # "_arg1":I
    .end local v20    # "_arg2":[F
    .end local v22    # "_arg2_length":I
    :sswitch_16
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 389
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 391
    .restart local v3    # "_arg0":I
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v12

    .line 393
    .local v12, "_arg1":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->createIntArray()[I

    move-result-object v21

    .line 394
    .local v21, "_arg2":[I
    move-object/from16 v0, p0

    move-object/from16 v1, v21

    invoke-virtual {v0, v3, v12, v1}, Landroid/dolby/IDs$Stub;->setDsApParam(ILjava/lang/String;[I)I

    move-result v24

    .line 395
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 396
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 397
    const/16 v25, 0x1

    return v25

    .line 401
    .end local v3    # "_arg0":I
    .end local v12    # "_arg1":Ljava/lang/String;
    .end local v21    # "_arg2":[I
    .end local v24    # "_result":I
    :sswitch_17
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 403
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 405
    .local v5, "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 406
    .restart local v16    # "_arg1_length":I
    if-gez v16, :cond_10

    .line 407
    const/4 v14, 0x0

    .line 412
    :goto_10
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14}, Landroid/dolby/IDs$Stub;->getDsApParam(Ljava/lang/String;[I)I

    move-result v24

    .line 413
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 414
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 415
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 416
    const/16 v25, 0x1

    return v25

    .line 410
    .end local v24    # "_result":I
    :cond_10
    move/from16 v0, v16

    new-array v14, v0, [I

    .restart local v14    # "_arg1":[I
    goto :goto_10

    .line 420
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":[I
    .end local v16    # "_arg1_length":I
    :sswitch_18
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 422
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readString()Ljava/lang/String;

    move-result-object v5

    .line 424
    .restart local v5    # "_arg0":Ljava/lang/String;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v16

    .line 425
    .restart local v16    # "_arg1_length":I
    if-gez v16, :cond_11

    .line 426
    const/4 v14, 0x0

    .line 431
    :goto_11
    move-object/from16 v0, p0

    invoke-virtual {v0, v5, v14}, Landroid/dolby/IDs$Stub;->getDsApParamLength(Ljava/lang/String;[I)I

    move-result v24

    .line 432
    .restart local v24    # "_result":I
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 433
    move-object/from16 v0, p3

    move/from16 v1, v24

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->writeInt(I)V

    .line 434
    move-object/from16 v0, p3

    invoke-virtual {v0, v14}, Landroid/os/Parcel;->writeIntArray([I)V

    .line 435
    const/16 v25, 0x1

    return v25

    .line 429
    .end local v24    # "_result":I
    :cond_11
    move/from16 v0, v16

    new-array v14, v0, [I

    .restart local v14    # "_arg1":[I
    goto :goto_11

    .line 439
    .end local v5    # "_arg0":Ljava/lang/String;
    .end local v14    # "_arg1":[I
    .end local v16    # "_arg1_length":I
    :sswitch_19
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 441
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 442
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/dolby/IDs$Stub;->registerDsApParamEvents(I)V

    .line 443
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 444
    const/16 v25, 0x1

    return v25

    .line 448
    .end local v3    # "_arg0":I
    :sswitch_1a
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 450
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 451
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/dolby/IDs$Stub;->unregisterDsApParamEvents(I)V

    .line 452
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 453
    const/16 v25, 0x1

    return v25

    .line 457
    .end local v3    # "_arg0":I
    :sswitch_1b
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 459
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/dolby/IDsServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/dolby/IDsServiceCallbacks;

    move-result-object v4

    .line 461
    .local v4, "_arg0":Landroid/dolby/IDsServiceCallbacks;
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 462
    .restart local v11    # "_arg1":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v4, v11}, Landroid/dolby/IDs$Stub;->registerCallback(Landroid/dolby/IDsServiceCallbacks;I)V

    .line 463
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 464
    const/16 v25, 0x1

    return v25

    .line 468
    .end local v4    # "_arg0":Landroid/dolby/IDsServiceCallbacks;
    .end local v11    # "_arg1":I
    :sswitch_1c
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 470
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readStrongBinder()Landroid/os/IBinder;

    move-result-object v25

    invoke-static/range {v25 .. v25}, Landroid/dolby/IDsServiceCallbacks$Stub;->asInterface(Landroid/os/IBinder;)Landroid/dolby/IDsServiceCallbacks;

    move-result-object v4

    .line 471
    .restart local v4    # "_arg0":Landroid/dolby/IDsServiceCallbacks;
    move-object/from16 v0, p0

    invoke-virtual {v0, v4}, Landroid/dolby/IDs$Stub;->unregisterCallback(Landroid/dolby/IDsServiceCallbacks;)V

    .line 472
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 473
    const/16 v25, 0x1

    return v25

    .line 477
    .end local v4    # "_arg0":Landroid/dolby/IDsServiceCallbacks;
    :sswitch_1d
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 479
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 480
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/dolby/IDs$Stub;->registerVisualizerData(I)V

    .line 481
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 482
    const/16 v25, 0x1

    return v25

    .line 486
    .end local v3    # "_arg0":I
    :sswitch_1e
    const-string/jumbo v25, "android.dolby.IDs"

    move-object/from16 v0, p2

    move-object/from16 v1, v25

    invoke-virtual {v0, v1}, Landroid/os/Parcel;->enforceInterface(Ljava/lang/String;)V

    .line 488
    invoke-virtual/range {p2 .. p2}, Landroid/os/Parcel;->readInt()I

    move-result v3

    .line 489
    .restart local v3    # "_arg0":I
    move-object/from16 v0, p0

    invoke-virtual {v0, v3}, Landroid/dolby/IDs$Stub;->unregisterVisualizerData(I)V

    .line 490
    invoke-virtual/range {p3 .. p3}, Landroid/os/Parcel;->writeNoException()V

    .line 491
    const/16 v25, 0x1

    return v25

    .line 38
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
