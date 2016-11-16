.class public Lcom/android/internal/util/slim/Action;
.super Ljava/lang/Object;
.source "Action.java"


# static fields
.field private static final MSG_INJECT_KEY_DOWN:I = 0x42a

.field private static final MSG_INJECT_KEY_UP:I = 0x42b


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 46
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method private static dispatchMediaKeyWithWakeLock(ILandroid/content/Context;)V
    .locals 10
    .param p0, "keycode"    # I
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/4 v6, 0x0

    const/4 v9, 0x1

    .line 265
    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 266
    new-instance v1, Landroid/view/KeyEvent;

    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    .line 267
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    move v7, p0

    move v8, v6

    .line 266
    invoke-direct/range {v1 .. v8}, Landroid/view/KeyEvent;-><init>(JJIII)V

    .line 268
    .local v1, "event":Landroid/view/KeyEvent;
    invoke-static {p1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 269
    invoke-static {v1, v9}, Landroid/view/KeyEvent;->changeAction(Landroid/view/KeyEvent;I)Landroid/view/KeyEvent;

    move-result-object v1

    .line 270
    invoke-static {p1}, Landroid/media/session/MediaSessionLegacyHelper;->getHelper(Landroid/content/Context;)Landroid/media/session/MediaSessionLegacyHelper;

    move-result-object v0

    invoke-virtual {v0, v1, v9}, Landroid/media/session/MediaSessionLegacyHelper;->sendMediaButtonEvent(Landroid/view/KeyEvent;Z)V

    .line 264
    .end local v1    # "event":Landroid/view/KeyEvent;
    :cond_0
    return-void
.end method

.method public static isActionKeyEvent(Ljava/lang/String;)Z
    .locals 1
    .param p0, "action"    # Ljava/lang/String;

    .prologue
    .line 232
    const-string/jumbo v0, "**home**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 233
    const-string/jumbo v0, "**back**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 232
    if-nez v0, :cond_0

    .line 234
    const-string/jumbo v0, "**search**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 232
    if-nez v0, :cond_0

    .line 235
    const-string/jumbo v0, "**menu**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 232
    if-nez v0, :cond_0

    .line 236
    const-string/jumbo v0, "**menu_big**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 232
    if-nez v0, :cond_0

    .line 237
    const-string/jumbo v0, "**null**"

    invoke-virtual {p0, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    .line 232
    if-eqz v0, :cond_1

    .line 238
    :cond_0
    const/4 v0, 0x1

    return v0

    .line 240
    :cond_1
    const/4 v0, 0x0

    return v0
.end method

.method public static isNavBarDefault(Landroid/content/Context;)Z
    .locals 2
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 227
    invoke-virtual {p0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    .line 228
    const v1, 0x1120076

    .line 227
    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v0

    return v0
.end method

.method public static isNavBarEnabled(Landroid/content/Context;)Z
    .locals 6
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    const/4 v2, 0x0

    const/4 v1, 0x1

    .line 221
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v3

    .line 222
    const-string/jumbo v4, "navigation_bar_visible"

    .line 223
    invoke-static {p0}, Lcom/android/internal/util/slim/Action;->isNavBarDefault(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_0

    move v0, v1

    :goto_0
    const/4 v5, -0x2

    .line 221
    invoke-static {v3, v4, v0, v5}, Landroid/provider/Settings$Secure;->getIntForUser(Landroid/content/ContentResolver;Ljava/lang/String;II)I

    move-result v0

    if-ne v0, v1, :cond_1

    :goto_1
    return v1

    :cond_0
    move v0, v2

    .line 223
    goto :goto_0

    :cond_1
    move v1, v2

    .line 221
    goto :goto_1
.end method

.method public static processAction(Landroid/content/Context;Ljava/lang/String;Z)V
    .locals 1
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "isLongpress"    # Z

    .prologue
    .line 52
    const/4 v0, 0x1

    invoke-static {p0, p1, p2, v0}, Lcom/android/internal/util/slim/Action;->processActionWithOptions(Landroid/content/Context;Ljava/lang/String;ZZ)V

    .line 51
    return-void
.end method

.method public static processActionWithOptions(Landroid/content/Context;Ljava/lang/String;ZZ)V
    .locals 16
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "action"    # Ljava/lang/String;
    .param p2, "isLongpress"    # Z
    .param p3, "collapseShade"    # Z

    .prologue
    .line 58
    if-eqz p1, :cond_0

    const-string/jumbo v13, "**null**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1

    .line 59
    :cond_0
    return-void

    .line 62
    :cond_1
    const/4 v7, 0x0

    .line 65
    .local v7, "isKeyguardShowing":Z
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v13

    invoke-interface {v13}, Landroid/view/IWindowManager;->isKeyguardLocked()Z
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    move-result v7

    .line 71
    .end local v7    # "isKeyguardShowing":Z
    :goto_0
    const-string/jumbo v13, "**home**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_2

    .line 72
    const/4 v13, 0x3

    move/from16 v0, p2

    invoke-static {v13, v0}, Lcom/android/internal/util/slim/Action;->triggerVirtualKeypress(IZ)V

    .line 73
    return-void

    .line 66
    .restart local v7    # "isKeyguardShowing":Z
    :catch_0
    move-exception v4

    .line 67
    .local v4, "e":Landroid/os/RemoteException;
    const-string/jumbo v13, "Action"

    const-string/jumbo v14, "Error getting window manager service"

    invoke-static {v13, v14, v4}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0

    .line 74
    .end local v4    # "e":Landroid/os/RemoteException;
    .end local v7    # "isKeyguardShowing":Z
    :cond_2
    const-string/jumbo v13, "**back**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_3

    .line 75
    const/4 v13, 0x4

    move/from16 v0, p2

    invoke-static {v13, v0}, Lcom/android/internal/util/slim/Action;->triggerVirtualKeypress(IZ)V

    .line 76
    return-void

    .line 77
    :cond_3
    const-string/jumbo v13, "**search**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_4

    .line 78
    const/16 v13, 0x54

    move/from16 v0, p2

    invoke-static {v13, v0}, Lcom/android/internal/util/slim/Action;->triggerVirtualKeypress(IZ)V

    .line 79
    return-void

    .line 80
    :cond_4
    const-string/jumbo v13, "**menu**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-nez v13, :cond_5

    .line 81
    const-string/jumbo v13, "**menu_big**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    .line 80
    if-eqz v13, :cond_6

    .line 82
    :cond_5
    const/16 v13, 0x52

    move/from16 v0, p2

    invoke-static {v13, v0}, Lcom/android/internal/util/slim/Action;->triggerVirtualKeypress(IZ)V

    .line 83
    return-void

    .line 84
    :cond_6
    const-string/jumbo v13, "**ime_nav_left**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_7

    .line 85
    const/16 v13, 0x15

    move/from16 v0, p2

    invoke-static {v13, v0}, Lcom/android/internal/util/slim/Action;->triggerVirtualKeypress(IZ)V

    .line 86
    return-void

    .line 87
    :cond_7
    const-string/jumbo v13, "**ime_nav_right**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_8

    .line 88
    const/16 v13, 0x16

    move/from16 v0, p2

    invoke-static {v13, v0}, Lcom/android/internal/util/slim/Action;->triggerVirtualKeypress(IZ)V

    .line 89
    return-void

    .line 90
    :cond_8
    const-string/jumbo v13, "**ime_nav_up**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_9

    .line 91
    const/16 v13, 0x13

    move/from16 v0, p2

    invoke-static {v13, v0}, Lcom/android/internal/util/slim/Action;->triggerVirtualKeypress(IZ)V

    .line 92
    return-void

    .line 93
    :cond_9
    const-string/jumbo v13, "**ime_nav_down**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_a

    .line 94
    const/16 v13, 0x14

    move/from16 v0, p2

    invoke-static {v13, v0}, Lcom/android/internal/util/slim/Action;->triggerVirtualKeypress(IZ)V

    .line 95
    return-void

    .line 96
    :cond_a
    const-string/jumbo v13, "**power**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_b

    .line 97
    const-string/jumbo v13, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v8

    check-cast v8, Landroid/os/PowerManager;

    .line 98
    .local v8, "pm":Landroid/os/PowerManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    invoke-virtual {v8, v14, v15}, Landroid/os/PowerManager;->goToSleep(J)V

    .line 99
    return-void

    .line 100
    .end local v8    # "pm":Landroid/os/PowerManager;
    :cond_b
    const-string/jumbo v13, "**ime**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_d

    .line 101
    if-eqz v7, :cond_c

    .line 102
    return-void

    .line 105
    :cond_c
    new-instance v13, Landroid/content/Intent;

    const-string/jumbo v14, "android.settings.SHOW_INPUT_METHOD_PICKER"

    invoke-direct {v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 106
    new-instance v14, Landroid/os/UserHandle;

    const/4 v15, -0x2

    invoke-direct {v14, v15}, Landroid/os/UserHandle;-><init>(I)V

    .line 104
    move-object/from16 v0, p0

    invoke-virtual {v0, v13, v14}, Landroid/content/Context;->sendBroadcastAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 107
    return-void

    .line 108
    :cond_d
    const-string/jumbo v13, "**voice_search**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_f

    .line 110
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v13, "android.intent.action.SEARCH_LONG_PRESS"

    invoke-direct {v6, v13}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 111
    .local v6, "intent":Landroid/content/Intent;
    const/high16 v13, 0x10000000

    invoke-virtual {v6, v13}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 116
    :try_start_1
    const-string/jumbo v13, "search"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v10

    check-cast v10, Landroid/app/SearchManager;

    .line 117
    .local v10, "searchManager":Landroid/app/SearchManager;
    if-eqz v10, :cond_e

    .line 118
    invoke-virtual {v10}, Landroid/app/SearchManager;->stopSearch()V

    .line 120
    :cond_e
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/internal/util/slim/Action;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    :try_end_1
    .catch Landroid/content/ActivityNotFoundException; {:try_start_1 .. :try_end_1} :catch_1

    .line 124
    .end local v10    # "searchManager":Landroid/app/SearchManager;
    :goto_1
    return-void

    .line 121
    :catch_1
    move-exception v3

    .line 122
    .local v3, "e":Landroid/content/ActivityNotFoundException;
    const-string/jumbo v13, "SlimActions:"

    const-string/jumbo v14, "No activity to handle assist long press action."

    invoke-static {v13, v14, v3}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_1

    .line 125
    .end local v3    # "e":Landroid/content/ActivityNotFoundException;
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_f
    const-string/jumbo v13, "**ring_vib**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_12

    .line 126
    const-string/jumbo v13, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 127
    .local v2, "am":Landroid/media/AudioManager;
    if-eqz v2, :cond_10

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v13

    if-eqz v13, :cond_10

    .line 128
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v13

    const/4 v14, 0x1

    if-eq v13, v14, :cond_11

    .line 129
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 130
    const-string/jumbo v13, "vibrator"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Vibrator;

    .line 131
    .local v12, "vib":Landroid/os/Vibrator;
    if-eqz v12, :cond_10

    .line 132
    const-wide/16 v14, 0x32

    invoke-virtual {v12, v14, v15}, Landroid/os/Vibrator;->vibrate(J)V

    .line 144
    .end local v12    # "vib":Landroid/os/Vibrator;
    :cond_10
    :goto_2
    return-void

    .line 135
    :cond_11
    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 136
    new-instance v11, Landroid/media/ToneGenerator;

    .line 137
    const/4 v13, 0x5

    .line 138
    const/16 v14, 0x55

    .line 136
    invoke-direct {v11, v13, v14}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 139
    .local v11, "tg":Landroid/media/ToneGenerator;
    if-eqz v11, :cond_10

    .line 140
    const/16 v13, 0x18

    invoke-virtual {v11, v13}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_2

    .line 145
    .end local v2    # "am":Landroid/media/AudioManager;
    .end local v11    # "tg":Landroid/media/ToneGenerator;
    :cond_12
    const-string/jumbo v13, "**ring_silent**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_15

    .line 146
    const-string/jumbo v13, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 147
    .restart local v2    # "am":Landroid/media/AudioManager;
    if-eqz v2, :cond_13

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v13

    if-eqz v13, :cond_13

    .line 148
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v13

    if-eqz v13, :cond_14

    .line 149
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 160
    :cond_13
    :goto_3
    return-void

    .line 151
    :cond_14
    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 152
    new-instance v11, Landroid/media/ToneGenerator;

    .line 153
    const/4 v13, 0x5

    .line 154
    const/16 v14, 0x55

    .line 152
    invoke-direct {v11, v13, v14}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 155
    .restart local v11    # "tg":Landroid/media/ToneGenerator;
    if-eqz v11, :cond_13

    .line 156
    const/16 v13, 0x18

    invoke-virtual {v11, v13}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_3

    .line 161
    .end local v2    # "am":Landroid/media/AudioManager;
    .end local v11    # "tg":Landroid/media/ToneGenerator;
    :cond_15
    const-string/jumbo v13, "**ring_vib_silent**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_19

    .line 162
    const-string/jumbo v13, "audio"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/media/AudioManager;

    .line 163
    .restart local v2    # "am":Landroid/media/AudioManager;
    if-eqz v2, :cond_16

    invoke-static {}, Landroid/app/ActivityManagerNative;->isSystemReady()Z

    move-result v13

    if-eqz v13, :cond_16

    .line 164
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v13

    const/4 v14, 0x2

    if-ne v13, v14, :cond_17

    .line 165
    const/4 v13, 0x1

    invoke-virtual {v2, v13}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 166
    const-string/jumbo v13, "vibrator"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v12

    check-cast v12, Landroid/os/Vibrator;

    .line 167
    .restart local v12    # "vib":Landroid/os/Vibrator;
    if-eqz v12, :cond_16

    .line 168
    const-wide/16 v14, 0x32

    invoke-virtual {v12, v14, v15}, Landroid/os/Vibrator;->vibrate(J)V

    .line 182
    .end local v12    # "vib":Landroid/os/Vibrator;
    :cond_16
    :goto_4
    return-void

    .line 170
    :cond_17
    invoke-virtual {v2}, Landroid/media/AudioManager;->getRingerMode()I

    move-result v13

    const/4 v14, 0x1

    if-ne v13, v14, :cond_18

    .line 171
    const/4 v13, 0x0

    invoke-virtual {v2, v13}, Landroid/media/AudioManager;->setRingerMode(I)V

    goto :goto_4

    .line 173
    :cond_18
    const/4 v13, 0x2

    invoke-virtual {v2, v13}, Landroid/media/AudioManager;->setRingerMode(I)V

    .line 174
    new-instance v11, Landroid/media/ToneGenerator;

    .line 175
    const/4 v13, 0x5

    .line 176
    const/16 v14, 0x55

    .line 174
    invoke-direct {v11, v13, v14}, Landroid/media/ToneGenerator;-><init>(II)V

    .line 177
    .restart local v11    # "tg":Landroid/media/ToneGenerator;
    if-eqz v11, :cond_16

    .line 178
    const/16 v13, 0x18

    invoke-virtual {v11, v13}, Landroid/media/ToneGenerator;->startTone(I)Z

    goto :goto_4

    .line 183
    .end local v2    # "am":Landroid/media/AudioManager;
    .end local v11    # "tg":Landroid/media/ToneGenerator;
    :cond_19
    const-string/jumbo v13, "**camera**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1a

    .line 186
    new-instance v6, Landroid/content/Intent;

    const-string/jumbo v13, "android.media.action.STILL_IMAGE_CAMERA"

    const/4 v14, 0x0

    invoke-direct {v6, v13, v14}, Landroid/content/Intent;-><init>(Ljava/lang/String;Landroid/net/Uri;)V

    .line 187
    .restart local v6    # "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/internal/util/slim/Action;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 188
    return-void

    .line 189
    .end local v6    # "intent":Landroid/content/Intent;
    :cond_1a
    const-string/jumbo v13, "**media_previous**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1b

    .line 190
    const/16 v13, 0x58

    move-object/from16 v0, p0

    invoke-static {v13, v0}, Lcom/android/internal/util/slim/Action;->dispatchMediaKeyWithWakeLock(ILandroid/content/Context;)V

    .line 191
    return-void

    .line 192
    :cond_1b
    const-string/jumbo v13, "**media_next**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1c

    .line 193
    const/16 v13, 0x57

    move-object/from16 v0, p0

    invoke-static {v13, v0}, Lcom/android/internal/util/slim/Action;->dispatchMediaKeyWithWakeLock(ILandroid/content/Context;)V

    .line 194
    return-void

    .line 195
    :cond_1c
    const-string/jumbo v13, "**media_play_pause**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1d

    .line 196
    const/16 v13, 0x55

    move-object/from16 v0, p0

    invoke-static {v13, v0}, Lcom/android/internal/util/slim/Action;->dispatchMediaKeyWithWakeLock(ILandroid/content/Context;)V

    .line 197
    return-void

    .line 198
    :cond_1d
    const-string/jumbo v13, "**wake_device**"

    move-object/from16 v0, p1

    invoke-virtual {v0, v13}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v13

    if-eqz v13, :cond_1f

    .line 200
    const-string/jumbo v13, "power"

    move-object/from16 v0, p0

    invoke-virtual {v0, v13}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/os/PowerManager;

    .line 201
    .local v9, "powerManager":Landroid/os/PowerManager;
    invoke-virtual {v9}, Landroid/os/PowerManager;->isScreenOn()Z

    move-result v13

    if-nez v13, :cond_1e

    .line 202
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v14

    invoke-virtual {v9, v14, v15}, Landroid/os/PowerManager;->wakeUp(J)V

    .line 204
    :cond_1e
    return-void

    .line 207
    .end local v9    # "powerManager":Landroid/os/PowerManager;
    :cond_1f
    const/4 v6, 0x0

    .line 209
    .local v6, "intent":Landroid/content/Intent;
    const/4 v13, 0x0

    :try_start_2
    move-object/from16 v0, p1

    invoke-static {v0, v13}, Landroid/content/Intent;->parseUri(Ljava/lang/String;I)Landroid/content/Intent;
    :try_end_2
    .catch Ljava/net/URISyntaxException; {:try_start_2 .. :try_end_2} :catch_2

    move-result-object v6

    .line 214
    .local v6, "intent":Landroid/content/Intent;
    move-object/from16 v0, p0

    invoke-static {v0, v6}, Lcom/android/internal/util/slim/Action;->startActivity(Landroid/content/Context;Landroid/content/Intent;)V

    .line 215
    return-void

    .line 210
    .local v6, "intent":Landroid/content/Intent;
    :catch_2
    move-exception v5

    .line 211
    .local v5, "e":Ljava/net/URISyntaxException;
    const-string/jumbo v13, "SlimActions:"

    new-instance v14, Ljava/lang/StringBuilder;

    invoke-direct {v14}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v15, "URISyntaxException: ["

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    move-object/from16 v0, p1

    invoke-virtual {v14, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    const-string/jumbo v15, "]"

    invoke-virtual {v14, v15}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v14

    invoke-virtual {v14}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v14

    invoke-static {v13, v14}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 212
    return-void
.end method

.method private static startActivity(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 244
    if-nez p1, :cond_0

    .line 245
    return-void

    .line 248
    :cond_0
    :try_start_0
    invoke-static {}, Landroid/view/WindowManagerGlobal;->getWindowManagerService()Landroid/view/IWindowManager;

    move-result-object v1

    invoke-interface {v1}, Landroid/view/IWindowManager;->dismissKeyguard()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 253
    :goto_0
    const/high16 v1, 0x34000000

    .line 252
    invoke-virtual {p1, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 256
    invoke-virtual {p0}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v1

    .line 257
    const-string/jumbo v2, "slim_action_floats"

    const/4 v3, 0x0

    .line 256
    invoke-static {v1, v2, v3}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v1

    .line 257
    const/4 v2, 0x1

    .line 256
    if-ne v1, v2, :cond_1

    .line 258
    const/16 v1, 0x3000

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 261
    :cond_1
    new-instance v1, Landroid/os/UserHandle;

    const/4 v2, -0x2

    invoke-direct {v1, v2}, Landroid/os/UserHandle;-><init>(I)V

    .line 260
    invoke-virtual {p0, p1, v1}, Landroid/content/Context;->startActivityAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)V

    .line 243
    return-void

    .line 249
    :catch_0
    move-exception v0

    .line 250
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "Action"

    const-string/jumbo v2, "Error dismissing keyguard"

    invoke-static {v1, v2, v0}, Landroid/util/Log;->w(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto :goto_0
.end method

.method public static triggerVirtualKeypress(IZ)V
    .locals 28
    .param p0, "keyCode"    # I
    .param p1, "longpress"    # Z

    .prologue
    .line 275
    invoke-static {}, Landroid/hardware/input/InputManager;->getInstance()Landroid/hardware/input/InputManager;

    move-result-object v2

    .line 276
    .local v2, "im":Landroid/hardware/input/InputManager;
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    .line 277
    .local v4, "now":J
    const/4 v14, 0x0

    .line 278
    .local v14, "downflags":I
    const/16 v26, 0x0

    .line 279
    .local v26, "upflags":I
    const/16 v6, 0x15

    move/from16 v0, p0

    if-eq v0, v6, :cond_0

    .line 280
    const/16 v6, 0x16

    move/from16 v0, p0

    if-ne v0, v6, :cond_2

    .line 283
    :cond_0
    const/16 v26, 0x6

    const/4 v14, 0x6

    .line 287
    :goto_0
    if-eqz p1, :cond_1

    .line 288
    or-int/lit16 v14, v14, 0x80

    .line 291
    :cond_1
    new-instance v3, Landroid/view/KeyEvent;

    const/4 v8, 0x0

    .line 292
    const/4 v10, 0x0

    const/4 v11, 0x0

    const/4 v12, -0x1

    const/4 v13, 0x0

    .line 294
    const/16 v15, 0x101

    move-wide v6, v4

    move/from16 v9, p0

    .line 291
    invoke-direct/range {v3 .. v15}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 295
    .local v3, "downEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x0

    invoke-virtual {v2, v3, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 297
    new-instance v15, Landroid/view/KeyEvent;

    const/16 v20, 0x1

    .line 298
    const/16 v22, 0x0

    const/16 v23, 0x0

    const/16 v24, -0x1

    const/16 v25, 0x0

    .line 300
    const/16 v27, 0x101

    move-wide/from16 v16, v4

    move-wide/from16 v18, v4

    move/from16 v21, p0

    .line 297
    invoke-direct/range {v15 .. v27}, Landroid/view/KeyEvent;-><init>(JJIIIIIIII)V

    .line 301
    .local v15, "upEvent":Landroid/view/KeyEvent;
    const/4 v6, 0x0

    invoke-virtual {v2, v15, v6}, Landroid/hardware/input/InputManager;->injectInputEvent(Landroid/view/InputEvent;I)Z

    .line 274
    return-void

    .line 281
    .end local v3    # "downEvent":Landroid/view/KeyEvent;
    .end local v15    # "upEvent":Landroid/view/KeyEvent;
    :cond_2
    const/16 v6, 0x13

    move/from16 v0, p0

    if-eq v0, v6, :cond_0

    .line 282
    const/16 v6, 0x14

    move/from16 v0, p0

    if-eq v0, v6, :cond_0

    .line 285
    const/16 v26, 0x48

    const/16 v14, 0x48

    goto :goto_0
.end method
