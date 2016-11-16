.class Lcom/android/server/notification/NotificationManagerService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "NotificationManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/notification/NotificationManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "SettingsObserver"
.end annotation


# instance fields
.field private final ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

.field private final MUTE_ANNOYING_NOTIFICATIONS_THRESHOLD_URI:Landroid/net/Uri;

.field private final NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

.field final synthetic this$0:Lcom/android/server/notification/NotificationManagerService;


# direct methods
.method constructor <init>(Lcom/android/server/notification/NotificationManagerService;Landroid/os/Handler;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/notification/NotificationManagerService;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 985
    iput-object p1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 986
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 979
    const-string/jumbo v0, "notification_light_pulse"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 978
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 981
    const-string/jumbo v0, "enabled_notification_listeners"

    invoke-static {v0}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 980
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 983
    const-string/jumbo v0, "mute_annoying_notifications_threshold"

    invoke-static {v0}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v0

    .line 982
    iput-object v0, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->MUTE_ANNOYING_NOTIFICATIONS_THRESHOLD_URI:Landroid/net/Uri;

    .line 985
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    const/4 v3, 0x0

    const/4 v2, -0x1

    .line 990
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 992
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->NOTIFICATION_LIGHT_PULSE_URI:Landroid/net/Uri;

    .line 991
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 994
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->ENABLED_NOTIFICATION_LISTENERS_URI:Landroid/net/Uri;

    .line 993
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 996
    const-string/jumbo v1, "notification_light_pulse_default_color"

    .line 995
    invoke-static {v1}, Lbluros/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 999
    const-string/jumbo v1, "notification_light_pulse_default_led_on"

    .line 998
    invoke-static {v1}, Lbluros/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1002
    const-string/jumbo v1, "notification_light_pulse_default_led_off"

    .line 1001
    invoke-static {v1}, Lbluros/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1005
    const-string/jumbo v1, "notification_light_pulse_custom_enable"

    .line 1004
    invoke-static {v1}, Lbluros/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1008
    const-string/jumbo v1, "notification_light_pulse_custom_values"

    .line 1007
    invoke-static {v1}, Lbluros/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1011
    const-string/jumbo v1, "notification_light_screen_on_enable"

    .line 1010
    invoke-static {v1}, Lbluros/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1014
    const-string/jumbo v1, "zen_disable_ducking_during_media_playback"

    .line 1013
    invoke-static {v1}, Lbluros/providers/CMSettings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1016
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->MUTE_ANNOYING_NOTIFICATIONS_THRESHOLD_URI:Landroid/net/Uri;

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1019
    const-string/jumbo v1, "notification_light_color_auto"

    .line 1018
    invoke-static {v1}, Lbluros/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1021
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get4(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 1023
    const-string/jumbo v1, "notification_light_brightness_level"

    .line 1022
    invoke-static {v1}, Lbluros/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1026
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get21(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1028
    const-string/jumbo v1, "notification_light_multiple_leds_enable"

    .line 1027
    invoke-static {v1}, Lbluros/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 1031
    :cond_1
    const/4 v1, 0x0

    invoke-virtual {p0, v1}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 989
    return-void
.end method

.method public onChange(ZLandroid/net/Uri;)V
    .locals 0
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    .line 1035
    invoke-virtual {p0, p2}, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->update(Landroid/net/Uri;)V

    .line 1034
    return-void
.end method

.method public update(Landroid/net/Uri;)V
    .locals 7
    .param p1, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x1

    const/4 v6, -0x2

    const/4 v3, 0x0

    .line 1039
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v1}, Lcom/android/server/notification/NotificationManagerService;->getContext()Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 1042
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1043
    const-string/jumbo v1, "notification_light_pulse"

    .line 1042
    invoke-static {v0, v1, v3, v6}, Landroid/provider/Settings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_5

    move v1, v2

    :goto_0
    invoke-static {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->-set11(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1046
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1047
    const-string/jumbo v1, "notification_light_color_auto"

    .line 1046
    invoke-static {v0, v1, v2, v6}, Lbluros/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_6

    move v1, v2

    :goto_1
    invoke-static {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->-set1(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1051
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1052
    const-string/jumbo v4, "notification_light_pulse_default_color"

    .line 1053
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-get10(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v5

    .line 1051
    invoke-static {v0, v4, v5, v6}, Lbluros/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-set3(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 1056
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1057
    const-string/jumbo v4, "notification_light_pulse_default_led_on"

    .line 1058
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-get12(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v5

    .line 1056
    invoke-static {v0, v4, v5, v6}, Lbluros/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-set5(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 1061
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1062
    const-string/jumbo v4, "notification_light_pulse_default_led_off"

    .line 1063
    iget-object v5, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v5}, Lcom/android/server/notification/NotificationManagerService;->-get11(Lcom/android/server/notification/NotificationManagerService;)I

    move-result v5

    .line 1061
    invoke-static {v0, v4, v5, v6}, Lbluros/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-set4(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 1066
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get14(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/Map;

    move-result-object v1

    invoke-interface {v1}, Ljava/util/Map;->clear()V

    .line 1069
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get23(Lcom/android/server/notification/NotificationManagerService;)Ljava/util/HashMap;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/HashMap;->clear()V

    .line 1071
    const-string/jumbo v1, "notification_light_pulse_custom_enable"

    .line 1070
    invoke-static {v0, v1, v3, v6}, Lbluros/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_0

    .line 1073
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1074
    const-string/jumbo v4, "notification_light_pulse_custom_values"

    .line 1073
    invoke-static {v0, v4, v6}, Lbluros/providers/CMSettings$System;->getStringForUser(Landroid/content/ContentResolver;Ljava/lang/String;I)Ljava/lang/String;

    move-result-object v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-wrap25(Lcom/android/server/notification/NotificationManagerService;Ljava/lang/String;)V

    .line 1079
    :cond_0
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get4(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 1080
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1081
    const-string/jumbo v4, "notification_light_brightness_level"

    .line 1082
    const/16 v5, 0xff

    .line 1080
    invoke-static {v0, v4, v5, v6}, Lbluros/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v4

    invoke-static {v1, v4}, Lcom/android/server/notification/NotificationManagerService;->-set10(Lcom/android/server/notification/NotificationManagerService;I)I

    .line 1086
    :cond_1
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get21(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_2

    .line 1087
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1088
    const-string/jumbo v5, "notification_light_multiple_leds_enable"

    .line 1089
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get21(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_7

    move v1, v2

    .line 1087
    :goto_2
    invoke-static {v0, v5, v1, v6}, Lbluros/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_8

    move v1, v2

    :goto_3
    invoke-static {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->-set9(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1093
    :cond_2
    iget-object v4, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1094
    const-string/jumbo v5, "notification_light_screen_on_enable"

    .line 1095
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-get25(Lcom/android/server/notification/NotificationManagerService;)Z

    move-result v1

    if-eqz v1, :cond_9

    move v1, v2

    .line 1093
    :goto_4
    invoke-static {v0, v5, v1, v6}, Lbluros/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v1

    if-eqz v1, :cond_a

    move v1, v2

    :goto_5
    invoke-static {v4, v1}, Lcom/android/server/notification/NotificationManagerService;->-set13(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1097
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-wrap33(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1099
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1100
    const-string/jumbo v4, "zen_disable_ducking_during_media_playback"

    .line 1099
    invoke-static {v0, v4, v3}, Lbluros/providers/CMSettings$Global;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v2, :cond_b

    :goto_6
    invoke-static {v1, v2}, Lcom/android/server/notification/NotificationManagerService;->-set6(Lcom/android/server/notification/NotificationManagerService;Z)Z

    .line 1102
    if-eqz p1, :cond_3

    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->MUTE_ANNOYING_NOTIFICATIONS_THRESHOLD_URI:Landroid/net/Uri;

    invoke-virtual {v1, p1}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 1103
    :cond_3
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    .line 1104
    const-string/jumbo v2, "mute_annoying_notifications_threshold"

    const-wide/16 v4, 0x0

    .line 1105
    const/4 v3, -0x3

    .line 1103
    invoke-static {v0, v2, v4, v5, v3}, Landroid/provider/Settings$System;->getLongForUser(Landroid/content/ContentResolver;Ljava/lang/String;JI)J

    move-result-wide v2

    invoke-static {v1, v2, v3}, Lcom/android/server/notification/NotificationManagerService;->-set0(Lcom/android/server/notification/NotificationManagerService;J)J

    .line 1108
    :cond_4
    iget-object v1, p0, Lcom/android/server/notification/NotificationManagerService$SettingsObserver;->this$0:Lcom/android/server/notification/NotificationManagerService;

    invoke-static {v1}, Lcom/android/server/notification/NotificationManagerService;->-wrap28(Lcom/android/server/notification/NotificationManagerService;)V

    .line 1038
    return-void

    :cond_5
    move v1, v3

    .line 1042
    goto/16 :goto_0

    :cond_6
    move v1, v3

    .line 1046
    goto/16 :goto_1

    :cond_7
    move v1, v3

    .line 1089
    goto :goto_2

    :cond_8
    move v1, v3

    .line 1087
    goto :goto_3

    :cond_9
    move v1, v3

    .line 1095
    goto :goto_4

    :cond_a
    move v1, v3

    .line 1093
    goto :goto_5

    :cond_b
    move v2, v3

    .line 1099
    goto :goto_6
.end method
