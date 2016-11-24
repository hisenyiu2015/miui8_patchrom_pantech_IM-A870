.class public final Lbluros/providers/CMSettings;
.super Ljava/lang/Object;
.source "CMSettings.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbluros/providers/CMSettings$CMSettingNotFoundException;,
        Lbluros/providers/CMSettings$NameValueCache;,
        Lbluros/providers/CMSettings$Validator;,
        Lbluros/providers/CMSettings$DiscreteValueValidator;,
        Lbluros/providers/CMSettings$InclusiveIntegerRangeValidator;,
        Lbluros/providers/CMSettings$InclusiveFloatRangeValidator;,
        Lbluros/providers/CMSettings$DelimitedListValidator;,
        Lbluros/providers/CMSettings$System;,
        Lbluros/providers/CMSettings$Secure;,
        Lbluros/providers/CMSettings$Global;,
        Lbluros/providers/CMSettings$1;,
        Lbluros/providers/CMSettings$2;,
        Lbluros/providers/CMSettings$3;
    }
.end annotation


# static fields
.field public static final ACTION_DATA_USAGE:Ljava/lang/String; = "bluros.settings.ACTION_DATA_USAGE"

.field public static final ACTION_LIVEDISPLAY_SETTINGS:Ljava/lang/String; = "bluros.settings.LIVEDISPLAY_SETTINGS"

.field public static final AUTHORITY:Ljava/lang/String; = "cmsettings"

.field public static final CALL_METHOD_GET_GLOBAL:Ljava/lang/String; = "GET_global"

.field public static final CALL_METHOD_GET_SECURE:Ljava/lang/String; = "GET_secure"

.field public static final CALL_METHOD_GET_SYSTEM:Ljava/lang/String; = "GET_system"

.field public static final CALL_METHOD_MIGRATE_SETTINGS:Ljava/lang/String; = "migrate_settings"

.field public static final CALL_METHOD_MIGRATE_SETTINGS_FOR_USER:Ljava/lang/String; = "migrate_settings_for_user"

.field public static final CALL_METHOD_PUT_GLOBAL:Ljava/lang/String; = "PUT_global"

.field public static final CALL_METHOD_PUT_SECURE:Ljava/lang/String; = "PUT_secure"

.field public static final CALL_METHOD_PUT_SYSTEM:Ljava/lang/String; = "PUT_system"

.field public static final CALL_METHOD_USER_KEY:Ljava/lang/String; = "_user"

.field private static final LOCAL_LOGV:Z = false

.field private static final TAG:Ljava/lang/String; = "CMSettings"

.field private static final sAlwaysTrueValidator:Lbluros/providers/CMSettings$Validator;

.field private static final sBooleanValidator:Lbluros/providers/CMSettings$Validator;

.field private static final sColorValidator:Lbluros/providers/CMSettings$Validator;

.field private static final sNonNegativeIntegerValidator:Lbluros/providers/CMSettings$Validator;

.field private static final sUriValidator:Lbluros/providers/CMSettings$Validator;


# direct methods
.method static synthetic -get0()Lbluros/providers/CMSettings$Validator;
    .locals 1

    sget-object v0, Lbluros/providers/CMSettings;->sAlwaysTrueValidator:Lbluros/providers/CMSettings$Validator;

    return-object v0
.end method

.method static synthetic -get1()Lbluros/providers/CMSettings$Validator;
    .locals 1

    sget-object v0, Lbluros/providers/CMSettings;->sBooleanValidator:Lbluros/providers/CMSettings$Validator;

    return-object v0
.end method

.method static synthetic -get2()Lbluros/providers/CMSettings$Validator;
    .locals 1

    sget-object v0, Lbluros/providers/CMSettings;->sColorValidator:Lbluros/providers/CMSettings$Validator;

    return-object v0
.end method

.method static synthetic -get3()Lbluros/providers/CMSettings$Validator;
    .locals 1

    sget-object v0, Lbluros/providers/CMSettings;->sNonNegativeIntegerValidator:Lbluros/providers/CMSettings$Validator;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 4

    .prologue
    .line 300
    new-instance v0, Lbluros/providers/CMSettings$DiscreteValueValidator;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/String;

    const-string/jumbo v2, "0"

    const/4 v3, 0x0

    aput-object v2, v1, v3

    const-string/jumbo v2, "1"

    const/4 v3, 0x1

    aput-object v2, v1, v3

    invoke-direct {v0, v1}, Lbluros/providers/CMSettings$DiscreteValueValidator;-><init>([Ljava/lang/String;)V

    .line 299
    sput-object v0, Lbluros/providers/CMSettings;->sBooleanValidator:Lbluros/providers/CMSettings$Validator;

    .line 302
    new-instance v0, Lbluros/providers/CMSettings$1;

    invoke-direct {v0}, Lbluros/providers/CMSettings$1;-><init>()V

    sput-object v0, Lbluros/providers/CMSettings;->sNonNegativeIntegerValidator:Lbluros/providers/CMSettings$Validator;

    .line 313
    new-instance v0, Lbluros/providers/CMSettings$2;

    invoke-direct {v0}, Lbluros/providers/CMSettings$2;-><init>()V

    sput-object v0, Lbluros/providers/CMSettings;->sUriValidator:Lbluros/providers/CMSettings$Validator;

    .line 326
    new-instance v0, Lbluros/providers/CMSettings$InclusiveIntegerRangeValidator;

    const/high16 v1, -0x80000000

    const v2, 0x7fffffff

    invoke-direct {v0, v1, v2}, Lbluros/providers/CMSettings$InclusiveIntegerRangeValidator;-><init>(II)V

    .line 325
    sput-object v0, Lbluros/providers/CMSettings;->sColorValidator:Lbluros/providers/CMSettings$Validator;

    .line 328
    new-instance v0, Lbluros/providers/CMSettings$3;

    invoke-direct {v0}, Lbluros/providers/CMSettings$3;-><init>()V

    sput-object v0, Lbluros/providers/CMSettings;->sAlwaysTrueValidator:Lbluros/providers/CMSettings$Validator;

    .line 49
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 49
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method
