.class public Landroid/dolby/ds/DsPresetsConfiguration;
.super Ljava/lang/Object;
.source "DsPresetsConfiguration.java"


# static fields
.field private static final TAG:Ljava/lang/String; = "DsPresetsConfiguration"

.field private static currentProfiles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/dolby/ds/DsProfileSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static defaultProfiles:Ljava/util/Vector;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Vector",
            "<",
            "Landroid/dolby/ds/DsProfileSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static ieqSettingsAdded:Z

.field private static offProfile_:Landroid/dolby/ds/DsProfileSettings;

.field private static xmlParserCurrent:Landroid/dolby/ds/DsConfigParser;

.field private static xmlParserDefault:Landroid/dolby/ds/DsConfigParser;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 28
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->defaultProfiles:Ljava/util/Vector;

    .line 29
    new-instance v0, Ljava/util/Vector;

    invoke-direct {v0}, Ljava/util/Vector;-><init>()V

    sput-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->currentProfiles:Ljava/util/Vector;

    .line 31
    const/4 v0, 0x0

    sput-boolean v0, Landroid/dolby/ds/DsPresetsConfiguration;->ieqSettingsAdded:Z

    .line 21
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 21
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static addIeqSettings()V
    .locals 6

    .prologue
    .line 150
    sget-object v4, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    invoke-virtual {v4}, Landroid/dolby/ds/DsConfigParser;->getIeqSettingArray()[[I

    move-result-object v2

    .line 151
    .local v2, "ieqSettings":[[I
    const/4 v0, 0x0

    .line 152
    .local v0, "ieqIndex":I
    if-eqz v2, :cond_1

    .line 154
    const/4 v4, 0x0

    array-length v5, v2

    move v1, v0

    .end local v0    # "ieqIndex":I
    .local v1, "ieqIndex":I
    :goto_0
    if-ge v4, v5, :cond_0

    aget-object v3, v2, v4

    .line 155
    .local v3, "settings":[I
    add-int/lit8 v0, v1, 0x1

    .end local v1    # "ieqIndex":I
    .restart local v0    # "ieqIndex":I
    invoke-static {v1, v3}, Landroid/dolby/ds/DsProfileSettings;->setIeqBandTargets(I[I)V

    .line 154
    add-int/lit8 v4, v4, 0x1

    move v1, v0

    .end local v0    # "ieqIndex":I
    .restart local v1    # "ieqIndex":I
    goto :goto_0

    .end local v3    # "settings":[I
    :cond_0
    move v0, v1

    .line 148
    .end local v1    # "ieqIndex":I
    .restart local v0    # "ieqIndex":I
    :cond_1
    return-void
.end method

.method private static addNewProfileSettings(Ljava/lang/String;Landroid/dolby/ds/DsProfileSettings$Category;)V
    .locals 26
    .param p0, "name"    # Ljava/lang/String;
    .param p1, "category"    # Landroid/dolby/ds/DsProfileSettings$Category;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    .line 179
    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    const/4 v3, 0x1

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Landroid/dolby/ds/DsConfigParser;->getSettingArray(Ljava/lang/String;Z)[[I

    move-result-object v25

    .line 180
    .local v25, "profileSettings":[[I
    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/dolby/ds/DsConfigParser;->getProfileSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 181
    .local v24, "profileName":Ljava/lang/String;
    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/dolby/ds/DsConfigParser;->getProfileSettingIeq(Ljava/lang/String;)I

    move-result v23

    .line 182
    .local v23, "profileIeq":I
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 185
    .local v5, "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Landroid/dolby/ds/DsConfigParser;->getGeqSettingArray(Ljava/lang/String;[[I)[[I

    move-result-object v9

    .line 187
    .local v9, "profileGebg":[[I
    if-eqz v25, :cond_5

    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->isConstantAkParamsDefined()Z

    move-result v2

    if-eqz v2, :cond_5

    .line 191
    :try_start_0
    sget-boolean v2, Landroid/dolby/ds/DsPresetsConfiguration;->ieqSettingsAdded:Z

    if-nez v2, :cond_0

    .line 193
    invoke-static {}, Landroid/dolby/ds/DsPresetsConfiguration;->addIeqSettings()V

    .line 194
    const/4 v2, 0x1

    sput-boolean v2, Landroid/dolby/ds/DsPresetsConfiguration;->ieqSettingsAdded:Z

    .line 196
    :cond_0
    sget-object v2, Landroid/dolby/ds/DsEndpoint;->GENERIC:Landroid/dolby/ds/DsEndpoint;

    new-instance v3, Landroid/dolby/ds/DsAkSettings;

    move-object/from16 v0, v25

    invoke-direct {v3, v0}, Landroid/dolby/ds/DsAkSettings;-><init>([[I)V

    invoke-virtual {v5, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 197
    sget-object v11, Landroid/dolby/ds/DsPresetsConfiguration;->defaultProfiles:Ljava/util/Vector;

    new-instance v2, Landroid/dolby/ds/DsProfileSettings;

    if-eqz v24, :cond_1

    move-object/from16 v3, v24

    :goto_0
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "The preset loaded for"

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    move-object/from16 v0, p0

    invoke-virtual {v4, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 198
    const/4 v6, -0x1

    move/from16 v0, v23

    if-eq v0, v6, :cond_2

    move/from16 v8, v23

    :goto_1
    const/4 v6, 0x1

    const/4 v10, 0x0

    move-object/from16 v7, p1

    .line 197
    invoke-direct/range {v2 .. v10}, Landroid/dolby/ds/DsProfileSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/dolby/ds/DsProfileSettings$Category;I[[ILjava/util/HashSet;)V

    invoke-virtual {v11, v2}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 201
    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserCurrent:Landroid/dolby/ds/DsConfigParser;

    const/4 v3, 0x0

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v3}, Landroid/dolby/ds/DsConfigParser;->getSettingArray(Ljava/lang/String;Z)[[I

    move-result-object v21

    .line 202
    .local v21, "currentSettings":[[I
    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserCurrent:Landroid/dolby/ds/DsConfigParser;

    invoke-virtual {v2}, Landroid/dolby/ds/DsConfigParser;->getSavedParams()Ljava/util/HashSet;

    move-result-object v18

    .line 203
    .local v18, "savedParams":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserCurrent:Landroid/dolby/ds/DsConfigParser;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/dolby/ds/DsConfigParser;->getProfileSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v20

    .line 204
    .local v20, "currentName":Ljava/lang/String;
    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserCurrent:Landroid/dolby/ds/DsConfigParser;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0}, Landroid/dolby/ds/DsConfigParser;->getProfileSettingIeq(Ljava/lang/String;)I

    move-result v19

    .line 205
    .local v19, "currentIeq":I
    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserCurrent:Landroid/dolby/ds/DsConfigParser;

    move-object/from16 v0, p0

    invoke-virtual {v2, v0, v9}, Landroid/dolby/ds/DsConfigParser;->getGeqSettingArray(Ljava/lang/String;[[I)[[I

    move-result-object v17

    .line 208
    .local v17, "geqSettings":[[I
    move-object/from16 v0, v25

    move-object/from16 v1, v21

    invoke-static {v0, v1}, Landroid/dolby/ds/DsPresetsConfiguration;->combineSettings([[I[[I)[[I

    move-result-object v25

    .line 209
    move-object/from16 v0, v24

    move-object/from16 v1, v20

    invoke-static {v0, v1}, Landroid/dolby/ds/DsPresetsConfiguration;->resolveName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v24

    .line 210
    move/from16 v0, v23

    move/from16 v1, v19

    invoke-static {v0, v1}, Landroid/dolby/ds/DsPresetsConfiguration;->resolveIeqPreset(II)I

    move-result v23

    .line 212
    new-instance v13, Ljava/util/HashMap;

    invoke-direct {v13}, Ljava/util/HashMap;-><init>()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 213
    .end local v5    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    .local v13, "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    :try_start_1
    sget-object v2, Landroid/dolby/ds/DsEndpoint;->GENERIC:Landroid/dolby/ds/DsEndpoint;

    new-instance v3, Landroid/dolby/ds/DsAkSettings;

    move-object/from16 v0, v25

    invoke-direct {v3, v0}, Landroid/dolby/ds/DsAkSettings;-><init>([[I)V

    invoke-virtual {v13, v2, v3}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 214
    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->currentProfiles:Ljava/util/Vector;

    new-instance v10, Landroid/dolby/ds/DsProfileSettings;

    if-eqz v24, :cond_3

    move-object/from16 v11, v24

    :goto_2
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "The current settings loaded for"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p0

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    .line 215
    const/4 v3, -0x1

    move/from16 v0, v23

    if-eq v0, v3, :cond_4

    move/from16 v16, v23

    :goto_3
    const/4 v14, 0x1

    move-object/from16 v15, p1

    .line 214
    invoke-direct/range {v10 .. v18}, Landroid/dolby/ds/DsProfileSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/dolby/ds/DsProfileSettings$Category;I[[ILjava/util/HashSet;)V

    invoke-virtual {v2, v10}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 167
    return-void

    .end local v13    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    .end local v17    # "geqSettings":[[I
    .end local v18    # "savedParams":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v19    # "currentIeq":I
    .end local v20    # "currentName":Ljava/lang/String;
    .end local v21    # "currentSettings":[[I
    .restart local v5    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    :cond_1
    move-object/from16 v3, p0

    .line 197
    goto/16 :goto_0

    .line 198
    :cond_2
    const/4 v8, 0x0

    goto/16 :goto_1

    .end local v5    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    .restart local v13    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    .restart local v17    # "geqSettings":[[I
    .restart local v18    # "savedParams":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19    # "currentIeq":I
    .restart local v20    # "currentName":Ljava/lang/String;
    .restart local v21    # "currentSettings":[[I
    :cond_3
    move-object/from16 v11, p0

    .line 214
    goto :goto_2

    .line 215
    :cond_4
    const/16 v16, 0x0

    goto :goto_3

    .line 218
    .end local v13    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    .end local v17    # "geqSettings":[[I
    .end local v18    # "savedParams":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .end local v19    # "currentIeq":I
    .end local v20    # "currentName":Ljava/lang/String;
    .end local v21    # "currentSettings":[[I
    .restart local v5    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    :catch_0
    move-exception v22

    .line 219
    .local v22, "e":Ljava/lang/Exception;
    :goto_4
    const-string/jumbo v2, "DsPresetsConfiguration"

    invoke-virtual/range {v22 .. v22}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 220
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "Exception in creating profile settings"

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 225
    .end local v22    # "e":Ljava/lang/Exception;
    :cond_5
    const-string/jumbo v2, "DsPresetsConfiguration"

    const-string/jumbo v3, "Constant AK parameters NOT defined, or profile settings NULL."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    new-instance v2, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v3, "Settings are NOT ready yet."

    invoke-direct {v2, v3}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 218
    .end local v5    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    .restart local v13    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    .restart local v17    # "geqSettings":[[I
    .restart local v18    # "savedParams":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    .restart local v19    # "currentIeq":I
    .restart local v20    # "currentName":Ljava/lang/String;
    .restart local v21    # "currentSettings":[[I
    :catch_1
    move-exception v22

    .restart local v22    # "e":Ljava/lang/Exception;
    move-object v5, v13

    .end local v13    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    .restart local v5    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    goto :goto_4
.end method

.method private static addOffProfileSettings()V
    .locals 13
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;
        }
    .end annotation

    .prologue
    const/4 v6, 0x0

    .line 245
    sget-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    const-string/jumbo v1, "off"

    const/4 v2, 0x1

    invoke-virtual {v0, v1, v2}, Landroid/dolby/ds/DsConfigParser;->getSettingArray(Ljava/lang/String;Z)[[I

    move-result-object v12

    .line 246
    .local v12, "profileSettings":[[I
    sget-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Landroid/dolby/ds/DsConfigParser;->getProfileSettingName(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v11

    .line 247
    .local v11, "profileName":Ljava/lang/String;
    sget-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    const-string/jumbo v1, "off"

    invoke-virtual {v0, v1}, Landroid/dolby/ds/DsConfigParser;->getProfileSettingIeq(Ljava/lang/String;)I

    move-result v10

    .line 248
    .local v10, "profileIeq":I
    if-eqz v12, :cond_2

    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->isConstantAkParamsDefined()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 252
    :try_start_0
    new-instance v3, Ljava/util/HashMap;

    invoke-direct {v3}, Ljava/util/HashMap;-><init>()V

    .line 253
    .local v3, "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    sget-object v0, Landroid/dolby/ds/DsEndpoint;->GENERIC:Landroid/dolby/ds/DsEndpoint;

    new-instance v1, Landroid/dolby/ds/DsAkSettings;

    invoke-direct {v1, v12}, Landroid/dolby/ds/DsAkSettings;-><init>([[I)V

    invoke-virtual {v3, v0, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 254
    new-instance v0, Landroid/dolby/ds/DsProfileSettings;

    if-eqz v11, :cond_1

    move-object v1, v11

    :goto_0
    const-string/jumbo v2, "The setting used for switching off Ds effect."

    .line 255
    sget-object v5, Landroid/dolby/ds/DsProfileSettings$Category;->CUSTOMIZED:Landroid/dolby/ds/DsProfileSettings$Category;

    const/4 v4, -0x1

    if-eq v10, v4, :cond_0

    move v6, v10

    :cond_0
    const/4 v4, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    .line 254
    invoke-direct/range {v0 .. v8}, Landroid/dolby/ds/DsProfileSettings;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/util/Map;ZLandroid/dolby/ds/DsProfileSettings$Category;I[[ILjava/util/HashSet;)V

    sput-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->offProfile_:Landroid/dolby/ds/DsProfileSettings;

    .line 236
    return-void

    .line 254
    :cond_1
    const-string/jumbo v1, "off"
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 258
    .end local v3    # "allSettings":Ljava/util/HashMap;, "Ljava/util/HashMap<Landroid/dolby/ds/DsEndpoint;Landroid/dolby/ds/DsAkSettings;>;"
    :catch_0
    move-exception v9

    .line 259
    .local v9, "e":Ljava/lang/Exception;
    const-string/jumbo v0, "DsPresetsConfiguration"

    invoke-virtual {v9}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 260
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Exception in creating off profile settings"

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 265
    .end local v9    # "e":Ljava/lang/Exception;
    :cond_2
    const-string/jumbo v0, "DsPresetsConfiguration"

    const-string/jumbo v1, "Constant AK parameters NOT defined, or profile settings NULL."

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 266
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v1, "Settings are NOT ready yet."

    invoke-direct {v0, v1}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v0
.end method

.method private static combineSettings([[I[[I)[[I
    .locals 6
    .param p0, "defaultSettings"    # [[I
    .param p1, "currentSettings"    # [[I

    .prologue
    const/4 v5, 0x0

    const/4 v4, 0x0

    .line 281
    if-nez p0, :cond_0

    const/4 v1, 0x0

    .line 282
    .local v1, "defaultLength":I
    :goto_0
    if-nez p1, :cond_1

    const/4 v0, 0x0

    .line 283
    .local v0, "currentLength":I
    :goto_1
    add-int v3, v1, v0

    .line 285
    .local v3, "settingLength":I
    if-nez v3, :cond_2

    .line 286
    return-object v5

    .line 281
    .end local v0    # "currentLength":I
    .end local v1    # "defaultLength":I
    .end local v3    # "settingLength":I
    :cond_0
    array-length v1, p0

    .restart local v1    # "defaultLength":I
    goto :goto_0

    .line 282
    :cond_1
    array-length v0, p1

    .restart local v0    # "currentLength":I
    goto :goto_1

    .line 288
    .restart local v3    # "settingLength":I
    :cond_2
    new-array v2, v3, [[I

    .line 290
    .local v2, "settingArray":[[I
    if-eqz v1, :cond_3

    .line 291
    invoke-static {p0, v4, v2, v4, v1}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 292
    :cond_3
    if-eqz v0, :cond_4

    .line 293
    invoke-static {p1, v4, v2, v1, v0}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 295
    :cond_4
    return-object v2
.end method

.method static createProfileSettings(Z)Z
    .locals 4
    .param p0, "useOffProfileForDsOff"    # Z

    .prologue
    .line 88
    const/4 v1, 0x1

    .line 93
    .local v1, "ret":Z
    :try_start_0
    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->defaultProfiles:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 94
    sget-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->currentProfiles:Ljava/util/Vector;

    invoke-virtual {v2}, Ljava/util/Vector;->clear()V

    .line 95
    sget-object v2, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v3, 0x0

    aget-object v2, v2, v3

    sget-object v3, Landroid/dolby/ds/DsProfileSettings$Category;->MOVIE:Landroid/dolby/ds/DsProfileSettings$Category;

    invoke-static {v2, v3}, Landroid/dolby/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Landroid/dolby/ds/DsProfileSettings$Category;)V

    .line 96
    sget-object v2, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v3, 0x1

    aget-object v2, v2, v3

    sget-object v3, Landroid/dolby/ds/DsProfileSettings$Category;->MUSIC:Landroid/dolby/ds/DsProfileSettings$Category;

    invoke-static {v2, v3}, Landroid/dolby/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Landroid/dolby/ds/DsProfileSettings$Category;)V

    .line 97
    sget-object v2, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v3, 0x2

    aget-object v2, v2, v3

    sget-object v3, Landroid/dolby/ds/DsProfileSettings$Category;->GAME:Landroid/dolby/ds/DsProfileSettings$Category;

    invoke-static {v2, v3}, Landroid/dolby/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Landroid/dolby/ds/DsProfileSettings$Category;)V

    .line 98
    sget-object v2, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v3, 0x3

    aget-object v2, v2, v3

    sget-object v3, Landroid/dolby/ds/DsProfileSettings$Category;->VOICE:Landroid/dolby/ds/DsProfileSettings$Category;

    invoke-static {v2, v3}, Landroid/dolby/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Landroid/dolby/ds/DsProfileSettings$Category;)V

    .line 99
    sget-object v2, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v3, 0x4

    aget-object v2, v2, v3

    sget-object v3, Landroid/dolby/ds/DsProfileSettings$Category;->CUSTOMIZED:Landroid/dolby/ds/DsProfileSettings$Category;

    invoke-static {v2, v3}, Landroid/dolby/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Landroid/dolby/ds/DsProfileSettings$Category;)V

    .line 100
    sget-object v2, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v3, 0x5

    aget-object v2, v2, v3

    sget-object v3, Landroid/dolby/ds/DsProfileSettings$Category;->CUSTOMIZED:Landroid/dolby/ds/DsProfileSettings$Category;

    invoke-static {v2, v3}, Landroid/dolby/ds/DsPresetsConfiguration;->addNewProfileSettings(Ljava/lang/String;Landroid/dolby/ds/DsProfileSettings$Category;)V

    .line 101
    if-eqz p0, :cond_0

    .line 102
    invoke-static {}, Landroid/dolby/ds/DsPresetsConfiguration;->addOffProfileSettings()V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 111
    :cond_0
    return v1

    .line 105
    :catch_0
    move-exception v0

    .line 106
    .local v0, "e":Ljava/lang/Exception;
    const-string/jumbo v2, "DsPresetsConfiguration"

    invoke-virtual {v0}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 107
    const/4 v1, 0x0

    .line 108
    return v1
.end method

.method public static getCurrentSettings()[Landroid/dolby/ds/DsProfileSettings;
    .locals 2

    .prologue
    .line 131
    sget-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->currentProfiles:Ljava/util/Vector;

    sget-object v1, Landroid/dolby/ds/DsPresetsConfiguration;->currentProfiles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Landroid/dolby/ds/DsProfileSettings;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/dolby/ds/DsProfileSettings;

    return-object v0
.end method

.method public static getDefaultSettings()[Landroid/dolby/ds/DsProfileSettings;
    .locals 2

    .prologue
    .line 121
    sget-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->defaultProfiles:Ljava/util/Vector;

    sget-object v1, Landroid/dolby/ds/DsPresetsConfiguration;->defaultProfiles:Ljava/util/Vector;

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v1

    new-array v1, v1, [Landroid/dolby/ds/DsProfileSettings;

    invoke-virtual {v0, v1}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Landroid/dolby/ds/DsProfileSettings;

    return-object v0
.end method

.method public static getOffProfileSettings()Landroid/dolby/ds/DsProfileSettings;
    .locals 1

    .prologue
    .line 141
    sget-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->offProfile_:Landroid/dolby/ds/DsProfileSettings;

    return-object v0
.end method

.method public static getParserStatusFlag()Z
    .locals 1

    .prologue
    .line 77
    sget-object v0, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;

    invoke-virtual {v0}, Landroid/dolby/ds/DsConfigParser;->getParserStatusFlag()Z

    move-result v0

    return v0
.end method

.method private static resolveIeqPreset(II)I
    .locals 1
    .param p0, "defaultIeq"    # I
    .param p1, "currentIeq"    # I

    .prologue
    .line 323
    const/4 v0, -0x1

    if-eq p1, v0, :cond_0

    .end local p1    # "currentIeq":I
    :goto_0
    return p1

    .restart local p1    # "currentIeq":I
    :cond_0
    move p1, p0

    goto :goto_0
.end method

.method private static resolveName(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;
    .locals 0
    .param p0, "defaultName"    # Ljava/lang/String;
    .param p1, "currentName"    # Ljava/lang/String;

    .prologue
    .line 309
    if-eqz p1, :cond_0

    .end local p1    # "currentName":Ljava/lang/String;
    :goto_0
    return-object p1

    .restart local p1    # "currentName":Ljava/lang/String;
    :cond_0
    move-object p1, p0

    goto :goto_0
.end method

.method public static xmlConfigParsing(Ljava/io/InputStream;Ljava/io/InputStream;Z)Z
    .locals 4
    .param p0, "currentSettings"    # Ljava/io/InputStream;
    .param p1, "defaultSettings"    # Ljava/io/InputStream;
    .param p2, "useOffProfileForDsOff"    # Z

    .prologue
    .line 43
    const/4 v1, 0x1

    .line 49
    .local v1, "ret":Z
    :try_start_0
    new-instance v2, Landroid/dolby/ds/DsConfigParser;

    invoke-direct {v2, p0, p2}, Landroid/dolby/ds/DsConfigParser;-><init>(Ljava/io/InputStream;Z)V

    sput-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserCurrent:Landroid/dolby/ds/DsConfigParser;
    :try_end_0
    .catch Ljava/lang/IllegalArgumentException; {:try_start_0 .. :try_end_0} :catch_0

    .line 59
    :goto_0
    :try_start_1
    new-instance v2, Landroid/dolby/ds/DsConfigParser;

    invoke-direct {v2, p1, p2}, Landroid/dolby/ds/DsConfigParser;-><init>(Ljava/io/InputStream;Z)V

    sput-object v2, Landroid/dolby/ds/DsPresetsConfiguration;->xmlParserDefault:Landroid/dolby/ds/DsConfigParser;
    :try_end_1
    .catch Ljava/lang/IllegalArgumentException; {:try_start_1 .. :try_end_1} :catch_1

    .line 67
    :goto_1
    return v1

    .line 52
    :catch_0
    move-exception v0

    .line 53
    .local v0, "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "DsPresetsConfiguration"

    const-string/jumbo v3, "The current settings are invalid. The default settings will be used."

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    goto :goto_0

    .line 62
    .end local v0    # "e":Ljava/lang/IllegalArgumentException;
    :catch_1
    move-exception v0

    .line 63
    .restart local v0    # "e":Ljava/lang/IllegalArgumentException;
    const-string/jumbo v2, "DsPresetsConfiguration"

    const-string/jumbo v3, "Error in parsing the default settings."

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 64
    const/4 v1, 0x0

    goto :goto_1
.end method
