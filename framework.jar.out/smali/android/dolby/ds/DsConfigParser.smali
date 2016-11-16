.class public Landroid/dolby/ds/DsConfigParser;
.super Ljava/lang/Object;
.source "DsConfigParser.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/dolby/ds/DsConfigParser$ProfileSettings;,
        Landroid/dolby/ds/DsConfigParser$EqualizerSettings;,
        Landroid/dolby/ds/DsConfigParser$DeviceSettings;
    }
.end annotation


# static fields
.field private static final ASCII_TAB_COMMA:I = 0x2c

.field private static final ASCII_TAB_CR:I = 0xd

.field private static final ASCII_TAB_EQUAL:I = 0x3d

.field private static final ASCII_TAB_LEFT_BRACKET:I = 0x5b

.field private static final ASCII_TAB_LF:I = 0xa

.field private static final ASCII_TAB_RIGHT_BRACKET:I = 0x5d

.field private static final ASCII_TAB_SPACE:I = 0x20

.field private static final ERROR_INVALID_PARAM_LEN:I = 0x40

.field private static final ERROR_INVALID_PARAM_NAME:I = 0x10

.field private static final ERROR_INVALID_PARAM_VALUE:I = 0x20

.field private static final ERROR_MISSING_IEQ:I = 0x2

.field private static final ERROR_MISSING_OFF:I = 0x4

.field private static final ERROR_MISSING_PARAM:I = 0x8

.field private static final ERROR_MISSING_PROFILE:I = 0x1

.field private static final ERROR_REDUNDANT_IEQ:I = 0x2000

.field private static final ERROR_REDUNDANT_OFF:I = 0x4000

.field private static final ERROR_REDUNDANT_PROFILE:I = 0x1000

.field private static final NO_ERROR:I = 0x0

.field private static final TAG:Ljava/lang/String; = "DsConfigParser"

.field private static final TUNING_MAX_OFFSET:I = 0x149

.field private static ieqDefinitions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private static profileDefinitions:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private akParamsFound_:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Ljava/lang/String;",
            "Ljava/lang/Boolean;",
            ">;"
        }
    .end annotation
.end field

.field private defaultGeqBandGain_:[I

.field private mapDevice:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/dolby/ds/DsConfigParser$DeviceSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mapEqualizer:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/dolby/ds/DsConfigParser$EqualizerSettings;",
            ">;"
        }
    .end annotation
.end field

.field private mapProfile:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap",
            "<",
            "Ljava/lang/String;",
            "Landroid/dolby/ds/DsConfigParser$ProfileSettings;",
            ">;"
        }
    .end annotation
.end field

.field private parameterDev:Ljava/lang/String;

.field private parameterId:Ljava/lang/String;

.field private parameterName:Ljava/lang/String;

.field private parameterPreset:Ljava/lang/String;

.field private parameterType:Ljava/lang/String;

.field private parameterValue:Ljava/lang/String;

.field private parserErrorFlag:I

