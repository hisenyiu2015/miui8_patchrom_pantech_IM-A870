.class public final Lbluros/providers/CMSettings$Global;
.super Landroid/provider/Settings$NameValueTable;
.source "CMSettings.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbluros/providers/CMSettings;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = "Global"
.end annotation


# static fields
.field public static final CONTENT_URI:Landroid/net/Uri;

.field public static final DEV_FORCE_SHOW_NAVBAR:Ljava/lang/String; = "dev_force_show_navbar"

.field public static final LEGACY_GLOBAL_SETTINGS:[Ljava/lang/String;

.field public static final POWER_NOTIFICATIONS_ENABLED:Ljava/lang/String; = "power_notifications_enabled"
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation
.end field

.field public static final POWER_NOTIFICATIONS_RINGTONE:Ljava/lang/String; = "power_notifications_ringtone"

.field public static final POWER_NOTIFICATIONS_VIBRATE:Ljava/lang/String; = "power_notifications_vibrate"

.field public static final SYS_PROP_CM_SETTING_VERSION:Ljava/lang/String; = "sys.cm_settings_global_version"

.field public static final WAKE_WHEN_PLUGGED_OR_UNPLUGGED:Ljava/lang/String; = "wake_when_plugged_or_unplugged"

.field public static final WEATHER_TEMPERATURE_UNIT:Ljava/lang/String; = "weather_temperature_unit"

.field public static final WIFI_AUTO_PRIORITIES_CONFIGURATION:Ljava/lang/String; = "wifi_auto_priority"

.field public static final ZEN_DISABLE_DUCKING_DURING_MEDIA_PLAYBACK:Ljava/lang/String; = "zen_disable_ducking_during_media_playback"

.field public static final __MAGICAL_TEST_PASSING_ENABLER:Ljava/lang/String; = "___magical_test_passing_enabler"

.field private static final sNameValueCache:Lbluros/providers/CMSettings$NameValueCache;


# direct methods
.method static constructor <clinit>()V
    .locals 5

    .prologue
    .line 2996
    const-string/jumbo v0, "content://cmsettings/global"

    invoke-static {v0}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    sput-object v0, Lbluros/providers/CMSettings$Global;->CONTENT_URI:Landroid/net/Uri;

    .line 3000
    new-instance v0, Lbluros/providers/CMSettings$NameValueCache;

    .line 3001
    const-string/jumbo v1, "sys.cm_settings_global_version"

    .line 3002
    sget-object v2, Lbluros/providers/CMSettings$Global;->CONTENT_URI:Landroid/net/Uri;

    .line 3003
    const-string/jumbo v3, "GET_global"

    .line 3004
    const-string/jumbo v4, "PUT_global"

    .line 3000
    invoke-direct {v0, v1, v2, v3, v4}, Lbluros/providers/CMSettings$NameValueCache;-><init>(Ljava/lang/String;Landroid/net/Uri;Ljava/lang/String;Ljava/lang/String;)V

    sput-object v0, Lbluros/providers/CMSettings$Global;->sNameValueCache:Lbluros/providers/CMSettings$NameValueCache;

    .line 3421
    const/4 v0, 0x5

    new-array v0, v0, [Ljava/lang/String;

    .line 3422
    const-string/jumbo v1, "wake_when_plugged_or_unplugged"

    const/4 v2, 0x0

    aput-object v1, v0, v2

    .line 3423
    const-string/jumbo v1, "power_notifications_vibrate"

    const/4 v2, 0x1

    aput-object v1, v0, v2

    .line 3424
    const-string/jumbo v1, "power_notifications_ringtone"

    const/4 v2, 0x2

    aput-object v1, v0, v2

    .line 3425
    const-string/jumbo v1, "zen_disable_ducking_during_media_playback"

    const/4 v2, 0x3

    aput-object v1, v0, v2

    .line 3426
    const-string/jumbo v1, "wifi_auto_priority"

    const/4 v2, 0x4

    aput-object v1, v0, v2

    .line 3421
    sput-object v0, Lbluros/providers/CMSettings$Global;->LEGACY_GLOBAL_SETTINGS:[Ljava/lang/String;

    .line 2995
    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .prologue
    .line 2995
    invoke-direct {p0}, Landroid/provider/Settings$NameValueTable;-><init>()V

    return-void
.end method

.method public static getDelimitedStringAsList(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Ljava/util/List;
    .locals 7
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ")",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .prologue
    .line 3033
    invoke-static {p0, p1}, Lbluros/providers/CMSettings$Global;->getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    .line 3034
    .local v1, "baseString":Ljava/lang/String;
    new-instance v3, Ljava/util/ArrayList;

    invoke-direct {v3}, Ljava/util/ArrayList;-><init>()V

    .line 3035
    .local v3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v4

    if-nez v4, :cond_1

    .line 3036
    invoke-static {p2}, Ljava/util/regex/Pattern;->quote(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Landroid/text/TextUtils;->split(Ljava/lang/String;Ljava/lang/String;)[Ljava/lang/String;

    move-result-object v0

    .line 3037
    .local v0, "array":[Ljava/lang/String;
    const/4 v4, 0x0

    array-length v5, v0

    :goto_0
    if-ge v4, v5, :cond_1

    aget-object v2, v0, v4

    .line 3038
    .local v2, "item":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v6

    if-eqz v6, :cond_0

    .line 3037
    :goto_1
    add-int/lit8 v4, v4, 0x1

    goto :goto_0

    .line 3041
    :cond_0
    invoke-interface {v3, v2}, Ljava/util/List;->add(Ljava/lang/Object;)Z

    goto :goto_1

    .line 3044
    .end local v0    # "array":[Ljava/lang/String;
    .end local v2    # "item":Ljava/lang/String;
    :cond_1
    return-object v3
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbluros/providers/CMSettings$CMSettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 3311
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lbluros/providers/CMSettings$Global;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F

    move-result v0

    return v0
.end method

.method public static getFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)F
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F

    .prologue
    .line 3277
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lbluros/providers/CMSettings$Global;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v0

    return v0
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # F
    .param p3, "userId"    # I

    .prologue
    .line 3283
    invoke-static {p0, p1, p3}, Lbluros/providers/CMSettings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3285
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2    # "def":F
    :cond_0
    return p2

    .line 3286
    .restart local p2    # "def":F
    :catch_0
    move-exception v0

    .line 3287
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public static getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)F
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbluros/providers/CMSettings$CMSettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 3317
    invoke-static {p0, p1, p2}, Lbluros/providers/CMSettings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3318
    .local v1, "v":Ljava/lang/String;
    if-nez v1, :cond_0

    .line 3319
    new-instance v2, Lbluros/providers/CMSettings$CMSettingNotFoundException;

    invoke-direct {v2, p1}, Lbluros/providers/CMSettings$CMSettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3322
    :cond_0
    :try_start_0
    invoke-static {v1}, Ljava/lang/Float;->parseFloat(Ljava/lang/String;)F
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 3323
    :catch_0
    move-exception v0

    .line 3324
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lbluros/providers/CMSettings$CMSettingNotFoundException;

    invoke-direct {v2, p1}, Lbluros/providers/CMSettings$CMSettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbluros/providers/CMSettings$CMSettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 3138
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lbluros/providers/CMSettings$Global;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v0

    return v0
.end method

.method public static getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I

    .prologue
    .line 3105
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lbluros/providers/CMSettings$Global;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    return v0
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)I
    .locals 3
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbluros/providers/CMSettings$CMSettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 3144
    invoke-static {p0, p1, p2}, Lbluros/providers/CMSettings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3146
    .local v1, "v":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v2

    return v2

    .line 3147
    :catch_0
    move-exception v0

    .line 3148
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lbluros/providers/CMSettings$CMSettingNotFoundException;

    invoke-direct {v2, p1}, Lbluros/providers/CMSettings$CMSettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # I
    .param p3, "userId"    # I

    .prologue
    .line 3110
    invoke-static {p0, p1, p3}, Lbluros/providers/CMSettings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3112
    .local v1, "v":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result p2

    .end local p2    # "def":I
    :cond_0
    return p2

    .line 3113
    .restart local p2    # "def":I
    :catch_0
    move-exception v0

    .line 3114
    .local v0, "e":Ljava/lang/NumberFormatException;
    return p2
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbluros/providers/CMSettings$CMSettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 3225
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lbluros/providers/CMSettings$Global;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLong(Landroid/content/ContentResolver;Ljava/lang/String;J)J
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J

    .prologue
    .line 3190
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lbluros/providers/CMSettings$Global;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v0

    return-wide v0
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Lbluros/providers/CMSettings$CMSettingNotFoundException;
        }
    .end annotation

    .prologue
    .line 3231
    invoke-static {p0, p1, p2}, Lbluros/providers/CMSettings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3233
    .local v1, "valString":Ljava/lang/String;
    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    return-wide v2

    .line 3234
    :catch_0
    move-exception v0

    .line 3235
    .local v0, "e":Ljava/lang/NumberFormatException;
    new-instance v2, Lbluros/providers/CMSettings$CMSettingNotFoundException;

    invoke-direct {v2, p1}, Lbluros/providers/CMSettings$CMSettingNotFoundException;-><init>(Ljava/lang/String;)V

    throw v2
.end method

.method public static getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J
    .locals 4
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "def"    # J
    .param p4, "userId"    # I

    .prologue
    .line 3196
    invoke-static {p0, p1, p4}, Lbluros/providers/CMSettings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v1

    .line 3199
    .local v1, "valString":Ljava/lang/String;
    if-eqz v1, :cond_0

    :try_start_0
    invoke-static {v1}, Ljava/lang/Long;->parseLong(Ljava/lang/String;)J
    :try_end_0
    .catch Ljava/lang/NumberFormatException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-wide v2

    .line 3203
    .local v2, "value":J
    :goto_0
    return-wide v2

    .line 3199
    .end local v2    # "value":J
    :cond_0
    move-wide v2, p2

    .restart local v2    # "value":J
    goto :goto_0

    .line 3200
    .end local v2    # "value":J
    :catch_0
    move-exception v0

    .line 3201
    .local v0, "e":Ljava/lang/NumberFormatException;
    move-wide v2, p2

    .restart local v2    # "value":J
    goto :goto_0
.end method

.method public static getString(Landroid/content/ContentResolver;Ljava/lang/String;)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;

    .prologue
    .line 3064
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, v0}, Lbluros/providers/CMSettings$Global;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "userId"    # I

    .prologue
    .line 3070
    sget-object v0, Lbluros/providers/CMSettings$Global;->sNameValueCache:Lbluros/providers/CMSettings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2}, Lbluros/providers/CMSettings$NameValueCache;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public static getUriFor(Ljava/lang/String;)Landroid/net/Uri;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 3054
    sget-object v0, Lbluros/providers/CMSettings$Global;->CONTENT_URI:Landroid/net/Uri;

    invoke-static {v0, p0}, Landroid/provider/Settings$NameValueTable;->getUriFor(Landroid/net/Uri;Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    return-object v0
.end method

.method public static isLegacySetting(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 3433
    sget-object v0, Lbluros/providers/CMSettings$Global;->LEGACY_GLOBAL_SETTINGS:[Ljava/lang/String;

    invoke-static {v0, p0}, Lcom/android/internal/util/ArrayUtils;->contains([Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result v0

    return v0
.end method

.method public static putFloat(Landroid/content/ContentResolver;Ljava/lang/String;F)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F

    .prologue
    .line 3342
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lbluros/providers/CMSettings$Global;->putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z

    move-result v0

    return v0
.end method

.method public static putFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # F
    .param p3, "userId"    # I

    .prologue
    .line 3348
    invoke-static {p2}, Ljava/lang/Float;->toString(F)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lbluros/providers/CMSettings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I

    .prologue
    .line 3166
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lbluros/providers/CMSettings$Global;->putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z

    move-result v0

    return v0
.end method

.method public static putIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)Z
    .locals 1
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # I
    .param p3, "userId"    # I

    .prologue
    .line 3172
    invoke-static {p2}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p3}, Lbluros/providers/CMSettings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putListAsDelimitedString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;Ljava/util/List;)V
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "delimiter"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/ContentResolver;",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            "Ljava/util/List",
            "<",
            "Ljava/lang/String;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 3019
    .local p3, "list":Ljava/util/List;, "Ljava/util/List<Ljava/lang/String;>;"
    invoke-static {p2, p3}, Landroid/text/TextUtils;->join(Ljava/lang/CharSequence;Ljava/lang/Iterable;)Ljava/lang/String;

    move-result-object v0

    .line 3020
    .local v0, "store":Ljava/lang/String;
    invoke-static {p0, p1, v0}, Lbluros/providers/CMSettings$Global;->putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z

    .line 3018
    return-void
.end method

.method public static putLong(Landroid/content/ContentResolver;Ljava/lang/String;J)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J

    .prologue
    .line 3253
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, p3, v0}, Lbluros/providers/CMSettings$Global;->putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z

    move-result v0

    return v0
.end method

.method public static putLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)Z
    .locals 2
    .param p0, "cr"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # J
    .param p4, "userId"    # I

    .prologue
    .line 3259
    invoke-static {p2, p3}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v0

    invoke-static {p0, p1, v0, p4}, Lbluros/providers/CMSettings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putString(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;

    .prologue
    .line 3081
    invoke-static {}, Landroid/os/UserHandle;->myUserId()I

    move-result v0

    invoke-static {p0, p1, p2, v0}, Lbluros/providers/CMSettings$Global;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z
    .locals 1
    .param p0, "resolver"    # Landroid/content/ContentResolver;
    .param p1, "name"    # Ljava/lang/String;
    .param p2, "value"    # Ljava/lang/String;
    .param p3, "userId"    # I

    .prologue
    .line 3087
    sget-object v0, Lbluros/providers/CMSettings$Global;->sNameValueCache:Lbluros/providers/CMSettings$NameValueCache;

    invoke-virtual {v0, p0, p1, p2, p3}, Lbluros/providers/CMSettings$NameValueCache;->putStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;Ljava/lang/String;I)Z

    move-result v0

    return v0
.end method

.method public static shouldInterceptSystemProvider(Ljava/lang/String;)Z
    .locals 1
    .param p0, "key"    # Ljava/lang/String;

    .prologue
    .line 3440
    const/4 v0, 0x0

    return v0
.end method
