.class public Landroid/dolby/ds/DsStoreUtil;
.super Ljava/lang/Object;
.source "DsStoreUtil.java"


# static fields
.field private static final ATTRIBUTE_DEV:Ljava/lang/String; = "dev"

.field private static final ATTRIBUTE_ID:Ljava/lang/String; = "id"

.field private static final ATTRIBUTE_NAME:Ljava/lang/String; = "name"

.field private static final ATTRIBUTE_PRESET:Ljava/lang/String; = "preset"

.field private static final DEFAULT_PROFILE:I = 0x0

.field private static DS_CURRENT_SETTINGS_PATH:Ljava/lang/String; = null

.field private static DS_STATE_PATH:Ljava/lang/String; = null

.field private static final SUBTAG_CONSTANT:Ljava/lang/String; = "constant"

.field private static final SUBTAG_DATA:Ljava/lang/String; = "data"

.field private static final SUBTAG_INCLUDE:Ljava/lang/String; = "include"

.field private static final SUBTAG_ONOFF:Ljava/lang/String; = "DsOn"

.field private static final SUBTAG_PRESET:Ljava/lang/String; = "preset"

.field private static final SUBTAG_PROFILE:Ljava/lang/String; = "profile"

.field private static final SUBTAG_PROFILEID:Ljava/lang/String; = "CurrentProfile"

.field private static final SUBTAG_TUNING:Ljava/lang/String; = "tuning"

.field private static final TAG:Ljava/lang/String; = "DsStoreUtil"

.field private static final TAG_DS_CURRENT:Ljava/lang/String; = "currentdata"