.field private tagName:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 61
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v2, Landroid/dolby/ds/DsConfigParser;->profileDefinitions:Ljava/util/LinkedHashMap;

    .line 62
    new-instance v2, Ljava/util/LinkedHashMap;

    invoke-direct {v2}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v2, Landroid/dolby/ds/DsConfigParser;->ieqDefinitions:Ljava/util/LinkedHashMap;

    .line 71
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 72
    sget-object v2, Landroid/dolby/ds/DsConfigParser;->profileDefinitions:Ljava/util/LinkedHashMap;

    sget-object v3, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 71
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 75
    :cond_0
    const/4 v0, 0x0

    :goto_1
    sget-object v2, Landroid/dolby/DsCommon;->IEQ_PRESET_NAMES_XML:[Ljava/lang/String;

    array-length v2, v2

    if-ge v0, v2, :cond_2

    .line 77
    sget-object v2, Landroid/dolby/ds/DsConfigParser;->ieqDefinitions:Ljava/util/LinkedHashMap;

    sget-object v3, Landroid/dolby/DsCommon;->IEQ_PRESET_NAMES_XML:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_2
    sget-object v2, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    array-length v2, v2

    if-ge v1, v2, :cond_1

    .line 79
    sget-object v2, Landroid/dolby/ds/DsConfigParser;->ieqDefinitions:Ljava/util/LinkedHashMap;

    sget-object v3, Landroid/dolby/DsCommon;->GEQ_NAMES_XML:[[Ljava/lang/String;

    aget-object v3, v3, v1

    aget-object v3, v3, v0

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v4

    invoke-virtual {v2, v3, v4}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 78
    add-int/lit8 v1, v1, 0x1

    goto :goto_2

    .line 75
    :cond_1
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 32
    .end local v1    # "j":I
    :cond_2
    return-void
.end method

.method public constructor <init>(Ljava/io/InputStream;Z)V
    .locals 13
    .param p1, "is"    # Ljava/io/InputStream;
    .param p2, "useOffProfileForDsOff"    # Z

    .prologue
    .line 128
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 67
    new-instance v11, Ljava/util/LinkedHashMap;

    invoke-direct {v11}, Ljava/util/LinkedHashMap;-><init>()V

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    .line 83
    const/4 v11, 0x0

    iput v11, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    .line 85
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    .line 86
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    .line 87
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    .line 88
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterName:Ljava/lang/String;

    .line 89
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterPreset:Ljava/lang/String;

    .line 90
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    .line 91
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    .line 101
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    .line 108
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->mapEqualizer:Ljava/util/HashMap;

    .line 116
    new-instance v11, Ljava/util/HashMap;

    invoke-direct {v11}, Ljava/util/HashMap;-><init>()V

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->mapDevice:Ljava/util/HashMap;

    .line 132
    :try_start_0
    invoke-static {}, Lorg/xmlpull/v1/XmlPullParserFactory;->newInstance()Lorg/xmlpull/v1/XmlPullParserFactory;

    move-result-object v4

    .line 133
    .local v4, "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    invoke-virtual {v4}, Lorg/xmlpull/v1/XmlPullParserFactory;->newPullParser()Lorg/xmlpull/v1/XmlPullParser;

    move-result-object v10

    .line 134
    .local v10, "xpp":Lorg/xmlpull/v1/XmlPullParser;
    const-string/jumbo v11, "UTF-8"

    invoke-interface {v10, p1, v11}, Lorg/xmlpull/v1/XmlPullParser;->setInput(Ljava/io/InputStream;Ljava/lang/String;)V

    .line 136
    const/4 v8, 0x0

    .line 137
    .local v8, "tagFlag":Z
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getEventType()I
    :try_end_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_0 .. :try_end_0} :catch_1

    move-result v3

    .line 138
    .local v3, "eventType":I
    const/4 v7, 0x0

    .line 142
    .local v7, "paraCount":I
    :goto_0
    const/4 v11, 0x1

    if-eq v3, v11, :cond_7

    .line 144
    packed-switch v3, :pswitch_data_0

    .line 200
    :cond_0
    :goto_1
    :try_start_1
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->next()I

    move-result v3

    goto :goto_0

    .line 147
    :pswitch_0
    const/4 v8, 0x0

    .line 148
    goto :goto_1

    .line 150
    :pswitch_1
    if-eqz v8, :cond_0

    .line 152
    iget-object v11, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string/jumbo v12, "data"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_1

    .line 153
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getText()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    .line 155
    :cond_1
    iget-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    if-eqz v11, :cond_0

    .line 156
    invoke-direct {p0}, Landroid/dolby/ds/DsConfigParser;->parseParameters()V
    :try_end_1
    .catch Ljava/io/IOException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_1 .. :try_end_1} :catch_1

    goto :goto_1

    .line 204
    :catch_0
    move-exception v1

    .line 205
    .local v1, "e":Ljava/io/IOException;
    :try_start_2
    const-string/jumbo v11, "DsConfigParser"

    const-string/jumbo v12, "xmlConfigParsing(): error occurred while parsing xml file"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 206
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "Invalid ds settings"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11
    :try_end_2
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_2 .. :try_end_2} :catch_1

    .line 210
    .end local v1    # "e":Ljava/io/IOException;
    .end local v3    # "eventType":I
    .end local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .end local v7    # "paraCount":I
    .end local v8    # "tagFlag":Z
    .end local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :catch_1
    move-exception v2

    .line 211
    .local v2, "e":Lorg/xmlpull/v1/XmlPullParserException;
    const-string/jumbo v11, "DsConfigParser"

    const-string/jumbo v12, "xmlConfigParsing(): error occurred while parsing xml file"

    invoke-static {v11, v12}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    new-instance v11, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v12, "Invalid ds settings"

    invoke-direct {v11, v12}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v11

    .line 160
    .end local v2    # "e":Lorg/xmlpull/v1/XmlPullParserException;
    .restart local v3    # "eventType":I
    .restart local v4    # "factory":Lorg/xmlpull/v1/XmlPullParserFactory;
    .restart local v7    # "paraCount":I
    .restart local v8    # "tagFlag":Z
    .restart local v10    # "xpp":Lorg/xmlpull/v1/XmlPullParser;
    :pswitch_2
    const/4 v8, 0x1

    .line 161
    :try_start_3
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getName()Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    .line 163
    iget-object v11, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string/jumbo v12, "preset"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    iget-object v11, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string/jumbo v12, "profile"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-nez v11, :cond_2

    .line 164
    iget-object v11, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string/jumbo v12, "tuning"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 163
    if-nez v11, :cond_2

    .line 164
    iget-object v11, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string/jumbo v12, "constant"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    .line 163
    if-eqz v11, :cond_6

    .line 167
    :cond_2
    invoke-interface {v10}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeCount()I

    move-result v0

    .line 169
    .local v0, "count":I
    iget-object v11, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    .line 170
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    .line 171
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterName:Ljava/lang/String;

    .line 172
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    .line 173
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterPreset:Ljava/lang/String;

    .line 174
    const/4 v11, 0x0

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    .line 175
    const/4 v5, 0x0

    .local v5, "i":I
    :goto_2
    if-ge v5, v0, :cond_6

    .line 177
    invoke-interface {v10, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeName(I)Ljava/lang/String;

    move-result-object v6

    .line 178
    .local v6, "nameAttri":Ljava/lang/String;
    invoke-interface {v10, v5}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v9

    .line 182
    .local v9, "valueAttri":Ljava/lang/String;
    const-string/jumbo v11, "id"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_3

    .line 183
    iput-object v9, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    .line 184
    :cond_3
    const-string/jumbo v11, "name"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_4

    .line 185
    iput-object v9, p0, Landroid/dolby/ds/DsConfigParser;->parameterName:Ljava/lang/String;

    .line 186
    :cond_4
    const-string/jumbo v11, "dev"

    invoke-virtual {v6, v11}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_5

    .line 187
    iput-object v9, p0, Landroid/dolby/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    .line 175
    :cond_5
    add-int/lit8 v5, v5, 0x1

    goto :goto_2

    .line 191
    .end local v0    # "count":I
    .end local v5    # "i":I
    .end local v6    # "nameAttri":Ljava/lang/String;
    .end local v9    # "valueAttri":Ljava/lang/String;
    :cond_6
    iget-object v11, p0, Landroid/dolby/ds/DsConfigParser;->tagName:Ljava/lang/String;

    const-string/jumbo v12, "include"

    invoke-virtual {v11, v12}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v11

    if-eqz v11, :cond_0

    .line 193
    const/4 v11, 0x0

    invoke-interface {v10, v11}, Lorg/xmlpull/v1/XmlPullParser;->getAttributeValue(I)Ljava/lang/String;

    move-result-object v11

    iput-object v11, p0, Landroid/dolby/ds/DsConfigParser;->parameterPreset:Ljava/lang/String;

    .line 194
    invoke-direct {p0}, Landroid/dolby/ds/DsConfigParser;->parseParameters()V
    :try_end_3
    .catch Ljava/io/IOException; {:try_start_3 .. :try_end_3} :catch_0
    .catch Lorg/xmlpull/v1/XmlPullParserException; {:try_start_3 .. :try_end_3} :catch_1

    goto/16 :goto_1

    .line 215
    :cond_7
    invoke-direct {p0, p2}, Landroid/dolby/ds/DsConfigParser;->checkConfigValidity(Z)V

    .line 128
    return-void

    .line 144
    nop

    :pswitch_data_0
    .packed-switch 0x2
        :pswitch_2
        :pswitch_0
        :pswitch_1
    .end packed-switch
.end method

.method private checkConfigValidity(Z)V
    .locals 5
    .param p1, "useOffProfileForDsOff"    # Z

    .prologue
    const/4 v4, 0x3

    .line 342
    const/4 v0, 0x0

    .line 343
    .local v0, "i":I
    const/4 v1, 0x5

    .line 346
    .local v1, "requiredProfileNum":I
    const/4 v0, 0x0

    .line 343
    :goto_0
    const/4 v2, 0x5

    .line 346
    if-gt v0, v2, :cond_1

    .line 348
    iget-object v2, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    sget-object v3, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_0

    .line 351
    iget v2, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v2, v2, 0x1

    iput v2, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    .line 346
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 355
    :cond_1
    const/4 v0, 0x1

    :goto_1
    if-gt v0, v4, :cond_3

    .line 357
    iget-object v2, p0, Landroid/dolby/ds/DsConfigParser;->mapEqualizer:Ljava/util/HashMap;

    sget-object v3, Landroid/dolby/DsCommon;->IEQ_PRESET_NAMES_XML:[Ljava/lang/String;

    aget-object v3, v3, v0

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_2

    .line 360
    iget v2, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v2, v2, 0x2

    iput v2, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    .line 355
    :cond_2
    add-int/lit8 v0, v0, 0x1

    goto :goto_1

    .line 364
    :cond_3
    if-eqz p1, :cond_7

    .line 366
    const/4 v1, 0x6

    .line 367
    iget-object v2, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-nez v2, :cond_4

    .line 370
    iget v2, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v2, v2, 0x4

    iput v2, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    .line 382
    :cond_4
    :goto_2
    iget-object v2, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    add-int/lit8 v3, v1, 0x1

    if-le v2, v3, :cond_5

    .line 385
    iget v2, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit16 v2, v2, 0x1000

    iput v2, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    .line 388
    :cond_5
    iget-object v2, p0, Landroid/dolby/ds/DsConfigParser;->mapEqualizer:Ljava/util/HashMap;

    invoke-virtual {v2}, Ljava/util/HashMap;->size()I

    move-result v2

    if-le v2, v4, :cond_6

    .line 391
    iget v2, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit16 v2, v2, 0x2000

    iput v2, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    .line 340
    :cond_6
    return-void

    .line 376
    :cond_7
    iget-object v2, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    const-string/jumbo v3, "off"

    invoke-virtual {v2, v3}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    if-eqz v2, :cond_4

    .line 378
    iget v2, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit16 v2, v2, 0x4000

    iput v2, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    goto :goto_2
.end method

.method private convertStringArray(Ljava/lang/String;)[I
    .locals 12
    .param p1, "valueStr"    # Ljava/lang/String;

    .prologue
    const/4 v11, 0x0

    const/16 v10, 0x20

    .line 711
    const/4 v6, 0x1

    .local v6, "start":I
    const/4 v2, 0x1

    .line 712
    .local v2, "end":I
    const/16 v8, 0x149

    new-array v7, v8, [I

    .line 713
    .local v7, "value":[I
    const/4 v1, 0x0

    .line 714
    .local v1, "count":I
    const/4 v5, 0x0

    .line 715
    .local v5, "spaceCount":I
    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v0

    .line 717
    .local v0, "arrayLength":I
    :goto_0
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_0

    .line 719
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 721
    :cond_0
    move v6, v2

    .line 722
    :cond_1
    :goto_1
    if-ge v2, v0, :cond_5

    .line 724
    const/4 v5, 0x0

    .line 725
    :goto_2
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x2c

    if-eq v8, v9, :cond_3

    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    const/16 v9, 0x5d

    if-eq v8, v9, :cond_3

    .line 727
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_2

    .line 728
    add-int/lit8 v5, v5, 0x1

    .line 729
    :cond_2
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 734
    :cond_3
    sub-int v8, v2, v5

    :try_start_0
    invoke-virtual {p1, v6, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    aput v8, v7, v1
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 742
    add-int/lit8 v1, v1, 0x1

    .line 744
    add-int/lit8 v2, v2, 0x1

    .line 746
    if-eq v2, v0, :cond_1

    .line 748
    :goto_3
    invoke-virtual {p1, v2}, Ljava/lang/String;->charAt(I)C

    move-result v8

    if-ne v8, v10, :cond_4

    .line 750
    add-int/lit8 v2, v2, 0x1

    goto :goto_3

    .line 737
    :catch_0
    move-exception v3

    .line 739
    .local v3, "ex":Ljava/lang/Exception;
    iget v8, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v8, v8, 0x20

    iput v8, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    .line 740
    const/4 v8, 0x0

    return-object v8

    .line 752
    .end local v3    # "ex":Ljava/lang/Exception;
    :cond_4
    move v6, v2

    goto :goto_1

    .line 756
    :cond_5
    new-array v4, v1, [I

    .line 757
    .local v4, "settingValue":[I
    invoke-static {v7, v11, v4, v11, v1}, Ljava/lang/System;->arraycopy([II[III)V

    .line 759
    return-object v4
.end method

.method private equalizerSettingArray([Ljava/lang/String;I[[I)[[I
    .locals 16
    .param p1, "paramNames"    # [Ljava/lang/String;
    .param p2, "length"    # I
    .param p3, "userDefaultGebg"    # [[I

    .prologue
    .line 582
    new-instance v5, Ljava/util/Vector;

    invoke-direct {v5}, Ljava/util/Vector;-><init>()V

    .line 583
    .local v5, "eqList":Ljava/util/Vector;, "Ljava/util/Vector<[I>;"
    new-instance v3, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;

    const/4 v13, 0x0

    move-object/from16 v0, p0

    invoke-direct {v3, v0, v13}, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;-><init>(Landroid/dolby/ds/DsConfigParser;Landroid/dolby/ds/DsConfigParser$EqualizerSettings;)V

    .line 585
    .local v3, "currentSettings":Landroid/dolby/ds/DsConfigParser$EqualizerSettings;
    const/4 v6, 0x0

    .local v6, "i":I
    :goto_0
    const/4 v13, 0x4

    if-ge v6, v13, :cond_15

    .line 587
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/dolby/ds/DsConfigParser;->mapEqualizer:Ljava/util/HashMap;

    aget-object v14, p1, v6

    invoke-virtual {v13, v14}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    .end local v3    # "currentSettings":Landroid/dolby/ds/DsConfigParser$EqualizerSettings;
    check-cast v3, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;

    .line 588
    .restart local v3    # "currentSettings":Landroid/dolby/ds/DsConfigParser$EqualizerSettings;
    if-nez v3, :cond_4

    .line 593
    aget-object v13, p1, v6

    const/4 v14, 0x0

    const/4 v15, 0x3

    invoke-virtual {v13, v14, v15}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v13

    const-string/jumbo v14, "geq"

    invoke-virtual {v13, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 595
    if-eqz p3, :cond_1

    .line 597
    aget-object v13, p3, v6

    invoke-virtual {v5, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 585
    :cond_0
    :goto_1
    add-int/lit8 v6, v6, 0x1

    goto :goto_0

    .line 599
    :cond_1
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/dolby/ds/DsConfigParser;->defaultGeqBandGain_:[I

    if-eqz v13, :cond_2

    .line 601
    move-object/from16 v0, p0

    iget-object v13, v0, Landroid/dolby/ds/DsConfigParser;->defaultGeqBandGain_:[I

    invoke-virtual {v5, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 605
    :cond_2
    move/from16 v0, p2

    new-array v13, v0, [I

    invoke-virtual {v5, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 610
    :cond_3
    move/from16 v0, p2

    new-array v13, v0, [I

    invoke-virtual {v5, v13}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 615
    :cond_4
    iget-object v9, v3, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;->settingStr:Ljava/lang/String;

    .line 616
    .local v9, "settingGroup":Ljava/lang/String;
    const/4 v8, 0x0

    .line 617
    .local v8, "parameter":Ljava/lang/String;
    const/4 v12, 0x0

    .line 619
    .local v12, "value":Ljava/lang/String;
    const/4 v11, 0x0

    .local v11, "start":I
    const/4 v4, 0x0

    .line 620
    .local v4, "end":I
    const/4 v10, 0x0

    .line 621
    .local v10, "spaceCount":I
    invoke-virtual {v9}, Ljava/lang/String;->length()I

    move-result v2

    .line 626
    .local v2, "arrayLength":I
    :goto_2
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0xa

    if-eq v13, v14, :cond_5

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0xd

    if-ne v13, v14, :cond_6

    .line 628
    :cond_5
    add-int/lit8 v4, v4, 0x1

    goto :goto_2

    .line 626
    :cond_6
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x20

    if-eq v13, v14, :cond_5

    .line 630
    move v11, v4

    .line 631
    .end local v8    # "parameter":Ljava/lang/String;
    .end local v12    # "value":Ljava/lang/String;
    :cond_7
    :goto_3
    if-ge v4, v2, :cond_0

    .line 633
    const/4 v7, 0x0

    .line 634
    .local v7, "isParamFound":Z
    const/4 v10, 0x0

    .line 635
    :goto_4
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x3d

    if-eq v13, v14, :cond_9

    .line 637
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x20

    if-ne v13, v14, :cond_8

    .line 638
    add-int/lit8 v10, v10, 0x1

    .line 639
    :cond_8
    add-int/lit8 v4, v4, 0x1

    goto :goto_4

    .line 641
    :cond_9
    sub-int v13, v4, v10

    invoke-virtual {v9, v11, v13}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 643
    .local v8, "parameter":Ljava/lang/String;
    const-string/jumbo v13, "iebt"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_a

    const-string/jumbo v13, "gebg"

    invoke-virtual {v8, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 651
    :cond_a
    const/4 v7, 0x1

    .line 654
    :goto_5
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x5b

    if-eq v13, v14, :cond_c

    .line 656
    add-int/lit8 v4, v4, 0x1

    goto :goto_5

    .line 646
    :cond_b
    const-string/jumbo v13, "DsConfigParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "Unexpected parameter name "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " for equalizer settings"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 647
    move-object/from16 v0, p0

    iget v13, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v13, v13, 0x10

    move-object/from16 v0, p0

    iput v13, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    goto :goto_5

    .line 658
    :cond_c
    move v11, v4

    .line 659
    :goto_6
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x5d

    if-eq v13, v14, :cond_d

    .line 661
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 663
    :cond_d
    add-int/lit8 v4, v4, 0x1

    .line 665
    if-eqz v7, :cond_f

    .line 667
    invoke-virtual {v9, v11, v4}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v12

    .line 668
    .local v12, "value":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v12}, Landroid/dolby/ds/DsConfigParser;->convertStringArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 669
    .local v1, "actualSettings":[I
    if-eqz v1, :cond_13

    .line 671
    array-length v13, v1

    invoke-static {v8, v13}, Landroid/dolby/ds/DsAkSettings;->isAkParamLengthValid(Ljava/lang/String;I)Z

    move-result v13

    if-nez v13, :cond_e

    .line 673
    move-object/from16 v0, p0

    iget v13, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v13, v13, 0x40

    move-object/from16 v0, p0

    iput v13, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    .line 675
    :cond_e
    invoke-virtual {v5, v1}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 685
    .end local v1    # "actualSettings":[I
    .end local v12    # "value":Ljava/lang/String;
    :cond_f
    :goto_7
    if-eq v4, v2, :cond_7

    .line 687
    :cond_10
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0xa

    if-eq v13, v14, :cond_11

    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0xd

    if-ne v13, v14, :cond_14

    .line 689
    :cond_11
    :goto_8
    add-int/lit8 v4, v4, 0x1

    .line 690
    if-ne v4, v2, :cond_10

    .line 693
    :cond_12
    move v11, v4

    goto/16 :goto_3

    .line 680
    .restart local v1    # "actualSettings":[I
    .restart local v12    # "value":Ljava/lang/String;
    :cond_13
    const-string/jumbo v13, "DsConfigParser"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "The values for AK parameter "

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, " are invalid"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 687
    .end local v1    # "actualSettings":[I
    .end local v12    # "value":Ljava/lang/String;
    :cond_14
    invoke-virtual {v9, v4}, Ljava/lang/String;->charAt(I)C

    move-result v13

    const/16 v14, 0x20

    if-ne v13, v14, :cond_12

    goto :goto_8

    .line 700
    .end local v2    # "arrayLength":I
    .end local v4    # "end":I
    .end local v7    # "isParamFound":Z
    .end local v8    # "parameter":Ljava/lang/String;
    .end local v9    # "settingGroup":Ljava/lang/String;
    .end local v10    # "spaceCount":I
    .end local v11    # "start":I
    :cond_15
    invoke-virtual {v5}, Ljava/util/Vector;->size()I

    move-result v13

    new-array v13, v13, [[I

    invoke-virtual {v5, v13}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v13

    check-cast v13, [[I

    return-object v13
.end method

.method private getProfileSettingArray(Ljava/lang/String;)[[I
    .locals 6
    .param p1, "profile"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 403
    new-instance v1, Ljava/util/Vector;

    invoke-direct {v1}, Ljava/util/Vector;-><init>()V

    .line 404
    .local v1, "settingList":Ljava/util/Vector;, "Ljava/util/Vector<[I>;"
    new-instance v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;

    invoke-direct {v0, p0, v5}, Landroid/dolby/ds/DsConfigParser$ProfileSettings;-><init>(Landroid/dolby/ds/DsConfigParser;Landroid/dolby/ds/DsConfigParser$ProfileSettings;)V

    .line 405
    .local v0, "currentProfileSettings":Landroid/dolby/ds/DsConfigParser$ProfileSettings;
    iget-object v2, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    invoke-virtual {v2, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "currentProfileSettings":Landroid/dolby/ds/DsConfigParser$ProfileSettings;
    check-cast v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;

    .line 407
    .restart local v0    # "currentProfileSettings":Landroid/dolby/ds/DsConfigParser$ProfileSettings;
    if-nez v0, :cond_0

    .line 408
    return-object v5

    .line 410
    :cond_0
    const-string/jumbo v2, "DsConfigParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "profile settingStr: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->settingStr:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 412
    iget-object v2, v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->settingStr:Ljava/lang/String;

    invoke-direct {p0, v2}, Landroid/dolby/ds/DsConfigParser;->parseSettingGroup(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v1

    .line 413
    if-nez v1, :cond_1

    .line 414
    return-object v5

    .line 416
    :cond_1
    const-string/jumbo v2, "DsConfigParser"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "profile setting list size: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 417
    invoke-virtual {v1}, Ljava/util/Vector;->size()I

    move-result v2

    new-array v2, v2, [[I

    invoke-virtual {v1, v2}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v2

    check-cast v2, [[I

    return-object v2
.end method

.method private getTuningSettingArray()[[I
    .locals 8

    .prologue
    const/4 v7, 0x0

    .line 464
    new-instance v2, Ljava/util/Vector;

    invoke-direct {v2}, Ljava/util/Vector;-><init>()V

    .line 468
    .local v2, "settingList":Ljava/util/Vector;, "Ljava/util/Vector<[I>;"
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->mapDevice:Ljava/util/HashMap;

    const-string/jumbo v5, "tuning"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/dolby/ds/DsConfigParser$DeviceSettings;

    .line 469
    .local v1, "deviceTuningSettings":Landroid/dolby/ds/DsConfigParser$DeviceSettings;
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->mapDevice:Ljava/util/HashMap;

    const-string/jumbo v5, "constant"

    invoke-virtual {v4, v5}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/DsConfigParser$DeviceSettings;

    .line 471
    .local v0, "deviceConstantSettings":Landroid/dolby/ds/DsConfigParser$DeviceSettings;
    if-nez v1, :cond_1

    .line 473
    if-nez v0, :cond_0

    const/4 v3, 0x0

    .line 480
    :goto_0
    if-nez v3, :cond_3

    .line 481
    return-object v7

    .line 473
    :cond_0
    iget-object v3, v0, Landroid/dolby/ds/DsConfigParser$DeviceSettings;->settingStr:Ljava/lang/String;

    .local v3, "settingStr":Ljava/lang/String;
    goto :goto_0

    .line 477
    .end local v3    # "settingStr":Ljava/lang/String;
    :cond_1
    if-nez v0, :cond_2

    iget-object v3, v1, Landroid/dolby/ds/DsConfigParser$DeviceSettings;->settingStr:Ljava/lang/String;

    .restart local v3    # "settingStr":Ljava/lang/String;
    goto :goto_0

    .end local v3    # "settingStr":Ljava/lang/String;
    :cond_2
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v5, v1, Landroid/dolby/ds/DsConfigParser$DeviceSettings;->settingStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/dolby/ds/DsConfigParser$DeviceSettings;->settingStr:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    .restart local v3    # "settingStr":Ljava/lang/String;
    goto :goto_0

    .line 483
    .end local v3    # "settingStr":Ljava/lang/String;
    :cond_3
    const-string/jumbo v4, "DsConfigParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "tuning settingStr: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 485
    invoke-direct {p0, v3}, Landroid/dolby/ds/DsConfigParser;->parseSettingGroup(Ljava/lang/String;)Ljava/util/Vector;

    move-result-object v2

    .line 486
    if-nez v2, :cond_4

    .line 487
    return-object v7

    .line 489
    :cond_4
    const-string/jumbo v4, "DsConfigParser"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "device setting list size: "

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 490
    invoke-virtual {v2}, Ljava/util/Vector;->size()I

    move-result v4

    new-array v4, v4, [[I

    invoke-virtual {v2, v4}, Ljava/util/Vector;->toArray([Ljava/lang/Object;)[Ljava/lang/Object;

    move-result-object v4

    check-cast v4, [[I

    return-object v4
.end method

.method private parseParameters()V
    .locals 9

    .prologue
    const/4 v8, 0x3

    const/4 v7, 0x0

    const/4 v6, 0x0

    .line 225
    new-instance v2, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;

    invoke-direct {v2, p0, v6}, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;-><init>(Landroid/dolby/ds/DsConfigParser;Landroid/dolby/ds/DsConfigParser$EqualizerSettings;)V

    .line 226
    .local v2, "currentSettings":Landroid/dolby/ds/DsConfigParser$EqualizerSettings;
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    if-eqz v4, :cond_1

    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v4, v7, v8}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v3

    .line 227
    :goto_0
    const-string/jumbo v4, "preset"

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    const-string/jumbo v4, "ieq"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_0

    const-string/jumbo v4, "geq"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 229
    :cond_0
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    iput-object v4, v2, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;->device:Ljava/lang/String;

    .line 230
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    iput-object v4, v2, Landroid/dolby/ds/DsConfigParser$EqualizerSettings;->settingStr:Ljava/lang/String;

    .line 231
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->mapEqualizer:Ljava/util/HashMap;

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v4, v5, v2}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 233
    return-void

    .line 226
    :cond_1
    const/4 v3, 0x0

    .local v3, "preIeq":Ljava/lang/String;
    goto :goto_0

    .line 237
    .end local v3    # "preIeq":Ljava/lang/String;
    :cond_2
    new-instance v1, Landroid/dolby/ds/DsConfigParser$ProfileSettings;

    invoke-direct {v1, p0, v6}, Landroid/dolby/ds/DsConfigParser$ProfileSettings;-><init>(Landroid/dolby/ds/DsConfigParser;Landroid/dolby/ds/DsConfigParser$ProfileSettings;)V

    .line 238
    .local v1, "currentProfileSettings":Landroid/dolby/ds/DsConfigParser$ProfileSettings;
    const-string/jumbo v4, "profile"

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_4

    .line 239
    sget-object v4, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    aget-object v4, v4, v7

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_3

    .line 240
    sget-object v4, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v5, 0x1

    aget-object v4, v4, v5

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 239
    if-nez v4, :cond_3

    .line 241
    sget-object v4, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v5, 0x2

    aget-object v4, v4, v5

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 239
    if-nez v4, :cond_3

    .line 242
    sget-object v4, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    aget-object v4, v4, v8

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 239
    if-nez v4, :cond_3

    .line 243
    sget-object v4, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v5, 0x4

    aget-object v4, v4, v5

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 239
    if-nez v4, :cond_3

    .line 244
    sget-object v4, Landroid/dolby/DsCommon;->PROFILE_NAMES_XML:[Ljava/lang/String;

    const/4 v5, 0x5

    aget-object v4, v4, v5

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 239
    if-nez v4, :cond_3

    .line 245
    const-string/jumbo v4, "off"

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    .line 238
    if-eqz v4, :cond_4

    .line 247
    :cond_3
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterName:Ljava/lang/String;

    iput-object v4, v1, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->displayName:Ljava/lang/String;

    .line 248
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterPreset:Ljava/lang/String;

    iput-object v4, v1, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->ieqId:Ljava/lang/String;

    .line 249
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    iput-object v4, v1, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->device:Ljava/lang/String;

    .line 250
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    iput-object v4, v1, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->settingStr:Ljava/lang/String;

    .line 251
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterId:Ljava/lang/String;

    invoke-virtual {v4, v5, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 253
    return-void

    .line 257
    :cond_4
    new-instance v0, Landroid/dolby/ds/DsConfigParser$DeviceSettings;

    invoke-direct {v0, p0, v6}, Landroid/dolby/ds/DsConfigParser$DeviceSettings;-><init>(Landroid/dolby/ds/DsConfigParser;Landroid/dolby/ds/DsConfigParser$DeviceSettings;)V

    .line 258
    .local v0, "currentDeviceSettings":Landroid/dolby/ds/DsConfigParser$DeviceSettings;
    const-string/jumbo v4, "tuning"

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_5

    const-string/jumbo v4, "constant"

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_6

    .line 260
    :cond_5
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterDev:Ljava/lang/String;

    iput-object v4, v0, Landroid/dolby/ds/DsConfigParser$DeviceSettings;->device:Ljava/lang/String;

    .line 261
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->parameterValue:Ljava/lang/String;

    iput-object v4, v0, Landroid/dolby/ds/DsConfigParser$DeviceSettings;->settingStr:Ljava/lang/String;

    .line 262
    iget-object v4, p0, Landroid/dolby/ds/DsConfigParser;->mapDevice:Ljava/util/HashMap;

    iget-object v5, p0, Landroid/dolby/ds/DsConfigParser;->parameterType:Ljava/lang/String;

    invoke-virtual {v4, v5, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 222
    :cond_6
    return-void
.end method

.method private parseSettingGroup(Ljava/lang/String;)Ljava/util/Vector;
    .locals 17
    .param p1, "settingGroup"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/Vector",
            "<[I>;"
        }
    .end annotation

    .prologue
    .line 770
    if-nez p1, :cond_0

    .line 771
    const/4 v14, 0x0

    return-object v14

    .line 772
    :cond_0
    new-instance v10, Ljava/util/Vector;

    invoke-direct {v10}, Ljava/util/Vector;-><init>()V

    .line 774
    .local v10, "settingList":Ljava/util/Vector;, "Ljava/util/Vector<[I>;"
    const/4 v9, 0x0

    .local v9, "parameter":I
    const/4 v6, 0x0

    .local v6, "offset":I
    const/4 v13, 0x0

    .line 775
    .local v13, "value":I
    const/4 v12, 0x0

    .local v12, "start":I
    const/4 v3, 0x0

    .line 777
    .local v3, "end":I
    const/4 v11, 0x0

    .line 778
    .local v11, "spaceCount":I
    invoke-virtual/range {p1 .. p1}, Ljava/lang/String;->length()I

    move-result v2

    .line 782
    .local v2, "arrayLength":I
    :goto_0
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-eq v14, v15, :cond_1

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xd

    if-ne v14, v15, :cond_2

    .line 784
    :cond_1
    add-int/lit8 v3, v3, 0x1

    goto :goto_0

    .line 782
    :cond_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-eq v14, v15, :cond_1

    .line 786
    move v12, v3

    .line 787
    :cond_3
    :goto_1
    if-ge v3, v2, :cond_13

    .line 789
    const/4 v5, 0x0

    .line 790
    .local v5, "isParamFound":Z
    const/4 v11, 0x0

    .line 791
    :goto_2
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x3d

    if-eq v14, v15, :cond_5

    .line 793
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_4

    .line 794
    add-int/lit8 v11, v11, 0x1

    .line 795
    :cond_4
    add-int/lit8 v3, v3, 0x1

    goto :goto_2

    .line 797
    :cond_5
    sub-int v14, v3, v11

    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v14}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v7

    .line 799
    .local v7, "paraName":Ljava/lang/String;
    sget-object v14, Landroid/dolby/ds/DsAkSettings;->akSettableParamDefinitions:Ljava/util/HashSet;

    invoke-virtual {v14, v7}, Ljava/util/HashSet;->contains(Ljava/lang/Object;)Z

    move-result v14

    if-eqz v14, :cond_6

    .line 801
    invoke-static {v7}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v9

    .line 802
    move-object/from16 v0, p0

    iget-object v14, v0, Landroid/dolby/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    const/4 v15, 0x1

    invoke-static {v15}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v15

    invoke-virtual {v14, v7, v15}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 803
    const/4 v5, 0x1

    .line 812
    :goto_3
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x5b

    if-eq v14, v15, :cond_7

    .line 814
    add-int/lit8 v3, v3, 0x1

    goto :goto_3

    .line 808
    :cond_6
    const-string/jumbo v14, "DsConfigParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "Unexpected AK parameter name "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 809
    move-object/from16 v0, p0

    iget v14, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v14, v14, 0x10

    move-object/from16 v0, p0

    iput v14, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    goto :goto_3

    .line 816
    :cond_7
    move v12, v3

    .line 817
    :goto_4
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x5d

    if-eq v14, v15, :cond_8

    .line 819
    add-int/lit8 v3, v3, 0x1

    goto :goto_4

    .line 821
    :cond_8
    add-int/lit8 v3, v3, 0x1

    .line 823
    if-eqz v5, :cond_d

    .line 825
    move-object/from16 v0, p1

    invoke-virtual {v0, v12, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v8

    .line 826
    .local v8, "paraValue":Ljava/lang/String;
    move-object/from16 v0, p0

    invoke-direct {v0, v8}, Landroid/dolby/ds/DsConfigParser;->convertStringArray(Ljava/lang/String;)[I

    move-result-object v1

    .line 827
    .local v1, "actualSettings":[I
    if-eqz v1, :cond_11

    .line 829
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->isConstantAkParamsDefined()Z

    move-result v14

    if-nez v14, :cond_b

    .line 830
    const-string/jumbo v14, "genb"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-nez v14, :cond_9

    .line 831
    const-string/jumbo v14, "aonb"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    .line 830
    if-nez v14, :cond_9

    .line 832
    const-string/jumbo v14, "ienb"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    .line 830
    if-nez v14, :cond_9

    .line 833
    const-string/jumbo v14, "gebf"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    .line 829
    if-eqz v14, :cond_b

    .line 835
    :cond_9
    invoke-static {v7, v1}, Landroid/dolby/ds/DsAkSettings;->setConstantAkParam(Ljava/lang/String;[I)V

    .line 842
    :cond_a
    :goto_5
    const/4 v4, 0x0

    .local v4, "i":I
    :goto_6
    array-length v14, v1

    if-ge v4, v14, :cond_c

    .line 843
    const/4 v14, 0x3

    new-array v14, v14, [I

    const/4 v15, 0x0

    aput v9, v14, v15

    const/4 v15, 0x1

    aput v4, v14, v15

    aget v15, v1, v4

    const/16 v16, 0x2

    aput v15, v14, v16

    invoke-virtual {v10, v14}, Ljava/util/Vector;->add(Ljava/lang/Object;)Z

    .line 842
    add-int/lit8 v4, v4, 0x1

    goto :goto_6

    .line 837
    .end local v4    # "i":I
    :cond_b
    array-length v14, v1

    invoke-static {v7, v14}, Landroid/dolby/ds/DsAkSettings;->isAkParamLengthValid(Ljava/lang/String;I)Z

    move-result v14

    if-nez v14, :cond_a

    .line 839
    move-object/from16 v0, p0

    iget v14, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v14, v14, 0x40

    move-object/from16 v0, p0

    iput v14, v0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    goto :goto_5

    .line 846
    .restart local v4    # "i":I
    :cond_c
    const-string/jumbo v14, "gebg"

    invoke-virtual {v7, v14}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v14

    if-eqz v14, :cond_d

    .line 848
    move-object/from16 v0, p0

    iput-object v1, v0, Landroid/dolby/ds/DsConfigParser;->defaultGeqBandGain_:[I

    .line 859
    .end local v1    # "actualSettings":[I
    .end local v4    # "i":I
    .end local v8    # "paraValue":Ljava/lang/String;
    :cond_d
    :goto_7
    if-eq v3, v2, :cond_3

    .line 861
    :cond_e
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xa

    if-eq v14, v15, :cond_f

    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0xd

    if-ne v14, v15, :cond_12

    .line 863
    :cond_f
    :goto_8
    add-int/lit8 v3, v3, 0x1

    .line 864
    if-ne v3, v2, :cond_e

    .line 867
    :cond_10
    move v12, v3

    goto/16 :goto_1

    .line 854
    .restart local v1    # "actualSettings":[I
    .restart local v8    # "paraValue":Ljava/lang/String;
    :cond_11
    const-string/jumbo v14, "DsConfigParser"

    new-instance v15, Ljava/lang/StringBuilder;

    invoke-direct {v15}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v16, "The values for AK parameter "

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    const-string/jumbo v16, " are invalid"

    invoke-virtual/range {v15 .. v16}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v15

    invoke-virtual {v15}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v15

    invoke-static {v14, v15}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_7

    .line 861
    .end local v1    # "actualSettings":[I
    .end local v8    # "paraValue":Ljava/lang/String;
    :cond_12
    move-object/from16 v0, p1

    invoke-virtual {v0, v3}, Ljava/lang/String;->charAt(I)C

    move-result v14

    const/16 v15, 0x20

    if-ne v14, v15, :cond_10

    goto :goto_8

    .line 871
    .end local v5    # "isParamFound":Z
    .end local v7    # "paraName":Ljava/lang/String;
    :cond_13
    return-object v10
.end method


# virtual methods
.method public getGeqSettingArray(Ljava/lang/String;[[I)[[I
    .locals 3
    .param p1, "profile"    # Ljava/lang/String;
    .param p2, "defaultGebg"    # [[I

    .prologue
    .line 567
    const-string/jumbo v1, "gebg"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v0

    .line 568
    .local v0, "len":I
    sget-object v2, Landroid/dolby/DsCommon;->GEQ_NAMES_XML:[[Ljava/lang/String;

    sget-object v1, Landroid/dolby/ds/DsConfigParser;->profileDefinitions:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v1

    aget-object v1, v2, v1

    invoke-direct {p0, v1, v0, p2}, Landroid/dolby/ds/DsConfigParser;->equalizerSettingArray([Ljava/lang/String;I[[I)[[I

    move-result-object v1

    return-object v1
.end method

.method public getIeqSettingArray()[[I
    .locals 3

    .prologue
    .line 555
    const-string/jumbo v1, "iebt"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getParamArrayLength(Ljava/lang/String;)I

    move-result v0

    .line 556
    .local v0, "len":I
    sget-object v1, Landroid/dolby/DsCommon;->IEQ_PRESET_NAMES_XML:[Ljava/lang/String;

    const/4 v2, 0x0

    invoke-direct {p0, v1, v0, v2}, Landroid/dolby/ds/DsConfigParser;->equalizerSettingArray([Ljava/lang/String;I[[I)[[I

    move-result-object v1

    return-object v1
.end method

.method public getParserStatusFlag()Z
    .locals 3

    .prologue
    .line 275
    const/4 v0, 0x1

    .line 277
    .local v0, "ret":Z
    const-string/jumbo v1, "DsConfigParser"

    const-string/jumbo v2, "The parsing result of the configuration file shows below:"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 279
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    if-nez v1, :cond_2

    .line 281
    const-string/jumbo v1, "DsConfigParser"

    const-string/jumbo v2, "No errors were found when parsing configuration file."

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 329
    :cond_0
    :goto_0
    if-nez v0, :cond_1

    .line 330
    const-string/jumbo v1, "DsConfigParser"

    const-string/jumbo v2, "Parsing has failed, DS will be disabled! Please correct the errors in configuration file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 332
    :cond_1
    return v0

    .line 285
    :cond_2
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit16 v1, v1, 0x1000

    if-eqz v1, :cond_3

    .line 286
    const-string/jumbo v1, "DsConfigParser"

    const-string/jumbo v2, "More profiles were specified in configuration file than expected."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 287
    :cond_3
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit16 v1, v1, 0x2000

    if-eqz v1, :cond_4

    .line 288
    const-string/jumbo v1, "DsConfigParser"

    const-string/jumbo v2, "More IEQ presets were specified in configuration file than expected."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 289
    :cond_4
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit16 v1, v1, 0x4000

    if-eqz v1, :cond_5

    .line 290
    const-string/jumbo v1, "DsConfigParser"

    const-string/jumbo v2, "Off profile was specified in configuration file but is not expected."

    invoke-static {v1, v2}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 291
    :cond_5
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x1

    if-eqz v1, :cond_6

    .line 293
    const-string/jumbo v1, "DsConfigParser"

    const-string/jumbo v2, "Not all expected profiles were specified in configuration file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const/4 v0, 0x0

    .line 296
    :cond_6
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x2

    if-eqz v1, :cond_7

    .line 298
    const-string/jumbo v1, "DsConfigParser"

    const-string/jumbo v2, "Not all expected IEQ presets were specified in configuration file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 299
    const/4 v0, 0x0

    .line 301
    :cond_7
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x4

    if-eqz v1, :cond_8

    .line 303
    const-string/jumbo v1, "DsConfigParser"

    const-string/jumbo v2, "Off profile was expected but NOT specified in configuration file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    const/4 v0, 0x0

    .line 306
    :cond_8
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x8

    if-eqz v1, :cond_9

    .line 308
    const-string/jumbo v1, "DsConfigParser"

    const-string/jumbo v2, "Some AK parameters were missing in configuration file"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 309
    const/4 v0, 0x0

    .line 311
    :cond_9
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x10

    if-eqz v1, :cond_a

    .line 313
    const-string/jumbo v1, "DsConfigParser"

    const-string/jumbo v2, "Parameter name parsed from configuration file was not valid or in the required format"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 314
    const/4 v0, 0x0

    .line 316
    :cond_a
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x20

    if-eqz v1, :cond_b

    .line 318
    const-string/jumbo v1, "DsConfigParser"

    const-string/jumbo v2, "Parameter value parsed from configuration file was not valid or in the required format"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 319
    const/4 v0, 0x0

    .line 321
    :cond_b
    iget v1, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    and-int/lit8 v1, v1, 0x40

    if-eqz v1, :cond_0

    .line 323
    const-string/jumbo v1, "DsConfigParser"

    const-string/jumbo v2, "The length of data specified for the AK parameter is inconsistent with the related AK parameter that determines the expected length."

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 325
    const/4 v0, 0x0

    goto/16 :goto_0
.end method

.method public getProfileSettingIeq(Ljava/lang/String;)I
    .locals 6
    .param p1, "profile"    # Ljava/lang/String;

    .prologue
    const/4 v2, -0x1

    const/4 v3, 0x0

    .line 445
    new-instance v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;

    invoke-direct {v0, p0, v3}, Landroid/dolby/ds/DsConfigParser$ProfileSettings;-><init>(Landroid/dolby/ds/DsConfigParser;Landroid/dolby/ds/DsConfigParser$ProfileSettings;)V

    .line 446
    .local v0, "currentProfileSettings":Landroid/dolby/ds/DsConfigParser$ProfileSettings;
    iget-object v3, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    invoke-virtual {v3, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "currentProfileSettings":Landroid/dolby/ds/DsConfigParser$ProfileSettings;
    check-cast v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;

    .line 448
    .restart local v0    # "currentProfileSettings":Landroid/dolby/ds/DsConfigParser$ProfileSettings;
    if-nez v0, :cond_0

    .line 449
    return v2

    .line 451
    :cond_0
    const-string/jumbo v3, "DsConfigParser"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "ieqId: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    iget-object v5, v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->ieqId:Ljava/lang/String;

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 452
    sget-object v3, Landroid/dolby/ds/DsConfigParser;->ieqDefinitions:Ljava/util/LinkedHashMap;

    iget-object v4, v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->ieqId:Ljava/lang/String;

    invoke-virtual {v3, v4}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/Integer;

    .line 454
    .local v1, "index":Ljava/lang/Integer;
    if-nez v1, :cond_1

    :goto_0
    return v2

    :cond_1
    invoke-virtual {v1}, Ljava/lang/Integer;->intValue()I

    move-result v2

    goto :goto_0
.end method

.method public getProfileSettingName(Ljava/lang/String;)Ljava/lang/String;
    .locals 4
    .param p1, "profile"    # Ljava/lang/String;

    .prologue
    const/4 v2, 0x0

    .line 427
    new-instance v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;

    invoke-direct {v0, p0, v2}, Landroid/dolby/ds/DsConfigParser$ProfileSettings;-><init>(Landroid/dolby/ds/DsConfigParser;Landroid/dolby/ds/DsConfigParser$ProfileSettings;)V

    .line 428
    .local v0, "currentProfileSettings":Landroid/dolby/ds/DsConfigParser$ProfileSettings;
    iget-object v1, p0, Landroid/dolby/ds/DsConfigParser;->mapProfile:Ljava/util/HashMap;

    invoke-virtual {v1, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    .end local v0    # "currentProfileSettings":Landroid/dolby/ds/DsConfigParser$ProfileSettings;
    check-cast v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;

    .line 430
    .restart local v0    # "currentProfileSettings":Landroid/dolby/ds/DsConfigParser$ProfileSettings;
    if-nez v0, :cond_0

    .line 431
    return-object v2

    .line 433
    :cond_0
    const-string/jumbo v1, "DsConfigParser"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "displayName: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget-object v3, v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->displayName:Ljava/lang/String;

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 434
    iget-object v1, v0, Landroid/dolby/ds/DsConfigParser$ProfileSettings;->displayName:Ljava/lang/String;

    return-object v1
.end method

.method public getSavedParams()Ljava/util/HashSet;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 882
    new-instance v2, Ljava/util/HashSet;

    sget-object v3, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    invoke-direct {v2, v3}, Ljava/util/HashSet;-><init>(Ljava/util/Collection;)V

    .line 885
    .local v2, "savedParams":Ljava/util/HashSet;, "Ljava/util/HashSet<Ljava/lang/String;>;"
    iget-object v3, p0, Landroid/dolby/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    invoke-virtual {v3}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "paramName$iterator":Ljava/util/Iterator;
    :cond_0
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_1

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    .line 889
    .local v0, "paramName":Ljava/lang/String;
    iget-object v3, p0, Landroid/dolby/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    invoke-virtual {v3, v0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Ljava/lang/Boolean;

    invoke-virtual {v3}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v3

    if-eqz v3, :cond_0

    const-string/jumbo v3, "gebg"

    invoke-virtual {v0, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-nez v3, :cond_0

    .line 891
    invoke-virtual {v2, v0}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    goto :goto_0

    .line 894
    .end local v0    # "paramName":Ljava/lang/String;
    :cond_1
    return-object v2
.end method

.method public getSettingArray(Ljava/lang/String;Z)[[I
    .locals 13
    .param p1, "profile"    # Ljava/lang/String;
    .param p2, "requireAllParams"    # Z

    .prologue
    .line 505
    sget-object v10, Landroid/dolby/ds/DsAkSettings;->akSettableParamDefinitions:Ljava/util/HashSet;

    invoke-virtual {v10}, Ljava/util/HashSet;->toArray()[Ljava/lang/Object;

    move-result-object v5

    .line 506
    .local v5, "settableParamNames":[Ljava/lang/Object;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v10, v5

    if-ge v0, v10, :cond_0

    .line 508
    iget-object v11, p0, Landroid/dolby/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    aget-object v10, v5, v0

    check-cast v10, Ljava/lang/String;

    const/4 v12, 0x0

    invoke-static {v12}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v12

    invoke-virtual {v11, v10, v12}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 506
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 511
    :cond_0
    invoke-direct {p0}, Landroid/dolby/ds/DsConfigParser;->getTuningSettingArray()[[I

    move-result-object v8

    .line 512
    .local v8, "tuningArray":[[I
    invoke-direct {p0, p1}, Landroid/dolby/ds/DsConfigParser;->getProfileSettingArray(Ljava/lang/String;)[[I

    move-result-object v3

    .line 514
    .local v3, "profileArray":[[I
    if-nez v3, :cond_1

    const/4 v4, 0x0

    .line 515
    .local v4, "profileLength":I
    :goto_1
    if-nez v8, :cond_2

    const/4 v9, 0x0

    .line 516
    .local v9, "tuningLength":I
    :goto_2
    add-int v7, v4, v9

    .line 518
    .local v7, "settingLength":I
    if-nez v7, :cond_3

    .line 519
    const/4 v10, 0x0

    return-object v10

    .line 514
    .end local v4    # "profileLength":I
    .end local v7    # "settingLength":I
    .end local v9    # "tuningLength":I
    :cond_1
    array-length v4, v3

    .restart local v4    # "profileLength":I
    goto :goto_1

    .line 515
    :cond_2
    array-length v9, v8

    .restart local v9    # "tuningLength":I
    goto :goto_2

    .line 521
    .restart local v7    # "settingLength":I
    :cond_3
    if-eqz p2, :cond_5

    .line 525
    iget-object v10, p0, Landroid/dolby/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    invoke-virtual {v10}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v10

    invoke-interface {v10}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v2

    .local v2, "paramName$iterator":Ljava/util/Iterator;
    :cond_4
    :goto_3
    invoke-interface {v2}, Ljava/util/Iterator;->hasNext()Z

    move-result v10

    if-eqz v10, :cond_5

    invoke-interface {v2}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    .line 529
    .local v1, "paramName":Ljava/lang/String;
    iget-object v10, p0, Landroid/dolby/ds/DsConfigParser;->akParamsFound_:Ljava/util/LinkedHashMap;

    invoke-virtual {v10, v1}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Ljava/lang/Boolean;

    invoke-virtual {v10}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v10

    if-nez v10, :cond_4

    const-string/jumbo v10, "lcmf"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    const-string/jumbo v10, "iebt"

    invoke-virtual {v1, v10}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v10

    if-nez v10, :cond_4

    .line 531
    const-string/jumbo v10, "DsConfigParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "AK parameter "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    const-string/jumbo v12, " missing in xml file!"

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 532
    iget v10, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    or-int/lit8 v10, v10, 0x8

    iput v10, p0, Landroid/dolby/ds/DsConfigParser;->parserErrorFlag:I

    goto :goto_3

    .line 537
    .end local v1    # "paramName":Ljava/lang/String;
    .end local v2    # "paramName$iterator":Ljava/util/Iterator;
    :cond_5
    new-array v6, v7, [[I

    .line 539
    .local v6, "settingArray":[[I
    if-eqz v4, :cond_6

    .line 540
    const/4 v10, 0x0

    const/4 v11, 0x0

    invoke-static {v3, v10, v6, v11, v4}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 541
    :cond_6
    if-eqz v9, :cond_7

    .line 542
    const/4 v10, 0x0

    invoke-static {v8, v10, v6, v4, v9}, Ljava/lang/System;->arraycopy(Ljava/lang/Object;ILjava/lang/Object;II)V

    .line 544
    :cond_7
    const-string/jumbo v10, "DsConfigParser"

    new-instance v11, Ljava/lang/StringBuilder;

    invoke-direct {v11}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v12, "total setting list size: "

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v11

    array-length v12, v6

    invoke-virtual {v11, v12}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v11

    invoke-virtual {v11}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v11

    invoke-static {v10, v11}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 546
    return-object v6
.end method
