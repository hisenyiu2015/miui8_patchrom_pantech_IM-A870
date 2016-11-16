.class public Landroid/dolby/ds/DsEffect;
.super Ljava/lang/Object;
.source "DsEffect.java"


# static fields
.field protected static final DS_PARAM_ALL_VALUES:I = 0x2

.field protected static final DS_PARAM_DEFINE_PARAMS:I = 0x5

.field protected static final DS_PARAM_DEFINE_SETTINGS:I = 0x1

.field protected static final DS_PARAM_SINGLE_DEVICE_VALUE:I = 0x3

.field protected static final DS_PARAM_TUNING:I = 0x0

.field protected static final DS_PARAM_VERSION:I = 0x6

.field protected static final DS_PARAM_VISUALIZER_DATA:I = 0x4

.field protected static final DS_PARAM_VISUALIZER_ENABLE:I = 0x7

.field public static final EFFECT_DS:Ljava/util/UUID;

.field public static final EFFECT_TYPE_DS:Ljava/util/UUID;

.field public static final EFFECT_TYPE_NULL:Ljava/util/UUID;

.field private static final LOG_TAG:Ljava/lang/String; = "DsEffect"


# instance fields
.field protected audioEffect:Landroid/media/audiofx/AudioEffect;

.field private audioSessionId_:I

.field protected classAudioEffect:Ljava/lang/Class;

.field protected methodGetParameter:Ljava/lang/reflect/Method;

.field protected methodSetParameter:Ljava/lang/reflect/Method;

.field nxp_env_reverb_uuid:Ljava/util/UUID;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 30
    const-string/jumbo v0, "ec7178ec-e5e1-4432-a3f4-4657e6795210"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/dolby/ds/DsEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    .line 34
    const-string/jumbo v0, "46d279d9-9be7-453d-9d7c-ef937f675587"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/dolby/ds/DsEffect;->EFFECT_TYPE_DS:Ljava/util/UUID;

    .line 35
    const-string/jumbo v0, "9d4921da-8225-4f29-aefa-39537a04bcaa"

    invoke-static {v0}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v0

    sput-object v0, Landroid/dolby/ds/DsEffect;->EFFECT_DS:Ljava/util/UUID;

    .line 27
    return-void
.end method

