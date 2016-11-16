.class public Landroid/dolby/ds/DsProfileSettings;
.super Ljava/lang/Object;
.source "DsProfileSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/dolby/ds/DsProfileSettings$Category;
    }
.end annotation


# static fields
.field public static final DB_SCALING_FACTOR:I = 0x10

.field private static final TAG:Ljava/lang/String; = "DsProfileSettings"

.field private static ieqBandTargets_:[[S


# instance fields
.field private allSettings_:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Landroid/dolby/ds/AudioDevice;",
            "Landroid/dolby/ds/DsAkSettings;",
            ">;"
        }
    .end annotation
.end field

.field private category_:Landroid/dolby/ds/DsProfileSettings$Category;

.field private currentIeqPreset_:I

.field private custom_:Z

.field private description_:Ljava/lang/String;

.field private displayName_:Ljava/lang/String;

.field private geqBandGains_:[[S

.field private profileParamsToBeSaved_:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 93
    const/4 v0, 0x0

    sput-object v0, Landroid/dolby/ds/DsProfileSettings;->ieqBandTargets_:[[S

    .line 31
    return-void
.end method

.method constructor <init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/dolby/ds/DsProfileSettings$Category;I[[ILjava/util/HashSet;)V
    .locals 13
    .param p1, "displayName"    # Ljava/lang/String;
    .param p2, "description"    # Ljava/lang/String;
    .param p4, "custom"    # Z
    .param p5, "category"    # Landroid/dolby/ds/DsProfileSettings$Category;
    .param p6, "ieqPreset"    # I
    .param p7, "geqSettings"    # [[I
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/Map",
            "<",
            "Landroid/dolby/ds/DsEndpoint;",
            "Landroid/dolby/ds/DsAkSettings;",
            ">;Z",
            "Landroid/dolby/ds/DsProfileSettings$Category;",
            "I[[I",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 151
    .local p3, "allSettings":Ljava/util/Map;, "Ljava/util/Map<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    .local p8, "savedParams":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 87
    const/4 v9, 0x0

    iput-object v9, p0, Landroid/dolby/ds/DsProfileSettings;->geqBandGains_:[[S

    .line 154
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->isConstantAkParamsDefined()Z

    move-result v9

    if-nez v9, :cond_0

    .line 155
    new-instance v9, Ljava/lang/InstantiationException;

    const-string/jumbo v10, "Constant AK parameters NOT defined yet."

    invoke-direct {v9, v10}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 156
    :cond_0
    sget-object v9, Landroid/dolby/ds/DsProfileSettings;->ieqBandTargets_:[[S

    if-nez v9, :cond_1

    .line 157
    new-instance v9, Ljava/lang/InstantiationException;

    const-string/jumbo v10, "IEq settings NOT defined yet."

    invoke-direct {v9, v10}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 158
    :cond_1
    iput-object p1, p0, Landroid/dolby/ds/DsProfileSettings;->displayName_:Ljava/lang/String;

    .line 159
    iput-object p2, p0, Landroid/dolby/ds/DsProfileSettings;->description_:Ljava/lang/String;

    .line 160
    move/from16 v0, p4

    iput-boolean v0, p0, Landroid/dolby/ds/DsProfileSettings;->custom_:Z

    .line 161
    move-object/from16 v0, p5

    iput-object v0, p0, Landroid/dolby/ds/DsProfileSettings;->category_:Landroid/dolby/ds/DsProfileSettings$Category;

    .line 163
    new-instance v9, Ljava/util/HashMap;

    invoke-direct {v9}, Ljava/util/HashMap;-><init>()V

    iput-object v9, p0, Landroid/dolby/ds/DsProfileSettings;->allSettings_:Ljava/util/HashMap;

    .line 165
    invoke-interface/range {p3 .. p3}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v9

    invoke-interface {v9}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .local v3, "endpoint$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v9

    if-eqz v9, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/dolby/ds/DsEndpoint;

    .line 166
    .local v2, "endpoint":Landroid/dolby/ds/DsEndpoint;
    iget-object v10, p0, Landroid/dolby/ds/DsProfileSettings;->allSettings_:Ljava/util/HashMap;

    invoke-virtual {v2}, Landroid/dolby/ds/DsEndpoint;->toDevice()Landroid/dolby/ds/AudioDevice;

    move-result-object v11

    move-object/from16 v0, p3

    invoke-interface {v0, v2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/dolby/ds/DsAkSettings;

    invoke-virtual {v10, v11, v9}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 168
    .end local v2    # "endpoint":Landroid/dolby/ds/DsEndpoint;
    :cond_2
    iget-object v9, p0, Landroid/dolby/ds/DsProfileSettings;->allSettings_:Ljava/util/HashMap;

    sget-object v10, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-virtual {v9, v10}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/dolby/ds/DsAkSettings;

    .line 170
    .local v1, "akSettings":Landroid/dolby/ds/DsAkSettings;
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->getGeqBandCount()I

    move-result v4

    .line 171
    .local v4, "gebgLen":I
    sget-object v9, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v10, 0x2

    new-array v10, v10, [I

    const/4 v11, 0x4

    const/4 v12, 0x0

    aput v11, v10, v12

    const/4 v11, 0x1

    aput v4, v10, v11

    invoke-static {v9, v10}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, [[S

    iput-object v9, p0, Landroid/dolby/ds/DsProfileSettings;->geqBandGains_:[[S

    .line 172
    if-eqz p7, :cond_6

    .line 174
    move-object/from16 v0, p7

    array-length v9, v0

    const/4 v10, 0x4

    if-ne v9, v10, :cond_3

    const/4 v9, 0x0

    aget-object v9, p7, v9

    array-length v9, v9

    if-eq v9, v4, :cond_4

    .line 176
    :cond_3
    const-string/jumbo v9, "DsProfileSettings"

    const-string/jumbo v10, "Wrong array length for GEq settings, check whether the length conforms to genb in the XML file"

    invoke-static {v9, v10}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 177
    new-instance v9, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v10, "GEq settings array length is invalid"

    invoke-direct {v9, v10}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v9

    .line 179
    :cond_4
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_1
    const/4 v9, 0x4

    if-ge v5, v9, :cond_8

    .line 181
    const/4 v8, 0x0

    .local v8, "j":I
    :goto_2
    if-ge v8, v4, :cond_5

    .line 183
    iget-object v9, p0, Landroid/dolby/ds/DsProfileSettings;->geqBandGains_:[[S

    aget-object v9, v9, v5

    aget-object v10, p7, v5

    aget v10, v10, v8

    int-to-short v10, v10

    aput-short v10, v9, v8

    .line 181
    add-int/lit8 v8, v8, 0x1

    goto :goto_2

    .line 179
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_1

    .line 189
    .end local v5    # "i":I
    .end local v8    # "j":I
    :cond_6
    const/4 v5, 0x0

    .restart local v5    # "i":I
    :goto_3
    const/4 v9, 0x4

    if-ge v5, v9, :cond_8

    .line 191
    const/4 v8, 0x0

    .restart local v8    # "j":I
    :goto_4
    if-ge v8, v4, :cond_7

    .line 194
    iget-object v9, p0, Landroid/dolby/ds/DsProfileSettings;->geqBandGains_:[[S

    aget-object v9, v9, v5

    const-string/jumbo v10, "gebg"

    invoke-virtual {v1, v10, v8}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v10

    aput-short v10, v9, v8

    .line 191
    add-int/lit8 v8, v8, 0x1

    goto :goto_4

    .line 189
    :cond_7
    add-int/lit8 v5, v5, 0x1

    goto :goto_3

    .line 199
    .end local v8    # "j":I
    :cond_8
    const-string/jumbo v9, "ieon"

    const/4 v10, 0x0

    invoke-virtual {v1, v9, v10}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v7

    .line 200
    .local v7, "ieqOn":S
    if-nez v7, :cond_a

    const/16 p6, 0x0

    .end local p6    # "ieqPreset":I
    :cond_9
    :goto_5
    move/from16 v0, p6

    iput v0, p0, Landroid/dolby/ds/DsProfileSettings;->currentIeqPreset_:I

    .line 203
    const/4 v5, 0x0

    :goto_6
    if-ge v5, v4, :cond_b

    .line 205
    iget-object v9, p0, Landroid/dolby/ds/DsProfileSettings;->geqBandGains_:[[S

    iget v10, p0, Landroid/dolby/ds/DsProfileSettings;->currentIeqPreset_:I

    aget-object v9, v9, v10

    const-string/jumbo v10, "gebg"

    iget-object v11, p0, Landroid/dolby/ds/DsProfileSettings;->geqBandGains_:[[S

    iget v12, p0, Landroid/dolby/ds/DsProfileSettings;->currentIeqPreset_:I

    aget-object v11, v11, v12

    aget-short v11, v11, v5

    invoke-virtual {v1, v10, v5, v11}, Landroid/dolby/ds/DsAkSettings;->set(Ljava/lang/String;IS)S

    move-result v10

    aput-short v10, v9, v5

    .line 203
    add-int/lit8 v5, v5, 0x1

    goto :goto_6

    .line 201
    .restart local p6    # "ieqPreset":I
    :cond_a
    if-nez p6, :cond_9

    const/16 p6, 0x1

    goto :goto_5

    .line 208
    .end local p6    # "ieqPreset":I
    :cond_b
    const-string/jumbo v9, "iebt"

    invoke-static {v9}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v6

    .line 209
    .local v6, "iebtLen":I
    const/4 v5, 0x0

    :goto_7
    if-ge v5, v6, :cond_c

    .line 211
    sget-object v9, Landroid/dolby/ds/DsProfileSettings;->ieqBandTargets_:[[S

    iget v10, p0, Landroid/dolby/ds/DsProfileSettings;->currentIeqPreset_:I

    aget-object v9, v9, v10

    const-string/jumbo v10, "iebt"

    sget-object v11, Landroid/dolby/ds/DsProfileSettings;->ieqBandTargets_:[[S

    iget v12, p0, Landroid/dolby/ds/DsProfileSettings;->currentIeqPreset_:I

    aget-object v11, v11, v12

    aget-short v11, v11, v5

    invoke-virtual {v1, v10, v5, v11}, Landroid/dolby/ds/DsAkSettings;->set(Ljava/lang/String;IS)S

    move-result v10

    aput-short v10, v9, v5

    .line 209
    add-int/lit8 v5, v5, 0x1

    goto :goto_7

    .line 214
    :cond_c
    move-object/from16 v0, p8

    iput-object v0, p0, Landroid/dolby/ds/DsProfileSettings;->profileParamsToBeSaved_:Ljava/util/HashSet;

    .line 152
    return-void
.end method

.method public static setIeqBandTargets(I[I)V
    .locals 6
    .param p0, "ieqPreset"    # I
    .param p1, "values"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v5, 0x4

    const/4 v4, 0x0

    .line 394
    if-ltz p0, :cond_0

    if-lt p0, v5, :cond_1

    .line 395
    :cond_0
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Invalid Intelligent Equalizer preset index!"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 396
    :cond_1
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->isConstantAkParamsDefined()Z

    move-result v2

    if-nez v2, :cond_2

    .line 397
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "Constant AK parameters NOT defined yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 398
    :cond_2
    const-string/jumbo v2, "iebt"

    invoke-static {v2}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v1

    .line 399
    .local v1, "iebtLen":I
    array-length v2, p1

    if-eq v2, v1, :cond_3

    .line 401
    const-string/jumbo v2, "DsProfileSettings"

    const-string/jumbo v3, "Invalid count of IEq values, check whether iebt array length conforms to ienb in the XML file"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 402
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The count of IEq values NOT equal to the IEq band count"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 404
    :cond_3
    sget-object v2, Landroid/dolby/ds/DsProfileSettings;->ieqBandTargets_:[[S

    if-nez v2, :cond_4

    .line 405
    sget-object v2, Ljava/lang/Short;->TYPE:Ljava/lang/Class;

    const/4 v3, 0x2

    new-array v3, v3, [I

    aput v5, v3, v4

    const/4 v4, 0x1

    aput v1, v3, v4

    invoke-static {v2, v3}, Ljava/lang/reflect/Array;->newInstance(Ljava/lang/Class;[I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[S

    sput-object v2, Landroid/dolby/ds/DsProfileSettings;->ieqBandTargets_:[[S

    .line 406
    :cond_4
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v1, :cond_5

    .line 407
    sget-object v2, Landroid/dolby/ds/DsProfileSettings;->ieqBandTargets_:[[S

    aget-object v2, v2, p0

    aget v3, p1, v0

    int-to-short v3, v3

    aput-short v3, v2, v0

    .line 406
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 392
    :cond_5
    return-void
.end method


# virtual methods
.method public addParamSaved(Ljava/lang/String;)V
    .locals 3
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 653
    iget-object v0, p0, Landroid/dolby/ds/DsProfileSettings;->profileParamsToBeSaved_:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/dolby/ds/DsProfileSettings;->profileParamsToBeSaved_:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 655
    const-string/jumbo v0, "DsProfileSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Add a new parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " to the saved list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 651
    :cond_0
    return-void
.end method

.method public extractClientSettings()Landroid/dolby/DsClientSettings;
    .locals 10

    .prologue
    const/4 v9, 0x0

    .line 420
    iget-object v7, p0, Landroid/dolby/ds/DsProfileSettings;->allSettings_:Ljava/util/HashMap;

    sget-object v8, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/DsAkSettings;

    .line 423
    .local v0, "akSettings":Landroid/dolby/ds/DsAkSettings;
    new-instance v1, Landroid/dolby/DsClientSettings;

    invoke-direct {v1}, Landroid/dolby/DsClientSettings;-><init>()V

    .line 426
    .local v1, "clientSettings":Landroid/dolby/DsClientSettings;
    const-string/jumbo v7, "geon"

    invoke-virtual {v0, v7, v9}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v7

    if-eqz v7, :cond_0

    const/4 v3, 0x1

    .line 427
    .local v3, "isGeqOn":Z
    :goto_0
    invoke-virtual {v1, v3}, Landroid/dolby/DsClientSettings;->setGeqOn(Z)V

    .line 428
    const-string/jumbo v7, "deon"

    invoke-virtual {v0, v7, v9}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v7

    if-eqz v7, :cond_1

    const/4 v2, 0x1

    .line 429
    .local v2, "isDialogEnhancerOn":Z
    :goto_1
    invoke-virtual {v1, v2}, Landroid/dolby/DsClientSettings;->setDialogEnhancerOn(Z)V

    .line 430
    const-string/jumbo v7, "dvle"

    invoke-virtual {v0, v7, v9}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v7

    if-eqz v7, :cond_2

    const/4 v6, 0x1

    .line 431
    .local v6, "isVolumeLevellerOn":Z
    :goto_2
    invoke-virtual {v1, v6}, Landroid/dolby/DsClientSettings;->setVolumeLevellerOn(Z)V

    .line 432
    const-string/jumbo v7, "vdhe"

    invoke-virtual {v0, v7, v9}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v7

    if-eqz v7, :cond_3

    const/4 v4, 0x1

    .line 433
    .local v4, "isHeadphoneVirtualizerOn":Z
    :goto_3
    invoke-virtual {v1, v4}, Landroid/dolby/DsClientSettings;->setHeadphoneVirtualizerOn(Z)V

    .line 434
    const-string/jumbo v7, "vspe"

    invoke-virtual {v0, v7, v9}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v7

    if-eqz v7, :cond_4

    const/4 v5, 0x1

    .line 435
    .local v5, "isSpeakerVirtualizerOn":Z
    :goto_4
    invoke-virtual {v1, v5}, Landroid/dolby/DsClientSettings;->setSpeakerVirtualizerOn(Z)V

    .line 437
    return-object v1

    .line 426
    .end local v2    # "isDialogEnhancerOn":Z
    .end local v3    # "isGeqOn":Z
    .end local v4    # "isHeadphoneVirtualizerOn":Z
    .end local v5    # "isSpeakerVirtualizerOn":Z
    .end local v6    # "isVolumeLevellerOn":Z
    :cond_0
    const/4 v3, 0x0

    .restart local v3    # "isGeqOn":Z
    goto :goto_0

    .line 428
    :cond_1
    const/4 v2, 0x0

    .restart local v2    # "isDialogEnhancerOn":Z
    goto :goto_1

    .line 430
    :cond_2
    const/4 v6, 0x0

    .restart local v6    # "isVolumeLevellerOn":Z
    goto :goto_2

    .line 432
    :cond_3
    const/4 v4, 0x0

    .restart local v4    # "isHeadphoneVirtualizerOn":Z
    goto :goto_3

    .line 434
    :cond_4
    const/4 v5, 0x0

    .restart local v5    # "isSpeakerVirtualizerOn":Z
    goto :goto_4
.end method

.method getAllSettings()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map",
            "<",
            "Landroid/dolby/ds/AudioDevice;",
            "Landroid/dolby/ds/DsAkSettings;",
            ">;"
        }
    .end annotation

    .prologue
    .line 228
    iget-object v0, p0, Landroid/dolby/ds/DsProfileSettings;->allSettings_:Ljava/util/HashMap;

    return-object v0
.end method

.method public getCategory()Landroid/dolby/ds/DsProfileSettings$Category;
    .locals 1

    .prologue
    .line 277
    iget-object v0, p0, Landroid/dolby/ds/DsProfileSettings;->category_:Landroid/dolby/ds/DsProfileSettings$Category;

    return-object v0
.end method

.method public getCurrentProfileSettings()Ljava/lang/String;
    .locals 9

    .prologue
    .line 295
    iget-object v7, p0, Landroid/dolby/ds/DsProfileSettings;->allSettings_:Ljava/util/HashMap;

    sget-object v8, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-virtual {v7, v8}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/DsAkSettings;

    .line 296
    .local v0, "akSettings":Landroid/dolby/ds/DsAkSettings;
    const/4 v5, 0x0

    .line 298
    .local v5, "settingStr":Ljava/lang/String;
    iget-object v7, p0, Landroid/dolby/ds/DsProfileSettings;->profileParamsToBeSaved_:Ljava/util/HashSet;

    if-eqz v7, :cond_2

    .line 300
    const-string/jumbo v5, ""

    .line 302
    .local v5, "settingStr":Ljava/lang/String;
    iget-object v7, p0, Landroid/dolby/ds/DsProfileSettings;->profileParamsToBeSaved_:Ljava/util/HashSet;

    invoke-virtual {v7}, Ljava/util/HashSet;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 303
    .local v1, "iter":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_2

    .line 305
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/lang/String;

    .line 306
    .local v4, "param":Ljava/lang/String;
    const/4 v7, 0x0

    invoke-virtual {v0, v4, v7}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v6

    .line 307
    .local v6, "value":S
    invoke-static {v4}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v3

    .line 308
    .local v3, "len":I
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "=["

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 309
    const/4 v2, 0x1

    .local v2, "j":I
    :goto_1
    if-ge v2, v3, :cond_0

    .line 311
    invoke-virtual {v0, v4, v2}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v6

    .line 312
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, ", "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-static {v6}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    .line 309
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 314
    :cond_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v7

    if-eqz v7, :cond_1

    .line 315
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "] "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto :goto_0

    .line 317
    :cond_1
    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v7, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, "]"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    goto/16 :goto_0

    .line 320
    .end local v1    # "iter":Ljava/util/Iterator;
    .end local v2    # "j":I
    .end local v3    # "len":I
    .end local v4    # "param":Ljava/lang/String;
    .end local v5    # "settingStr":Ljava/lang/String;
    .end local v6    # "value":S
    :cond_2
    return-object v5
.end method

.method public getDescription()Ljava/lang/String;
    .locals 1

    .prologue
    .line 257
    iget-object v0, p0, Landroid/dolby/ds/DsProfileSettings;->description_:Ljava/lang/String;

    return-object v0
.end method

.method public getDisplayName()Ljava/lang/String;
    .locals 1

    .prologue
    .line 247
    iget-object v0, p0, Landroid/dolby/ds/DsProfileSettings;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public getDsApParam(Ljava/lang/String;)[I
    .locals 6
    .param p1, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 618
    sget-object v3, Landroid/dolby/ds/DsAkSettings;->akSettableParamDefinitions:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 620
    const-string/jumbo v3, "DsProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the parameter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is NOT retrievable."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 621
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "Invalid parameter"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 624
    :cond_0
    iget-object v3, p0, Landroid/dolby/ds/DsProfileSettings;->allSettings_:Ljava/util/HashMap;

    sget-object v4, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/DsAkSettings;

    .line 625
    .local v0, "akSettings":Landroid/dolby/ds/DsAkSettings;
    invoke-static {p1}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v3

    new-array v2, v3, [I

    .line 626
    .local v2, "values":[I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, v2

    if-ge v1, v3, :cond_1

    .line 628
    invoke-virtual {v0, p1, v1}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v3

    aput v3, v2, v1

    .line 626
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 630
    :cond_1
    return-object v2
.end method

.method public getGeq(I)[F
    .locals 6
    .param p1, "preset"    # I

    .prologue
    .line 568
    iget-object v4, p0, Landroid/dolby/ds/DsProfileSettings;->allSettings_:Ljava/util/HashMap;

    sget-object v5, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/DsAkSettings;

    .line 570
    .local v0, "akSettings":Landroid/dolby/ds/DsAkSettings;
    const-string/jumbo v4, "gebf"

    invoke-static {v4}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v1

    .line 571
    .local v1, "gebfLen":I
    new-array v3, v1, [F

    .line 572
    .local v3, "values":[F
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 574
    const-string/jumbo v4, "gebg"

    invoke-virtual {v0, v4, v2}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v4

    int-to-float v4, v4

    const/high16 v5, 0x41800000    # 16.0f

    div-float/2addr v4, v5

    aput v4, v3, v2

    .line 572
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 576
    :cond_0
    return-object v3
.end method

.method public getGeqGainArray()[[S
    .locals 1

    .prologue
    .line 285
    iget-object v0, p0, Landroid/dolby/ds/DsProfileSettings;->geqBandGains_:[[S

    return-object v0
.end method

.method public getIeqPreset()I
    .locals 1

    .prologue
    .line 532
    iget v0, p0, Landroid/dolby/ds/DsProfileSettings;->currentIeqPreset_:I

    return v0
.end method

.method public getParamsSaved()[Ljava/lang/Object;
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 640
    iget-object v0, p0, Landroid/dolby/ds/DsProfileSettings;->profileParamsToBeSaved_:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    .line 641
    iget-object v0, p0, Landroid/dolby/ds/DsProfileSettings;->profileParamsToBeSaved_:Ljava/util/HashSet;

    invoke-virtual {v0}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0

    .line 643
    :cond_0
    return-object v1
.end method

.method public isCustom()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Landroid/dolby/ds/DsProfileSettings;->custom_:Z

    return v0
.end method

.method public newFrom(Landroid/dolby/ds/DsProfileSettings;)V
    .locals 6
    .param p1, "source"    # Landroid/dolby/ds/DsProfileSettings;

    .prologue
    .line 334
    invoke-virtual {p1}, Landroid/dolby/ds/DsProfileSettings;->getAllSettings()Ljava/util/Map;

    move-result-object v2

    .line 335
    .local v2, "allSettings":Ljava/util/Map;, "Ljava/util/Map<Landroid/dolby/ds/AudioDevice;Landroid/dolby/ds/DsAkSettings;>;"
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    iput-object v3, p0, Landroid/dolby/ds/DsProfileSettings;->allSettings_:Ljava/util/HashMap;

    .line 336
    invoke-interface {v2}, Ljava/util/Map;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "ad$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/AudioDevice;

    .line 337
    .local v0, "ad":Landroid/dolby/ds/AudioDevice;
    iget-object v4, p0, Landroid/dolby/ds/DsProfileSettings;->allSettings_:Ljava/util/HashMap;

    new-instance v5, Landroid/dolby/ds/DsAkSettings;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/dolby/ds/DsAkSettings;

    invoke-direct {v5, v3}, Landroid/dolby/ds/DsAkSettings;-><init>(Landroid/dolby/ds/DsAkSettings;)V

    invoke-virtual {v4, v0, v5}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 332
    .end local v0    # "ad":Landroid/dolby/ds/AudioDevice;
    :cond_0
    return-void
.end method

.method public newFrom(Ljava/lang/String;)V
    .locals 0
    .param p1, "profileSpec"    # Ljava/lang/String;

    .prologue
    .line 349
    return-void
.end method

.method public removeParamSaved(Ljava/lang/String;)V
    .locals 3
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 666
    iget-object v0, p0, Landroid/dolby/ds/DsProfileSettings;->profileParamsToBeSaved_:Ljava/util/HashSet;

    if-eqz v0, :cond_0

    iget-object v0, p0, Landroid/dolby/ds/DsProfileSettings;->profileParamsToBeSaved_:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->remove(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 668
    const-string/jumbo v0, "DsProfileSettings"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Remove the parameter "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, " from the saved list"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 664
    :cond_0
    return-void
.end method

.method public setDescription(Ljava/lang/String;)V
    .locals 1
    .param p1, "description"    # Ljava/lang/String;

    .prologue
    .line 377
    invoke-virtual {p0}, Landroid/dolby/ds/DsProfileSettings;->isCustom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 379
    iput-object p1, p0, Landroid/dolby/ds/DsProfileSettings;->description_:Ljava/lang/String;

    .line 375
    :cond_0
    return-void
.end method

.method public setDisplayName(Ljava/lang/String;)V
    .locals 1
    .param p1, "displayName"    # Ljava/lang/String;

    .prologue
    .line 363
    invoke-virtual {p0}, Landroid/dolby/ds/DsProfileSettings;->isCustom()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 365
    iput-object p1, p0, Landroid/dolby/ds/DsProfileSettings;->displayName_:Ljava/lang/String;

    .line 361
    :cond_0
    return-void
.end method

.method public setDsApParam(Ljava/lang/String;[S)V
    .locals 6
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "values"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 589
    sget-object v3, Landroid/dolby/ds/DsAkSettings;->akSettableParamDefinitions:Ljava/util/HashSet;

    invoke-virtual {v3, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 591
    const-string/jumbo v3, "DsProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the parameter "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is NOT settable."

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 592
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "Invalid parameter"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 594
    :cond_0
    invoke-static {p1}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v2

    .line 595
    .local v2, "len":I
    array-length v3, p2

    if-eq v3, v2, :cond_1

    .line 597
    const-string/jumbo v3, "DsProfileSettings"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "the values length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    array-length v5, p2

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " is NOT compatible with the desired length "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 598
    new-instance v3, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v4, "Invalid values length"

    invoke-direct {v3, v4}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 601
    :cond_1
    iget-object v3, p0, Landroid/dolby/ds/DsProfileSettings;->allSettings_:Ljava/util/HashMap;

    sget-object v4, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-virtual {v3, v4}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/DsAkSettings;

    .line 602
    .local v0, "akSettings":Landroid/dolby/ds/DsAkSettings;
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v3, p2

    if-ge v1, v3, :cond_2

    .line 604
    aget-short v3, p2, v1

    invoke-virtual {v0, p1, v1, v3}, Landroid/dolby/ds/DsAkSettings;->set(Ljava/lang/String;IS)S

    move-result v3

    aput-short v3, p2, v1

    .line 602
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 587
    :cond_2
    return-void
.end method

.method public setGeq(I[F)[S
    .locals 6
    .param p1, "preset"    # I
    .param p2, "gains"    # [F

    .prologue
    .line 545
    iget-object v4, p0, Landroid/dolby/ds/DsProfileSettings;->allSettings_:Ljava/util/HashMap;

    sget-object v5, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/DsAkSettings;

    .line 547
    .local v0, "akSettings":Landroid/dolby/ds/DsAkSettings;
    const-string/jumbo v4, "gebf"

    invoke-static {v4}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v1

    .line 548
    .local v1, "gebfLen":I
    new-array v3, v1, [S

    .line 549
    .local v3, "values":[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    if-ge v2, v1, :cond_0

    .line 551
    aget v4, p2, v2

    const/high16 v5, 0x41800000    # 16.0f

    mul-float/2addr v4, v5

    float-to-int v4, v4

    int-to-short v4, v4

    aput-short v4, v3, v2

    .line 552
    const-string/jumbo v4, "gebg"

    aget-short v5, v3, v2

    invoke-virtual {v0, v4, v2, v5}, Landroid/dolby/ds/DsAkSettings;->set(Ljava/lang/String;IS)S

    move-result v4

    aput-short v4, v3, v2

    .line 554
    iget-object v4, p0, Landroid/dolby/ds/DsProfileSettings;->geqBandGains_:[[S

    aget-object v4, v4, p1

    aget-short v5, v3, v2

    aput-short v5, v4, v2

    .line 549
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 556
    :cond_0
    return-object v3
.end method

.method public setIeqPreset(I)V
    .locals 7
    .param p1, "preset"    # I

    .prologue
    const/4 v5, 0x0

    .line 502
    iget-object v4, p0, Landroid/dolby/ds/DsProfileSettings;->allSettings_:Ljava/util/HashMap;

    sget-object v6, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-virtual {v4, v6}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/DsAkSettings;

    .line 504
    .local v0, "akSettings":Landroid/dolby/ds/DsAkSettings;
    iget v4, p0, Landroid/dolby/ds/DsProfileSettings;->currentIeqPreset_:I

    if-eq p1, v4, :cond_3

    .line 506
    const-string/jumbo v6, "ieon"

    if-eqz p1, :cond_0

    const/4 v4, 0x1

    :goto_0
    invoke-virtual {v0, v6, v5, v4}, Landroid/dolby/ds/DsAkSettings;->set(Ljava/lang/String;IS)S

    .line 507
    const-string/jumbo v4, "iebt"

    invoke-static {v4}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v3

    .line 508
    .local v3, "iebtLen":I
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_1
    if-ge v2, v3, :cond_1

    .line 510
    sget-object v4, Landroid/dolby/ds/DsProfileSettings;->ieqBandTargets_:[[S

    aget-object v4, v4, p1

    const-string/jumbo v5, "iebt"

    sget-object v6, Landroid/dolby/ds/DsProfileSettings;->ieqBandTargets_:[[S

    aget-object v6, v6, p1

    aget-short v6, v6, v2

    invoke-virtual {v0, v5, v2, v6}, Landroid/dolby/ds/DsAkSettings;->set(Ljava/lang/String;IS)S

    move-result v5

    aput-short v5, v4, v2

    .line 508
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .end local v2    # "i":I
    .end local v3    # "iebtLen":I
    :cond_0
    move v4, v5

    .line 506
    goto :goto_0

    .line 512
    .restart local v2    # "i":I
    .restart local v3    # "iebtLen":I
    :cond_1
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->getGeqBandCount()I

    move-result v1

    .line 513
    .local v1, "gebgLen":I
    const/4 v2, 0x0

    :goto_2
    if-ge v2, v1, :cond_2

    .line 515
    iget-object v4, p0, Landroid/dolby/ds/DsProfileSettings;->geqBandGains_:[[S

    aget-object v4, v4, p1

    const-string/jumbo v5, "gebg"

    iget-object v6, p0, Landroid/dolby/ds/DsProfileSettings;->geqBandGains_:[[S

    aget-object v6, v6, p1

    aget-short v6, v6, v2

    invoke-virtual {v0, v5, v2, v6}, Landroid/dolby/ds/DsAkSettings;->set(Ljava/lang/String;IS)S

    move-result v5

    aput-short v5, v4, v2

    .line 513
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 517
    :cond_2
    iput p1, p0, Landroid/dolby/ds/DsProfileSettings;->currentIeqPreset_:I

    .line 500
    .end local v1    # "gebgLen":I
    .end local v2    # "i":I
    .end local v3    # "iebtLen":I
    :goto_3
    return-void

    .line 521
    :cond_3
    const-string/jumbo v4, "DsProfileSettings"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Set the same Ieq value "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " as last time, nothing will be done."

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_3
.end method

.method public toString()Ljava/lang/String;
    .locals 1

    .prologue
    .line 237
    iget-object v0, p0, Landroid/dolby/ds/DsProfileSettings;->displayName_:Ljava/lang/String;

    return-object v0
.end method

.method public updateFromClientSettings(Landroid/dolby/DsClientSettings;)Ljava/util/ArrayList;
    .locals 11
    .param p1, "clientSettings"    # Landroid/dolby/DsClientSettings;

    .prologue
    const/4 v10, 0x0

    .line 451
    iget-object v8, p0, Landroid/dolby/ds/DsProfileSettings;->allSettings_:Ljava/util/HashMap;

    sget-object v9, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-virtual {v8, v9}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/DsAkSettings;

    .line 453
    .local v0, "akSettings":Landroid/dolby/ds/DsAkSettings;
    const/4 v4, 0x0

    .line 454
    .local v4, "isGeqBandGainsChanged":Z
    new-instance v5, Ljava/util/ArrayList;

    invoke-direct {v5}, Ljava/util/ArrayList;-><init>()V

    .line 457
    .local v5, "paramsChanged":Ljava/util/ArrayList;, "Ljava/util/ArrayList<Ljava/lang/String;>;"
    invoke-virtual {p1}, Landroid/dolby/DsClientSettings;->getGeqOn()Z

    move-result v8

    if-eqz v8, :cond_5

    const/4 v2, 0x1

    .line 458
    .local v2, "geqOn":S
    :goto_0
    const-string/jumbo v8, "geon"

    invoke-virtual {v0, v8, v10}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v8

    if-eq v2, v8, :cond_0

    .line 460
    const-string/jumbo v8, "geon"

    invoke-virtual {v0, v8, v10, v2}, Landroid/dolby/ds/DsAkSettings;->set(Ljava/lang/String;IS)S

    .line 461
    const-string/jumbo v8, "geon"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 464
    :cond_0
    invoke-virtual {p1}, Landroid/dolby/DsClientSettings;->getDialogEnhancerOn()Z

    move-result v8

    if-eqz v8, :cond_6

    const/4 v1, 0x1

    .line 465
    .local v1, "dialogEnhancerOn":S
    :goto_1
    const-string/jumbo v8, "deon"

    invoke-virtual {v0, v8, v10}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v8

    if-eq v1, v8, :cond_1

    .line 467
    const-string/jumbo v8, "deon"

    invoke-virtual {v0, v8, v10, v1}, Landroid/dolby/ds/DsAkSettings;->set(Ljava/lang/String;IS)S

    .line 468
    const-string/jumbo v8, "deon"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 471
    :cond_1
    invoke-virtual {p1}, Landroid/dolby/DsClientSettings;->getVolumeLevellerOn()Z

    move-result v8

    if-eqz v8, :cond_7

    const/4 v7, 0x1

    .line 472
    .local v7, "volumeLevellerOn":S
    :goto_2
    const-string/jumbo v8, "dvle"

    invoke-virtual {v0, v8, v10}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v8

    if-eq v7, v8, :cond_2

    .line 474
    const-string/jumbo v8, "dvle"

    invoke-virtual {v0, v8, v10, v7}, Landroid/dolby/ds/DsAkSettings;->set(Ljava/lang/String;IS)S

    .line 475
    const-string/jumbo v8, "dvle"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 478
    :cond_2
    invoke-virtual {p1}, Landroid/dolby/DsClientSettings;->getHeadphoneVirtualizerOn()Z

    move-result v8

    if-eqz v8, :cond_8

    const/4 v3, 0x2

    .line 479
    .local v3, "headphoneVirtualizerOn":S
    :goto_3
    const-string/jumbo v8, "vdhe"

    invoke-virtual {v0, v8, v10}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v8

    if-eq v3, v8, :cond_3

    .line 481
    const-string/jumbo v8, "vdhe"

    invoke-virtual {v0, v8, v10, v3}, Landroid/dolby/ds/DsAkSettings;->set(Ljava/lang/String;IS)S

    .line 482
    const-string/jumbo v8, "vdhe"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 485
    :cond_3
    invoke-virtual {p1}, Landroid/dolby/DsClientSettings;->getSpeakerVirtualizerOn()Z

    move-result v8

    if-eqz v8, :cond_9

    const/4 v6, 0x2

    .line 486
    .local v6, "speakerVirtualizerOn":S
    :goto_4
    const-string/jumbo v8, "vspe"

    invoke-virtual {v0, v8, v10}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v8

    if-eq v6, v8, :cond_4

    .line 488
    const-string/jumbo v8, "vspe"

    invoke-virtual {v0, v8, v10, v6}, Landroid/dolby/ds/DsAkSettings;->set(Ljava/lang/String;IS)S

    .line 489
    const-string/jumbo v8, "vspe"

    invoke-virtual {v5, v8}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 492
    :cond_4
    return-object v5

    .line 457
    .end local v1    # "dialogEnhancerOn":S
    .end local v2    # "geqOn":S
    .end local v3    # "headphoneVirtualizerOn":S
    .end local v6    # "speakerVirtualizerOn":S
    .end local v7    # "volumeLevellerOn":S
    :cond_5
    const/4 v2, 0x0

    .restart local v2    # "geqOn":S
    goto/16 :goto_0

    .line 464
    :cond_6
    const/4 v1, 0x0

    .restart local v1    # "dialogEnhancerOn":S
    goto :goto_1

    .line 471
    :cond_7
    const/4 v7, 0x0

    .restart local v7    # "volumeLevellerOn":S
    goto :goto_2

    .line 478
    :cond_8
    const/4 v3, 0x0

    .restart local v3    # "headphoneVirtualizerOn":S
    goto :goto_3

    .line 485
    :cond_9
    const/4 v6, 0x0

    .restart local v6    # "speakerVirtualizerOn":S
    goto :goto_4
.end method
