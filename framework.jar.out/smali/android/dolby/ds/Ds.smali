.class public Landroid/dolby/ds/Ds;
.super Ljava/lang/Object;
.source "Ds.java"


# static fields
.field public static final DS_CURRENT_FILENAME:Ljava/lang/String; = "ds1-current.xml"

.field public static final DS_STATE_FILENAME:Ljava/lang/String; = "ds1-state.xml"

.field private static final DS_VERSION_EXTERNAL:Ljava/lang/String; = "DS version 1.8.0.0"

.field private static final DS_VERSION_INTERNAL:Ljava/lang/String; = "DS version 1.8.0.0 [Build 5]"

.field private static final LPA_INVALID_SESSION_ID:I = -0x2

.field private static final TAG:Ljava/lang/String; = "Ds"

.field private static final useOffProfileForDsOff:Z


# instance fields
.field private audioSessionId_:I

.field private currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

.field private defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

.field private dsEffect_:Landroid/dolby/ds/DsEffect;

.field private dsLpaEffect_:Landroid/dolby/ds/DsEffect;

.field private isDsOn_:Z

.field private lpaAudioSessionId_:I

.field private offProfile_:Landroid/dolby/ds/DsProfileSettings;

.field private selectedProfile_:I


# direct methods
.method public constructor <init>(I)V
    .locals 4
    .param p1, "audioSessionId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/ClassNotFoundException;,
            Ljava/lang/NoSuchMethodException;,
            Ljava/lang/InstantiationException;,
            Ljava/lang/IllegalAccessException;,
            Ljava/lang/reflect/InvocationTargetException;,
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x6

    const/4 v3, 0x0

    .line 114
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 42
    new-array v0, v1, [Landroid/dolby/ds/DsProfileSettings;

    iput-object v0, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    .line 47
    new-array v0, v1, [Landroid/dolby/ds/DsProfileSettings;

    iput-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    .line 57
    iput v3, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    .line 62
    const/4 v0, 0x1

    iput-boolean v0, p0, Landroid/dolby/ds/Ds;->isDsOn_:Z

    .line 67
    iput-object v2, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    .line 86
    const/4 v0, -0x2

    iput v0, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    .line 91
    iput-object v2, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    .line 117
    const-string/jumbo v0, "Ds"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Creating Ds effect on audioSessionId = "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 119
    if-gez p1, :cond_0

    .line 121
    const-string/jumbo v0, "Ds"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ds effect with specified session Id ("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ") is less than zero"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 115
    :goto_0
    return-void

    .line 126
    :cond_0
    invoke-static {}, Landroid/dolby/ds/DsPresetsConfiguration;->getDefaultSettings()[Landroid/dolby/ds/DsProfileSettings;

    move-result-object v0

    iput-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    .line 129
    invoke-static {}, Landroid/dolby/ds/DsPresetsConfiguration;->getCurrentSettings()[Landroid/dolby/ds/DsProfileSettings;

    move-result-object v0

    iput-object v0, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    .line 137
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->isConstantAkParamsDefined()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 139
    iput p1, p0, Landroid/dolby/ds/Ds;->audioSessionId_:I

    .line 140
    new-instance v0, Landroid/dolby/ds/DsEffect;

    iget v1, p0, Landroid/dolby/ds/Ds;->audioSessionId_:I

    invoke-direct {v0, v1}, Landroid/dolby/ds/DsEffect;-><init>(I)V

    iput-object v0, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    .line 141
    invoke-direct {p0, v3}, Landroid/dolby/ds/Ds;->setInitStatus(Z)V

    goto :goto_0

    .line 145
    :cond_1
    new-instance v0, Ljava/lang/InstantiationException;

    const-string/jumbo v1, "Constant AK parameters NOT defined yet."

    invoke-direct {v0, v1}, Ljava/lang/InstantiationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method public static populateSettings(Ljava/io/InputStream;Ljava/lang/String;)Z
    .locals 10
    .param p0, "defaultInStream"    # Ljava/io/InputStream;
    .param p1, "dir"    # Ljava/lang/String;

    .prologue
    const/4 v9, 0x0

    .line 249
    const/4 v5, 0x1

    .line 250
    .local v5, "ret":Z
    const-string/jumbo v6, "Ds"

    const-string/jumbo v7, "populateSettings"

    invoke-static {v6, v7}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 252
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ds1-current.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    .line 253
    .local v1, "dsCurSettingsPath":Ljava/lang/String;
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "/"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "ds1-state.xml"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 254
    .local v2, "dsStatePath":Ljava/lang/String;
    invoke-static {v1, v2}, Landroid/dolby/ds/DsStoreUtil;->storeDsPath(Ljava/lang/String;Ljava/lang/String;)V

    .line 258
    :try_start_0
    new-instance v0, Ljava/io/FileInputStream;

    invoke-direct {v0, v1}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V

    .line 259
    .local v0, "currentInStream":Ljava/io/FileInputStream;
    const/4 v6, 0x0

    invoke-static {v0, p0, v6}, Landroid/dolby/ds/DsPresetsConfiguration;->xmlConfigParsing(Ljava/io/InputStream;Ljava/io/InputStream;Z)Z

    move-result v5

    .line 260
    .local v5, "ret":Z
    invoke-virtual {v0}, Ljava/io/FileInputStream;->close()V

    .line 261
    invoke-virtual {p0}, Ljava/io/InputStream;->close()V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 276
    .end local v0    # "currentInStream":Ljava/io/FileInputStream;
    .end local v5    # "ret":Z
    :goto_0
    if-eqz v5, :cond_0

    .line 278
    invoke-static {v9}, Landroid/dolby/ds/DsPresetsConfiguration;->createProfileSettings(Z)Z

    move-result v5

    .line 279
    .restart local v5    # "ret":Z
    if-eqz v5, :cond_0

    .line 282
    invoke-static {}, Landroid/dolby/ds/DsPresetsConfiguration;->getParserStatusFlag()Z

    move-result v5

    .line 286
    .end local v5    # "ret":Z
    :cond_0
    return v5

    .line 270
    :catch_0
    move-exception v4

    .line 271
    .local v4, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "Ds"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "populateSettings(): Exception loading "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " or parsing the file"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 272
    invoke-virtual {v4}, Ljava/lang/Exception;->printStackTrace()V

    .line 273
    const/4 v5, 0x0

    .local v5, "ret":Z
    goto :goto_0

    .line 264
    .end local v4    # "e":Ljava/lang/Exception;
    .end local v5    # "ret":Z
    :catch_1
    move-exception v3

    .line 265
    .local v3, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v6, "Ds"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Cannot find DS config XML file "

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    invoke-virtual {v3}, Ljava/io/FileNotFoundException;->printStackTrace()V

    .line 267
    const/4 v5, 0x0

    .restart local v5    # "ret":Z
    goto :goto_0
.end method

.method private recreateDsEffect()Z
    .locals 5

    .prologue
    .line 1170
    const/4 v2, 0x0

    .line 1171
    .local v2, "ret":Z
    const-string/jumbo v3, "Ds"

    const-string/jumbo v4, "recreateDsEffect"

    invoke-static {v3, v4}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1174
    :try_start_0
    iget-object v3, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    if-eqz v3, :cond_0

    .line 1176
    iget-object v3, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v3}, Landroid/dolby/ds/DsEffect;->release()V

    .line 1178
    :cond_0
    new-instance v3, Landroid/dolby/ds/DsEffect;

    iget v4, p0, Landroid/dolby/ds/Ds;->audioSessionId_:I

    invoke-direct {v3, v4}, Landroid/dolby/ds/DsEffect;-><init>(I)V

    iput-object v3, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    .line 1180
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->isLpaActive()Z

    move-result v3

    if-eqz v3, :cond_1

    .line 1183
    iget v1, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    .line 1184
    .local v1, "lpaAudioSessionId":I
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->destroyDsLpaEffect()V

    .line 1185
    invoke-virtual {p0, v1}, Landroid/dolby/ds/Ds;->createDsLpaEffect(I)V

    .line 1188
    .end local v1    # "lpaAudioSessionId":I
    :cond_1
    const/4 v3, 0x1

    invoke-direct {p0, v3}, Landroid/dolby/ds/Ds;->setInitStatus(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1189
    const/4 v2, 0x1

    .line 1196
    :goto_0
    return v2

    .line 1192
    :catch_0
    move-exception v0

    .line 1193
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "Ds"

    const-string/jumbo v4, "Exception in recreateDsEffect."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1194
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method

.method private setInitStatus(Z)V
    .locals 6
    .param p1, "useExistingState"    # Z

    .prologue
    const/4 v2, 0x0

    const/4 v3, 0x1

    .line 1206
    if-nez p1, :cond_1

    .line 1209
    invoke-static {}, Landroid/dolby/ds/DsStoreUtil;->loadDsState()[Ljava/lang/String;

    move-result-object v1

    .line 1210
    .local v1, "restoredState":[Ljava/lang/String;
    aget-object v4, v1, v2

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    move v2, v3

    :cond_0
    iput-boolean v2, p0, Landroid/dolby/ds/Ds;->isDsOn_:Z

    .line 1211
    aget-object v2, v1, v3

    invoke-static {v2}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v2

    iput v2, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    .line 1214
    .end local v1    # "restoredState":[Ljava/lang/String;
    :cond_1
    const-string/jumbo v2, "Ds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restore Ds="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-boolean v4, p0, Landroid/dolby/ds/Ds;->isDsOn_:Z

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1215
    const-string/jumbo v2, "Ds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "restore profile="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1220
    :try_start_0
    iget-object v2, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/dolby/ds/DsEffect;->setEnabled(Z)I

    .line 1221
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->isLpaActive()Z

    move-result v2

    if-eqz v2, :cond_2

    .line 1223
    iget-object v2, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    const/4 v3, 0x1

    invoke-virtual {v2, v3}, Landroid/dolby/ds/DsEffect;->setEnabled(Z)I

    .line 1227
    :cond_2
    iget v2, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    invoke-virtual {p0, v2}, Landroid/dolby/ds/Ds;->setSelectedProfile(I)Z

    .line 1228
    iget-boolean v2, p0, Landroid/dolby/ds/Ds;->isDsOn_:Z

    invoke-virtual {p0, v2}, Landroid/dolby/ds/Ds;->setDsOn(Z)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1204
    :goto_0
    return-void

    .line 1231
    :catch_0
    move-exception v0

    .line 1232
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Ds"

    const-string/jumbo v3, "Exception in setInitStatus"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1233
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0
.end method


# virtual methods
.method public createDsLpaEffect(I)V
    .locals 11
    .param p1, "lpaAudioSessionId"    # I

    .prologue
    const/4 v10, -0x2

    .line 157
    const-string/jumbo v7, "Ds"

    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v9, "Creating DsLpa effect on audioSessionId = "

    invoke-virtual {v8, v9}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v8

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-static {v7, v8}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 160
    :try_start_0
    iget v7, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    if-eq p1, v7, :cond_0

    .line 162
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->destroyDsLpaEffect()V

    .line 163
    new-instance v7, Landroid/dolby/ds/DsEffect;

    invoke-direct {v7, p1}, Landroid/dolby/ds/DsEffect;-><init>(I)V

    iput-object v7, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    .line 164
    iput p1, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    .line 165
    const/4 v7, 0x1

    invoke-direct {p0, v7}, Landroid/dolby/ds/Ds;->setInitStatus(Z)V
    :try_end_0
    .catch Ljava/lang/ClassNotFoundException; {:try_start_0 .. :try_end_0} :catch_6
    .catch Ljava/lang/InstantiationException; {:try_start_0 .. :try_end_0} :catch_5
    .catch Ljava/lang/IllegalAccessException; {:try_start_0 .. :try_end_0} :catch_4
    .catch Ljava/lang/NoSuchMethodException; {:try_start_0 .. :try_end_0} :catch_3
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/IllegalStateException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 155
    :cond_0
    :goto_0
    return-void

    .line 199
    :catch_0
    move-exception v1

    .line 200
    .local v1, "ex":Ljava/lang/Exception;
    iput v10, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    .line 201
    const-string/jumbo v7, "Ds"

    const-string/jumbo v8, "createDsLpaEffect() FAILED! Exception"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 202
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    goto :goto_0

    .line 194
    .end local v1    # "ex":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 195
    .local v3, "ex":Ljava/lang/IllegalStateException;
    iput v10, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    .line 196
    const-string/jumbo v7, "Ds"

    const-string/jumbo v8, "createDsLpaEffect() FAILED! IllegalStateException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 189
    .end local v3    # "ex":Ljava/lang/IllegalStateException;
    :catch_2
    move-exception v6

    .line 190
    .local v6, "ex":Ljava/lang/reflect/InvocationTargetException;
    iput v10, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    .line 191
    const-string/jumbo v7, "Ds"

    const-string/jumbo v8, "createDsLpaEffect() FAILED! InvocationTargetException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 184
    .end local v6    # "ex":Ljava/lang/reflect/InvocationTargetException;
    :catch_3
    move-exception v5

    .line 185
    .local v5, "ex":Ljava/lang/NoSuchMethodException;
    iput v10, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    .line 186
    const-string/jumbo v7, "Ds"

    const-string/jumbo v8, "createDsLpaEffect() FAILED! NoSuchMethodException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 179
    .end local v5    # "ex":Ljava/lang/NoSuchMethodException;
    :catch_4
    move-exception v2

    .line 180
    .local v2, "ex":Ljava/lang/IllegalAccessException;
    iput v10, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    .line 181
    const-string/jumbo v7, "Ds"

    const-string/jumbo v8, "createDsLpaEffect() FAILED! IllegalAccessException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 174
    .end local v2    # "ex":Ljava/lang/IllegalAccessException;
    :catch_5
    move-exception v4

    .line 175
    .local v4, "ex":Ljava/lang/InstantiationException;
    iput v10, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    .line 176
    const-string/jumbo v7, "Ds"

    const-string/jumbo v8, "createDsLpaEffect() FAILED! InstantiationException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 169
    .end local v4    # "ex":Ljava/lang/InstantiationException;
    :catch_6
    move-exception v0

    .line 170
    .local v0, "ex":Ljava/lang/ClassNotFoundException;
    iput v10, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    .line 171
    const-string/jumbo v7, "Ds"

    const-string/jumbo v8, "createDsLpaEffect() FAILED! ClassNotFoundException"

    invoke-static {v7, v8}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public destroyDsLpaEffect()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 212
    iget-object v0, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    if-eqz v0, :cond_0

    .line 214
    iget-object v0, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v0}, Landroid/dolby/ds/DsEffect;->release()V

    .line 215
    iput-object v1, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    .line 216
    const/4 v0, -0x2

    iput v0, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    .line 210
    :cond_0
    return-void
.end method

.method public getDsApParam(Ljava/lang/String;)[I
    .locals 4
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 1135
    const/4 v1, 0x0

    .line 1136
    .local v1, "values":[I
    const-string/jumbo v2, "Ds"

    const-string/jumbo v3, "getDsApParam"

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1139
    :try_start_0
    iget-object v2, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    iget v3, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    aget-object v2, v2, v3

    invoke-virtual {v2, p1}, Landroid/dolby/ds/DsProfileSettings;->getDsApParam(Ljava/lang/String;)[I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v1

    .line 1148
    .end local v1    # "values":[I
    :goto_0
    return-object v1

    .line 1142
    .restart local v1    # "values":[I
    :catch_0
    move-exception v0

    .line 1143
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "Ds"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1144
    invoke-virtual {v0}, Ljava/lang/Exception;->printStackTrace()V

    .line 1145
    const/4 v1, 0x0

    goto :goto_0
.end method

.method public getDsApParamLength(Ljava/lang/String;)I
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 1159
    invoke-static {p1}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v0

    return v0
.end method

.method public getDsApVersion()Ljava/lang/String;
    .locals 5
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 765
    const-string/jumbo v3, "Ds"

    const-string/jumbo v4, "getDsApVersion"

    invoke-static {v3, v4}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 766
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v3

    if-nez v3, :cond_0

    .line 768
    new-instance v3, Landroid/os/DeadObjectException;

    invoke-direct {v3}, Landroid/os/DeadObjectException;-><init>()V

    throw v3

    .line 771
    :cond_0
    iget-object v3, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v3}, Landroid/dolby/ds/DsEffect;->getVersion()[S

    move-result-object v1

    .line 772
    .local v1, "value":[S
    new-instance v2, Ljava/lang/StringBuilder;

    const-string/jumbo v3, "APPv1 version "

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(Ljava/lang/String;)V

    .line 773
    .local v2, "version":Ljava/lang/StringBuilder;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    if-ge v0, v3, :cond_1

    .line 775
    aget-short v3, v1, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 776
    const-string/jumbo v3, "."

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 773
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 778
    :cond_1
    array-length v3, v1

    add-int/lit8 v3, v3, -0x1

    aget-short v3, v1, v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 779
    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method public getDsOn()Z
    .locals 3
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 374
    const-string/jumbo v1, "Ds"

    const-string/jumbo v2, "getDsOn"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 376
    iget-object v1, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    if-nez v1, :cond_0

    .line 377
    const-string/jumbo v1, "Ds"

    const-string/jumbo v2, "dsEffect_ is null"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 380
    :cond_0
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v1

    if-nez v1, :cond_1

    .line 382
    new-instance v1, Landroid/os/DeadObjectException;

    invoke-direct {v1}, Landroid/os/DeadObjectException;-><init>()V

    throw v1

    .line 385
    :cond_1
    const-string/jumbo v1, "Ds"

    const-string/jumbo v2, "effectEnabled"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 395
    const-string/jumbo v1, "Ds"

    const-string/jumbo v2, "useOffProfileForDsOff false"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 396
    iget-object v1, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v1}, Landroid/dolby/ds/DsEffect;->getEnabled()Z

    move-result v0

    .line 399
    .local v0, "effectEnabled":Z
    return v0
.end method

.method public getDsVersion()Ljava/lang/String;
    .locals 2

    .prologue
    .line 789
    const-string/jumbo v0, "Ds"

    const-string/jumbo v1, "getDsVersion"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 790
    const-string/jumbo v0, "DS version 1.8.0.0"

    return-object v0
.end method

.method public getGeq(II)[F
    .locals 4
    .param p1, "profile"    # I
    .param p2, "preset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 1021
    const-string/jumbo v1, "Ds"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getGeq: \"profile name = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " preset "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1023
    const/4 v0, 0x0

    .line 1025
    .local v0, "values":[F
    if-ltz p1, :cond_1

    const/4 v1, 0x6

    if-ge p1, v1, :cond_1

    .line 1027
    if-ltz p2, :cond_0

    const/4 v1, 0x4

    if-ge p2, v1, :cond_0

    .line 1029
    iget-object v1, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Landroid/dolby/ds/DsProfileSettings;->getGeq(I)[F

    move-result-object v0

    .line 1042
    .local v0, "values":[F
    return-object v0

    .line 1033
    .local v0, "values":[F
    :cond_0
    const-string/jumbo v1, "Ds"

    const-string/jumbo v2, "getGeq: Invalid preset input"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1034
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1

    .line 1039
    :cond_1
    const-string/jumbo v1, "Ds"

    const-string/jumbo v2, "getGeq: Invalid profile input"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1040
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public getIeqPreset(I)I
    .locals 3
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 849
    const/4 v0, -0x1

    .line 850
    .local v0, "ret":I
    const-string/jumbo v1, "Ds"

    const-string/jumbo v2, "getIeqPreset"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 852
    if-ltz p1, :cond_0

    const/4 v1, 0x6

    if-ge p1, v1, :cond_0

    .line 854
    iget-object v1, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v1, v1, p1

    invoke-virtual {v1}, Landroid/dolby/ds/DsProfileSettings;->getIeqPreset()I

    move-result v0

    .line 861
    return v0

    .line 858
    :cond_0
    const-string/jumbo v1, "Ds"

    const-string/jumbo v2, "getIeqPrest: Invalid profile"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public getLpaAudioSessionId()I
    .locals 1

    .prologue
    .line 237
    iget v0, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    return v0
.end method

.method public getProfileCount()I
    .locals 2

    .prologue
    .line 409
    const-string/jumbo v0, "Ds"

    const-string/jumbo v1, "getProfileCount"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 410
    const/4 v0, 0x6

    return v0
.end method

.method public getProfileModified(I)I
    .locals 19
    .param p1, "profile"    # I

    .prologue
    .line 875
    const-string/jumbo v17, "Ds"

    const-string/jumbo v18, "getProfileModified"

    invoke-static/range {v17 .. v18}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 876
    const/4 v13, 0x0

    .line 879
    .local v13, "modifiedValue":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v5

    .line 880
    .local v5, "defaultName":Ljava/lang/String;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    .line 881
    .local v4, "currentName":Ljava/lang/String;
    invoke-virtual {v5, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v17

    if-nez v17, :cond_0

    .line 883
    const/4 v13, 0x2

    .line 887
    :cond_0
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Landroid/dolby/ds/DsProfileSettings;->getAllSettings()Ljava/util/Map;

    move-result-object v17

    sget-object v18, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Landroid/dolby/ds/DsAkSettings;

    .line 888
    .local v3, "akDefaultSettings":Landroid/dolby/ds/DsAkSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Landroid/dolby/ds/DsProfileSettings;->getAllSettings()Ljava/util/Map;

    move-result-object v17

    sget-object v18, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-interface/range {v17 .. v18}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/dolby/ds/DsAkSettings;

    .line 889
    .local v2, "akCurrentSettings":Landroid/dolby/ds/DsAkSettings;
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Landroid/dolby/ds/DsProfileSettings;->getParamsSaved()[Ljava/lang/Object;

    move-result-object v16

    .line 890
    .local v16, "params":[Ljava/lang/Object;
    if-eqz v16, :cond_3

    .line 892
    const/4 v9, 0x0

    .local v9, "i":I
    :goto_0
    move-object/from16 v0, v16

    array-length v0, v0

    move/from16 v17, v0

    move/from16 v0, v17

    if-ge v9, v0, :cond_3

    .line 894
    aget-object v14, v16, v9

    check-cast v14, Ljava/lang/String;

    .line 895
    .local v14, "param":Ljava/lang/String;
    invoke-static {v14}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v15

    .line 896
    .local v15, "paramLen":I
    const/4 v12, 0x0

    .local v12, "j":I
    :goto_1
    if-ge v12, v15, :cond_1

    .line 898
    invoke-virtual {v2, v14, v12}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v17

    invoke-virtual {v3, v14, v12}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v18

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_2

    .line 900
    or-int/lit8 v13, v13, 0x1

    .line 892
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto :goto_0

    .line 896
    :cond_2
    add-int/lit8 v12, v12, 0x1

    goto :goto_1

    .line 907
    .end local v9    # "i":I
    .end local v12    # "j":I
    .end local v14    # "param":Ljava/lang/String;
    .end local v15    # "paramLen":I
    :cond_3
    and-int/lit8 v17, v13, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_4

    .line 910
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Landroid/dolby/ds/DsProfileSettings;->getIeqPreset()I

    move-result v11

    .line 911
    .local v11, "ieqDefaultIndex":I
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Landroid/dolby/ds/DsProfileSettings;->getIeqPreset()I

    move-result v10

    .line 912
    .local v10, "ieqCurrentIndex":I
    if-eq v10, v11, :cond_4

    .line 914
    or-int/lit8 v13, v13, 0x1

    .line 918
    .end local v10    # "ieqCurrentIndex":I
    .end local v11    # "ieqDefaultIndex":I
    :cond_4
    and-int/lit8 v17, v13, 0x1

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_7

    .line 921
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Landroid/dolby/ds/DsProfileSettings;->getGeqGainArray()[[S

    move-result-object v8

    .line 922
    .local v8, "geqDefaultSettings":[[S
    move-object/from16 v0, p0

    iget-object v0, v0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    move-object/from16 v17, v0

    aget-object v17, v17, p1

    invoke-virtual/range {v17 .. v17}, Landroid/dolby/ds/DsProfileSettings;->getGeqGainArray()[[S

    move-result-object v7

    .line 923
    .local v7, "geqCurrentSettings":[[S
    const-string/jumbo v17, "gebf"

    invoke-static/range {v17 .. v17}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v6

    .line 924
    .local v6, "gebfLen":I
    const/4 v9, 0x0

    .restart local v9    # "i":I
    :goto_2
    const/16 v17, 0x4

    move/from16 v0, v17

    if-ge v9, v0, :cond_7

    .line 926
    const/4 v12, 0x0

    .restart local v12    # "j":I
    :goto_3
    if-ge v12, v6, :cond_5

    .line 928
    aget-object v17, v7, v9

    aget-short v17, v17, v12

    aget-object v18, v8, v9

    aget-short v18, v18, v12

    move/from16 v0, v17

    move/from16 v1, v18

    if-eq v0, v1, :cond_6

    .line 930
    or-int/lit8 v13, v13, 0x1

    .line 924
    :cond_5
    add-int/lit8 v9, v9, 0x1

    goto :goto_2

    .line 926
    :cond_6
    add-int/lit8 v12, v12, 0x1

    goto :goto_3

    .line 937
    .end local v6    # "gebfLen":I
    .end local v7    # "geqCurrentSettings":[[S
    .end local v8    # "geqDefaultSettings":[[S
    .end local v9    # "i":I
    .end local v12    # "j":I
    :cond_7
    return v13
.end method

.method public getProfileNames()[Ljava/lang/String;
    .locals 5

    .prologue
    const/4 v4, 0x6

    .line 420
    new-array v1, v4, [Ljava/lang/String;

    .line 422
    .local v1, "profileNames":[Ljava/lang/String;
    const-string/jumbo v2, "Ds"

    const-string/jumbo v3, "getProfileNames"

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 423
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    if-ge v0, v4, :cond_0

    .line 425
    iget-object v2, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v2, v2, v0

    invoke-virtual {v2}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    aput-object v2, v1, v0

    .line 423
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 428
    :cond_0
    return-object v1
.end method

.method public getProfileSettings(I)Landroid/dolby/DsClientSettings;
    .locals 3
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 559
    const-string/jumbo v0, "Ds"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "getProfileSettings: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v2, v2, p1

    invoke-virtual {v2}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 560
    if-ltz p1, :cond_0

    const/4 v0, 0x6

    if-ge p1, v0, :cond_0

    .line 562
    iget-object v0, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/dolby/ds/DsProfileSettings;->extractClientSettings()Landroid/dolby/DsClientSettings;

    move-result-object v0

    return-object v0

    .line 566
    :cond_0
    const-string/jumbo v0, "Ds"

    const-string/jumbo v1, "getProfileSettings: Invalid profile input"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 567
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public getSelectedProfile()I
    .locals 2

    .prologue
    .line 481
    const-string/jumbo v0, "Ds"

    const-string/jumbo v1, "getSelectedProfile"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 482
    iget v0, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    return v0
.end method

.method public getVisualizerData([F[F)I
    .locals 9
    .param p1, "gains"    # [F
    .param p2, "excitations"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    const/high16 v8, 0x41800000    # 16.0f

    .line 726
    const-string/jumbo v6, "Ds"

    const-string/jumbo v7, "getVisualizerData"

    invoke-static {v6, v7}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 727
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v6

    if-nez v6, :cond_0

    .line 729
    new-instance v6, Landroid/os/DeadObjectException;

    invoke-direct {v6}, Landroid/os/DeadObjectException;-><init>()V

    throw v6

    .line 732
    :cond_0
    iget-object v6, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v6}, Landroid/dolby/ds/DsEffect;->getVisualizerData()[S

    move-result-object v5

    .line 733
    .local v5, "visualizerData":[S
    if-nez v5, :cond_1

    .line 735
    const/4 v6, 0x0

    return v6

    .line 739
    :cond_1
    const-string/jumbo v6, "vcbg"

    invoke-static {v6}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v2

    .line 740
    .local v2, "maxLen":I
    array-length v6, p1

    if-ge v6, v2, :cond_2

    array-length v4, p1

    .line 741
    .local v4, "numGains":I
    :goto_0
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_1
    if-ge v0, v4, :cond_3

    .line 743
    aget-short v6, v5, v0

    int-to-float v6, v6

    div-float/2addr v6, v8

    aput v6, p1, v0

    .line 741
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 740
    .end local v0    # "i":I
    .end local v4    # "numGains":I
    :cond_2
    move v4, v2

    .restart local v4    # "numGains":I
    goto :goto_0

    .line 745
    .restart local v0    # "i":I
    :cond_3
    array-length v6, p2

    if-ge v6, v2, :cond_4

    array-length v3, p2

    .line 746
    .local v3, "numExcitations":I
    :goto_2
    const/4 v1, 0x0

    .line 747
    .local v1, "index":I
    const/4 v0, 0x0

    :goto_3
    if-ge v0, v3, :cond_5

    .line 749
    add-int v1, v0, v2

    .line 750
    aget-short v6, v5, v1

    int-to-float v6, v6

    div-float/2addr v6, v8

    aput v6, p2, v0

    .line 747
    add-int/lit8 v0, v0, 0x1

    goto :goto_3

    .line 745
    .end local v1    # "index":I
    .end local v3    # "numExcitations":I
    :cond_4
    move v3, v2

    .restart local v3    # "numExcitations":I
    goto :goto_2

    .line 753
    .restart local v1    # "index":I
    :cond_5
    add-int v6, v4, v3

    return v6
.end method

.method public getVisualizerOn()Z
    .locals 2
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 706
    const-string/jumbo v0, "Ds"

    const-string/jumbo v1, "getVisualizerOn"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 707
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 709
    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    .line 712
    :cond_0
    iget-object v0, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v0}, Landroid/dolby/ds/DsEffect;->getVisualizerOn()Z

    move-result v0

    return v0
.end method

.method public isBasicProfileSettings(Ljava/lang/String;)Z
    .locals 1
    .param p1, "parameter"    # Ljava/lang/String;

    .prologue
    .line 948
    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    invoke-virtual {v0, p1}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public isLpaActive()Z
    .locals 2

    .prologue
    .line 227
    iget v0, p0, Landroid/dolby/ds/Ds;->lpaAudioSessionId_:I

    const/4 v1, -0x2

    if-eq v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public resetProfile(I)Z
    .locals 13
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 584
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 586
    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    .line 589
    :cond_0
    const/4 v11, 0x0

    .line 591
    .local v11, "ret":Z
    const-string/jumbo v0, "Ds"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "resetProfile: \""

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    iget-object v12, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v12, v12, p1

    invoke-virtual {v12}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v12, "\""

    invoke-virtual {v7, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 592
    if-ltz p1, :cond_2

    const/4 v0, 0x6

    if-ge p1, v0, :cond_2

    .line 594
    iget-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v1

    .line 595
    .local v1, "displayName":Ljava/lang/String;
    iget-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/dolby/ds/DsProfileSettings;->getDescription()Ljava/lang/String;

    move-result-object v2

    .line 596
    .local v2, "description":Ljava/lang/String;
    iget-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/dolby/ds/DsProfileSettings;->getAllSettings()Ljava/util/Map;

    move-result-object v0

    sget-object v7, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-interface {v0, v7}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/dolby/ds/DsAkSettings;

    .line 597
    .local v9, "akSettings":Landroid/dolby/ds/DsAkSettings;
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 598
    .local v3, "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    sget-object v0, Landroid/dolby/ds/DsEndpoint;->GENERIC:Landroid/dolby/ds/DsEndpoint;

    new-instance v7, Landroid/dolby/ds/DsAkSettings;

    invoke-direct {v7, v9}, Landroid/dolby/ds/DsAkSettings;-><init>(Landroid/dolby/ds/DsAkSettings;)V

    invoke-virtual {v3, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 599
    iget-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/dolby/ds/DsProfileSettings;->isCustom()Z

    move-result v4

    .line 600
    .local v4, "custom":Z
    iget-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/dolby/ds/DsProfileSettings;->getCategory()Landroid/dolby/ds/DsProfileSettings$Category;

    move-result-object v5

    .line 601
    .local v5, "category":Landroid/dolby/ds/DsProfileSettings$Category;
    iget-object v0, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v0, v0, p1

    invoke-virtual {v0}, Landroid/dolby/ds/DsProfileSettings;->getIeqPreset()I

    move-result v6

    .line 605
    .local v6, "ieqPreset":I
    :try_start_0
    new-instance v8, Ljava/util/HashSet;

    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    invoke-direct {v8, v0}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 606
    .local v8, "savedParams":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v12, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    new-instance v0, Landroid/dolby/ds/DsProfileSettings;

    const/4 v7, 0x0

    invoke-direct/range {v0 .. v8}, Landroid/dolby/ds/DsProfileSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/dolby/ds/DsProfileSettings$Category;I[[ILjava/util/HashSet;)V

    aput-object v0, v12, p1

    .line 607
    iget v0, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    if-ne p1, v0, :cond_1

    .line 609
    iget-object v0, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    iget-object v7, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v7, v7, p1

    invoke-virtual {v0, v7}, Landroid/dolby/ds/DsEffect;->setAllProfileSettings(Landroid/dolby/ds/DsProfileSettings;)I

    .line 610
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->isLpaActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 612
    iget-object v0, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    iget-object v7, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v7, v7, p1

    invoke-virtual {v0, v7}, Landroid/dolby/ds/DsEffect;->setAllProfileSettings(Landroid/dolby/ds/DsProfileSettings;)I
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 621
    :cond_1
    const/4 v11, 0x1

    .line 628
    return v11

    .line 617
    .end local v8    # "savedParams":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    :catch_0
    move-exception v10

    .line 618
    .local v10, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "Ds"

    invoke-virtual {v10}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 625
    .end local v1    # "displayName":Ljava/lang/String;
    .end local v2    # "description":Ljava/lang/String;
    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    .end local v4    # "custom":Z
    .end local v5    # "category":Landroid/dolby/ds/DsProfileSettings$Category;
    .end local v6    # "ieqPreset":I
    .end local v9    # "akSettings":Landroid/dolby/ds/DsAkSettings;
    .end local v10    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v0, "Ds"

    const-string/jumbo v7, "resetProfile: Invalid profile input"

    invoke-static {v0, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 626
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0
.end method

.method public restoreCurrentProfiles()V
    .locals 4

    .prologue
    .line 298
    const-string/jumbo v0, "Ds"

    const-string/jumbo v1, "Ds resetCurrentProfiles"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 299
    invoke-static {}, Landroid/dolby/ds/DsPresetsConfiguration;->getCurrentSettings()[Landroid/dolby/ds/DsProfileSettings;

    move-result-object v0

    iput-object v0, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    .line 300
    const-string/jumbo v0, "Ds"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "current profile settings "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    iget v3, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    aget-object v2, v2, v3

    invoke-virtual {v2}, Landroid/dolby/ds/DsProfileSettings;->getCurrentProfileSettings()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 301
    const/4 v0, 0x0

    invoke-direct {p0, v0}, Landroid/dolby/ds/Ds;->setInitStatus(Z)V

    .line 295
    return-void
.end method

.method public saveDsStateAndSettings()V
    .locals 2

    .prologue
    .line 310
    const-string/jumbo v0, "Ds"

    const-string/jumbo v1, "saveDsStateAndSettings"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 311
    iget-boolean v0, p0, Landroid/dolby/ds/Ds;->isDsOn_:Z

    if-eqz v0, :cond_0

    const-string/jumbo v0, "1"

    :goto_0
    iget v1, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    invoke-static {v1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/dolby/ds/DsStoreUtil;->saveDsState(Ljava/lang/String;Ljava/lang/String;)V

    .line 312
    iget-object v0, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    invoke-static {v0}, Landroid/dolby/ds/DsStoreUtil;->saveDsProfileSettings([Landroid/dolby/ds/DsProfileSettings;)V

    .line 308
    return-void

    .line 311
    :cond_0
    const-string/jumbo v0, "0"

    goto :goto_0
.end method

.method public setDsApParam(Ljava/lang/String;[I)Z
    .locals 11
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "values"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 1057
    const/4 v6, 0x0

    .line 1059
    .local v6, "ret":Z
    const-string/jumbo v8, "Ds"

    const-string/jumbo v9, "setDsApParam"

    invoke-static {v8, v9}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1060
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v8

    if-nez v8, :cond_0

    .line 1062
    new-instance v8, Landroid/os/DeadObjectException;

    invoke-direct {v8}, Landroid/os/DeadObjectException;-><init>()V

    throw v8

    .line 1064
    :cond_0
    const-string/jumbo v8, "iebt"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_1

    .line 1066
    const-string/jumbo v8, "Ds"

    const-string/jumbo v9, "iebt is NOT allowed to be set"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1067
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v9, "Fail to set the parameter"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1069
    :cond_1
    const-string/jumbo v8, "gebg"

    invoke-virtual {p1, v8}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v8

    if-eqz v8, :cond_2

    .line 1071
    const-string/jumbo v8, "Ds"

    const-string/jumbo v9, "gebg is NOT allowed to be set by setDsApParam, please use setGeq instead"

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1072
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v9, "Fail to set the parameter"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8

    .line 1075
    :cond_2
    array-length v8, p2

    new-array v7, v8, [S

    .line 1076
    .local v7, "settings":[S
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_0
    array-length v8, p2

    if-ge v2, v8, :cond_3

    .line 1078
    aget v8, p2, v2

    int-to-short v8, v8

    aput-short v8, v7, v2

    .line 1076
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 1082
    :cond_3
    :try_start_0
    iget-object v8, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    iget v9, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    aget-object v8, v8, v9

    invoke-virtual {v8, p1, v7}, Landroid/dolby/ds/DsProfileSettings;->setDsApParam(Ljava/lang/String;[S)V

    .line 1083
    invoke-static {p1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v4

    .line 1084
    .local v4, "paramIndex":I
    iget-object v8, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    sget-object v9, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    const/4 v10, 0x0

    invoke-virtual {v8, v4, v10, v7, v9}, Landroid/dolby/ds/DsEffect;->setSingleSetting(II[SLandroid/dolby/ds/AudioDevice;)I

    move-result v3

    .line 1085
    .local v3, "iRet":I
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->isLpaActive()Z

    move-result v8

    if-eqz v8, :cond_4

    .line 1087
    iget-object v8, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    sget-object v9, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    const/4 v10, 0x0

    invoke-virtual {v8, v4, v10, v7, v9}, Landroid/dolby/ds/DsEffect;->setSingleSetting(II[SLandroid/dolby/ds/AudioDevice;)I

    move-result v8

    or-int/2addr v3, v8

    .line 1089
    :cond_4
    if-nez v3, :cond_5

    .line 1091
    const/4 v6, 0x1

    .line 1093
    :cond_5
    invoke-virtual {p0, p1}, Landroid/dolby/ds/Ds;->isBasicProfileSettings(Ljava/lang/String;)Z

    move-result v8

    if-nez v8, :cond_7

    .line 1096
    const/4 v5, 0x0

    .line 1097
    .local v5, "paramModified":Z
    iget-object v8, p0, Landroid/dolby/ds/Ds;->defaultProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    iget v9, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    aget-object v8, v8, v9

    invoke-virtual {v8}, Landroid/dolby/ds/DsProfileSettings;->getAllSettings()Ljava/util/Map;

    move-result-object v8

    sget-object v9, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-interface {v8, v9}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/DsAkSettings;

    .line 1098
    .local v0, "defaultSettings":Landroid/dolby/ds/DsAkSettings;
    const/4 v2, 0x0

    :goto_1
    array-length v8, v7

    if-ge v2, v8, :cond_6

    .line 1100
    aget-short v8, v7, v2

    invoke-virtual {v0, p1, v2}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v9

    if-eq v8, v9, :cond_8

    .line 1102
    const/4 v5, 0x1

    .line 1107
    :cond_6
    if-eqz v5, :cond_9

    .line 1109
    iget-object v8, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    iget v9, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    aget-object v8, v8, v9

    invoke-virtual {v8, p1}, Landroid/dolby/ds/DsProfileSettings;->addParamSaved(Ljava/lang/String;)V

    .line 1124
    .end local v0    # "defaultSettings":Landroid/dolby/ds/DsAkSettings;
    .end local v5    # "paramModified":Z
    :cond_7
    :goto_2
    return v6

    .line 1098
    .restart local v0    # "defaultSettings":Landroid/dolby/ds/DsAkSettings;
    .restart local v5    # "paramModified":Z
    :cond_8
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 1113
    :cond_9
    iget-object v8, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    iget v9, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    aget-object v8, v8, v9

    invoke-virtual {v8, p1}, Landroid/dolby/ds/DsProfileSettings;->removeParamSaved(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_2

    .line 1118
    .end local v0    # "defaultSettings":Landroid/dolby/ds/DsAkSettings;
    .end local v3    # "iRet":I
    .end local v4    # "paramIndex":I
    .end local v5    # "paramModified":Z
    :catch_0
    move-exception v1

    .line 1119
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v8, "Ds"

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v8, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1120
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1121
    new-instance v8, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v9, "Fail to set the parameter"

    invoke-direct {v8, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v8
.end method

.method public setDsOn(Z)V
    .locals 3
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 324
    const-string/jumbo v0, "Ds"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setDsOn: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 325
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 327
    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    .line 330
    :cond_0
    iput-boolean p1, p0, Landroid/dolby/ds/Ds;->isDsOn_:Z

    .line 356
    const-string/jumbo v0, "Ds"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "Ds on/off setEnabled("

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, ")"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 357
    iget-object v0, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v0, p1}, Landroid/dolby/ds/DsEffect;->setEnabled(Z)I

    .line 358
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->isLpaActive()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 360
    iget-object v0, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v0, p1}, Landroid/dolby/ds/DsEffect;->setEnabled(Z)I

    .line 322
    :cond_1
    return-void
.end method

.method public setGeq(II[F)Z
    .locals 8
    .param p1, "profile"    # I
    .param p2, "preset"    # I
    .param p3, "geqBandGains"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x0

    .line 965
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v4

    if-nez v4, :cond_0

    .line 967
    new-instance v4, Landroid/os/DeadObjectException;

    invoke-direct {v4}, Landroid/os/DeadObjectException;-><init>()V

    throw v4

    .line 970
    :cond_0
    const/4 v2, 0x0

    .line 972
    .local v2, "ret":Z
    const-string/jumbo v4, "Ds"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "setGeq: \"profile name = "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    iget-object v6, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v6, v6, p1

    invoke-virtual {v6}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " preset "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, "\""

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 973
    if-ltz p1, :cond_4

    const/4 v4, 0x6

    if-ge p1, v4, :cond_4

    .line 975
    if-ltz p2, :cond_3

    const/4 v4, 0x4

    if-ge p2, v4, :cond_3

    .line 977
    const/4 v0, 0x0

    .line 978
    .local v0, "iRet":I
    iget-object v4, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v4, v4, p1

    invoke-virtual {v4, p2, p3}, Landroid/dolby/ds/DsProfileSettings;->setGeq(I[F)[S

    move-result-object v3

    .line 979
    .local v3, "values":[S
    iget v4, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    if-ne v4, p1, :cond_1

    .line 982
    const-string/jumbo v4, "gebg"

    invoke-static {v4}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v1

    .line 984
    .local v1, "paramIndex":I
    iget-object v4, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    sget-object v5, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-virtual {v4, v1, v7, v3, v5}, Landroid/dolby/ds/DsEffect;->setSingleSetting(II[SLandroid/dolby/ds/AudioDevice;)I

    move-result v0

    .line 985
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->isLpaActive()Z

    move-result v4

    if-eqz v4, :cond_1

    .line 987
    iget-object v4, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    sget-object v5, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-virtual {v4, v1, v7, v3, v5}, Landroid/dolby/ds/DsEffect;->setSingleSetting(II[SLandroid/dolby/ds/AudioDevice;)I

    move-result v4

    or-int/2addr v0, v4

    .line 990
    .end local v1    # "paramIndex":I
    :cond_1
    if-nez v0, :cond_2

    .line 992
    const/4 v2, 0x1

    .line 1006
    :cond_2
    return v2

    .line 997
    .end local v0    # "iRet":I
    .end local v3    # "values":[S
    :cond_3
    const-string/jumbo v4, "Ds"

    const-string/jumbo v5, "setGeq: Invalid Ieq preset input"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 998
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4

    .line 1003
    :cond_4
    const-string/jumbo v4, "Ds"

    const-string/jumbo v5, "setGeq: Invalid profile input"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1004
    new-instance v4, Ljava/lang/IllegalArgumentException;

    invoke-direct {v4}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v4
.end method

.method public setIeqPreset(II)Z
    .locals 5
    .param p1, "profile"    # I
    .param p2, "preset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 806
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v2

    if-nez v2, :cond_0

    .line 808
    new-instance v2, Landroid/os/DeadObjectException;

    invoke-direct {v2}, Landroid/os/DeadObjectException;-><init>()V

    throw v2

    .line 811
    :cond_0
    const/4 v1, 0x0

    .line 812
    .local v1, "ret":Z
    const-string/jumbo v2, "Ds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setIeqPreset: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 814
    if-ltz p1, :cond_2

    const/4 v2, 0x6

    if-ge p1, v2, :cond_2

    .line 816
    if-ltz p2, :cond_3

    const/4 v2, 0x4

    if-ge p2, v2, :cond_3

    .line 818
    iget-object v2, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v2, v2, p1

    invoke-virtual {v2, p2}, Landroid/dolby/ds/DsProfileSettings;->setIeqPreset(I)V

    .line 819
    iget-object v2, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    iget-object v3, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/dolby/ds/DsEffect;->setAllProfileSettings(Landroid/dolby/ds/DsProfileSettings;)I

    move-result v0

    .line 820
    .local v0, "iRet":I
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->isLpaActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 822
    iget-object v2, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    iget-object v3, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/dolby/ds/DsEffect;->setAllProfileSettings(Landroid/dolby/ds/DsProfileSettings;)I

    move-result v2

    or-int/2addr v0, v2

    .line 824
    :cond_1
    if-nez v0, :cond_2

    .line 826
    const/4 v1, 0x1

    .line 835
    .end local v0    # "iRet":I
    :cond_2
    return v1

    .line 831
    :cond_3
    const-string/jumbo v2, "Ds"

    const-string/jumbo v3, "setIeqPreset: Invalid profile input"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 832
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public setProfileName(ILjava/lang/String;)Z
    .locals 4
    .param p1, "profile"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 644
    const-string/jumbo v1, "Ds"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setProfileNames: \""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v3, v3, p1

    invoke-virtual {v3}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, "\""

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 646
    const/4 v0, 0x0

    .line 648
    .local v0, "ret":Z
    if-eqz p2, :cond_0

    .line 650
    if-ltz p1, :cond_2

    const/4 v1, 0x6

    if-ge p1, v1, :cond_2

    .line 652
    const/4 v1, 0x4

    if-lt p1, v1, :cond_1

    .line 654
    iget-object v1, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v1, v1, p1

    invoke-virtual {v1, p2}, Landroid/dolby/ds/DsProfileSettings;->setDisplayName(Ljava/lang/String;)V

    .line 656
    const/4 v0, 0x1

    .line 670
    :cond_0
    return v0

    .line 660
    :cond_1
    const-string/jumbo v1, "Ds"

    const-string/jumbo v2, "setProfileName: Name of this Profile is not settable"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 661
    new-instance v1, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v1}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v1

    .line 666
    :cond_2
    const-string/jumbo v1, "Ds"

    const-string/jumbo v2, "setProfileName: Invalid profile input"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 667
    new-instance v1, Ljava/lang/IllegalArgumentException;

    invoke-direct {v1}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v1
.end method

.method public setProfileSettings(ILandroid/dolby/DsClientSettings;)Z
    .locals 13
    .param p1, "profile"    # I
    .param p2, "clientSettings"    # Landroid/dolby/DsClientSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 498
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v10

    if-nez v10, :cond_0

    .line 500
    new-instance v10, Landroid/os/DeadObjectException;

    invoke-direct {v10}, Landroid/os/DeadObjectException;-><init>()V

    throw v10

    .line 503
    :cond_0
    const/4 v8, 0x0

    .line 505
    .local v8, "ret":Z
    const-string/jumbo v10, "Ds"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "setProfileSettings: \""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    iget-object v12, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v12, v12, p1

    invoke-virtual {v12}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v12

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, "\""

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 506
    if-ltz p1, :cond_6

    const/4 v10, 0x6

    if-ge p1, v10, :cond_6

    .line 508
    const/4 v2, 0x0

    .line 509
    .local v2, "iRet":I
    iget-object v10, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v10, v10, p1

    invoke-virtual {v10, p2}, Landroid/dolby/ds/DsProfileSettings;->updateFromClientSettings(Landroid/dolby/DsClientSettings;)Ljava/util/ArrayList;

    move-result-object v7

    .line 512
    .local v7, "paramsChanged":Ljava/util/ArrayList;
    iget-object v10, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v10, v10, p1

    invoke-virtual {v10}, Landroid/dolby/ds/DsProfileSettings;->getAllSettings()Ljava/util/Map;

    move-result-object v10

    sget-object v11, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    invoke-interface {v10, v11}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/DsAkSettings;

    .line 513
    .local v0, "akSettings":Landroid/dolby/ds/DsAkSettings;
    invoke-virtual {v7}, Ljava/util/ArrayList;->iterator()Ljava/util/Iterator;

    move-result-object v3

    .line 514
    .local v3, "iter":Ljava/util/Iterator;
    :cond_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_3

    .line 516
    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    .line 517
    .local v5, "param":Ljava/lang/String;
    invoke-static {v5}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v4

    .line 518
    .local v4, "len":I
    new-array v9, v4, [S

    .line 519
    .local v9, "values":[S
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    if-ge v1, v4, :cond_2

    .line 520
    invoke-virtual {v0, v5, v1}, Landroid/dolby/ds/DsAkSettings;->get(Ljava/lang/String;I)S

    move-result v10

    aput-short v10, v9, v1

    .line 519
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 521
    :cond_2
    const-string/jumbo v10, "Ds"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "Updating parameter "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " with new value/values"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 522
    iget v10, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    if-ne v10, p1, :cond_1

    .line 524
    invoke-static {v5}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v6

    .line 525
    .local v6, "paramIndex":I
    iget-object v10, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    sget-object v11, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    const/4 v12, 0x0

    invoke-virtual {v10, v6, v12, v9, v11}, Landroid/dolby/ds/DsEffect;->setSingleSetting(II[SLandroid/dolby/ds/AudioDevice;)I

    move-result v2

    .line 526
    if-eqz v2, :cond_5

    .line 536
    .end local v1    # "i":I
    .end local v4    # "len":I
    .end local v5    # "param":Ljava/lang/String;
    .end local v6    # "paramIndex":I
    .end local v9    # "values":[S
    :cond_3
    :goto_1
    if-nez v2, :cond_4

    .line 538
    const/4 v8, 0x1

    .line 546
    :cond_4
    return v8

    .line 528
    .restart local v1    # "i":I
    .restart local v4    # "len":I
    .restart local v5    # "param":Ljava/lang/String;
    .restart local v6    # "paramIndex":I
    .restart local v9    # "values":[S
    :cond_5
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->isLpaActive()Z

    move-result v10

    if-eqz v10, :cond_1

    .line 530
    iget-object v10, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    sget-object v11, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    const/4 v12, 0x0

    invoke-virtual {v10, v6, v12, v9, v11}, Landroid/dolby/ds/DsEffect;->setSingleSetting(II[SLandroid/dolby/ds/AudioDevice;)I

    move-result v2

    .line 531
    if-eqz v2, :cond_1

    goto :goto_1

    .line 543
    .end local v0    # "akSettings":Landroid/dolby/ds/DsAkSettings;
    .end local v1    # "i":I
    .end local v2    # "iRet":I
    .end local v3    # "iter":Ljava/util/Iterator;
    .end local v4    # "len":I
    .end local v5    # "param":Ljava/lang/String;
    .end local v6    # "paramIndex":I
    .end local v7    # "paramsChanged":Ljava/util/ArrayList;
    .end local v9    # "values":[S
    :cond_6
    const-string/jumbo v10, "Ds"

    const-string/jumbo v11, "setProfileSettings: Invalid profile input"

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 544
    new-instance v10, Ljava/lang/IllegalArgumentException;

    invoke-direct {v10}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v10
.end method

.method public setSelectedProfile(I)Z
    .locals 5
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 443
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v2

    if-nez v2, :cond_0

    .line 445
    new-instance v2, Landroid/os/DeadObjectException;

    invoke-direct {v2}, Landroid/os/DeadObjectException;-><init>()V

    throw v2

    .line 448
    :cond_0
    const/4 v1, 0x0

    .line 450
    .local v1, "ret":Z
    if-ltz p1, :cond_3

    const/4 v2, 0x6

    if-ge p1, v2, :cond_3

    .line 452
    const-string/jumbo v2, "Ds"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setSelectedProfile: \""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v4, v4, p1

    invoke-virtual {v4}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "\""

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 454
    iget-object v2, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    iget-object v3, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/dolby/ds/DsEffect;->setAllProfileSettings(Landroid/dolby/ds/DsProfileSettings;)I

    move-result v0

    .line 455
    .local v0, "iRet":I
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->isLpaActive()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 457
    iget-object v2, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    iget-object v3, p0, Landroid/dolby/ds/Ds;->currentProfiles_:[Landroid/dolby/ds/DsProfileSettings;

    aget-object v3, v3, p1

    invoke-virtual {v2, v3}, Landroid/dolby/ds/DsEffect;->setAllProfileSettings(Landroid/dolby/ds/DsProfileSettings;)I

    move-result v2

    or-int/2addr v0, v2

    .line 459
    :cond_1
    if-nez v0, :cond_2

    .line 461
    iput p1, p0, Landroid/dolby/ds/Ds;->selectedProfile_:I

    .line 462
    const/4 v1, 0x1

    .line 471
    :cond_2
    return v1

    .line 467
    .end local v0    # "iRet":I
    :cond_3
    const-string/jumbo v2, "Ds"

    const-string/jumbo v3, "setSelectedProfile: Invalid profile input"

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    new-instance v2, Ljava/lang/IllegalArgumentException;

    invoke-direct {v2}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v2
.end method

.method public setVisualizerOn(Z)I
    .locals 3
    .param p1, "enable"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/DeadObjectException;
        }
    .end annotation

    .prologue
    .line 687
    const-string/jumbo v0, "Ds"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "setVisualizerOn: \""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    move-result-object v1

    const-string/jumbo v2, "\""

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 688
    invoke-virtual {p0}, Landroid/dolby/ds/Ds;->validateDsEffect()Z

    move-result v0

    if-nez v0, :cond_0

    .line 690
    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    .line 694
    :cond_0
    iget-object v0, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v0, p1}, Landroid/dolby/ds/DsEffect;->setVisualizerOn(Z)I

    move-result v0

    return v0
.end method

.method public validateDsEffect()Z
    .locals 3

    .prologue
    .line 1244
    const-string/jumbo v1, "Ds"

    const-string/jumbo v2, "validateDsEffect"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1245
    iget-object v1, p0, Landroid/dolby/ds/Ds;->dsEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v1}, Landroid/dolby/ds/DsEffect;->hasControl()Z

    move-result v1

    if-nez v1, :cond_1

    iget-object v1, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    if-eqz v1, :cond_2

    iget-object v1, p0, Landroid/dolby/ds/Ds;->dsLpaEffect_:Landroid/dolby/ds/DsEffect;

    invoke-virtual {v1}, Landroid/dolby/ds/DsEffect;->hasControl()Z

    move-result v0

    .line 1247
    :goto_0
    if-nez v0, :cond_0

    .line 1249
    const-string/jumbo v1, "Ds"

    const-string/jumbo v2, "Cannot control the DsEffect, trying to recreate..."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1250
    invoke-direct {p0}, Landroid/dolby/ds/Ds;->recreateDsEffect()Z

    move-result v0

    .line 1253
    :cond_0
    return v0

    .line 1245
    :cond_1
    const/4 v0, 0x1

    .local v0, "ret":Z
    goto :goto_0

    .end local v0    # "ret":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "ret":Z
    goto :goto_0
.end method