.method public constructor <init>(I)V
    .locals 14
    .param p1, "audioSessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 68
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 31
    const-string/jumbo v9, "4a387fc0-8ab3-11df-8bad-0002a5d5c51b"

    invoke-static {v9}, Ljava/util/UUID;->fromString(Ljava/lang/String;)Ljava/util/UUID;

    move-result-object v9

    iput-object v9, p0, Landroid/dolby/ds/DsEffect;->nxp_env_reverb_uuid:Ljava/util/UUID;

    .line 48
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/dolby/ds/DsEffect;->classAudioEffect:Ljava/lang/Class;

    .line 49
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    .line 50
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/dolby/ds/DsEffect;->methodSetParameter:Ljava/lang/reflect/Method;

    .line 51
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/dolby/ds/DsEffect;->methodGetParameter:Ljava/lang/reflect/Method;

    .line 72
    :try_start_0
    const-string/jumbo v9, "android.media.audiofx.AudioEffect"

    invoke-static {v9}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v9

    iput-object v9, p0, Landroid/dolby/ds/DsEffect;->classAudioEffect:Ljava/lang/Class;
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 80
    const/4 v0, 0x0

    .line 84
    .local v0, "ctorAudioEffect":Ljava/lang/reflect/Constructor;
    :try_start_1
    iget-object v9, p0, Landroid/dolby/ds/DsEffect;->classAudioEffect:Ljava/lang/Class;

    const/4 v10, 0x4

    new-array v10, v10, [Ljava/lang/Class;

    const-class v11, Ljava/util/UUID;

    const/4 v12, 0x0

    aput-object v11, v10, v12

    const-class v11, Ljava/util/UUID;

    const/4 v12, 0x1

    aput-object v11, v10, v12

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x2

    aput-object v11, v10, v12

    sget-object v11, Ljava/lang/Integer;->TYPE:Ljava/lang/Class;

    const/4 v12, 0x3

    aput-object v11, v10, v12

    invoke-virtual {v9, v10}, Ljava/lang/Class;->getConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v0

    .line 85
    .local v0, "ctorAudioEffect":Ljava/lang/reflect/Constructor;
    const-string/jumbo v9, "DsEffect"

    const-string/jumbo v10, "Found AudioEffect Constructor"

    invoke-static {v9, v10}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catch Ljava/lang/SecurityException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/NoSuchMethodException; {:try_start_1 .. :try_end_1} :catch_1

    .line 98
    const/4 v9, 0x4

    :try_start_2
    new-array v9, v9, [Ljava/lang/Object;

    sget-object v10, Landroid/dolby/ds/DsEffect;->EFFECT_TYPE_NULL:Ljava/util/UUID;

    const/4 v11, 0x0

    aput-object v10, v9, v11

    sget-object v10, Landroid/dolby/ds/DsEffect;->EFFECT_DS:Ljava/util/UUID;

    const/4 v11, 0x1

    aput-object v10, v9, v11

    const/4 v10, 0x0

    invoke-static {v10}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x2

    aput-object v10, v9, v11

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v10

    const/4 v11, 0x3

    aput-object v10, v9, v11

    invoke-virtual {v0, v9}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/media/audiofx/AudioEffect;

    iput-object v9, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    .line 99
    const-string/jumbo v9, "DsEffect"

    const-string/jumbo v10, "Created Ds AudioEffect successfully"

    invoke-static {v9, v10}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_2
    .catch Ljava/lang/IllegalArgumentException; {:try_start_2 .. :try_end_2} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_2 .. :try_end_2} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_2 .. :try_end_2} :catch_4
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_2 .. :try_end_2} :catch_3

    .line 119
    iget-object v9, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v9}, Landroid/media/audiofx/AudioEffect;->getDescriptor()Landroid/media/audiofx/AudioEffect$Descriptor;

    move-result-object v1

    .line 121
    .local v1, "e":Landroid/media/audiofx/AudioEffect$Descriptor;
    iget-object v9, p0, Landroid/dolby/ds/DsEffect;->classAudioEffect:Ljava/lang/Class;

    const-string/jumbo v10, "setParameter"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const-class v12, [B

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-class v12, [B

    const/4 v13, 0x1

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iput-object v9, p0, Landroid/dolby/ds/DsEffect;->methodSetParameter:Ljava/lang/reflect/Method;

    .line 122
    iget-object v9, p0, Landroid/dolby/ds/DsEffect;->classAudioEffect:Ljava/lang/Class;

    const-string/jumbo v10, "getParameter"

    const/4 v11, 0x2

    new-array v11, v11, [Ljava/lang/Class;

    const-class v12, [B

    const/4 v13, 0x0

    aput-object v12, v11, v13

    const-class v12, [B

    const/4 v13, 0x1

    aput-object v12, v11, v13

    invoke-virtual {v9, v10, v11}, Ljava/lang/Class;->getMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v9

    iput-object v9, p0, Landroid/dolby/ds/DsEffect;->methodGetParameter:Ljava/lang/reflect/Method;

    .line 124
    const-string/jumbo v9, "DsEffect"

    new-instance v10, Ljava/lang/StringBuilder;

    invoke-direct {v10}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v11, "CREATED EFFECT Implementor:\""

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    iget-object v11, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->implementor:Ljava/lang/String;

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    const-string/jumbo v11, "\"\n"

    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 125
    const-string/jumbo v11, " name:\""

    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 125
    iget-object v11, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->name:Ljava/lang/String;

    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 125
    const-string/jumbo v11, "\"\n"

    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 126
    const-string/jumbo v11, " connectMode:\""

    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 126
    iget-object v11, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->connectMode:Ljava/lang/String;

    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 126
    const-string/jumbo v11, "\"\n"

    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 127
    const-string/jumbo v11, " type:\""

    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 127
    iget-object v11, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->type:Ljava/util/UUID;

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 127
    const-string/jumbo v11, "\"\n"

    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 128
    const-string/jumbo v11, " uuid:\""

    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 128
    iget-object v11, v1, Landroid/media/audiofx/AudioEffect$Descriptor;->uuid:Ljava/util/UUID;

    invoke-virtual {v11}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v11

    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 128
    const-string/jumbo v11, "\"\n"

    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 129
    const-string/jumbo v11, " sessionID:\""

    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v10

    .line 129
    const-string/jumbo v11, "\""

    .line 124
    invoke-virtual {v10, v11}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v10

    invoke-virtual {v10}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 134
    invoke-direct {p0}, Landroid/dolby/ds/DsEffect;->_setDefineParams()V

    .line 135
    invoke-direct {p0}, Landroid/dolby/ds/DsEffect;->_setDefineSettings()V

    .line 136
    iput p1, p0, Landroid/dolby/ds/DsEffect;->audioSessionId_:I

    .line 68
    return-void

    .line 75
    .end local v0    # "ctorAudioEffect":Ljava/lang/reflect/Constructor;
    .end local v1    # "e":Landroid/media/audiofx/AudioEffect$Descriptor;
    :catch_0
    move-exception v2

    .line 76
    .local v2, "e":Ljava/lang/ClassNotFoundException;
    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->printStackTrace()V

    .line 77
    const-string/jumbo v9, "DsEffect"

    invoke-virtual {v2}, Ljava/lang/ClassNotFoundException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 78
    throw v2

    .line 92
    .end local v2    # "e":Ljava/lang/ClassNotFoundException;
    :catch_1
    move-exception v6

    .line 93
    .local v6, "e":Ljava/lang/NoSuchMethodException;
    const-string/jumbo v9, "DsEffect"

    invoke-virtual {v6}, Ljava/lang/NoSuchMethodException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 94
    throw v6

    .line 88
    .end local v6    # "e":Ljava/lang/NoSuchMethodException;
    :catch_2
    move-exception v7

    .line 89
    .local v7, "e":Ljava/lang/SecurityException;
    const-string/jumbo v9, "DsEffect"

    invoke-virtual {v7}, Ljava/lang/SecurityException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 90
    throw v7

    .line 112
    .end local v7    # "e":Ljava/lang/SecurityException;
    .restart local v0    # "ctorAudioEffect":Ljava/lang/reflect/Constructor;
    :catch_3
    move-exception v8

    .line 113
    .local v8, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v8}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 114
    const-string/jumbo v9, "DsEffect"

    invoke-virtual {v8}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    throw v8

    .line 108
    .end local v8    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_4
    move-exception v3

    .line 109
    .local v3, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 110
    const-string/jumbo v9, "DsEffect"

    invoke-virtual {v3}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 111
    throw v3

    .line 104
    .end local v3    # "e":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v5

    .line 105
    .local v5, "e":Ljava/lang/InstantiationException;
    invoke-virtual {v5}, Ljava/lang/InstantiationException;->printStackTrace()V

    .line 106
    const-string/jumbo v9, "DsEffect"

    invoke-virtual {v5}, Ljava/lang/InstantiationException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    throw v5

    .line 100
    .end local v5    # "e":Ljava/lang/InstantiationException;
    :catch_6
    move-exception v4

    .line 101
    .local v4, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 102
    const-string/jumbo v9, "DsEffect"

    invoke-virtual {v4}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v10

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 103
    throw v4
.end method

.method private static ByteArrayToInt([B)I
    .locals 2
    .param p0, "ba"    # [B

    .prologue
    .line 257
    const/4 v0, 0x3

    aget-byte v0, p0, v0

    and-int/lit16 v0, v0, 0xff

    shl-int/lit8 v0, v0, 0x18

    const/4 v1, 0x2

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x10

    or-int/2addr v0, v1

    const/4 v1, 0x1

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    shl-int/lit8 v1, v1, 0x8

    or-int/2addr v0, v1

    const/4 v1, 0x0

    aget-byte v1, p0, v1

    and-int/lit16 v1, v1, 0xff

    or-int/2addr v0, v1

    return v0
.end method

.method private static ByteArrayToIntArray([B)[I
    .locals 6
    .param p0, "ba"    # [B

    .prologue
    .line 262
    array-length v3, p0

    .line 263
    .local v3, "srcLength":I
    shr-int/lit8 v1, v3, 0x2

    .line 264
    .local v1, "destLength":I
    new-array v0, v1, [I

    .line 266
    .local v0, "dest":[I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 268
    mul-int/lit8 v4, v2, 0x4

    add-int/lit8 v4, v4, 0x3

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x18

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x10

    or-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x4

    add-int/lit8 v5, v5, 0x1

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    shl-int/lit8 v5, v5, 0x8

    or-int/2addr v4, v5

    mul-int/lit8 v5, v2, 0x4

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    aput v4, v0, v2

    .line 266
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 270
    :cond_0
    return-object v0
.end method

.method private static ByteArrayToShortArray([B)[S
    .locals 6
    .param p0, "ba"    # [B

    .prologue
    .line 275
    array-length v3, p0

    .line 276
    .local v3, "srcLength":I
    shr-int/lit8 v1, v3, 0x1

    .line 277
    .local v1, "destLength":I
    new-array v0, v1, [S

    .line 279
    .local v0, "dest":[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 281
    mul-int/lit8 v4, v2, 0x2

    add-int/lit8 v4, v4, 0x1

    aget-byte v4, p0, v4

    and-int/lit16 v4, v4, 0xff

    shl-int/lit8 v4, v4, 0x8

    mul-int/lit8 v5, v2, 0x2

    aget-byte v5, p0, v5

    and-int/lit16 v5, v5, 0xff

    or-int/2addr v4, v5

    int-to-short v4, v4

    aput-short v4, v0, v2

    .line 279
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 283
    :cond_0
    return-object v0
.end method

.method private static ByteArrayToString([B)Ljava/lang/String;
    .locals 5
    .param p0, "ba"    # [B

    .prologue
    .line 288
    new-instance v1, Ljava/lang/StringBuilder;

    array-length v2, p0

    mul-int/lit8 v2, v2, 0x6

    add-int/lit8 v2, v2, 0x3

    invoke-direct {v1, v2}, Ljava/lang/StringBuilder;-><init>(I)V

    .line 289
    .local v1, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v2, "HEX("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 290
    const/4 v2, 0x0

    array-length v3, p0

    :goto_0
    if-ge v2, v3, :cond_0

    aget-byte v0, p0, v2

    .line 292
    .local v0, "b":B
    invoke-static {v0}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 293
    const/16 v4, 0x20

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 290
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 295
    .end local v0    # "b":B
    :cond_0
    const/16 v2, 0x29

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    .line 296
    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    return-object v2
.end method

.method private static IntArrayToByteArray([I)[B
    .locals 7
    .param p0, "src"    # [I

    .prologue
    .line 204
    array-length v4, p0

    .line 205
    .local v4, "srcLength":I
    shl-int/lit8 v6, v4, 0x2

    new-array v0, v6, [B

    .line 207
    .local v0, "dst":[B
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_0

    .line 209
    aget v5, p0, v1

    .line 210
    .local v5, "x":I
    shl-int/lit8 v2, v1, 0x2

    .line 211
    .local v2, "j":I
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .local v3, "j":I
    ushr-int/lit8 v6, v5, 0x0

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 212
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    ushr-int/lit8 v6, v5, 0x8

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    .line 213
    add-int/lit8 v3, v2, 0x1

    .end local v2    # "j":I
    .restart local v3    # "j":I
    ushr-int/lit8 v6, v5, 0x10

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v2

    .line 214
    add-int/lit8 v2, v3, 0x1

    .end local v3    # "j":I
    .restart local v2    # "j":I
    ushr-int/lit8 v6, v5, 0x18

    and-int/lit16 v6, v6, 0xff

    int-to-byte v6, v6

    aput-byte v6, v0, v3

    .line 207
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 216
    .end local v2    # "j":I
    .end local v5    # "x":I
    :cond_0
    return-object v0
.end method

.method private static Set4ChInByteArray(Ljava/lang/String;[BI)I
    .locals 6
    .param p0, "src"    # Ljava/lang/String;
    .param p1, "dst"    # [B
    .param p2, "index"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v4, 0x4

    .line 237
    invoke-virtual {p0}, Ljava/lang/String;->length()I

    move-result v2

    .line 238
    .local v2, "len":I
    if-le v2, v4, :cond_0

    .line 240
    const-string/jumbo v3, "DsEffect"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "parameter name "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " contains more than 4 characters"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 241
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "Wrong parameter name"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 245
    :cond_0
    const/4 v0, 0x0

    .local v0, "i":I
    move v1, p2

    .end local p2    # "index":I
    .local v1, "index":I
    :goto_0
    if-ge v0, v2, :cond_1

    .line 247
    add-int/lit8 p2, v1, 0x1

    .end local v1    # "index":I
    .restart local p2    # "index":I
    invoke-virtual {p0, v0}, Ljava/lang/String;->charAt(I)C

    move-result v3

    int-to-byte v3, v3

    aput-byte v3, p1, v1

    .line 245
    add-int/lit8 v0, v0, 0x1

    move v1, p2

    .end local p2    # "index":I
    .restart local v1    # "index":I
    goto :goto_0

    .line 249
    :cond_1
    if-ge v2, v4, :cond_2

    .line 250
    const/4 v3, 0x0

    aput-byte v3, p1, v1

    .line 252
    :cond_2
    return v4
.end method

.method private static SetInt16InByteArray(I[BI)I
    .locals 2
    .param p0, "value"    # I
    .param p1, "dst"    # [B
    .param p2, "index"    # I

    .prologue
    .line 221
    and-int/lit16 v0, p0, 0xff

    int-to-byte v0, v0

    aput-byte v0, p1, p2

    .line 222
    add-int/lit8 v0, p2, 0x1

    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 223
    const/4 v0, 0x2

    return v0
.end method

.method private static SetInt32InByteArray(I[BI)I
    .locals 2
    .param p0, "value"    # I
    .param p1, "dst"    # [B
    .param p2, "index"    # I

    .prologue
    .line 228
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "index":I
    .local v0, "index":I
    and-int/lit16 v1, p0, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 229
    add-int/lit8 p2, v0, 0x1

    .end local v0    # "index":I
    .restart local p2    # "index":I
    ushr-int/lit8 v1, p0, 0x8

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 230
    add-int/lit8 v0, p2, 0x1

    .end local p2    # "index":I
    .restart local v0    # "index":I
    ushr-int/lit8 v1, p0, 0x10

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, p2

    .line 231
    ushr-int/lit8 v1, p0, 0x18

    and-int/lit16 v1, v1, 0xff

    int-to-byte v1, v1

    aput-byte v1, p1, v0

    .line 232
    const/4 v1, 0x4

    return v1
.end method

.method private _getIntArrayParameter(I[I)I
    .locals 6
    .param p1, "param"    # I
    .param p2, "value"    # [I

    .prologue
    const/4 v5, 0x0

    .line 400
    const/4 v2, 0x0

    .line 401
    .local v2, "count":I
    invoke-direct {p0, p1}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 402
    .local v0, "baParam":[B
    array-length v4, p2

    shl-int/lit8 v4, v4, 0x2

    new-array v1, v4, [B

    .line 403
    .local v1, "baValue":[B
    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeGetParameter([B[B)I

    move-result v2

    .line 404
    array-length v4, p2

    shl-int/lit8 v4, v4, 0x2

    if-eq v2, v4, :cond_0

    .line 406
    const-string/jumbo v4, "DsEffect"

    const-string/jumbo v5, "_getIntArrayParameter: Error in getting the parameter!"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 413
    :goto_0
    return v2

    .line 410
    :cond_0
    invoke-static {v1}, Landroid/dolby/ds/DsEffect;->ByteArrayToIntArray([B)[I

    move-result-object v3

    .line 411
    .local v3, "tmpValue":[I
    array-length v4, p2

    invoke-static {v3, v5, p2, v5, v4}, Ljava/lang/System;->arraycopy([II[III)V

    goto :goto_0
.end method

.method private _getShortArrayParameter(I[S)I
    .locals 6
    .param p1, "param"    # I
    .param p2, "value"    # [S

    .prologue
    const/4 v5, 0x0

    .line 428
    const/4 v2, 0x0

    .line 429
    .local v2, "count":I
    invoke-direct {p0, p1}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 430
    .local v0, "baParam":[B
    array-length v4, p2

    shl-int/lit8 v4, v4, 0x1

    new-array v1, v4, [B

    .line 431
    .local v1, "baValue":[B
    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeGetParameter([B[B)I

    move-result v2

    .line 432
    array-length v4, p2

    shl-int/lit8 v4, v4, 0x1

    if-eq v2, v4, :cond_0

    .line 434
    const-string/jumbo v4, "DsEffect"

    const-string/jumbo v5, "_getShortArrayParameter: Unexpected length"

    invoke-static {v4, v5}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 441
    :goto_0
    return v2

    .line 438
    :cond_0
    invoke-static {v1}, Landroid/dolby/ds/DsEffect;->ByteArrayToShortArray([B)[S

    move-result-object v3

    .line 439
    .local v3, "tmpValue":[S
    array-length v4, v3

    invoke-static {v3, v5, p2, v5, v4}, Ljava/lang/System;->arraycopy([SI[SII)V

    goto :goto_0
.end method

.method private _invokeGetParameter([B[B)I
    .locals 9
    .param p1, "baParam"    # [B
    .param p2, "baValue"    # [B

    .prologue
    const/4 v8, -0x5

    .line 356
    const/4 v0, 0x0

    .line 359
    .local v0, "count":I
    :try_start_0
    iget-object v4, p0, Landroid/dolby/ds/DsEffect;->methodGetParameter:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v0

    .line 383
    const-string/jumbo v4, "DsEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_invokeGetParameter baParam:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Landroid/dolby/ds/DsEffect;->ByteArrayToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n baValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Landroid/dolby/ds/DsEffect;->ByteArrayToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/dolby/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 384
    const-string/jumbo v4, "DsEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_invokeGetParameter returning:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/dolby/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 385
    return v0

    .line 376
    :catch_0
    move-exception v3

    .line 378
    .local v3, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 379
    const-string/jumbo v4, "DsEffect"

    invoke-virtual {v3}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 380
    return v8

    .line 369
    .end local v3    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v1

    .line 371
    .local v1, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 372
    const-string/jumbo v4, "DsEffect"

    invoke-virtual {v1}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 373
    return v8

    .line 362
    .end local v1    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v2

    .line 364
    .local v2, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 365
    const-string/jumbo v4, "DsEffect"

    invoke-virtual {v2}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 366
    const/4 v4, -0x4

    return v4
.end method

.method private _invokeSetParameter([B[B)I
    .locals 9
    .param p1, "baParam"    # [B
    .param p2, "baValue"    # [B

    .prologue
    const/4 v8, -0x5

    .line 311
    const-string/jumbo v4, "DsEffect"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "_invokeSetParameter baParam:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p1}, Landroid/dolby/ds/DsEffect;->ByteArrayToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\n baValue:"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-static {p2}, Landroid/dolby/ds/DsEffect;->ByteArrayToString([B)Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 313
    const/4 v3, 0x0

    .line 316
    .local v3, "iRet":I
    :try_start_0
    iget-object v4, p0, Landroid/dolby/ds/DsEffect;->methodSetParameter:Ljava/lang/reflect/Method;

    iget-object v5, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    const/4 v6, 0x2

    new-array v6, v6, [Ljava/lang/Object;

    const/4 v7, 0x0

    aput-object p1, v6, v7

    const/4 v7, 0x1

    aput-object p2, v6, v7

    invoke-virtual {v4, v5, v6}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/Integer;

    invoke-virtual {v4}, Ljava/lang/Integer;->intValue()I
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v3

    .line 339
    const-string/jumbo v4, "DsEffect"

    const-string/jumbo v5, "_invokeSetParameter returning."

    invoke-static {v4, v5}, Landroid/dolby/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 341
    return v3

    .line 333
    :catch_0
    move-exception v2

    .line 335
    .local v2, "e":Ljava/lang/reflect/InvocationTargetException;
    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->printStackTrace()V

    .line 336
    const-string/jumbo v4, "DsEffect"

    invoke-virtual {v2}, Ljava/lang/reflect/InvocationTargetException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 337
    return v8

    .line 326
    .end local v2    # "e":Ljava/lang/reflect/InvocationTargetException;
    :catch_1
    move-exception v0

    .line 328
    .local v0, "e":Ljava/lang/IllegalAccessException;
    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->printStackTrace()V

    .line 329
    const-string/jumbo v4, "DsEffect"

    invoke-virtual {v0}, Ljava/lang/IllegalAccessException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 330
    return v8

    .line 319
    .end local v0    # "e":Ljava/lang/IllegalAccessException;
    :catch_2
    move-exception v1

    .line 321
    .local v1, "e":Ljava/lang/IllegalArgumentException;
    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->printStackTrace()V

    .line 322
    const-string/jumbo v4, "DsEffect"

    invoke-virtual {v1}, Ljava/lang/IllegalArgumentException;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 323
    const/4 v4, -0x4

    return v4
.end method

.method private _setDefineParams()V
    .locals 6

    .prologue
    .line 450
    const/4 v5, 0x5

    invoke-direct {p0, v5}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 452
    .local v0, "baParam":[B
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->getNumOfParams()I

    move-result v5

    mul-int/lit8 v5, v5, 0x4

    add-int/lit8 v5, v5, 0x2

    new-array v1, v5, [B

    .line 453
    .local v1, "baValue":[B
    const/4 v4, 0x0

    .line 454
    .local v4, "index":I
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->getNumOfParams()I

    move-result v5

    invoke-static {v5, v1, v4}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v5

    add-int/lit8 v4, v5, 0x0

    .line 457
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->getParamsDefinitions()[Ljava/lang/String;

    move-result-object v2

    .line 458
    .local v2, "defns":[Ljava/lang/String;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_0

    .line 460
    aget-object v5, v2, v3

    invoke-static {v5, v1, v4}, Landroid/dolby/ds/DsEffect;->Set4ChInByteArray(Ljava/lang/String;[BI)I

    move-result v5

    add-int/2addr v4, v5

    .line 458
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 462
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeSetParameter([B[B)I

    .line 444
    return-void
.end method

.method private _setDefineSettings()V
    .locals 6

    .prologue
    .line 471
    const/4 v5, 0x1

    invoke-direct {p0, v5}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 473
    .local v0, "baParam":[B
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->getNumElementsPerDevice()I

    move-result v5

    mul-int/lit8 v5, v5, 0x3

    add-int/lit8 v5, v5, 0x2

    new-array v1, v5, [B

    .line 474
    .local v1, "baValue":[B
    const/4 v4, 0x0

    .line 475
    .local v4, "index":I
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->getNumElementsPerDevice()I

    move-result v5

    invoke-static {v5, v1, v4}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v5

    add-int/lit8 v4, v5, 0x0

    .line 479
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->getSettingsDefinitions()[Ljava/lang/Object;

    move-result-object v2

    .line 480
    .local v2, "defns":[Ljava/lang/Object;
    const/4 v3, 0x0

    .local v3, "i":I
    :goto_0
    array-length v5, v2

    if-ge v3, v5, :cond_0

    .line 482
    aget-object v5, v2, v3

    check-cast v5, Landroid/dolby/ds/DsAkSettings$SettingDefn;

    iget-byte v5, v5, Landroid/dolby/ds/DsAkSettings$SettingDefn;->parameter:B

    aput-byte v5, v1, v4

    .line 483
    add-int/lit8 v4, v4, 0x1

    .line 484
    aget-object v5, v2, v3

    check-cast v5, Landroid/dolby/ds/DsAkSettings$SettingDefn;

    iget-short v5, v5, Landroid/dolby/ds/DsAkSettings$SettingDefn;->offset:S

    invoke-static {v5, v1, v4}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v5

    add-int/2addr v4, v5

    .line 480
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 486
    :cond_0
    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeSetParameter([B[B)I

    .line 465
    return-void
.end method

.method private intToByteArray(I)[B
    .locals 2
    .param p1, "value"    # I

    .prologue
    .line 196
    const/4 v1, 0x4

    invoke-static {v1}, Ljava/nio/ByteBuffer;->allocate(I)Ljava/nio/ByteBuffer;

    move-result-object v0

    .line 197
    .local v0, "converter":Ljava/nio/ByteBuffer;
    invoke-static {}, Ljava/nio/ByteOrder;->nativeOrder()Ljava/nio/ByteOrder;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/nio/ByteBuffer;->order(Ljava/nio/ByteOrder;)Ljava/nio/ByteBuffer;

    .line 198
    invoke-virtual {v0, p1}, Ljava/nio/ByteBuffer;->putInt(I)Ljava/nio/ByteBuffer;

    .line 199
    invoke-virtual {v0}, Ljava/nio/ByteBuffer;->array()[B

    move-result-object v1

    return-object v1
.end method


# virtual methods
.method public getEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 176
    iget-object v0, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->getEnabled()Z

    move-result v0

    return v0
.end method

.method public getVersion()[S
    .locals 6

    .prologue
    .line 695
    const-string/jumbo v4, "ver"

    invoke-static {v4}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v2

    .line 696
    .local v2, "verLen":I
    new-array v3, v2, [S

    .line 697
    .local v3, "version":[S
    const/4 v0, 0x0

    .line 699
    .local v0, "count":I
    const/4 v4, 0x6

    invoke-direct {p0, v4, v3}, Landroid/dolby/ds/DsEffect;->_getShortArrayParameter(I[S)I

    move-result v0

    .line 700
    array-length v4, v3

    shl-int/lit8 v4, v4, 0x1

    if-eq v0, v4, :cond_0

    .line 702
    const-string/jumbo v4, "DsEffect"

    const-string/jumbo v5, "getVersion(): Error in getting the version"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 703
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v2, :cond_0

    .line 705
    const/4 v4, -0x1

    aput-short v4, v3, v1

    .line 703
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 708
    .end local v1    # "i":I
    :cond_0
    return-object v3
.end method

.method public getVisualizerData()[S
    .locals 5

    .prologue
    .line 577
    const-string/jumbo v3, "DsEffect"

    const-string/jumbo v4, "getVisualizerData"

    invoke-static {v3, v4}, Landroid/dolby/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 578
    const/4 v0, 0x0

    .line 584
    .local v0, "count":I
    const-string/jumbo v3, "vcbg"

    invoke-static {v3}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v3

    const-string/jumbo v4, "vcbe"

    invoke-static {v4}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v4

    add-int v1, v3, v4

    .line 585
    .local v1, "numVisualizerData":I
    new-array v2, v1, [S

    .line 587
    .local v2, "visualizerData":[S
    const/4 v3, 0x4

    invoke-direct {p0, v3, v2}, Landroid/dolby/ds/DsEffect;->_getShortArrayParameter(I[S)I

    move-result v0

    .line 588
    array-length v3, v2

    shl-int/lit8 v3, v3, 0x1

    if-eq v0, v3, :cond_0

    .line 590
    const/4 v3, 0x0

    return-object v3

    .line 593
    :cond_0
    return-object v2
.end method

.method public getVisualizerOn()Z
    .locals 8

    .prologue
    const/4 v7, 0x4

    .line 544
    const-string/jumbo v5, "DsEffect"

    const-string/jumbo v6, "getVisualizerOn"

    invoke-static {v5, v6}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 545
    const/4 v3, 0x0

    .line 546
    .local v3, "enabled":Z
    const/4 v2, 0x0

    .line 552
    .local v2, "count":I
    const/4 v5, 0x7

    invoke-direct {p0, v5}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 553
    .local v0, "baParam":[B
    new-array v1, v7, [B

    .line 554
    .local v1, "baValue":[B
    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeGetParameter([B[B)I

    move-result v2

    .line 555
    if-eq v2, v7, :cond_0

    .line 557
    const-string/jumbo v5, "DsEffect"

    const-string/jumbo v6, "getVisualizerOn: Error in getting the visualizer on/off state!"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 565
    :goto_0
    return v3

    .line 561
    :cond_0
    invoke-static {v1}, Landroid/dolby/ds/DsEffect;->ByteArrayToInt([B)I

    move-result v4

    .line 562
    .local v4, "on":I
    const/4 v5, 0x1

    if-ne v4, v5, :cond_1

    const/4 v3, 0x1

    goto :goto_0

    :cond_1
    const/4 v3, 0x0

    goto :goto_0
.end method

.method public hasControl()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 191
    iget-object v0, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->hasControl()Z

    move-result v0

    return v0
.end method

.method public release()V
    .locals 1

    .prologue
    .line 147
    iget-object v0, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0}, Landroid/media/audiofx/AudioEffect;->release()V

    .line 145
    return-void
.end method

.method public setAllProfileSettings(Landroid/dolby/ds/DsProfileSettings;)I
    .locals 2
    .param p1, "settings"    # Landroid/dolby/ds/DsProfileSettings;

    .prologue
    .line 507
    const-string/jumbo v0, "DsEffect"

    const-string/jumbo v1, "setAllProfileSettings"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 508
    invoke-virtual {p1}, Landroid/dolby/ds/DsProfileSettings;->getAllSettings()Ljava/util/Map;

    move-result-object v0

    invoke-virtual {p0, v0}, Landroid/dolby/ds/DsEffect;->setAllSettings(Ljava/util/Map;)I

    move-result v0

    return v0
.end method

.method public setAllSettings(Ljava/util/Map;)I
    .locals 10
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Landroid/dolby/ds/AudioDevice;",
            "Landroid/dolby/ds/DsAkSettings;",
            ">;)I"
        }
    .end annotation

    .prologue
    .local p1, "allSettings":Ljava/util/Map;, "Ljava/util/Map<Landroid/dolby/ds/AudioDevice;Landroid/dolby/ds/DsAkSettings;>;"
    const/4 v9, 0x2

    .line 665
    invoke-direct {p0, v9}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 667
    .local v0, "baParam":[B
    invoke-interface {p1}, Ljava/util/Map;->size()I

    move-result v6

    .line 669
    .local v6, "nDevCount":I
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->getNumElementsPerDevice()I

    move-result v9

    mul-int/lit8 v9, v9, 0x2

    add-int/lit8 v9, v9, 0x4

    mul-int/2addr v9, v6

    add-int/lit8 v9, v9, 0x2

    new-array v1, v9, [B

    .line 670
    .local v1, "baValue":[B
    const/4 v5, 0x0

    .line 671
    .local v5, "index":I
    invoke-static {v6, v1, v5}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v9

    add-int/lit8 v5, v9, 0x0

    .line 672
    invoke-interface {p1}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "device$iterator":Ljava/util/Iterator;
    :cond_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_1

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/dolby/ds/AudioDevice;

    .line 674
    .local v2, "device":Landroid/dolby/ds/AudioDevice;
    invoke-interface {p1, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v7

    check-cast v7, Landroid/dolby/ds/DsAkSettings;

    .line 676
    .local v7, "s":Landroid/dolby/ds/DsAkSettings;
    invoke-virtual {v2}, Landroid/dolby/ds/AudioDevice;->toInt()I

    move-result v9

    invoke-static {v9, v1, v5}, Landroid/dolby/ds/DsEffect;->SetInt32InByteArray(I[BI)I

    move-result v9

    add-int/2addr v5, v9

    .line 678
    invoke-virtual {v7}, Landroid/dolby/ds/DsAkSettings;->getValues()[S

    move-result-object v8

    .line 679
    .local v8, "values":[S
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_0
    array-length v9, v8

    if-ge v4, v9, :cond_0

    .line 680
    aget-short v9, v8, v4

    invoke-static {v9, v1, v5}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v9

    add-int/2addr v5, v9

    .line 679
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 682
    .end local v2    # "device":Landroid/dolby/ds/AudioDevice;
    .end local v4    # "i":I
    .end local v7    # "s":Landroid/dolby/ds/DsAkSettings;
    .end local v8    # "values":[S
    :cond_1
    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeSetParameter([B[B)I

    move-result v9

    return v9
.end method

.method public setEnabled(Z)I
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 162
    iget-object v0, p0, Landroid/dolby/ds/DsEffect;->audioEffect:Landroid/media/audiofx/AudioEffect;

    invoke-virtual {v0, p1}, Landroid/media/audiofx/AudioEffect;->setEnabled(Z)I

    move-result v0

    return v0
.end method

.method public setSingleSetting(II[SLandroid/dolby/ds/AudioDevice;)I
    .locals 11
    .param p1, "parameter"    # I
    .param p2, "offset"    # I
    .param p3, "values"    # [S
    .param p4, "device"    # Landroid/dolby/ds/AudioDevice;

    .prologue
    const/4 v10, -0x1

    .line 615
    array-length v7, p3

    const/4 v8, 0x1

    if-ne v7, v8, :cond_1

    .line 617
    const-string/jumbo v7, "DsEffect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSingleSetting: device "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", parameter "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", offset "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 624
    :goto_0
    invoke-static {p1, p2}, Landroid/dolby/ds/DsAkSettings;->getAkSettingIndex(II)I

    move-result v2

    .line 625
    .local v2, "begin":I
    array-length v7, p3

    add-int/2addr v7, p2

    add-int/lit8 v7, v7, -0x1

    invoke-static {p1, v7}, Landroid/dolby/ds/DsAkSettings;->getAkSettingIndex(II)I

    move-result v3

    .line 626
    .local v3, "end":I
    if-eq v2, v10, :cond_0

    if-ne v3, v10, :cond_2

    .line 628
    :cond_0
    const-string/jumbo v7, "DsEffect"

    const-string/jumbo v8, "Attempt to set disallowed parameter and offset combination"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 629
    const/4 v7, -0x5

    return v7

    .line 621
    .end local v2    # "begin":I
    .end local v3    # "end":I
    :cond_1
    array-length v7, p3

    add-int/2addr v7, p2

    add-int/lit8 v6, v7, -0x1

    .line 622
    .local v6, "offsetEnd":I
    const-string/jumbo v7, "DsEffect"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "setSingleSetting: device "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", parameter "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, ", offset ["

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "-"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    const-string/jumbo v9, "]"

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 637
    .end local v6    # "offsetEnd":I
    .restart local v2    # "begin":I
    .restart local v3    # "end":I
    :cond_2
    const/4 v7, 0x3

    invoke-direct {p0, v7}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 638
    .local v0, "baParam":[B
    array-length v7, p3

    mul-int/lit8 v7, v7, 0x2

    add-int/lit8 v7, v7, 0x8

    new-array v1, v7, [B

    .line 639
    .local v1, "baValue":[B
    const/4 v4, 0x0

    .line 640
    .local v4, "index":I
    invoke-virtual {p4}, Landroid/dolby/ds/AudioDevice;->toInt()I

    move-result v7

    invoke-static {v7, v1, v4}, Landroid/dolby/ds/DsEffect;->SetInt32InByteArray(I[BI)I

    move-result v7

    add-int/lit8 v4, v7, 0x0

    .line 641
    invoke-static {v2, v1, v4}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v7

    add-int/2addr v4, v7

    .line 642
    array-length v7, p3

    invoke-static {v7, v1, v4}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v7

    add-int/2addr v4, v7

    .line 643
    const/4 v5, 0x0

    .local v5, "j":I
    :goto_1
    array-length v7, p3

    if-ge v5, v7, :cond_3

    .line 644
    aget-short v7, p3, v5

    invoke-static {v7, v1, v4}, Landroid/dolby/ds/DsEffect;->SetInt16InByteArray(I[BI)I

    move-result v7

    add-int/2addr v4, v7

    .line 643
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 645
    :cond_3
    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeSetParameter([B[B)I

    move-result v7

    return v7
.end method

.method public setTuningSettings(Ljava/util/Map;)V
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/Map",
            "<",
            "Ljava/lang/String;",
            "[I>;)V"
        }
    .end annotation

    .prologue
    .line 492
    .local p1, "settings":Ljava/util/Map;, "Ljava/util/Map<Ljava/lang/String;[I>;"
    const-string/jumbo v0, "DsEffect"

    const-string/jumbo v1, "setTuningSettings"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    return-void
.end method

.method public setVisualizerOn(Z)I
    .locals 6
    .param p1, "enable"    # Z

    .prologue
    const/4 v3, 0x0

    .line 523
    const-string/jumbo v4, "DsEffect"

    const-string/jumbo v5, "setVisualizerOn"

    invoke-static {v4, v5}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 524
    if-eqz p1, :cond_0

    const/4 v3, 0x1

    .line 530
    .local v3, "on":I
    :cond_0
    const/4 v4, 0x7

    invoke-direct {p0, v4}, Landroid/dolby/ds/DsEffect;->intToByteArray(I)[B

    move-result-object v0

    .line 531
    .local v0, "baParam":[B
    const/4 v4, 0x4

    new-array v1, v4, [B

    .line 532
    .local v1, "baValue":[B
    const/4 v2, 0x0

    .line 533
    .local v2, "index":I
    invoke-static {v3, v1, v2}, Landroid/dolby/ds/DsEffect;->SetInt32InByteArray(I[BI)I

    move-result v4

    add-int/lit8 v2, v4, 0x0

    .line 534
    invoke-direct {p0, v0, v1}, Landroid/dolby/ds/DsEffect;->_invokeSetParameter([B[B)I

    move-result v4

    return v4
.end method