.field private static final TAG_DS_STATE:Ljava/lang/String; = "DsState"


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 62
    sput-object v0, Landroid/dolby/ds/DsStoreUtil;->DS_CURRENT_SETTINGS_PATH:Ljava/lang/String;

    .line 63
    sput-object v0, Landroid/dolby/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    .line 32
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 32
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static convertArray([[S)[Ljava/lang/String;
    .locals 8
    .param p0, "integerArray"    # [[S

    .prologue
    .line 217
    array-length v6, p0

    new-array v5, v6, [Ljava/lang/String;

    .line 219
    .local v5, "stringArray":[Ljava/lang/String;
    const-string/jumbo v6, "gebf"

    invoke-static {v6}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v0

    .line 221
    .local v0, "gebfLen":I
    const/4 v1, 0x0

    .local v1, "i":I
    :goto_0
    array-length v6, p0

    if-ge v1, v6, :cond_1

    .line 223
    aget-object v3, p0, v1

    .line 224
    .local v3, "oneIntegerSetting":[S
    const-string/jumbo v4, "gebg=["

    .line 225
    .local v4, "oneStringArray":Ljava/lang/String;
    const/4 v2, 0x0

    .local v2, "j":I
    :goto_1
    add-int/lit8 v6, v0, -0x1

    if-ge v2, v6, :cond_0

    .line 226
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    aget-short v7, v3, v2

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ", "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 225
    add-int/lit8 v2, v2, 0x1

    goto :goto_1

    .line 227
    :cond_0
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v6, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    add-int/lit8 v7, v0, -0x1

    aget-short v7, v3, v7

    invoke-static {v7}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, "]"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    .line 229
    aput-object v4, v5, v1

    .line 221
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 232
    .end local v2    # "j":I
    .end local v3    # "oneIntegerSetting":[S
    .end local v4    # "oneStringArray":Ljava/lang/String;
    :cond_1
    return-object v5
.end method

.method public static loadDsState()[Ljava/lang/String;
    .locals 15

    .prologue
    const/4 v14, 0x1

    const/4 v12, 0x0

    .line 86
    const/4 v11, 0x2

    new-array v0, v11, [Ljava/lang/String;

    const-string/jumbo v11, "0"

    aput-object v11, v0, v12

    invoke-static {v12}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v11

    aput-object v11, v0, v14

    .line 88
    .local v0, "currentState":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 91
    .local v6, "fileis":Ljava/io/FileInputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileInputStream;

    .end local v6    # "fileis":Ljava/io/FileInputStream;
    sget-object v11, Landroid/dolby/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    invoke-direct {v6, v11}, Ljava/io/FileInputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 101
    .local v6, "fileis":Ljava/io/FileInputStream;
    :try_start_1
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v5

    .line 102
    .local v5, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v5}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 103
    .local v10, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v11, "UTF-8"

    invoke-interface {v10, v6, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 105
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_2

    move-result v4

    .line 106
    .local v4, "eventType":I
    const/4 v7, 0x0

    .line 107
    .local v7, "parameterName":Ljava/lang/String;
    const/4 v8, 0x0

    .line 108
    .local v8, "parameterValue":Ljava/lang/String;
    const/4 v9, 0x0

    .line 112
    .end local v7    # "parameterName":Ljava/lang/String;
    .end local v8    # "parameterValue":Ljava/lang/String;
    .local v9, "tagFlag":Z
    :goto_0
    if-eq v4, v14, :cond_2

    .line 114
    packed-switch v4, :pswitch_data_0

    .line 139
    :cond_0
    :goto_1
    :try_start_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I
    :try_end_2
    .catch Ljava/io/IOException; {:try_start_2 .. :try_end_2} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_2

    move-result v4

    goto :goto_0

    .line 94
    .end local v4    # "eventType":I
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v6    # "fileis":Ljava/io/FileInputStream;
    .end local v9    # "tagFlag":Z
    .end local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_0
    move-exception v1

    .line 95
    .local v1, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v11, "DsStoreUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Cannot find DS state file "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Landroid/dolby/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", using default value."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 96
    return-object v0

    .line 117
    .end local v1    # "e":Ljava/io/FileNotFoundException;
    .restart local v4    # "eventType":I
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v6    # "fileis":Ljava/io/FileInputStream;
    .restart local v9    # "tagFlag":Z
    .restart local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_0
    const/4 v9, 0x0

    .line 118
    goto :goto_1

    .line 120
    :pswitch_1
    :try_start_3
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v8

    .line 121
    .local v8, "parameterValue":Ljava/lang/String;
    const-string/jumbo v11, "DsStoreUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Text: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 122
    if-eqz v9, :cond_0

    .line 124
    const-string/jumbo v11, "DsOn"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 125
    const/4 v11, 0x0

    aput-object v8, v0, v11

    .line 126
    :cond_1
    const-string/jumbo v11, "CurrentProfile"

    invoke-virtual {v7, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 127
    const/4 v11, 0x1

    aput-object v8, v0, v11
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_2

    goto :goto_1

    .line 144
    .end local v8    # "parameterValue":Ljava/lang/String;
    :catch_1
    move-exception v2

    .line 145
    .local v2, "e":Ljava/io/IOException;
    :try_start_4
    const-string/jumbo v11, "DsStoreUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Error occurred when parsing"

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Landroid/dolby/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", using default value."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_4
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_4 .. :try_end_4} :catch_2

    .line 146
    return-object v0

    .line 132
    .end local v2    # "e":Ljava/io/IOException;
    :pswitch_2
    const/4 v9, 0x1

    .line 133
    :try_start_5
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v7

    .line 134
    .local v7, "parameterName":Ljava/lang/String;
    const-string/jumbo v11, "DsStoreUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Name: "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_5
    .catch Ljava/io/IOException; {:try_start_5 .. :try_end_5} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_5 .. :try_end_5} :catch_2

    goto/16 :goto_1

    .line 150
    .end local v4    # "eventType":I
    .end local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7    # "parameterName":Ljava/lang/String;
    .end local v9    # "tagFlag":Z
    .end local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_2
    move-exception v3

    .line 151
    .local v3, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v11, "DsStoreUtil"

    new-instance v12, Ljava/lang/StringBuilder;

    invoke-direct {v12}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v13, "Erro occurred when parsing "

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    sget-object v13, Landroid/dolby/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    const-string/jumbo v13, ", using default value."

    invoke-virtual {v12, v13}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v12

    invoke-virtual {v12}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v12

    invoke-static {v11, v12}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 152
    return-object v0

    .line 141
    .end local v3    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v4    # "eventType":I
    .restart local v5    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v9    # "tagFlag":Z
    .restart local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :cond_2
    :try_start_6
    invoke-virtual {v6}, Ljava/io/FileInputStream;->close()V
    :try_end_6
    .catch Ljava/io/IOException; {:try_start_6 .. :try_end_6} :catch_1
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_6 .. :try_end_6} :catch_2

    .line 155
    return-object v0

    .line 114
    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method public static saveDsProfileSettings([Landroid/dolby/ds/DsProfileSettings;)V
    .locals 16
    .param p0, "currentProfiles"    # [Landroid/dolby/ds/DsProfileSettings;

    .prologue
    .line 242
    sget-object v7, Landroid/dolby/DsCommon;->GEQ_NAMES_XML:[[Ljava/lang/String;

    .line 243
    .local v7, "geqName":[[Ljava/lang/String;
    sget-object v10, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    .line 244
    .local v10, "profileIdName":[Ljava/lang/String;
    const/4 v6, 0x0

    .line 247
    .local v6, "fileos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v6, Ljava/io/FileOutputStream;

    .end local v6    # "fileos":Ljava/io/FileOutputStream;
    sget-object v13, Landroid/dolby/ds/DsStoreUtil;->DS_CURRENT_SETTINGS_PATH:Ljava/lang/String;

    invoke-direct {v6, v13}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 254
    .local v6, "fileos":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v11

    .line 257
    .local v11, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_1
    const-string/jumbo v13, "utf-8"

    invoke-interface {v11, v6, v13}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 258
    const/4 v13, 0x0

    const/4 v14, 0x0

    invoke-interface {v11, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 259
    const-string/jumbo v13, "\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 260
    const-string/jumbo v13, "currentdata"

    const/4 v14, 0x0

    invoke-interface {v11, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 261
    const-string/jumbo v13, "\n\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 263
    const/4 v9, 0x0

    .local v9, "profile":I
    :goto_0
    const/4 v13, 0x5

    if-gt v9, v13, :cond_2

    .line 265
    aget-object v13, p0, v9

    invoke-virtual {v13}, Landroid/dolby/ds/DsProfileSettings;->getCurrentProfileSettings()Ljava/lang/String;

    move-result-object v3

    .line 266
    .local v3, "DsCurrentSettings":Ljava/lang/String;
    aget-object v13, p0, v9

    invoke-virtual {v13}, Landroid/dolby/ds/DsProfileSettings;->getDisplayName()Ljava/lang/String;

    move-result-object v2

    .line 267
    .local v2, "DsCurrentProfileNames":Ljava/lang/String;
    aget-object v13, p0, v9

    invoke-virtual {v13}, Landroid/dolby/ds/DsProfileSettings;->getIeqPreset()I

    move-result v1

    .line 268
    .local v1, "DsCurrentIeqPresets":I
    aget-object v13, p0, v9

    invoke-virtual {v13}, Landroid/dolby/ds/DsProfileSettings;->getGeqGainArray()[[S

    move-result-object v0

    .line 270
    .local v0, "DsCurrentGeqSettings":[[S
    if-eqz v0, :cond_0

    .line 272
    invoke-static {v0}, Landroid/dolby/ds/DsStoreUtil;->convertArray([[S)[Ljava/lang/String;

    move-result-object v12

    .line 273
    .local v12, "settingStr":[Ljava/lang/String;
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "gebg settings for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v10, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " profile"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 274
    const-string/jumbo v13, "\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 275
    const/4 v8, 0x0

    .local v8, "index":I
    :goto_1
    const/4 v13, 0x3

    if-gt v8, v13, :cond_0

    .line 277
    const-string/jumbo v13, "preset"

    const/4 v14, 0x0

    invoke-interface {v11, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 278
    const-string/jumbo v13, "id"

    aget-object v14, v7, v9

    aget-object v14, v14, v8

    const/4 v15, 0x0

    invoke-interface {v11, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 279
    const-string/jumbo v13, "\n    "

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 281
    const-string/jumbo v13, "data"

    const/4 v14, 0x0

    invoke-interface {v11, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 282
    aget-object v13, v12, v8

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 283
    const-string/jumbo v13, "data"

    const/4 v14, 0x0

    invoke-interface {v11, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 284
    const-string/jumbo v13, "\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 286
    const-string/jumbo v13, "preset"

    const/4 v14, 0x0

    invoke-interface {v11, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 287
    const-string/jumbo v13, "\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 275
    add-int/lit8 v8, v8, 0x1

    goto :goto_1

    .line 250
    .end local v0    # "DsCurrentGeqSettings":[[S
    .end local v1    # "DsCurrentIeqPresets":I
    .end local v2    # "DsCurrentProfileNames":Ljava/lang/String;
    .end local v3    # "DsCurrentSettings":Ljava/lang/String;
    .end local v6    # "fileos":Ljava/io/FileOutputStream;
    .end local v8    # "index":I
    .end local v9    # "profile":I
    .end local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    .end local v12    # "settingStr":[Ljava/lang/String;
    :catch_0
    move-exception v4

    .line 251
    .local v4, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v13, "DsStoreUtil"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Failed to find or load "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    sget-object v15, Landroid/dolby/ds/DsStoreUtil;->DS_CURRENT_SETTINGS_PATH:Ljava/lang/String;

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, ", and the file could not be created"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 252
    return-void

    .line 291
    .end local v4    # "e":Ljava/io/FileNotFoundException;
    .restart local v0    # "DsCurrentGeqSettings":[[S
    .restart local v1    # "DsCurrentIeqPresets":I
    .restart local v2    # "DsCurrentProfileNames":Ljava/lang/String;
    .restart local v3    # "DsCurrentSettings":Ljava/lang/String;
    .restart local v6    # "fileos":Ljava/io/FileOutputStream;
    .restart local v9    # "profile":I
    .restart local v11    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :cond_0
    if-eqz v3, :cond_1

    .line 293
    :try_start_2
    new-instance v13, Ljava/lang/StringBuilder;

    invoke-direct {v13}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v14, "profile settings for "

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    aget-object v14, v10, v9

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    const-string/jumbo v14, " profile"

    invoke-virtual {v13, v14}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v13

    invoke-virtual {v13}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v13

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 294
    const-string/jumbo v13, "\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 295
    const-string/jumbo v13, "profile"

    const/4 v14, 0x0

    invoke-interface {v11, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 296
    const-string/jumbo v13, "id"

    aget-object v14, v10, v9

    const/4 v15, 0x0

    invoke-interface {v11, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 297
    const-string/jumbo v13, "name"

    const/4 v14, 0x0

    invoke-interface {v11, v14, v13, v2}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 298
    const-string/jumbo v13, "\n    "

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 300
    const-string/jumbo v13, "data"

    const/4 v14, 0x0

    invoke-interface {v11, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 301
    invoke-interface {v11, v3}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 302
    const-string/jumbo v13, "data"

    const/4 v14, 0x0

    invoke-interface {v11, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 303
    const-string/jumbo v13, "\n    "

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 305
    const-string/jumbo v13, "include"

    const/4 v14, 0x0

    invoke-interface {v11, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 306
    const-string/jumbo v13, "preset"

    aget-object v14, v7, v9

    aget-object v14, v14, v1

    const/4 v15, 0x0

    invoke-interface {v11, v15, v13, v14}, Lorg/xmlpull/v1/XmlSerializer;->attribute(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 307
    const-string/jumbo v13, "include"

    const/4 v14, 0x0

    invoke-interface {v11, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 308
    const-string/jumbo v13, "\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 310
    const-string/jumbo v13, "profile"

    const/4 v14, 0x0

    invoke-interface {v11, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 311
    const-string/jumbo v13, "\n\n"

    invoke-interface {v11, v13}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 263
    :cond_1
    add-int/lit8 v9, v9, 0x1

    goto/16 :goto_0

    .line 314
    .end local v0    # "DsCurrentGeqSettings":[[S
    .end local v1    # "DsCurrentIeqPresets":I
    .end local v2    # "DsCurrentProfileNames":Ljava/lang/String;
    .end local v3    # "DsCurrentSettings":Ljava/lang/String;
    :cond_2
    const-string/jumbo v13, "currentdata"

    const/4 v14, 0x0

    invoke-interface {v11, v14, v13}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 315
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 316
    invoke-interface {v11}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 317
    invoke-virtual {v6}, Ljava/io/FileOutputStream;->close()V
    :try_end_2
    .catch Ljava/lang/Exception; {:try_start_2 .. :try_end_2} :catch_1

    .line 240
    .end local v9    # "profile":I
    :goto_2
    return-void

    .line 320
    :catch_1
    move-exception v5

    .line 321
    .local v5, "e":Ljava/lang/Exception;
    invoke-virtual {v5}, Ljava/lang/Exception;->printStackTrace()V

    .line 322
    const-string/jumbo v13, "DsStoreUtil"

    const-string/jumbo v14, "saveDsProfileSettings(): error occurred while saving the current DS profile settings"

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_2
.end method

.method public static saveDsState(Ljava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p0, "dsState"    # Ljava/lang/String;
    .param p1, "currentProfile"    # Ljava/lang/String;

    .prologue
    .line 166
    const/4 v2, 0x0

    .line 169
    .local v2, "fileos":Ljava/io/FileOutputStream;
    :try_start_0
    new-instance v2, Ljava/io/FileOutputStream;

    .end local v2    # "fileos":Ljava/io/FileOutputStream;
    sget-object v4, Landroid/dolby/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    invoke-direct {v2, v4}, Ljava/io/FileOutputStream;-><init>(Ljava/lang/String;)V
    :try_end_0
    .catch Ljava/io/FileNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    .line 176
    .local v2, "fileos":Ljava/io/FileOutputStream;
    invoke-static {}, Landroid/util/Xml;->newSerializer()Lorg/xmlpull/v1/XmlSerializer;

    move-result-object v3

    .line 179
    .local v3, "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :try_start_1
    const-string/jumbo v4, "utf-8"

    invoke-interface {v3, v2, v4}, Lorg/xmlpull/v1/XmlSerializer;->setOutput(Ljava/io/OutputStream;Ljava/lang/String;)V

    .line 180
    const/4 v4, 0x0

    const/4 v5, 0x0

    invoke-interface {v3, v4, v5}, Lorg/xmlpull/v1/XmlSerializer;->startDocument(Ljava/lang/String;Ljava/lang/Boolean;)V

    .line 181
    const-string/jumbo v4, "\n"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 182
    const-string/jumbo v4, "DsState"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 183
    const-string/jumbo v4, "\n"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 184
    const-string/jumbo v4, "Ds on/off state"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 185
    const-string/jumbo v4, "\n"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 186
    const-string/jumbo v4, "DsOn"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 187
    invoke-interface {v3, p0}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 188
    const-string/jumbo v4, "DsOn"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 189
    const-string/jumbo v4, "\n"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 190
    const-string/jumbo v4, "Profile index"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->comment(Ljava/lang/String;)V

    .line 191
    const-string/jumbo v4, "\n"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 192
    const-string/jumbo v4, "CurrentProfile"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->startTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 193
    invoke-interface {v3, p1}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 194
    const-string/jumbo v4, "CurrentProfile"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 195
    const-string/jumbo v4, "\n"

    invoke-interface {v3, v4}, Lorg/xmlpull/v1/XmlSerializer;->text(Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 196
    const-string/jumbo v4, "DsState"

    const/4 v5, 0x0

    invoke-interface {v3, v5, v4}, Lorg/xmlpull/v1/XmlSerializer;->endTag(Ljava/lang/String;Ljava/lang/String;)Lorg/xmlpull/v1/XmlSerializer;

    .line 197
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->endDocument()V

    .line 198
    invoke-interface {v3}, Lorg/xmlpull/v1/XmlSerializer;->flush()V

    .line 199
    invoke-virtual {v2}, Ljava/io/FileOutputStream;->close()V
    :try_end_1
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 164
    :goto_0
    return-void

    .line 172
    .end local v2    # "fileos":Ljava/io/FileOutputStream;
    .end local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_0
    move-exception v0

    .line 173
    .local v0, "e":Ljava/io/FileNotFoundException;
    const-string/jumbo v4, "DsStoreUtil"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Failed to find or load "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    sget-object v6, Landroid/dolby/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, ", and the file could not be created"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 174
    return-void

    .line 202
    .end local v0    # "e":Ljava/io/FileNotFoundException;
    .restart local v2    # "fileos":Ljava/io/FileOutputStream;
    .restart local v3    # "serializer":Lorg/xmlpull/v1/XmlSerializer;
    :catch_1
    move-exception v1

    .line 203
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DsStoreUtil"

    const-string/jumbo v5, "saveDsState(): error occurred while creating xml file"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public static storeDsPath(Ljava/lang/String;Ljava/lang/String;)V
    .locals 0
    .param p0, "dsCurSettingsPath"    # Ljava/lang/String;
    .param p1, "dsStatePath"    # Ljava/lang/String;

    .prologue
    .line 73
    sput-object p0, Landroid/dolby/ds/DsStoreUtil;->DS_CURRENT_SETTINGS_PATH:Ljava/lang/String;

    .line 74
    sput-object p1, Landroid/dolby/ds/DsStoreUtil;->DS_STATE_PATH:Ljava/lang/String;

    .line 71
    return-void
.end method
