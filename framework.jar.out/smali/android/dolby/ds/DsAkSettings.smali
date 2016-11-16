.class public Landroid/dolby/ds/DsAkSettings;
.super Ljava/lang/Object;
.source "DsAkSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/dolby/ds/DsAkSettings$ParameterDefn;,
        Landroid/dolby/ds/DsAkSettings$SettingDefn;
    }
.end annotation


# static fields
.field private static final AKPARAM_AOCC:S = 0x2s

.field public static final AK_DS1_FEATURE_AUTO:S = 0x2s

.field public static final AK_DS1_FEATURE_OFF:S = 0x0s

.field public static final AK_DS1_FEATURE_ON:S = 0x1s

.field private static final LOG_TAG:Ljava/lang/String; = "DsAkSettings"

.field private static akAllParamDefinitions_:Ljava/util/LinkedHashMap;
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

.field private static akParam_aonb_:S

.field private static akParam_gebf_:[I

.field private static akParam_genb_:S

.field private static akParam_ienb_:S

.field private static final akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

.field public static akSettableParamDefinitions:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private static constantAkParamsDefined_:Z

.field private static settingsDefaults_:[S

.field private static settingsDefinitions_:Ljava/util/LinkedHashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedHashMap",
            "<",
            "Landroid/dolby/ds/DsAkSettings$SettingDefn;",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private values_:[S


# direct methods
.method static synthetic -get0()Ljava/util/LinkedHashMap;
    .locals 1

    sget-object v0, Landroid/dolby/ds/DsAkSettings;->akAllParamDefinitions_:Ljava/util/LinkedHashMap;

    return-object v0
.end method

.method static synthetic -get1()[Landroid/dolby/ds/DsAkSettings$ParameterDefn;
    .locals 1

    sget-object v0, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 12

    .prologue
    const/4 v11, 0x2

    const/16 v10, 0x28

    const/16 v9, 0x14

    const/4 v8, 0x0

    const/4 v7, 0x1

    .line 104
    const/16 v1, 0x40

    new-array v1, v1, [Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    .line 105
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "bver"

    const/4 v4, 0x5

    const/16 v5, -0x8000

    const/16 v6, 0x7fff

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v8

    .line 106
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "bndl"

    const/16 v4, -0x8000

    const/16 v5, 0x7fff

    invoke-direct {v2, v3, v11, v4, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v7

    .line 107
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "ocf"

    const/4 v4, 0x5

    invoke-direct {v2, v3, v7, v8, v4}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v11

    .line 108
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "preg"

    const/16 v4, -0x820

    const/16 v5, 0x1e0

    invoke-direct {v2, v3, v7, v4, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/4 v3, 0x3

    aput-object v2, v1, v3

    .line 109
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "vdhe"

    invoke-direct {v2, v3, v7, v8, v11}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/4 v3, 0x4

    aput-object v2, v1, v3

    .line 110
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "vspe"

    invoke-direct {v2, v3, v7, v8, v11}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/4 v3, 0x5

    aput-object v2, v1, v3

    .line 111
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "dssf"

    const/16 v4, 0x4e20

    invoke-direct {v2, v3, v7, v9, v4}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/4 v3, 0x6

    aput-object v2, v1, v3

    .line 112
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "dvli"

    const/16 v4, -0x280

    invoke-direct {v2, v3, v7, v4, v8}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/4 v3, 0x7

    aput-object v2, v1, v3

    .line 113
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "dvlo"

    const/16 v4, -0x280

    invoke-direct {v2, v3, v7, v4, v8}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x8

    aput-object v2, v1, v3

    .line 114
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "dvle"

    invoke-direct {v2, v3, v7, v8, v7}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x9

    aput-object v2, v1, v3

    .line 115
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "dvmc"

    const/16 v4, -0x140

    const/16 v5, 0x140

    invoke-direct {v2, v3, v7, v4, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0xa

    aput-object v2, v1, v3

    .line 116
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "dvme"

    invoke-direct {v2, v3, v7, v8, v7}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0xb

    aput-object v2, v1, v3

    .line 117
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "ienb"

    invoke-direct {v2, v3, v7, v7, v10}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0xc

    aput-object v2, v1, v3

    .line 118
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "iebf"

    const/16 v4, 0x4e20

    invoke-direct {v2, v3, v9, v9, v4}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0xd

    aput-object v2, v1, v3

    .line 119
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "ieon"

    invoke-direct {v2, v3, v7, v8, v7}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0xe

    aput-object v2, v1, v3

    .line 120
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "deon"

    invoke-direct {v2, v3, v7, v8, v7}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0xf

    aput-object v2, v1, v3

    .line 121
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "ngon"

    invoke-direct {v2, v3, v7, v8, v11}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x10

    aput-object v2, v1, v3

    .line 122
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "geon"

    invoke-direct {v2, v3, v7, v8, v7}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x11

    aput-object v2, v1, v3

    .line 123
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "genb"

    invoke-direct {v2, v3, v7, v7, v10}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x12

    aput-object v2, v1, v3

    .line 124
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "gebf"

    const/16 v4, 0x4e20

    invoke-direct {v2, v3, v9, v9, v4}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x13

    aput-object v2, v1, v3

    .line 125
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "aonb"

    invoke-direct {v2, v3, v7, v7, v10}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v9

    .line 126
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "aobf"

    const/16 v4, 0x4e20

    invoke-direct {v2, v3, v10, v9, v4}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x15

    aput-object v2, v1, v3

    .line 127
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "aobg"

    const/16 v4, 0x149

    const/16 v5, -0x1e0

    const/16 v6, 0x1e0

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x16

    aput-object v2, v1, v3

    .line 128
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "aoon"

    invoke-direct {v2, v3, v7, v8, v11}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x17

    aput-object v2, v1, v3

    .line 129
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "arnb"

    invoke-direct {v2, v3, v7, v7, v10}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x18

    aput-object v2, v1, v3

    .line 130
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "arbf"

    const/16 v4, 0x4e20

    invoke-direct {v2, v3, v10, v9, v4}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x19

    aput-object v2, v1, v3

    .line 131
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "plb"

    const/16 v4, 0x120

    invoke-direct {v2, v3, v7, v8, v4}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x1a

    aput-object v2, v1, v3

    .line 132
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "plmd"

    const/4 v4, 0x4

    invoke-direct {v2, v3, v7, v8, v4}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x1b

    aput-object v2, v1, v3

    .line 133
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "ven"

    invoke-direct {v2, v3, v7, v8, v7}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x1c

    aput-object v2, v1, v3

    .line 134
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "vnnb"

    invoke-direct {v2, v3, v7, v7, v9}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x1d

    aput-object v2, v1, v3

    .line 135
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "vnbf"

    const/16 v4, -0x8000

    const/16 v5, 0x7fff

    invoke-direct {v2, v3, v9, v4, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x1e

    aput-object v2, v1, v3

    .line 136
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "vnbg"

    const/16 v4, -0x8000

    const/16 v5, 0x7fff

    invoke-direct {v2, v3, v9, v4, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x1f

    aput-object v2, v1, v3

    .line 137
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "vnbe"

    const/16 v4, -0x8000

    const/16 v5, 0x7fff

    invoke-direct {v2, v3, v9, v4, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x20

    aput-object v2, v1, v3

    .line 138
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "vcnb"

    invoke-direct {v2, v3, v7, v7, v10}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x21

    aput-object v2, v1, v3

    .line 139
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "vcbf"

    const/16 v4, 0x4e20

    invoke-direct {v2, v3, v9, v9, v4}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x22

    aput-object v2, v1, v3

    .line 140
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "vcbg"

    const/16 v4, -0xc0

    const/16 v5, 0x240

    invoke-direct {v2, v3, v9, v4, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x23

    aput-object v2, v1, v3

    .line 141
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "vcbe"

    const/16 v4, -0xc0

    const/16 v5, 0x240

    invoke-direct {v2, v3, v9, v4, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x24

    aput-object v2, v1, v3

    .line 142
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "ver"

    const/4 v4, 0x4

    const/16 v5, -0x8000

    const/16 v6, 0x7fff

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x25

    aput-object v2, v1, v3

    .line 143
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "pstg"

    const/16 v4, -0x820

    const/16 v5, 0x1e0

    invoke-direct {v2, v3, v7, v4, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x26

    aput-object v2, v1, v3

    .line 144
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "dhsb"

    const/16 v4, 0x60

    invoke-direct {v2, v3, v7, v8, v4}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x27

    aput-object v2, v1, v3

    .line 145
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "dhrg"

    const/16 v4, -0x820

    const/16 v5, 0x60

    invoke-direct {v2, v3, v7, v4, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    aput-object v2, v1, v10

    .line 146
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "dssb"

    const/16 v4, 0x60

    invoke-direct {v2, v3, v7, v8, v4}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x29

    aput-object v2, v1, v3

    .line 147
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "dssa"

    const/4 v4, 0x5

    const/16 v5, 0x1e

    invoke-direct {v2, v3, v7, v4, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x2a

    aput-object v2, v1, v3

    .line 148
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "dvla"

    const/16 v4, 0xa

    invoke-direct {v2, v3, v7, v8, v4}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x2b

    aput-object v2, v1, v3

    .line 149
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "iebt"

    const/16 v4, -0x1e0

    const/16 v5, 0x1e0

    invoke-direct {v2, v3, v9, v4, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x2c

    aput-object v2, v1, v3

    .line 150
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "iea"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v7, v8, v4}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x2d

    aput-object v2, v1, v3

    .line 151
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "dea"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v7, v8, v4}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x2e

    aput-object v2, v1, v3

    .line 152
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "ded"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v7, v8, v4}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x2f

    aput-object v2, v1, v3

    .line 153
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "gebg"

    const/16 v4, -0x240

    const/16 v5, 0x240

    invoke-direct {v2, v3, v9, v4, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x30

    aput-object v2, v1, v3

    .line 154
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "aocc"

    const/16 v4, 0x8

    invoke-direct {v2, v3, v7, v8, v4}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x31

    aput-object v2, v1, v3

    .line 155
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "arbi"

    invoke-direct {v2, v3, v10, v8, v7}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x32

    aput-object v2, v1, v3

    .line 156
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "arbl"

    const/16 v4, -0x820

    invoke-direct {v2, v3, v10, v4, v8}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x33

    aput-object v2, v1, v3

    .line 157
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "arbh"

    const/16 v4, -0x820

    invoke-direct {v2, v3, v10, v4, v8}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x34

    aput-object v2, v1, v3

    .line 158
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "arod"

    const/16 v4, 0xc0

    invoke-direct {v2, v3, v7, v8, v4}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x35

    aput-object v2, v1, v3

    .line 159
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "artp"

    const/16 v4, 0x10

    invoke-direct {v2, v3, v7, v8, v4}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x36

    aput-object v2, v1, v3

    .line 160
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "endp"

    const/4 v4, 0x6

    invoke-direct {v2, v3, v7, v8, v4}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x37

    aput-object v2, v1, v3

    .line 161
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "mxou"

    const/16 v4, 0x8

    invoke-direct {v2, v3, v7, v7, v4}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x38

    aput-object v2, v1, v3

    .line 162
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "vol"

    const/16 v4, -0x800

    const/16 v5, 0x1e0

    invoke-direct {v2, v3, v7, v4, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x39

    aput-object v2, v1, v3

    .line 163
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "vmon"

    invoke-direct {v2, v3, v7, v8, v11}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x3a

    aput-object v2, v1, v3

    .line 164
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "vmb"

    const/16 v4, 0xf0

    invoke-direct {v2, v3, v7, v8, v4}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x3b

    aput-object v2, v1, v3

    .line 165
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "lcmf"

    const/16 v4, -0x8000

    const/16 v5, 0x7fff

    invoke-direct {v2, v3, v11, v4, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x3c

    aput-object v2, v1, v3

    .line 166
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "lcvd"

    const/16 v4, -0x8000

    const/16 v5, 0x7fff

    invoke-direct {v2, v3, v11, v4, v5}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x3d

    aput-object v2, v1, v3

    .line 167
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "lcsz"

    const/16 v4, 0x7fff

    invoke-direct {v2, v3, v7, v7, v4}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x3e

    aput-object v2, v1, v3

    .line 168
    new-instance v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    const-string/jumbo v3, "lcpt"

    const/16 v4, 0xa8

    const/16 v5, -0x80

    const/16 v6, 0x7f

    invoke-direct {v2, v3, v4, v5, v6}, Landroid/dolby/ds/DsAkSettings$ParameterDefn;-><init>(Ljava/lang/String;III)V

    const/16 v3, 0x3f

    aput-object v2, v1, v3

    .line 104
    sput-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    .line 182
    new-instance v1, Ljava/util/HashSet;

    invoke-direct {v1}, Ljava/util/HashSet;-><init>()V

    sput-object v1, Landroid/dolby/ds/DsAkSettings;->akSettableParamDefinitions:Ljava/util/HashSet;

    .line 187
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Landroid/dolby/ds/DsAkSettings;->akAllParamDefinitions_:Ljava/util/LinkedHashMap;

    .line 192
    new-instance v1, Ljava/util/LinkedHashMap;

    invoke-direct {v1}, Ljava/util/LinkedHashMap;-><init>()V

    sput-object v1, Landroid/dolby/ds/DsAkSettings;->settingsDefinitions_:Ljava/util/LinkedHashMap;

    .line 197
    sput-boolean v8, Landroid/dolby/ds/DsAkSettings;->constantAkParamsDefined_:Z

    .line 202
    const/4 v1, -0x1

    sput-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_genb_:S

    .line 203
    const/4 v1, -0x1

    sput-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_ienb_:S

    .line 204
    const/4 v1, -0x1

    sput-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_aonb_:S

    .line 205
    const/4 v1, 0x0

    sput-object v1, Landroid/dolby/ds/DsAkSettings;->akParam_gebf_:[I

    .line 523
    const/4 v0, 0x0

    .local v0, "paramIndex":I
    :goto_0
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    array-length v1, v1

    if-ge v0, v1, :cond_1

    .line 525
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akAllParamDefinitions_:Ljava/util/LinkedHashMap;

    sget-object v2, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v3

    invoke-virtual {v1, v2, v3}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 526
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    iget-object v1, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->isParamSettable(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 528
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akSettableParamDefinitions:Ljava/util/HashSet;

    sget-object v2, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    invoke-virtual {v1, v2}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 523
    :cond_0
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 32
    :cond_1
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    .line 563
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 565
    sget-object v0, Landroid/dolby/ds/DsAkSettings;->settingsDefaults_:[S

    sget-object v1, Landroid/dolby/ds/DsAkSettings;->settingsDefaults_:[S

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    iput-object v0, p0, Landroid/dolby/ds/DsAkSettings;->values_:[S

    .line 563
    return-void
.end method

.method public constructor <init>(Landroid/dolby/ds/DsAkSettings;)V
    .locals 2
    .param p1, "c"    # Landroid/dolby/ds/DsAkSettings;

    .prologue
    .line 573
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 575
    invoke-virtual {p1}, Landroid/dolby/ds/DsAkSettings;->getValues()[S

    move-result-object v0

    invoke-virtual {p1}, Landroid/dolby/ds/DsAkSettings;->getValues()[S

    move-result-object v1

    array-length v1, v1

    invoke-static {v0, v1}, Ljava/util/Arrays;->copyOf([SI)[S

    move-result-object v0

    iput-object v0, p0, Landroid/dolby/ds/DsAkSettings;->values_:[S

    .line 573
    return-void
.end method

.method public constructor <init>([[I)V
    .locals 0
    .param p1, "settings"    # [[I

    .prologue
    .line 586
    invoke-direct {p0}, Landroid/dolby/ds/DsAkSettings;-><init>()V

    .line 587
    invoke-virtual {p0, p1}, Landroid/dolby/ds/DsAkSettings;->set([[I)V

    .line 584
    return-void
.end method

.method private static defineSettings()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    .line 479
    const/4 v4, 0x0

    .local v4, "paramIndex":I
    const/4 v0, 0x0

    .local v0, "elemIndex":I
    const/4 v3, 0x0

    .local v3, "nElemPerParam":I
    const/4 v1, 0x0

    .line 484
    .local v1, "elemLen":I
    const/4 v4, 0x0

    :goto_0
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    array-length v5, v5

    if-ge v4, v5, :cond_1

    .line 486
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    invoke-static {v5}, Landroid/dolby/ds/DsAkSettings;->isParamSettable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_0

    .line 487
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v5, v5, v4

    iget v5, v5, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    add-int/2addr v1, v5

    .line 484
    :cond_0
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 489
    :cond_1
    new-array v5, v1, [S

    sput-object v5, Landroid/dolby/ds/DsAkSettings;->settingsDefaults_:[S

    .line 494
    const/4 v4, 0x0

    :goto_1
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    array-length v5, v5

    if-ge v4, v5, :cond_4

    .line 496
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v5, v5, v4

    iget-object v5, v5, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    invoke-static {v5}, Landroid/dolby/ds/DsAkSettings;->isParamSettable(Ljava/lang/String;)Z

    move-result v5

    if-eqz v5, :cond_2

    .line 498
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v5, v5, v4

    iget v3, v5, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 499
    const/4 v5, 0x1

    if-ne v3, v5, :cond_3

    .line 501
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->settingsDefinitions_:Ljava/util/LinkedHashMap;

    new-instance v6, Landroid/dolby/ds/DsAkSettings$SettingDefn;

    invoke-direct {v6, v4, v8}, Landroid/dolby/ds/DsAkSettings$SettingDefn;-><init>(II)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 502
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->settingsDefaults_:[S

    aput-short v8, v5, v0

    .line 503
    add-int/lit8 v0, v0, 0x1

    .line 494
    :cond_2
    add-int/lit8 v4, v4, 0x1

    goto :goto_1

    .line 507
    :cond_3
    const/4 v2, 0x0

    .local v2, "i":I
    :goto_2
    if-ge v2, v3, :cond_2

    .line 509
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->settingsDefinitions_:Ljava/util/LinkedHashMap;

    new-instance v6, Landroid/dolby/ds/DsAkSettings$SettingDefn;

    invoke-direct {v6, v4, v2}, Landroid/dolby/ds/DsAkSettings$SettingDefn;-><init>(II)V

    invoke-static {v0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v7

    invoke-virtual {v5, v6, v7}, Ljava/util/LinkedHashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 510
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->settingsDefaults_:[S

    aput-short v8, v5, v0

    .line 511
    add-int/lit8 v0, v0, 0x1

    .line 507
    add-int/lit8 v2, v2, 0x1

    goto :goto_2

    .line 472
    .end local v2    # "i":I
    :cond_4
    return-void
.end method

.method public static getAkParamIndex(Ljava/lang/String;)I
    .locals 4
    .param p0, "parameter"    # Ljava/lang/String;

    .prologue
    .line 394
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akAllParamDefinitions_:Ljava/util/LinkedHashMap;

    invoke-virtual {v1, p0}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 395
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_0

    .line 396
    const-string/jumbo v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getAkParamIndex: parameter "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " not found!"

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 397
    :cond_0
    if-nez v0, :cond_1

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_1
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getAkSettingIndex(II)I
    .locals 3
    .param p0, "parameter"    # I
    .param p1, "offset"    # I

    .prologue
    .line 411
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->settingsDefinitions_:Ljava/util/LinkedHashMap;

    new-instance v2, Landroid/dolby/ds/DsAkSettings$SettingDefn;

    invoke-direct {v2, p0, p1}, Landroid/dolby/ds/DsAkSettings$SettingDefn;-><init>(II)V

    invoke-virtual {v1, v2}, Ljava/util/LinkedHashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Integer;

    .line 412
    .local v0, "i":Ljava/lang/Integer;
    if-nez v0, :cond_0

    const/4 v1, -0x1

    :goto_0
    return v1

    :cond_0
    invoke-virtual {v0}, Ljava/lang/Integer;->intValue()I

    move-result v1

    goto :goto_0
.end method

.method public static getGeqBandCount()I
    .locals 1

    .prologue
    .line 290
    sget-short v0, Landroid/dolby/ds/DsAkSettings;->akParam_genb_:S

    .line 291
    .local v0, "bandCount":I
    return v0
.end method

.method public static getGeqBandFrequencies()[I
    .locals 1

    .prologue
    .line 301
    sget-object v0, Landroid/dolby/ds/DsAkSettings;->akParam_gebf_:[I

    return-object v0
.end method

.method public static getNumElementsPerDevice()I
    .locals 1

    .prologue
    .line 432
    sget-object v0, Landroid/dolby/ds/DsAkSettings;->settingsDefinitions_:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->size()I

    move-result v0

    return v0
.end method

.method public static getNumOfParams()I
    .locals 1

    .prologue
    .line 422
    sget-object v0, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    array-length v0, v0

    return v0
.end method

.method public static getParamArrayLength(Ljava/lang/String;)I
    .locals 2
    .param p0, "parameter"    # Ljava/lang/String;

    .prologue
    .line 313
    invoke-static {p0}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 314
    .local v0, "i":I
    const/4 v1, -0x1

    if-ne v0, v1, :cond_0

    .end local v0    # "i":I
    :goto_0
    return v0

    .restart local v0    # "i":I
    :cond_0
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    iget v0, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    goto :goto_0
.end method

.method public static getParamsDefinitions()[Ljava/lang/String;
    .locals 3

    .prologue
    .line 540
    sget-object v2, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    array-length v2, v2

    new-array v1, v2, [Ljava/lang/String;

    .line 541
    .local v1, "paramNames":[Ljava/lang/String;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    sget-object v2, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    array-length v2, v2

    if-ge v0, v2, :cond_0

    .line 543
    sget-object v2, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v2, v2, v0

    iget-object v2, v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    aput-object v2, v1, v0

    .line 541
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 545
    :cond_0
    return-object v1
.end method

.method public static getSettingsDefinitions()[Ljava/lang/Object;
    .locals 1

    .prologue
    .line 557
    sget-object v0, Landroid/dolby/ds/DsAkSettings;->settingsDefinitions_:Ljava/util/LinkedHashMap;

    invoke-virtual {v0}, Ljava/util/LinkedHashMap;->keySet()Ljava/util/Set;

    move-result-object v0

    invoke-interface {v0}, Ljava/util/Set;->toArray()[Ljava/lang/Object;

    move-result-object v0

    return-object v0
.end method

.method public static isAkParamLengthValid(Ljava/lang/String;I)Z
    .locals 5
    .param p0, "parameter"    # Ljava/lang/String;
    .param p1, "length"    # I

    .prologue
    .line 454
    const/4 v1, 0x1

    .line 455
    .local v1, "ret":Z
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->isConstantAkParamsDefined()Z

    move-result v2

    if-eqz v2, :cond_0

    .line 457
    invoke-static {p0}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 458
    .local v0, "i":I
    sget-object v2, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v2, v2, v0

    iget v2, v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    if-eq p1, v2, :cond_0

    .line 460
    const/4 v1, 0x0

    .line 461
    const-string/jumbo v2, "DsAkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "In configuration file, the AK parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " values length "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 462
    const-string/jumbo v4, " is NOT compatible to the defined length "

    .line 461
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 462
    sget-object v4, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v4, v4, v0

    iget v4, v4, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 461
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 465
    .end local v0    # "i":I
    :cond_0
    return v1
.end method

.method public static isConstantAkParamsDefined()Z
    .locals 1

    .prologue
    .line 442
    sget-boolean v0, Landroid/dolby/ds/DsAkSettings;->constantAkParamsDefined_:Z

    return v0
.end method

.method private static isParamSettable(Ljava/lang/String;)Z
    .locals 1
    .param p0, "parameter"    # Ljava/lang/String;

    .prologue
    .line 338
    const-string/jumbo v0, "vdhe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 339
    const-string/jumbo v0, "vspe"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 340
    const-string/jumbo v0, "dvle"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 341
    const-string/jumbo v0, "dvme"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 342
    const-string/jumbo v0, "ngon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 343
    const-string/jumbo v0, "ieon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 344
    const-string/jumbo v0, "deon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 345
    const-string/jumbo v0, "geon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 346
    const-string/jumbo v0, "dhsb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 347
    const-string/jumbo v0, "dhrg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 348
    const-string/jumbo v0, "dssb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 349
    const-string/jumbo v0, "dssa"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 350
    const-string/jumbo v0, "dssf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 351
    const-string/jumbo v0, "dvla"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 352
    const-string/jumbo v0, "iebt"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 353
    const-string/jumbo v0, "iea"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 354
    const-string/jumbo v0, "dea"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 355
    const-string/jumbo v0, "ded"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 356
    const-string/jumbo v0, "gebg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 357
    const-string/jumbo v0, "aoon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 358
    const-string/jumbo v0, "plb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 359
    const-string/jumbo v0, "plmd"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 360
    const-string/jumbo v0, "vmon"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 361
    const-string/jumbo v0, "vmb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 362
    const-string/jumbo v0, "dvli"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 363
    const-string/jumbo v0, "dvlo"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 364
    const-string/jumbo v0, "dvmc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 365
    const-string/jumbo v0, "ienb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 366
    const-string/jumbo v0, "iebf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 367
    const-string/jumbo v0, "genb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 368
    const-string/jumbo v0, "gebf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 369
    const-string/jumbo v0, "aonb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 370
    const-string/jumbo v0, "aobf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 371
    const-string/jumbo v0, "aobg"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 372
    const-string/jumbo v0, "arnb"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 373
    const-string/jumbo v0, "arbf"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 374
    const-string/jumbo v0, "aocc"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 375
    const-string/jumbo v0, "arbi"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 376
    const-string/jumbo v0, "arbl"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 377
    const-string/jumbo v0, "arbh"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 378
    const-string/jumbo v0, "arod"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-nez v0, :cond_0

    .line 379
    const-string/jumbo v0, "artp"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    .line 338
    if-eqz v0, :cond_1

    .line 380
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 382
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method private isParamValueConflicted(IIS)Z
    .locals 5
    .param p1, "paramIndex"    # I
    .param p2, "offset"    # I
    .param p3, "value"    # S

    .prologue
    const/4 v4, 0x2

    .line 613
    const/4 v0, 0x0

    .line 615
    .local v0, "ret":Z
    sget-boolean v1, Landroid/dolby/ds/DsAkSettings;->constantAkParamsDefined_:Z

    if-eqz v1, :cond_5

    .line 617
    const-string/jumbo v1, "genb"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_1

    sget-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_genb_:S

    if-eq p3, v1, :cond_1

    .line 619
    const-string/jumbo v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "genb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " conflicts with the predefined value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-short v3, Landroid/dolby/ds/DsAkSettings;->akParam_genb_:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    const/4 v0, 0x1

    .line 649
    :cond_0
    :goto_0
    return v0

    .line 622
    :cond_1
    const-string/jumbo v1, "ienb"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_2

    sget-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_ienb_:S

    if-eq p3, v1, :cond_2

    .line 624
    const-string/jumbo v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "ienb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " conflicts with the predefined value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-short v3, Landroid/dolby/ds/DsAkSettings;->akParam_ienb_:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    const/4 v0, 0x1

    .line 623
    goto :goto_0

    .line 627
    :cond_2
    const-string/jumbo v1, "aonb"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_3

    sget-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_aonb_:S

    if-eq p3, v1, :cond_3

    .line 629
    const-string/jumbo v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "aonb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " conflicts with the predefined value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-short v3, Landroid/dolby/ds/DsAkSettings;->akParam_aonb_:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 630
    const/4 v0, 0x1

    .line 628
    goto :goto_0

    .line 632
    :cond_3
    const-string/jumbo v1, "arnb"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_4

    sget-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_aonb_:S

    if-eq p3, v1, :cond_4

    .line 634
    const-string/jumbo v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "arnb = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " conflicts with the predefined value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    sget-short v3, Landroid/dolby/ds/DsAkSettings;->akParam_aonb_:S

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 635
    const/4 v0, 0x1

    .line 633
    goto/16 :goto_0

    .line 637
    :cond_4
    const-string/jumbo v1, "aocc"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v1

    if-ne p1, v1, :cond_0

    if-eq p3, v4, :cond_0

    .line 639
    const-string/jumbo v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "aocc = "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    const-string/jumbo v3, " conflicts with the predefined value "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 640
    const/4 v0, 0x1

    goto/16 :goto_0

    .line 645
    :cond_5
    const-string/jumbo v1, "DsAkSettings"

    const-string/jumbo v2, "Settable settings not defined yet"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 646
    const/4 v0, 0x1

    goto/16 :goto_0
.end method

.method public static isValidParamValue(IS)Z
    .locals 2
    .param p0, "index"    # I
    .param p1, "value"    # S

    .prologue
    const/4 v0, 0x0

    .line 326
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, p0

    iget-short v1, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->lowerBound:S

    if-lt p1, v1, :cond_0

    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, p0

    iget-short v1, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->upperBound:S

    if-gt p1, v1, :cond_0

    const/4 v0, 0x1

    :cond_0
    return v0
.end method

.method public static setConstantAkParam(Ljava/lang/String;[I)V
    .locals 6
    .param p0, "parameter"    # Ljava/lang/String;
    .param p1, "values"    # [I

    .prologue
    const/4 v5, -0x1

    const/4 v4, 0x0

    .line 227
    const/4 v0, 0x0

    .line 228
    .local v0, "i":I
    const-string/jumbo v1, "genb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 230
    const-string/jumbo v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The number of GEq bands is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 231
    const-string/jumbo v1, "gebf"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 232
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 233
    const-string/jumbo v1, "gebg"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 234
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 235
    const-string/jumbo v1, "vcbf"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 236
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 237
    const-string/jumbo v1, "vcbg"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 238
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 239
    const-string/jumbo v1, "vcbe"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 240
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 241
    aget v1, p1, v4

    int-to-short v1, v1

    sput-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_genb_:S

    .line 276
    :cond_0
    :goto_0
    sget-boolean v1, Landroid/dolby/ds/DsAkSettings;->constantAkParamsDefined_:Z

    if-nez v1, :cond_1

    sget-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_genb_:S

    if-eq v1, v5, :cond_1

    sget-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_ienb_:S

    if-eq v1, v5, :cond_1

    sget-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_aonb_:S

    if-eq v1, v5, :cond_1

    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParam_gebf_:[I

    if-eqz v1, :cond_1

    .line 278
    invoke-static {}, Landroid/dolby/ds/DsAkSettings;->defineSettings()V

    .line 279
    const/4 v1, 0x1

    sput-boolean v1, Landroid/dolby/ds/DsAkSettings;->constantAkParamsDefined_:Z

    .line 225
    :cond_1
    return-void

    .line 243
    :cond_2
    const-string/jumbo v1, "ienb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_3

    .line 245
    const-string/jumbo v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The number of IEq bands is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 246
    const-string/jumbo v1, "iebf"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 247
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 248
    const-string/jumbo v1, "iebt"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 249
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 250
    aget v1, p1, v4

    int-to-short v1, v1

    sput-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_ienb_:S

    goto :goto_0

    .line 252
    :cond_3
    const-string/jumbo v1, "aonb"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 254
    const-string/jumbo v1, "DsAkSettings"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "The number of Audio Optimizer bands is "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    aget v3, p1, v4

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 255
    const-string/jumbo v1, "aobf"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 256
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 257
    const-string/jumbo v1, "aobg"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 258
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    add-int/lit8 v2, v2, 0x1

    mul-int/lit8 v2, v2, 0x2

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 259
    const-string/jumbo v1, "arbf"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 260
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 261
    const-string/jumbo v1, "arbi"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 262
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 263
    const-string/jumbo v1, "arbl"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 264
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 265
    const-string/jumbo v1, "arbh"

    invoke-static {v1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v0

    .line 266
    sget-object v1, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v1, v1, v0

    aget v2, p1, v4

    iput v2, v1, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 267
    aget v1, p1, v4

    int-to-short v1, v1

    sput-short v1, Landroid/dolby/ds/DsAkSettings;->akParam_aonb_:S

    goto/16 :goto_0

    .line 269
    :cond_4
    const-string/jumbo v1, "gebf"

    invoke-virtual {p0, v1}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 271
    const-string/jumbo v1, "DsAkSettings"

    const-string/jumbo v2, "Initializing the graphic equalizer band center frequencies"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 272
    sput-object p1, Landroid/dolby/ds/DsAkSettings;->akParam_gebf_:[I

    goto/16 :goto_0
.end method


# virtual methods
.method public get(Ljava/lang/String;I)S
    .locals 4
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "offset"    # I

    .prologue
    .line 759
    invoke-static {p1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v1

    .line 760
    .local v1, "paramIndex":I
    invoke-static {v1, p2}, Landroid/dolby/ds/DsAkSettings;->getAkSettingIndex(II)I

    move-result v0

    .line 761
    .local v0, "i":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_0

    .line 762
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The parameter and offset combination is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 764
    :cond_0
    iget-object v2, p0, Landroid/dolby/ds/DsAkSettings;->values_:[S

    aget-short v2, v2, v0

    return v2
.end method

.method public get(Ljava/lang/String;)[S
    .locals 7
    .param p1, "parameter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 735
    invoke-static {p1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v3

    .line 736
    .local v3, "paramIndex":I
    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/dolby/ds/DsAkSettings;->getAkSettingIndex(II)I

    move-result v0

    .line 737
    .local v0, "i":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 738
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "The parameter and offset combination is not allowed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 740
    :cond_0
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v5, v5, v3

    iget v2, v5, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 741
    .local v2, "length":I
    new-array v4, v2, [S

    .line 742
    .local v4, "values":[S
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_0
    if-ge v1, v2, :cond_1

    .line 743
    iget-object v5, p0, Landroid/dolby/ds/DsAkSettings;->values_:[S

    add-int v6, v0, v1

    aget-short v5, v5, v6

    aput-short v5, v4, v1

    .line 742
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 745
    :cond_1
    return-object v4
.end method

.method getValues()[S
    .locals 1

    .prologue
    .line 599
    iget-object v0, p0, Landroid/dolby/ds/DsAkSettings;->values_:[S

    return-object v0
.end method

.method public set(Ljava/lang/String;IS)S
    .locals 5
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "offset"    # I
    .param p3, "value"    # S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 705
    invoke-static {p1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v1

    .line 706
    .local v1, "paramIndex":I
    invoke-direct {p0, v1, p2, p3}, Landroid/dolby/ds/DsAkSettings;->isParamValueConflicted(IIS)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 707
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The parameter value conflicts with the pre-defined value"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 708
    :cond_0
    invoke-static {v1, p2}, Landroid/dolby/ds/DsAkSettings;->getAkSettingIndex(II)I

    move-result v0

    .line 709
    .local v0, "i":I
    const/4 v2, -0x1

    if-ne v0, v2, :cond_1

    .line 710
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "The parameter and offset combination is not allowed"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 712
    :cond_1
    invoke-static {v1, p3}, Landroid/dolby/ds/DsAkSettings;->isValidParamValue(IS)Z

    move-result v2

    if-nez v2, :cond_4

    .line 714
    const-string/jumbo v2, "DsAkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "value "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " for parameter "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " is out of valid range"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 715
    sget-object v2, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v2, v2, v1

    iget-short v2, v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->lowerBound:S

    if-ge p3, v2, :cond_2

    sget-object v2, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v2, v2, v1

    iget-short p3, v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->lowerBound:S

    .line 716
    :cond_2
    sget-object v2, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v2, v2, v1

    iget-short v2, v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->upperBound:S

    if-le p3, v2, :cond_3

    sget-object v2, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v2, v2, v1

    iget-short p3, v2, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->upperBound:S

    .line 717
    :cond_3
    const-string/jumbo v2, "DsAkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Clamp the value to the upper/lower bound "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 720
    :cond_4
    iget-object v2, p0, Landroid/dolby/ds/DsAkSettings;->values_:[S

    aput-short p3, v2, v0

    .line 721
    const-string/jumbo v2, "DsAkSettings"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "set: (parameter:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " offset:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " value:"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3, p3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ")"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 722
    return p3
.end method

.method public set(Ljava/lang/String;[S)V
    .locals 8
    .param p1, "parameter"    # Ljava/lang/String;
    .param p2, "values"    # [S
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    .line 677
    invoke-static {p1}, Landroid/dolby/ds/DsAkSettings;->getAkParamIndex(Ljava/lang/String;)I

    move-result v3

    .line 678
    .local v3, "paramIndex":I
    const/4 v5, 0x0

    invoke-static {v3, v5}, Landroid/dolby/ds/DsAkSettings;->getAkSettingIndex(II)I

    move-result v0

    .line 679
    .local v0, "i":I
    const/4 v5, -0x1

    if-ne v0, v5, :cond_0

    .line 680
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "The parameter and offset combination is not allowed"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 682
    :cond_0
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v5, v5, v3

    iget v4, v5, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->len:I

    .line 683
    .local v4, "paramLen":I
    array-length v5, p2

    if-ge v5, v4, :cond_1

    array-length v2, p2

    .line 684
    .local v2, "len":I
    :goto_0
    const/4 v1, 0x0

    .local v1, "j":I
    :goto_1
    if-ge v1, v2, :cond_4

    .line 686
    aget-short v5, p2, v1

    sget-object v6, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v6, v6, v3

    iget-short v6, v6, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->lowerBound:S

    if-ge v5, v6, :cond_2

    sget-object v5, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v5, v5, v3

    iget-short v5, v5, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->lowerBound:S

    :goto_2
    aput-short v5, p2, v1

    .line 687
    aget-short v5, p2, v1

    sget-object v6, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v6, v6, v3

    iget-short v6, v6, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->upperBound:S

    if-le v5, v6, :cond_3

    sget-object v5, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v5, v5, v3

    iget-short v5, v5, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->upperBound:S

    :goto_3
    aput-short v5, p2, v1

    .line 688
    iget-object v5, p0, Landroid/dolby/ds/DsAkSettings;->values_:[S

    add-int v6, v0, v1

    aget-short v7, p2, v1

    aput-short v7, v5, v6

    .line 684
    add-int/lit8 v1, v1, 0x1

    goto :goto_1

    .line 683
    .end local v1    # "j":I
    .end local v2    # "len":I
    :cond_1
    move v2, v4

    .restart local v2    # "len":I
    goto :goto_0

    .line 686
    .restart local v1    # "j":I
    :cond_2
    aget-short v5, p2, v1

    goto :goto_2

    .line 687
    :cond_3
    aget-short v5, p2, v1

    goto :goto_3

    .line 690
    :cond_4
    const-string/jumbo v5, "DsAkSettings"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v7, "set: (parameter:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " values:"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, ")"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 675
    return-void
.end method

.method public set([[I)V
    .locals 9
    .param p1, "settings"    # [[I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;
        }
    .end annotation

    .prologue
    const/4 v8, 0x2

    const/4 v3, 0x0

    .line 659
    array-length v4, p1

    move v2, v3

    :goto_0
    if-ge v2, v4, :cond_1

    aget-object v0, p1, v2

    .line 661
    .local v0, "fpv":[I
    array-length v5, v0

    const/4 v6, 0x3

    if-eq v5, v6, :cond_0

    .line 662
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "Each setting must contain an array of 3 ints declared as int[3]"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 663
    :cond_0
    aget v1, v0, v3

    .line 664
    .local v1, "i":I
    sget-object v5, Landroid/dolby/ds/DsAkSettings;->akParams_:[Landroid/dolby/ds/DsAkSettings$ParameterDefn;

    aget-object v5, v5, v1

    iget-object v5, v5, Landroid/dolby/ds/DsAkSettings$ParameterDefn;->paramName:Ljava/lang/String;

    const/4 v6, 0x1

    aget v6, v0, v6

    aget v7, v0, v8

    int-to-short v7, v7

    invoke-virtual {p0, v5, v6, v7}, Landroid/dolby/ds/DsAkSettings;->set(Ljava/lang/String;IS)S

    move-result v5

    aput v5, v0, v8

    .line 659
    add-int/lit8 v2, v2, 0x1

    goto :goto_0

    .line 657
    .end local v0    # "fpv":[I
    .end local v1    # "i":I
    :cond_1
    return-void
.end method
