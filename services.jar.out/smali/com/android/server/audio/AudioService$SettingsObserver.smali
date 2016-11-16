.class Lcom/android/server/audio/AudioService$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "AudioService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/audio/AudioService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/audio/AudioService;


# direct methods
.method constructor <init>(Lcom/android/server/audio/AudioService;)V
    .locals 4
    .param p1, "this$0"    # Lcom/android/server/audio/AudioService;

    .prologue
    const/4 v3, 0x0

    .line 4890
    iput-object p1, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    .line 4891
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    invoke-direct {p0, v0}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 4892
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 4893
    const-string/jumbo v1, "mode_ringer_streams_affected"

    .line 4892
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4894
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 4895
    const-string/jumbo v1, "dock_audio_media_enabled"

    .line 4894
    invoke-static {v1}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4896
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 4897
    const-string/jumbo v1, "volume_link_notification"

    .line 4896
    invoke-static {v1}, Landroid/provider/Settings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4898
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 4899
    const-string/jumbo v1, "volume_keys_control_ring_stream"

    .line 4898
    invoke-static {v1}, Lbluros/providers/CMSettings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    invoke-virtual {v0, v1, v3, p0}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 4900
    invoke-static {p1}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v0

    .line 4901
    const-string/jumbo v1, "safe_headset_volume"

    .line 4900
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 4902
    const/4 v2, -0x1

    .line 4900
    invoke-virtual {v0, v1, v3, p0, v2}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 4890
    return-void
.end method


# virtual methods
.method public onChange(ZLandroid/net/Uri;)V
    .locals 9
    .param p1, "selfChange"    # Z
    .param p2, "uri"    # Landroid/net/Uri;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 4907
    invoke-super {p0, p1, p2}, Landroid/database/ContentObserver;->onChange(ZLandroid/net/Uri;)V

    .line 4912
    iget-object v3, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v3}, Lcom/android/server/audio/AudioService;->-get34(Lcom/android/server/audio/AudioService;)Ljava/lang/Object;

    move-result-object v3

    monitor-enter v3

    .line 4914
    :try_start_0
    const-string/jumbo v4, "safe_headset_volume"

    .line 4913
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_2

    .line 4915
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v6, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v6}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v6

    invoke-static {v5, v6}, Lcom/android/server/audio/AudioService;->-wrap2(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)Z

    move-result v5

    invoke-static {v4, v5}, Lcom/android/server/audio/AudioService;->-set10(Lcom/android/server/audio/AudioService;Z)Z

    .line 4929
    :cond_0
    :goto_0
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/audio/AudioService;->-wrap34(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V

    .line 4931
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v4

    .line 4932
    const-string/jumbo v5, "volume_link_notification"

    const/4 v6, 0x1

    .line 4931
    invoke-static {v4, v5, v6}, Landroid/provider/Settings$Secure;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v4

    if-ne v4, v1, :cond_4

    const/4 v0, 0x1

    .line 4933
    .local v0, "linkNotificationWithVolume":Z
    :goto_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-get26(Lcom/android/server/audio/AudioService;)Z

    move-result v4

    if-eq v0, v4, :cond_1

    .line 4934
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4, v0}, Lcom/android/server/audio/AudioService;->-set8(Lcom/android/server/audio/AudioService;Z)Z

    .line 4935
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-wrap14(Lcom/android/server/audio/AudioService;)V

    .line 4936
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    const-string/jumbo v5, "AudioService"

    const/4 v6, 0x1

    invoke-static {v4, v6, v5}, Lcom/android/server/audio/AudioService;->-wrap42(Lcom/android/server/audio/AudioService;ZLjava/lang/String;)V

    .line 4938
    :cond_1
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v5

    .line 4939
    const-string/jumbo v6, "volume_keys_control_ring_stream"

    const/4 v7, 0x1

    .line 4940
    const/4 v8, -0x2

    .line 4938
    invoke-static {v5, v6, v7, v8}, Lbluros/providers/CMSettings$System;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v5

    if-ne v5, v1, :cond_5

    :goto_2
    invoke-static {v4, v1}, Lcom/android/server/audio/AudioService;->-set18(Lcom/android/server/audio/AudioService;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v3

    .line 4906
    return-void

    .line 4917
    .end local v0    # "linkNotificationWithVolume":Z
    :cond_2
    :try_start_1
    const-string/jumbo v4, "mode_ringer_streams_affected"

    .line 4916
    invoke-static {v4}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_3

    .line 4918
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v4}, Lcom/android/server/audio/AudioService;->-wrap3(Lcom/android/server/audio/AudioService;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4923
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-virtual {v5}, Lcom/android/server/audio/AudioService;->getRingerModeInternal()I

    move-result v5

    const/4 v6, 0x0

    invoke-static {v4, v5, v6}, Lcom/android/server/audio/AudioService;->-wrap40(Lcom/android/server/audio/AudioService;IZ)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_0

    .line 4912
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    .line 4926
    :cond_3
    :try_start_2
    const-string/jumbo v4, "dock_audio_media_enabled"

    .line 4925
    invoke-static {v4}, Landroid/provider/Settings$Global;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v4

    invoke-virtual {p2, v4}, Landroid/net/Uri;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    .line 4927
    iget-object v4, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    iget-object v5, p0, Lcom/android/server/audio/AudioService$SettingsObserver;->this$0:Lcom/android/server/audio/AudioService;

    invoke-static {v5}, Lcom/android/server/audio/AudioService;->-get16(Lcom/android/server/audio/AudioService;)Landroid/content/ContentResolver;

    move-result-object v5

    invoke-static {v4, v5}, Lcom/android/server/audio/AudioService;->-wrap34(Lcom/android/server/audio/AudioService;Landroid/content/ContentResolver;)V
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    goto/16 :goto_0

    .line 4931
    :cond_4
    const/4 v0, 0x0

    .restart local v0    # "linkNotificationWithVolume":Z
    goto :goto_1

    :cond_5
    move v1, v2

    .line 4938
    goto :goto_2
.end method
