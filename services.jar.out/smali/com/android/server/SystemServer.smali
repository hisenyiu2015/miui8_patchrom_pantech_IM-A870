.class public final Lcom/android/server/SystemServer;
.super Ljava/lang/Object;
.source "SystemServer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/server/SystemServer$AdbPortObserver;
    }
.end annotation


# static fields
.field private static final APPWIDGET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.appwidget.AppWidgetService"

.field private static final BACKUP_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.backup.BackupManagerService$Lifecycle"

.field private static final EARLIEST_SUPPORTED_TIME:J = 0x5265c00L

.field private static final ENCRYPTED_STATE:Ljava/lang/String; = "1"

.field private static final ENCRYPTING_STATE:Ljava/lang/String; = "trigger_restart_min_framework"

.field private static final ETHERNET_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.ethernet.EthernetService"

.field private static final JOB_SCHEDULER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.job.JobSchedulerService"

.field private static final MIDI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.midi.MidiService$Lifecycle"

.field private static final MOUNT_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.MountService$Lifecycle"

.field private static final PERSISTENT_DATA_BLOCK_PROP:Ljava/lang/String; = "ro.frp.pst"

.field private static final PRINT_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.print.PrintManagerService"

.field private static final SNAPSHOT_INTERVAL:J = 0x36ee80L

.field private static final TAG:Ljava/lang/String; = "SystemServer"

.field private static final USB_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.usb.UsbService$Lifecycle"

.field private static final VOICE_RECOGNITION_MANAGER_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.voiceinteraction.VoiceInteractionManagerService"

.field private static final WIFI_P2P_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.p2p.WifiP2pService"

.field private static final WIFI_SERVICE_CLASS:Ljava/lang/String; = "com.android.server.wifi.WifiService"


# instance fields
.field private mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

.field private mContentResolver:Landroid/content/ContentResolver;

.field private mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

.field private final mFactoryTestMode:I

.field private mFirstBoot:Z

.field private mOnlyCore:Z

.field private mPackageManager:Landroid/content/pm/PackageManager;

.field private mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

.field private mPowerManagerService:Lcom/android/server/power/PowerManagerService;

.field private mProfilerSnapshotTimer:Ljava/util/Timer;

.field private mSystemContext:Landroid/content/Context;

.field private mSystemServiceManager:Lcom/android/server/SystemServiceManager;


# direct methods
.method static synthetic -get0(Lcom/android/server/SystemServer;)Lcom/android/server/am/ActivityManagerService;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    return-object v0
.end method

.method static synthetic -get1(Lcom/android/server/SystemServer;)Landroid/content/ContentResolver;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    return-object v0
.end method

.method static synthetic -get2(Lcom/android/server/SystemServer;)Lcom/android/server/SystemServiceManager;
    .locals 1

    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    return-object v0
.end method

.method static synthetic -wrap0(Lcom/android/server/SystemServer;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 0
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    invoke-direct {p0, p1, p2}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 179
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 181
    invoke-static {}, Landroid/os/FactoryTest;->getMode()I

    move-result v0

    iput v0, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    .line 179
    return-void
.end method

.method private createSystemContext()V
    .locals 3

    .prologue
    .line 331
    invoke-static {}, Landroid/app/ActivityThread;->systemMain()Landroid/app/ActivityThread;

    move-result-object v0

    .line 332
    .local v0, "activityThread":Landroid/app/ActivityThread;
    invoke-virtual {v0}, Landroid/app/ActivityThread;->getSystemContext()Landroid/app/ContextImpl;

    move-result-object v1

    iput-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 333
    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const v2, 0x10302e0

    invoke-virtual {v1, v2}, Landroid/content/Context;->setTheme(I)V

    .line 330
    return-void
.end method

.method public static main([Ljava/lang/String;)V
    .locals 1
    .param p0, "args"    # [Ljava/lang/String;

    .prologue
    invoke-static {}, Lmiui/patchrom/ClassHook;->initServerHook()V

    new-instance v0, Lcom/android/server/SystemServer;

    invoke-direct {v0}, Lcom/android/server/SystemServer;-><init>()V

    invoke-direct {v0}, Lcom/android/server/SystemServer;->run()V

    return-void
.end method

.method private performPendingShutdown()V
    .locals 8

    .prologue
    const/4 v7, 0x0

    const/4 v6, 0x1

    const/4 v5, 0x0

    .line 315
    const-string/jumbo v3, "sys.shutdown.requested"

    const-string/jumbo v4, ""

    .line 314
    invoke-static {v3, v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v2

    .line 316
    .local v2, "shutdownAction":Ljava/lang/String;
    if-eqz v2, :cond_0

    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-lez v3, :cond_0

    .line 317
    invoke-virtual {v2, v5}, Ljava/lang/String;->charAt(I)C

    move-result v3

    const/16 v4, 0x31

    if-ne v3, v4, :cond_1

    const/4 v1, 0x1

    .line 320
    .local v1, "reboot":Z
    :goto_0
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    if-le v3, v6, :cond_2

    .line 321
    invoke-virtual {v2}, Ljava/lang/String;->length()I

    move-result v3

    invoke-virtual {v2, v6, v3}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v0

    .line 326
    :goto_1
    invoke-static {v7, v1, v0}, Lcom/android/server/power/ShutdownThread;->rebootOrShutdown(Landroid/content/Context;ZLjava/lang/String;)V

    .line 313
    .end local v1    # "reboot":Z
    :cond_0
    return-void

    .line 317
    :cond_1
    const/4 v1, 0x0

    .restart local v1    # "reboot":Z
    goto :goto_0

    .line 323
    :cond_2
    const/4 v0, 0x0

    .local v0, "reason":Ljava/lang/String;
    goto :goto_1
.end method

.method private reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 3
    .param p1, "msg"    # Ljava/lang/String;
    .param p2, "e"    # Ljava/lang/Throwable;

    .prologue
    .line 309
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "***********************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 310
    const-string/jumbo v0, "SystemServer"

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v2, "BOOT FAILURE "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1, p2}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 308
    return-void
.end method

.method private run()V
    .locals 9

    .prologue
    const-wide/32 v4, 0x5265c00

    const-wide/32 v2, 0x36ee80

    const/4 v8, 0x1

    .line 202
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    cmp-long v0, v0, v4

    if-gez v0, :cond_0

    .line 203
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "System clock is before 1970; setting to 1970."

    invoke-static {v0, v1}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 204
    invoke-static {v4, v5}, Landroid/os/SystemClock;->setCurrentTimeMillis(J)Z

    .line 215
    :cond_0
    const-string/jumbo v0, "persist.sys.language"

    invoke-static {v0}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/String;->isEmpty()Z

    move-result v0

    if-nez v0, :cond_1

    .line 216
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toLanguageTag()Ljava/lang/String;

    move-result-object v7

    .line 218
    .local v7, "languageTag":Ljava/lang/String;
    const-string/jumbo v0, "persist.sys.locale"

    invoke-static {v0, v7}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 219
    const-string/jumbo v0, "persist.sys.language"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 220
    const-string/jumbo v0, "persist.sys.country"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 221
    const-string/jumbo v0, "persist.sys.localevar"

    const-string/jumbo v1, ""

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 225
    .end local v7    # "languageTag":Ljava/lang/String;
    :cond_1
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Entered the Android system server!"

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 226
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    const/16 v4, 0xbc2

    invoke-static {v4, v0, v1}, Landroid/util/EventLog;->writeEvent(IJ)I

    .line 235
    const-string/jumbo v0, "persist.sys.dalvik.vm.lib.2"

    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v1

    invoke-virtual {v1}, Ldalvik/system/VMRuntime;->vmLibrary()Ljava/lang/String;

    move-result-object v1

    invoke-static {v0, v1}, Landroid/os/SystemProperties;->set(Ljava/lang/String;Ljava/lang/String;)V

    .line 238
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->isEnabled()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 239
    invoke-static {}, Lcom/android/internal/os/SamplingProfilerIntegration;->start()V

    .line 240
    new-instance v0, Ljava/util/Timer;

    invoke-direct {v0}, Ljava/util/Timer;-><init>()V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    .line 241
    iget-object v0, p0, Lcom/android/server/SystemServer;->mProfilerSnapshotTimer:Ljava/util/Timer;

    new-instance v1, Lcom/android/server/SystemServer$1;

    invoke-direct {v1, p0}, Lcom/android/server/SystemServer$1;-><init>(Lcom/android/server/SystemServer;)V

    move-wide v4, v2

    invoke-virtual/range {v0 .. v5}, Ljava/util/Timer;->schedule(Ljava/util/TimerTask;JJ)V

    .line 250
    :cond_2
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    invoke-virtual {v0}, Ldalvik/system/VMRuntime;->clearGrowthLimit()V

    .line 254
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v0

    const v1, 0x3f4ccccd    # 0.8f

    invoke-virtual {v0, v1}, Ldalvik/system/VMRuntime;->setTargetHeapUtilization(F)F

    .line 258
    invoke-static {}, Landroid/os/Build;->ensureFingerprintProperty()V

    .line 262
    invoke-static {v8}, Landroid/os/Environment;->setUserRequired(Z)V

    .line 265
    invoke-static {v8}, Lcom/android/internal/os/BinderInternal;->disableBackgroundScheduling(Z)V

    .line 269
    const/4 v0, -0x2

    .line 268
    invoke-static {v0}, Landroid/os/Process;->setThreadPriority(I)V

    .line 270
    const/4 v0, 0x0

    invoke-static {v0}, Landroid/os/Process;->setCanSelfBackground(Z)V

    .line 271
    invoke-static {}, Landroid/os/Looper;->prepareMainLooper()V

    .line 274
    const-string/jumbo v0, "android_servers"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 278
    invoke-direct {p0}, Lcom/android/server/SystemServer;->performPendingShutdown()V

    .line 281
    invoke-direct {p0}, Lcom/android/server/SystemServer;->createSystemContext()V

    .line 284
    new-instance v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-direct {v0, v1}, Lcom/android/server/SystemServiceManager;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 285
    const-class v0, Lcom/android/server/SystemServiceManager;

    iget-object v1, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-static {v0, v1}, Lcom/android/server/LocalServices;->addService(Ljava/lang/Class;Ljava/lang/Object;)V

    .line 289
    :try_start_0
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startBootstrapServices()V

    .line 290
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startCoreServices()V

    .line 291
    invoke-direct {p0}, Lcom/android/server/SystemServer;->startOtherServices()V
    :try_end_0
    .catch Ljava/lang/Throwable; {:try_start_0 .. :try_end_0} :catch_0

    .line 299
    invoke-static {}, Landroid/os/StrictMode;->conditionallyEnableDebugLogging()Z

    move-result v0

    if-eqz v0, :cond_3

    .line 300
    const-string/jumbo v0, "SystemServer"

    const-string/jumbo v1, "Enabled StrictMode for system server main thread."

    invoke-static {v0, v1}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 304
    :cond_3
    invoke-static {}, Landroid/os/Looper;->loop()V

    .line 305
    new-instance v0, Ljava/lang/RuntimeException;

    const-string/jumbo v1, "Main thread loop unexpectedly exited"

    invoke-direct {v0, v1}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 292
    :catch_0
    move-exception v6

    .line 293
    .local v6, "ex":Ljava/lang/Throwable;
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "******************************************"

    invoke-static {v0, v1}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 294
    const-string/jumbo v0, "System"

    const-string/jumbo v1, "************ Failure starting system services"

    invoke-static {v0, v1, v6}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    .line 295
    throw v6
.end method

.method private startBootstrapServices()V
    .locals 6

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x1

    .line 347
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/Installer;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v1

    check-cast v1, Lcom/android/server/pm/Installer;

    .line 350
    .local v1, "installer":Lcom/android/server/pm/Installer;
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 351
    const-class v5, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    .line 350
    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/am/ActivityManagerService$Lifecycle;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService$Lifecycle;->getService()Lcom/android/server/am/ActivityManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 352
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    invoke-virtual {v2, v5}, Lcom/android/server/am/ActivityManagerService;->setSystemServiceManager(Lcom/android/server/SystemServiceManager;)V

    .line 353
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2, v1}, Lcom/android/server/am/ActivityManagerService;->setInstaller(Lcom/android/server/pm/Installer;)V

    .line 359
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    .line 363
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->initPowerManagement()V

    .line 366
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/lights/LightsService;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 370
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v2

    check-cast v2, Lcom/android/server/display/DisplayManagerService;

    iput-object v2, p0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    .line 373
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x64

    invoke-virtual {v2, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 376
    const-string/jumbo v2, "vold.decrypt"

    invoke-static {v2}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 377
    .local v0, "cryptState":Ljava/lang/String;
    const-string/jumbo v2, "trigger_restart_min_framework"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_1

    .line 378
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v5, "Detected encryption in progress - only parsing core apps"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 379
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 386
    :cond_0
    :goto_0
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v5, "Package Manager"

    invoke-static {v2, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 387
    iget-object v5, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 388
    iget v2, p0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    if-eqz v2, :cond_2

    move v2, v3

    :goto_1
    iget-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    .line 387
    invoke-static {v5, v1, v2, v3}, Lcom/android/server/pm/PackageManagerService;->main(Landroid/content/Context;Lcom/android/server/pm/Installer;ZZ)Lcom/android/server/pm/PackageManagerService;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    .line 389
    iget-object v2, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v2}, Lcom/android/server/pm/PackageManagerService;->isFirstBoot()Z

    move-result v2

    iput-boolean v2, p0, Lcom/android/server/SystemServer;->mFirstBoot:Z

    .line 390
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v2

    iput-object v2, p0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 392
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v3, "User Service"

    invoke-static {v2, v3}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 393
    const-string/jumbo v2, "user"

    invoke-static {}, Lcom/android/server/pm/UserManagerService;->getInstance()Lcom/android/server/pm/UserManagerService;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 396
    iget-object v2, p0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    invoke-static {v2}, Lcom/android/server/AttributeCache;->init(Landroid/content/Context;)V

    .line 399
    iget-object v2, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v2}, Lcom/android/server/am/ActivityManagerService;->setSystemProcess()V

    .line 403
    invoke-static {}, Lcom/android/server/SystemServer;->startSensorService()V

    .line 343
    return-void

    .line 380
    :cond_1
    const-string/jumbo v2, "1"

    invoke-virtual {v2, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 381
    const-string/jumbo v2, "SystemServer"

    const-string/jumbo v5, "Device encrypted - only parsing core apps"

    invoke-static {v2, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 382
    iput-boolean v3, p0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    goto :goto_0

    :cond_2
    move v2, v4

    .line 388
    goto :goto_1
.end method

.method private startCoreServices()V
    .locals 2

    .prologue
    .line 411
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/BatteryService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 414
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/usage/UsageStatsService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 415
    iget-object v1, p0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 416
    const-class v0, Landroid/app/usage/UsageStatsManagerInternal;

    invoke-static {v0}, Lcom/android/server/LocalServices;->getService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/usage/UsageStatsManagerInternal;

    .line 415
    invoke-virtual {v1, v0}, Lcom/android/server/am/ActivityManagerService;->setUsageStatsManager(Landroid/app/usage/UsageStatsManagerInternal;)V

    .line 418
    iget-object v0, p0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v0}, Lcom/android/server/pm/PackageManagerService;->getUsageStatsIfNoPackageUsageInfo()V

    .line 421
    iget-object v0, p0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v1, Lcom/android/server/webkit/WebViewUpdateService;

    invoke-virtual {v0, v1}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 409
    return-void
.end method

.method private startOtherServices()V
    .locals 113

    .prologue
    .line 429
    move-object/from16 v0, p0

    iget-object v3, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    .line 430
    .local v3, "context":Landroid/content/Context;
    const/16 v30, 0x0

    .line 431
    .local v30, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    const/16 v48, 0x0

    .line 432
    .local v48, "contentService":Lcom/android/server/content/ContentService;
    const/16 v106, 0x0

    .line 433
    .local v106, "vibrator":Lcom/android/server/VibratorService;
    const/16 v32, 0x0

    .line 434
    .local v32, "alarm":Landroid/app/IAlarmManager;
    const/16 v85, 0x0

    .line 435
    .local v85, "mountService":Landroid/os/storage/IMountService;
    const/4 v7, 0x0

    .line 436
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const/4 v6, 0x0

    .line 437
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    const/16 v86, 0x0

    .line 438
    .local v86, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    const/16 v43, 0x0

    .line 439
    .local v43, "connectivity":Lcom/android/server/ConnectivityService;
    const/16 v87, 0x0

    .line 440
    .local v87, "networkScore":Lcom/android/server/NetworkScoreService;
    const/16 v97, 0x0

    .line 441
    .local v97, "serviceDiscovery":Lcom/android/server/NsdService;
    const/16 v112, 0x0

    .line 442
    .local v112, "wm":Lcom/android/server/wm/WindowManagerService;
    const/16 v105, 0x0

    .line 443
    .local v105, "usb":Lcom/android/server/usb/UsbService;
    const/16 v94, 0x0

    .line 444
    .local v94, "serial":Lcom/android/server/SerialService;
    const/16 v90, 0x0

    .line 445
    .local v90, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    const/16 v40, 0x0

    .line 446
    .local v40, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    const/16 v73, 0x0

    .line 447
    .local v73, "inputManager":Lcom/android/server/input/InputManagerService;
    const/16 v101, 0x0

    .line 448
    .local v101, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    const/16 v46, 0x0

    .line 449
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    const/16 v35, 0x0

    .line 450
    .local v35, "audioService":Lcom/android/server/audio/AudioService;
    const/16 v84, 0x0

    .line 451
    .local v84, "mmsService":Lcom/android/server/MmsServiceBroker;
    const/16 v65, 0x0

    .line 452
    .local v65, "entropyMixer":Lcom/android/server/EntropyMixer;
    const/16 v39, 0x0

    .line 454
    .local v39, "cameraService":Lcom/android/server/camera/CameraService;
    const-string/jumbo v4, "config.disable_storage"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v57

    .line 455
    .local v57, "disableStorage":Z
    const-string/jumbo v4, "config.disable_bluetooth"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v52

    .line 456
    .local v52, "disableBluetooth":Z
    const-string/jumbo v4, "config.disable_location"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v53

    .line 457
    .local v53, "disableLocation":Z
    const-string/jumbo v4, "config.disable_systemui"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v58

    .line 458
    .local v58, "disableSystemUI":Z
    const-string/jumbo v4, "config.disable_noncore"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v56

    .line 459
    .local v56, "disableNonCoreServices":Z
    const-string/jumbo v4, "config.disable_network"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v54

    .line 460
    .local v54, "disableNetwork":Z
    const-string/jumbo v4, "config.disable_networktime"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v55

    .line 461
    .local v55, "disableNetworkTime":Z
    const-string/jumbo v4, "ro.kernel.qemu"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, "1"

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v75

    .line 462
    .local v75, "isEmulator":Z
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 463
    const v5, 0x3f060005

    .line 462
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getString(I)Ljava/lang/String;

    move-result-object v67

    .line 464
    .local v67, "externalServer":Ljava/lang/String;
    const-string/jumbo v4, "config.disable_atlas"

    const/4 v5, 0x0

    invoke-static {v4, v5}, Landroid/os/SystemProperties;->getBoolean(Ljava/lang/String;Z)Z

    move-result v51

    .line 467
    .local v51, "disableAtlas":Z
    :try_start_0
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Reading configuration..."

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    .line 470
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Scheduling Policy"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 471
    const-string/jumbo v4, "scheduling_policy"

    new-instance v5, Lcom/android/server/os/SchedulingPolicyService;

    invoke-direct {v5}, Lcom/android/server/os/SchedulingPolicyService;-><init>()V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 473
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/telecom/TelecomLoaderService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 475
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Telephony Registry"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 476
    new-instance v102, Lcom/android/server/TelephonyRegistry;

    move-object/from16 v0, v102

    invoke-direct {v0, v3}, Lcom/android/server/TelephonyRegistry;-><init>(Landroid/content/Context;)V
    :try_end_0
    .catch Ljava/lang/RuntimeException; {:try_start_0 .. :try_end_0} :catch_44

    .line 477
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v102, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :try_start_1
    const-string/jumbo v4, "telephony.registry"

    move-object/from16 v0, v102

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 479
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Entropy Mixer"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 480
    new-instance v66, Lcom/android/server/EntropyMixer;

    move-object/from16 v0, v66

    invoke-direct {v0, v3}, Lcom/android/server/EntropyMixer;-><init>(Landroid/content/Context;)V
    :try_end_1
    .catch Ljava/lang/RuntimeException; {:try_start_1 .. :try_end_1} :catch_45

    .line 482
    .local v66, "entropyMixer":Lcom/android/server/EntropyMixer;
    :try_start_2
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-result-object v4

    move-object/from16 v0, p0

    iput-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 484
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Camera Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 485
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/camera/CameraService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_2
    .catch Ljava/lang/RuntimeException; {:try_start_2 .. :try_end_2} :catch_1

    .line 490
    :try_start_3
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Account Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 491
    new-instance v31, Lcom/android/server/accounts/AccountManagerService;

    move-object/from16 v0, v31

    invoke-direct {v0, v3}, Lcom/android/server/accounts/AccountManagerService;-><init>(Landroid/content/Context;)V
    :try_end_3
    .catch Ljava/lang/Throwable; {:try_start_3 .. :try_end_3} :catch_0
    .catch Ljava/lang/RuntimeException; {:try_start_3 .. :try_end_3} :catch_1

    .line 492
    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v31, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :try_start_4
    const-string/jumbo v4, "account"

    move-object/from16 v0, v31

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4
    .catch Ljava/lang/Throwable; {:try_start_4 .. :try_end_4} :catch_49
    .catch Ljava/lang/RuntimeException; {:try_start_4 .. :try_end_4} :catch_46

    move-object/from16 v30, v31

    .line 497
    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    :goto_0
    :try_start_5
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Content Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 499
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2a

    const/4 v4, 0x1

    .line 498
    :goto_1
    invoke-static {v3, v4}, Lcom/android/server/content/ContentService;->main(Landroid/content/Context;Z)Lcom/android/server/content/ContentService;

    move-result-object v48

    .line 501
    .local v48, "contentService":Lcom/android/server/content/ContentService;
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "System Content Providers"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 502
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->installSystemProviders()V

    .line 504
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Vibrator Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 505
    new-instance v107, Lcom/android/server/VibratorService;

    move-object/from16 v0, v107

    invoke-direct {v0, v3}, Lcom/android/server/VibratorService;-><init>(Landroid/content/Context;)V
    :try_end_5
    .catch Ljava/lang/RuntimeException; {:try_start_5 .. :try_end_5} :catch_1

    .line 506
    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .local v107, "vibrator":Lcom/android/server/VibratorService;
    :try_start_6
    const-string/jumbo v4, "vibrator"

    move-object/from16 v0, v107

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 508
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Consumer IR Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 509
    new-instance v47, Lcom/android/server/ConsumerIrService;

    move-object/from16 v0, v47

    invoke-direct {v0, v3}, Lcom/android/server/ConsumerIrService;-><init>(Landroid/content/Context;)V
    :try_end_6
    .catch Ljava/lang/RuntimeException; {:try_start_6 .. :try_end_6} :catch_47

    .line 510
    .local v47, "consumerIr":Lcom/android/server/ConsumerIrService;
    :try_start_7
    const-string/jumbo v4, "consumer_ir"

    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v0, v47

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 512
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/AlarmManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 514
    const-string/jumbo v4, "alarm"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 513
    invoke-static {v4}, Landroid/app/IAlarmManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/IAlarmManager;

    move-result-object v32

    .line 516
    .local v32, "alarm":Landroid/app/IAlarmManager;
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Init Watchdog"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 517
    invoke-static {}, Lcom/android/server/Watchdog;->getInstance()Lcom/android/server/Watchdog;

    move-result-object v111

    .line 518
    .local v111, "watchdog":Lcom/android/server/Watchdog;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v111

    invoke-virtual {v0, v3, v4}, Lcom/android/server/Watchdog;->init(Landroid/content/Context;Lcom/android/server/am/ActivityManagerService;)V

    .line 520
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Input Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 521
    new-instance v74, Lcom/android/server/input/InputManagerService;

    move-object/from16 v0, v74

    invoke-direct {v0, v3}, Lcom/android/server/input/InputManagerService;-><init>(Landroid/content/Context;)V
    :try_end_7
    .catch Ljava/lang/RuntimeException; {:try_start_7 .. :try_end_7} :catch_48

    .line 523
    .local v74, "inputManager":Lcom/android/server/input/InputManagerService;
    :try_start_8
    const-string/jumbo v4, "SystemServer"

    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    const-string/jumbo v5, "Window Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 525
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_2b

    const/4 v4, 0x1

    .line 526
    :goto_2
    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    const/4 v8, 0x1

    .line 524
    move-object/from16 v0, v74

    invoke-static {v3, v0, v4, v8, v5}, Lcom/android/server/wm/WindowManagerService;->main(Landroid/content/Context;Lcom/android/server/input/InputManagerService;ZZZ)Lcom/android/server/wm/WindowManagerService;

    move-result-object v112

    .line 527
    .local v112, "wm":Lcom/android/server/wm/WindowManagerService;
    const-string/jumbo v4, "window"

    move-object/from16 v0, v112

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 528
    const-string/jumbo v4, "input"

    move-object/from16 v0, v74

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 530
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    move-object/from16 v0, v112

    invoke-virtual {v4, v0}, Lcom/android/server/am/ActivityManagerService;->setWindowManager(Lcom/android/server/wm/WindowManagerService;)V

    .line 532
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->getInputMonitor()Lcom/android/server/wm/InputMonitor;

    move-result-object v4

    move-object/from16 v0, v74

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWindowManagerCallbacks(Lcom/android/server/input/InputManagerService$WindowManagerCallbacks;)V

    .line 533
    invoke-virtual/range {v74 .. v74}, Lcom/android/server/input/InputManagerService;->start()V

    .line 536
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    invoke-virtual {v4}, Lcom/android/server/display/DisplayManagerService;->windowManagerAndInputReady()V

    .line 541
    if-eqz v75, :cond_2c

    .line 542
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooh Service (emulator)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_8
    .catch Ljava/lang/RuntimeException; {:try_start_8 .. :try_end_8} :catch_2

    :goto_3
    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v65, "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v46, v47

    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v101, v102

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v101, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v73, v74

    .end local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v73, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v106, v107

    .line 559
    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v48    # "contentService":Lcom/android/server/content/ContentService;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v107    # "vibrator":Lcom/android/server/VibratorService;
    .end local v111    # "watchdog":Lcom/android/server/Watchdog;
    .end local v112    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_4
    const/16 v98, 0x0

    .line 560
    .local v98, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    const/16 v92, 0x0

    .line 561
    .local v92, "notification":Landroid/app/INotificationManager;
    const/16 v71, 0x0

    .line 562
    .local v71, "imm":Lcom/android/server/InputMethodManagerService;
    const/16 v109, 0x0

    .line 563
    .local v109, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    const/16 v76, 0x0

    .line 564
    .local v76, "location":Lcom/android/server/LocationManagerService;
    const/16 v49, 0x0

    .line 565
    .local v49, "countryDetector":Lcom/android/server/CountryDetectorService;
    const/16 v103, 0x0

    .line 566
    .local v103, "tsms":Lcom/android/server/TextServicesManagerService;
    const/16 v78, 0x0

    .line 567
    .local v78, "lockSettings":Lcom/android/server/LockSettingsService;
    const/16 v33, 0x0

    .line 568
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    const/16 v80, 0x0

    .line 569
    .local v80, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    const/16 v68, 0x0

    .line 570
    .local v68, "gestureService":Lcom/android/server/gesture/GestureService;
    const/16 v63, 0x0

    .line 573
    .local v63, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_0

    .line 575
    :try_start_9
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Input Method Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 576
    new-instance v72, Lcom/android/server/InputMethodManagerService;

    move-object/from16 v0, v72

    move-object/from16 v1, v112

    invoke-direct {v0, v3, v1}, Lcom/android/server/InputMethodManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_9
    .catch Ljava/lang/Throwable; {:try_start_9 .. :try_end_9} :catch_3

    .line 577
    .end local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v72, "imm":Lcom/android/server/InputMethodManagerService;
    :try_start_a
    const-string/jumbo v4, "input_method"

    move-object/from16 v0, v72

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_a
    .catch Ljava/lang/Throwable; {:try_start_a .. :try_end_a} :catch_43

    move-object/from16 v71, v72

    .line 583
    .end local v72    # "imm":Lcom/android/server/InputMethodManagerService;
    :goto_5
    :try_start_b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Accessibility Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 584
    const-string/jumbo v4, "accessibility"

    .line 585
    new-instance v5, Lcom/android/server/accessibility/AccessibilityManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/accessibility/AccessibilityManagerService;-><init>(Landroid/content/Context;)V

    .line 584
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_b
    .catch Ljava/lang/Throwable; {:try_start_b .. :try_end_b} :catch_4

    .line 592
    :cond_0
    :goto_6
    :try_start_c
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->displayReady()V
    :try_end_c
    .catch Ljava/lang/Throwable; {:try_start_c .. :try_end_c} :catch_5

    .line 597
    :goto_7
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_1

    .line 598
    if-nez v57, :cond_1

    .line 599
    const-string/jumbo v4, "0"

    const-string/jumbo v5, "system_init.startmountservice"

    invoke-static {v5}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_30

    .line 616
    .end local v85    # "mountService":Landroid/os/storage/IMountService;
    :cond_1
    :goto_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/UiModeManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 619
    :try_start_d
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->performBootDexOpt()V
    :try_end_d
    .catch Ljava/lang/Throwable; {:try_start_d .. :try_end_d} :catch_7

    .line 625
    :goto_9
    :try_start_e
    invoke-static {}, Landroid/app/ActivityManagerNative;->getDefault()Landroid/app/IActivityManager;

    move-result-object v4

    const/4 v5, 0x0

    const/high16 v8, -0x80000000

    .line 626
    const/high16 v9, -0x80000000

    const/4 v10, 0x0

    .line 625
    invoke-interface {v4, v5, v8, v9, v10}, Landroid/app/IActivityManager;->showBootMessage(Landroid/content/pm/ApplicationInfo;IIZ)V
    :try_end_e
    .catch Landroid/os/RemoteException; {:try_start_e .. :try_end_e} :catch_42

    .line 630
    :goto_a
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-eq v4, v5, :cond_36

    .line 631
    if-nez v56, :cond_3

    .line 633
    :try_start_f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "LockSettingsService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 634
    new-instance v79, Lcom/android/server/LockSettingsService;

    move-object/from16 v0, v79

    invoke-direct {v0, v3}, Lcom/android/server/LockSettingsService;-><init>(Landroid/content/Context;)V
    :try_end_f
    .catch Ljava/lang/Throwable; {:try_start_f .. :try_end_f} :catch_8

    .line 635
    .end local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v79, "lockSettings":Lcom/android/server/LockSettingsService;
    :try_start_10
    const-string/jumbo v4, "lock_settings"

    move-object/from16 v0, v79

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_10
    .catch Ljava/lang/Throwable; {:try_start_10 .. :try_end_10} :catch_41

    move-object/from16 v78, v79

    .line 640
    .end local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    :goto_b
    const-string/jumbo v4, "ro.frp.pst"

    invoke-static {v4}, Landroid/os/SystemProperties;->get(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v4

    const-string/jumbo v5, ""

    invoke-virtual {v4, v5}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_2

    .line 641
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/PersistentDataBlockService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 644
    :cond_2
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DeviceIdleController;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 648
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/devicepolicy/DevicePolicyManagerService$Lifecycle;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 651
    :cond_3
    if-nez v58, :cond_4

    .line 653
    :try_start_11
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Status Bar"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 654
    new-instance v99, Lcom/android/server/statusbar/StatusBarManagerService;

    move-object/from16 v0, v99

    move-object/from16 v1, v112

    invoke-direct {v0, v3, v1}, Lcom/android/server/statusbar/StatusBarManagerService;-><init>(Landroid/content/Context;Lcom/android/server/wm/WindowManagerService;)V
    :try_end_11
    .catch Ljava/lang/Throwable; {:try_start_11 .. :try_end_11} :catch_9

    .line 655
    .end local v98    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v99, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :try_start_12
    const-string/jumbo v4, "statusbar"

    move-object/from16 v0, v99

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_12
    .catch Ljava/lang/Throwable; {:try_start_12 .. :try_end_12} :catch_40

    move-object/from16 v98, v99

    .line 661
    .end local v99    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :cond_4
    :goto_c
    if-nez v56, :cond_5

    .line 663
    :try_start_13
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Clipboard Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 664
    const-string/jumbo v4, "clipboard"

    .line 665
    new-instance v5, Lcom/android/server/clipboard/ClipboardService;

    invoke-direct {v5, v3}, Lcom/android/server/clipboard/ClipboardService;-><init>(Landroid/content/Context;)V

    .line 664
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_13
    .catch Ljava/lang/Throwable; {:try_start_13 .. :try_end_13} :catch_a

    .line 671
    :cond_5
    :goto_d
    if-nez v54, :cond_6

    .line 673
    :try_start_14
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkManagement Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 674
    invoke-static {v3}, Lcom/android/server/NetworkManagementService;->create(Landroid/content/Context;)Lcom/android/server/NetworkManagementService;

    move-result-object v7

    .line 675
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    const-string/jumbo v4, "network_management"

    invoke-static {v4, v7}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_14
    .catch Ljava/lang/Throwable; {:try_start_14 .. :try_end_14} :catch_b

    .line 681
    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    :cond_6
    :goto_e
    if-nez v56, :cond_7

    .line 683
    :try_start_15
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Text Service Manager Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 684
    new-instance v104, Lcom/android/server/TextServicesManagerService;

    move-object/from16 v0, v104

    invoke-direct {v0, v3}, Lcom/android/server/TextServicesManagerService;-><init>(Landroid/content/Context;)V
    :try_end_15
    .catch Ljava/lang/Throwable; {:try_start_15 .. :try_end_15} :catch_c

    .line 685
    .end local v103    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v104, "tsms":Lcom/android/server/TextServicesManagerService;
    :try_start_16
    const-string/jumbo v4, "textservices"

    move-object/from16 v0, v104

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_16
    .catch Ljava/lang/Throwable; {:try_start_16 .. :try_end_16} :catch_3f

    move-object/from16 v103, v104

    .line 691
    .end local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_7
    :goto_f
    if-nez v54, :cond_35

    .line 693
    :try_start_17
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Network Score Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 694
    new-instance v88, Lcom/android/server/NetworkScoreService;

    move-object/from16 v0, v88

    invoke-direct {v0, v3}, Lcom/android/server/NetworkScoreService;-><init>(Landroid/content/Context;)V
    :try_end_17
    .catch Ljava/lang/Throwable; {:try_start_17 .. :try_end_17} :catch_d

    .line 695
    .end local v87    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v88, "networkScore":Lcom/android/server/NetworkScoreService;
    :try_start_18
    const-string/jumbo v4, "network_score"

    move-object/from16 v0, v88

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_18
    .catch Ljava/lang/Throwable; {:try_start_18 .. :try_end_18} :catch_3e

    move-object/from16 v87, v88

    .line 701
    .end local v88    # "networkScore":Lcom/android/server/NetworkScoreService;
    :goto_10
    :try_start_19
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 702
    new-instance v89, Lcom/android/server/net/NetworkStatsService;

    move-object/from16 v0, v89

    move-object/from16 v1, v32

    invoke-direct {v0, v3, v7, v1}, Lcom/android/server/net/NetworkStatsService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/app/IAlarmManager;)V
    :try_end_19
    .catch Ljava/lang/Throwable; {:try_start_19 .. :try_end_19} :catch_e

    .line 703
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v89, "networkStats":Lcom/android/server/net/NetworkStatsService;
    :try_start_1a
    const-string/jumbo v4, "netstats"

    move-object/from16 v0, v89

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1a
    .catch Ljava/lang/Throwable; {:try_start_1a .. :try_end_1a} :catch_3d

    move-object/from16 v6, v89

    .line 709
    .end local v89    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :goto_11
    :try_start_1b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkPolicy Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 710
    new-instance v2, Lcom/android/server/net/NetworkPolicyManagerService;

    .line 711
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    .line 712
    const-string/jumbo v5, "power"

    invoke-static {v5}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v5

    check-cast v5, Landroid/os/IPowerManager;

    .line 710
    invoke-direct/range {v2 .. v7}, Lcom/android/server/net/NetworkPolicyManagerService;-><init>(Landroid/content/Context;Landroid/app/IActivityManager;Landroid/os/IPowerManager;Landroid/net/INetworkStatsService;Landroid/os/INetworkManagementService;)V
    :try_end_1b
    .catch Ljava/lang/Throwable; {:try_start_1b .. :try_end_1b} :catch_f

    .line 714
    .end local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .local v2, "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :try_start_1c
    const-string/jumbo v4, "netpolicy"

    invoke-static {v4, v2}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1c
    .catch Ljava/lang/Throwable; {:try_start_1c .. :try_end_1c} :catch_3c

    .line 719
    :goto_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.p2p.WifiP2pService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 720
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.WifiService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 721
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    .line 722
    const-string/jumbo v5, "com.android.server.wifi.WifiScanningService"

    .line 721
    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 724
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.wifi.RttService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 726
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.ethernet"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_8

    .line 727
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 726
    if-eqz v4, :cond_9

    .line 728
    :cond_8
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.ethernet.EthernetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 732
    :cond_9
    :try_start_1d
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Connectivity Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 733
    new-instance v44, Lcom/android/server/ConnectivityService;

    move-object/from16 v0, v44

    invoke-direct {v0, v3, v7, v6, v2}, Lcom/android/server/ConnectivityService;-><init>(Landroid/content/Context;Landroid/os/INetworkManagementService;Landroid/net/INetworkStatsService;Landroid/net/INetworkPolicyManager;)V
    :try_end_1d
    .catch Ljava/lang/Throwable; {:try_start_1d .. :try_end_1d} :catch_10

    .line 735
    .end local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v44, "connectivity":Lcom/android/server/ConnectivityService;
    :try_start_1e
    const-string/jumbo v4, "connectivity"

    move-object/from16 v0, v44

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 736
    move-object/from16 v0, v44

    invoke-virtual {v6, v0}, Lcom/android/server/net/NetworkStatsService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V

    .line 737
    move-object/from16 v0, v44

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindConnectivityManager(Landroid/net/IConnectivityManager;)V
    :try_end_1e
    .catch Ljava/lang/Throwable; {:try_start_1e .. :try_end_1e} :catch_3b

    move-object/from16 v43, v44

    .line 743
    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    :goto_13
    :try_start_1f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Network Service Discovery Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 744
    invoke-static {v3}, Lcom/android/server/NsdService;->create(Landroid/content/Context;)Lcom/android/server/NsdService;

    move-result-object v97

    .line 746
    .local v97, "serviceDiscovery":Lcom/android/server/NsdService;
    const-string/jumbo v4, "servicediscovery"

    .line 745
    move-object/from16 v0, v97

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_1f
    .catch Ljava/lang/Throwable; {:try_start_1f .. :try_end_1f} :catch_11

    .line 752
    .end local v97    # "serviceDiscovery":Lcom/android/server/NsdService;
    :goto_14
    if-nez v56, :cond_a

    .line 754
    :try_start_20
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "UpdateLock Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 755
    const-string/jumbo v4, "updatelock"

    .line 756
    new-instance v5, Lcom/android/server/UpdateLockService;

    invoke-direct {v5, v3}, Lcom/android/server/UpdateLockService;-><init>(Landroid/content/Context;)V

    .line 755
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_20
    .catch Ljava/lang/Throwable; {:try_start_20 .. :try_end_20} :catch_12

    .line 767
    :cond_a
    :goto_15
    if-eqz v85, :cond_b

    move-object/from16 v0, p0

    iget-boolean v4, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    if-eqz v4, :cond_31

    .line 775
    :cond_b
    :goto_16
    if-eqz v30, :cond_c

    .line 776
    :try_start_21
    invoke-virtual/range {v30 .. v30}, Lcom/android/server/accounts/AccountManagerService;->systemReady()V
    :try_end_21
    .catch Ljava/lang/Throwable; {:try_start_21 .. :try_end_21} :catch_14

    .line 782
    :cond_c
    :goto_17
    if-eqz v48, :cond_d

    .line 783
    :try_start_22
    invoke-virtual/range {v48 .. v48}, Lcom/android/server/content/ContentService;->systemReady()V
    :try_end_22
    .catch Ljava/lang/Throwable; {:try_start_22 .. :try_end_22} :catch_15

    .line 788
    :cond_d
    :goto_18
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/notification/NotificationManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 790
    const-string/jumbo v4, "notification"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 789
    invoke-static {v4}, Landroid/app/INotificationManager$Stub;->asInterface(Landroid/os/IBinder;)Landroid/app/INotificationManager;

    move-result-object v92

    .line 791
    .local v92, "notification":Landroid/app/INotificationManager;
    move-object/from16 v0, v92

    invoke-virtual {v2, v0}, Lcom/android/server/net/NetworkPolicyManagerService;->bindNotificationManager(Landroid/app/INotificationManager;)V

    .line 793
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/storage/DeviceStorageMonitorService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 795
    if-nez v53, :cond_e

    .line 797
    :try_start_23
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Location Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 798
    new-instance v77, Lcom/android/server/LocationManagerService;

    move-object/from16 v0, v77

    invoke-direct {v0, v3}, Lcom/android/server/LocationManagerService;-><init>(Landroid/content/Context;)V
    :try_end_23
    .catch Ljava/lang/Throwable; {:try_start_23 .. :try_end_23} :catch_16

    .line 799
    .end local v76    # "location":Lcom/android/server/LocationManagerService;
    .local v77, "location":Lcom/android/server/LocationManagerService;
    :try_start_24
    const-string/jumbo v4, "location"

    move-object/from16 v0, v77

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_24
    .catch Ljava/lang/Throwable; {:try_start_24 .. :try_end_24} :catch_3a

    move-object/from16 v76, v77

    .line 805
    .end local v77    # "location":Lcom/android/server/LocationManagerService;
    :goto_19
    :try_start_25
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Country Detector"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    new-instance v50, Lcom/android/server/CountryDetectorService;

    move-object/from16 v0, v50

    invoke-direct {v0, v3}, Lcom/android/server/CountryDetectorService;-><init>(Landroid/content/Context;)V
    :try_end_25
    .catch Ljava/lang/Throwable; {:try_start_25 .. :try_end_25} :catch_17

    .line 807
    .end local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v50, "countryDetector":Lcom/android/server/CountryDetectorService;
    :try_start_26
    const-string/jumbo v4, "country_detector"

    move-object/from16 v0, v50

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_26
    .catch Ljava/lang/Throwable; {:try_start_26 .. :try_end_26} :catch_39

    move-object/from16 v49, v50

    .line 813
    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    :cond_e
    :goto_1a
    if-nez v56, :cond_f

    .line 815
    :try_start_27
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Search Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 816
    const-string/jumbo v4, "search"

    .line 817
    new-instance v5, Lcom/android/server/search/SearchManagerService;

    invoke-direct {v5, v3}, Lcom/android/server/search/SearchManagerService;-><init>(Landroid/content/Context;)V

    .line 816
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_27
    .catch Ljava/lang/Throwable; {:try_start_27 .. :try_end_27} :catch_18

    .line 824
    :cond_f
    :goto_1b
    :try_start_28
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "DropBox Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 825
    const-string/jumbo v4, "dropbox"

    .line 826
    new-instance v5, Lcom/android/server/DropBoxManagerService;

    new-instance v8, Ljava/io/File;

    const-string/jumbo v9, "/data/system/dropbox"

    invoke-direct {v8, v9}, Ljava/io/File;-><init>(Ljava/lang/String;)V

    invoke-direct {v5, v3, v8}, Lcom/android/server/DropBoxManagerService;-><init>(Landroid/content/Context;Ljava/io/File;)V

    .line 825
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_28
    .catch Ljava/lang/Throwable; {:try_start_28 .. :try_end_28} :catch_19

    .line 831
    :goto_1c
    if-nez v56, :cond_10

    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 832
    const v5, 0x112005c

    .line 831
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_10

    .line 834
    :try_start_29
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Wallpaper Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 835
    new-instance v110, Lcom/android/server/wallpaper/WallpaperManagerService;

    move-object/from16 v0, v110

    invoke-direct {v0, v3}, Lcom/android/server/wallpaper/WallpaperManagerService;-><init>(Landroid/content/Context;)V
    :try_end_29
    .catch Ljava/lang/Throwable; {:try_start_29 .. :try_end_29} :catch_1a

    .line 836
    .end local v109    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v110, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :try_start_2a
    const-string/jumbo v4, "wallpaper"

    move-object/from16 v0, v110

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2a
    .catch Ljava/lang/Throwable; {:try_start_2a .. :try_end_2a} :catch_38

    move-object/from16 v109, v110

    .line 843
    .end local v110    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_10
    :goto_1d
    :try_start_2b
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Audio Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 844
    new-instance v36, Lcom/android/server/audio/AudioService;

    move-object/from16 v0, v36

    invoke-direct {v0, v3}, Lcom/android/server/audio/AudioService;-><init>(Landroid/content/Context;)V
    :try_end_2b
    .catch Ljava/lang/Throwable; {:try_start_2b .. :try_end_2b} :catch_1b

    .line 845
    .end local v35    # "audioService":Lcom/android/server/audio/AudioService;
    .local v36, "audioService":Lcom/android/server/audio/AudioService;
    :try_start_2c
    const-string/jumbo v4, "audio"

    move-object/from16 v0, v36

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2c
    .catch Ljava/lang/Throwable; {:try_start_2c .. :try_end_2c} :catch_37

    move-object/from16 v35, v36

    .line 850
    .end local v36    # "audioService":Lcom/android/server/audio/AudioService;
    :goto_1e
    if-nez v56, :cond_11

    .line 851
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/DockObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 853
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 854
    const-string/jumbo v5, "android.hardware.type.watch"

    .line 853
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_11

    .line 855
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/ThermalObserver;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 860
    :cond_11
    :try_start_2d
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Wired Accessory Manager"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 863
    new-instance v4, Lcom/android/server/WiredAccessoryManager;

    move-object/from16 v0, v73

    invoke-direct {v4, v3, v0}, Lcom/android/server/WiredAccessoryManager;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V

    .line 862
    move-object/from16 v0, v73

    invoke-virtual {v0, v4}, Lcom/android/server/input/InputManagerService;->setWiredAccessoryCallbacks(Lcom/android/server/input/InputManagerService$WiredAccessoryCallbacks;)V
    :try_end_2d
    .catch Ljava/lang/Throwable; {:try_start_2d .. :try_end_2d} :catch_1c

    .line 868
    :goto_1f
    if-nez v56, :cond_15

    .line 869
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.midi"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_12

    .line 871
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.midi.MidiService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 874
    :cond_12
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.usb.host"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_13

    .line 875
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    .line 876
    const-string/jumbo v5, "android.hardware.usb.accessory"

    .line 875
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    .line 874
    if-eqz v4, :cond_14

    .line 878
    :cond_13
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.usb.UsbService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 882
    :cond_14
    :try_start_2e
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Serial Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 884
    new-instance v95, Lcom/android/server/SerialService;

    move-object/from16 v0, v95

    invoke-direct {v0, v3}, Lcom/android/server/SerialService;-><init>(Landroid/content/Context;)V
    :try_end_2e
    .catch Ljava/lang/Throwable; {:try_start_2e .. :try_end_2e} :catch_1d

    .line 885
    .end local v94    # "serial":Lcom/android/server/SerialService;
    .local v95, "serial":Lcom/android/server/SerialService;
    :try_start_2f
    const-string/jumbo v4, "serial"

    move-object/from16 v0, v95

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_2f
    .catch Ljava/lang/Throwable; {:try_start_2f .. :try_end_2f} :catch_36

    move-object/from16 v94, v95

    .line 891
    .end local v95    # "serial":Lcom/android/server/SerialService;
    :cond_15
    :goto_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/twilight/TwilightService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 893
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/job/JobSchedulerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 895
    if-nez v56, :cond_19

    .line 896
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.backup"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_16

    .line 897
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.backup.BackupManagerService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 900
    :cond_16
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.app_widgets"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_17

    .line 901
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.appwidget.AppWidgetService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 904
    :cond_17
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.voice_recognizers"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_18

    .line 905
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.voiceinteraction.VoiceInteractionManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 908
    :cond_18
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    invoke-static {v4}, Lcom/android/server/GestureLauncherService;->isGestureLauncherEnabled(Landroid/content/res/Resources;)Z

    move-result v4

    if-eqz v4, :cond_19

    .line 909
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Gesture Launcher Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 910
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/GestureLauncherService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 915
    :cond_19
    :try_start_30
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "DiskStats Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 916
    const-string/jumbo v4, "diskstats"

    new-instance v5, Lcom/android/server/DiskStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/DiskStatsService;-><init>(Landroid/content/Context;)V

    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_30
    .catch Ljava/lang/Throwable; {:try_start_30 .. :try_end_30} :catch_1e

    .line 926
    :goto_21
    :try_start_31
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "SamplingProfiler Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 927
    const-string/jumbo v4, "samplingprofiler"

    .line 928
    new-instance v5, Lcom/android/server/SamplingProfilerService;

    invoke-direct {v5, v3}, Lcom/android/server/SamplingProfilerService;-><init>(Landroid/content/Context;)V

    .line 927
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_31
    .catch Ljava/lang/Throwable; {:try_start_31 .. :try_end_31} :catch_1f

    .line 933
    :goto_22
    if-nez v54, :cond_1a

    if-eqz v55, :cond_32

    .line 943
    .end local v90    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :cond_1a
    :goto_23
    :try_start_32
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "CommonTimeManagementService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 944
    new-instance v41, Lcom/android/server/CommonTimeManagementService;

    move-object/from16 v0, v41

    invoke-direct {v0, v3}, Lcom/android/server/CommonTimeManagementService;-><init>(Landroid/content/Context;)V
    :try_end_32
    .catch Ljava/lang/Throwable; {:try_start_32 .. :try_end_32} :catch_21

    .line 945
    .end local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v41, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :try_start_33
    const-string/jumbo v4, "commontime_management"

    move-object/from16 v0, v41

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_33
    .catch Ljava/lang/Throwable; {:try_start_33 .. :try_end_33} :catch_35

    move-object/from16 v40, v41

    .line 950
    .end local v41    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :goto_24
    if-nez v54, :cond_1b

    .line 952
    :try_start_34
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "CertBlacklister"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 953
    new-instance v38, Lcom/android/server/CertBlacklister;

    move-object/from16 v0, v38

    invoke-direct {v0, v3}, Lcom/android/server/CertBlacklister;-><init>(Landroid/content/Context;)V
    :try_end_34
    .catch Ljava/lang/Throwable; {:try_start_34 .. :try_end_34} :catch_22

    .line 959
    :cond_1b
    :goto_25
    if-nez v56, :cond_1c

    .line 961
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/dreams/DreamManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 964
    :cond_1c
    if-nez v56, :cond_1d

    if-eqz v51, :cond_33

    .line 974
    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    :cond_1d
    :goto_26
    if-nez v56, :cond_1e

    .line 975
    const-string/jumbo v4, "graphicsstats"

    .line 976
    new-instance v5, Lcom/android/server/GraphicsStatsService;

    invoke-direct {v5, v3}, Lcom/android/server/GraphicsStatsService;-><init>(Landroid/content/Context;)V

    .line 975
    invoke-static {v4, v5}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 979
    :cond_1e
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    .line 980
    const v5, 0x11200a7

    .line 979
    invoke-virtual {v4, v5}, Landroid/content/res/Resources;->getBoolean(I)Z

    move-result v4

    if-eqz v4, :cond_1f

    .line 982
    :try_start_35
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Gesture Sensor Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    new-instance v69, Lcom/android/server/gesture/GestureService;

    move-object/from16 v0, v69

    move-object/from16 v1, v73

    invoke-direct {v0, v3, v1}, Lcom/android/server/gesture/GestureService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_35
    .catch Ljava/lang/Throwable; {:try_start_35 .. :try_end_35} :catch_24

    .line 984
    .end local v68    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v69, "gestureService":Lcom/android/server/gesture/GestureService;
    :try_start_36
    const-string/jumbo v4, "gesture"

    move-object/from16 v0, v69

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_36
    .catch Ljava/lang/Throwable; {:try_start_36 .. :try_end_36} :catch_33

    move-object/from16 v68, v69

    .line 990
    .end local v69    # "gestureService":Lcom/android/server/gesture/GestureService;
    :cond_1f
    :goto_27
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.print"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_20

    .line 991
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.print.PrintManagerService"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 994
    :cond_20
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/restrictions/RestrictionsManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 996
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/MediaSessionService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 998
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.hardware.hdmi.cec"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_21

    .line 999
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/hdmi/HdmiControlService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1002
    :cond_21
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManager:Landroid/content/pm/PackageManager;

    const-string/jumbo v5, "android.software.live_tv"

    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_22

    .line 1003
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/tv/TvInputManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1006
    :cond_22
    if-nez v56, :cond_23

    .line 1008
    :try_start_37
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Media Router Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1009
    new-instance v81, Lcom/android/server/media/MediaRouterService;

    move-object/from16 v0, v81

    invoke-direct {v0, v3}, Lcom/android/server/media/MediaRouterService;-><init>(Landroid/content/Context;)V
    :try_end_37
    .catch Ljava/lang/Throwable; {:try_start_37 .. :try_end_37} :catch_25

    .line 1010
    .end local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v81, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :try_start_38
    const-string/jumbo v4, "media_router"

    move-object/from16 v0, v81

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_38
    .catch Ljava/lang/Throwable; {:try_start_38 .. :try_end_38} :catch_32

    move-object/from16 v80, v81

    .line 1015
    .end local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :goto_28
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/trust/TrustManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1017
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/fingerprint/FingerprintService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1020
    :try_start_39
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "BackgroundDexOptService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1021
    const-wide/16 v4, 0x0

    invoke-static {v3, v4, v5}, Lcom/android/server/pm/BackgroundDexOptService;->schedule(Landroid/content/Context;J)V
    :try_end_39
    .catch Ljava/lang/Throwable; {:try_start_39 .. :try_end_39} :catch_26

    .line 1028
    :cond_23
    :goto_29
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/pm/LauncherAppsService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1031
    :try_start_3a
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "EdgeGesture service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1032
    new-instance v64, Lcom/android/server/gesture/EdgeGestureService;

    move-object/from16 v0, v64

    move-object/from16 v1, v73

    invoke-direct {v0, v3, v1}, Lcom/android/server/gesture/EdgeGestureService;-><init>(Landroid/content/Context;Lcom/android/server/input/InputManagerService;)V
    :try_end_3a
    .catch Ljava/lang/Throwable; {:try_start_3a .. :try_end_3a} :catch_27

    .line 1033
    .end local v63    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .local v64, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    :try_start_3b
    const-string/jumbo v4, "edgegestureservice"

    move-object/from16 v0, v64

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_3b
    .catch Ljava/lang/Throwable; {:try_start_3b .. :try_end_3b} :catch_31

    move-object/from16 v63, v64

    .line 1039
    .end local v64    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .end local v92    # "notification":Landroid/app/INotificationManager;
    :goto_2a
    if-nez v56, :cond_24

    .line 1040
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/media/projection/MediaProjectionManagerService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    .line 1044
    :cond_24
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    const-string/jumbo v5, "adb_port"

    .line 1045
    const-string/jumbo v8, "service.adb.tcp.port"

    const-string/jumbo v9, "-1"

    invoke-static {v8, v9}, Landroid/os/SystemProperties;->get(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v8

    invoke-static {v8}, Ljava/lang/Integer;->parseInt(Ljava/lang/String;)I

    move-result v8

    .line 1044
    invoke-static {v4, v5, v8}, Lbluros/providers/CMSettings$Secure;->putInt(Landroid/content/ContentResolver;Ljava/lang/String;I)Z

    .line 1048
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mContentResolver:Landroid/content/ContentResolver;

    .line 1049
    const-string/jumbo v5, "adb_port"

    invoke-static {v5}, Lbluros/providers/CMSettings$Secure;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v5

    .line 1050
    new-instance v8, Lcom/android/server/SystemServer$AdbPortObserver;

    move-object/from16 v0, p0

    invoke-direct {v8, v0}, Lcom/android/server/SystemServer$AdbPortObserver;-><init>(Lcom/android/server/SystemServer;)V

    const/4 v9, 0x0

    .line 1048
    invoke-virtual {v4, v5, v9, v8}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;)V

    .line 1054
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->detectSafeMode()Z

    move-result v93

    .line 1055
    .local v93, "safeMode":Z
    if-eqz v93, :cond_34

    .line 1056
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->enterSafeMode()V

    .line 1058
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->disableJitCompilation()V

    .line 1065
    :goto_2b
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/MmsServiceBroker;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;

    move-result-object v84

    .end local v84    # "mmsService":Lcom/android/server/MmsServiceBroker;
    check-cast v84, Lcom/android/server/MmsServiceBroker;

    .line 1069
    .local v84, "mmsService":Lcom/android/server/MmsServiceBroker;
    :try_start_3c
    invoke-static/range {v67 .. v67}, Ljava/lang/Class;->forName(Ljava/lang/String;)Ljava/lang/Class;

    move-result-object v96

    .line 1070
    .local v96, "serverClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Class;

    const-class v5, Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    move-object/from16 v0, v96

    invoke-virtual {v0, v4}, Ljava/lang/Class;->getDeclaredConstructor([Ljava/lang/Class;)Ljava/lang/reflect/Constructor;

    move-result-object v45

    .line 1071
    .local v45, "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    const/4 v4, 0x1

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->setAccessible(Z)V

    .line 1072
    const/4 v4, 0x1

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mSystemContext:Landroid/content/Context;

    const/4 v8, 0x0

    aput-object v5, v4, v8

    move-object/from16 v0, v45

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Constructor;->newInstance([Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v37

    .line 1073
    .local v37, "baseObject":Ljava/lang/Object;
    invoke-virtual/range {v37 .. v37}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    const-string/jumbo v5, "run"

    const/4 v8, 0x0

    new-array v8, v8, [Ljava/lang/Class;

    invoke-virtual {v4, v5, v8}, Ljava/lang/Class;->getDeclaredMethod(Ljava/lang/String;[Ljava/lang/Class;)Ljava/lang/reflect/Method;

    move-result-object v82

    .line 1074
    .local v82, "method":Ljava/lang/reflect/Method;
    const/4 v4, 0x1

    move-object/from16 v0, v82

    invoke-virtual {v0, v4}, Ljava/lang/reflect/Method;->setAccessible(Z)V

    .line 1075
    const/4 v4, 0x0

    new-array v4, v4, [Ljava/lang/Object;

    move-object/from16 v0, v82

    move-object/from16 v1, v37

    invoke-virtual {v0, v1, v4}, Ljava/lang/reflect/Method;->invoke(Ljava/lang/Object;[Ljava/lang/Object;)Ljava/lang/Object;
    :try_end_3c
    .catch Ljava/lang/ClassNotFoundException; {:try_start_3c .. :try_end_3c} :catch_28
    .catch Ljava/lang/IllegalAccessException; {:try_start_3c .. :try_end_3c} :catch_28
    .catch Ljava/lang/reflect/InvocationTargetException; {:try_start_3c .. :try_end_3c} :catch_28
    .catch Ljava/lang/InstantiationException; {:try_start_3c .. :try_end_3c} :catch_28
    .catch Ljava/lang/NoSuchMethodException; {:try_start_3c .. :try_end_3c} :catch_28

    .line 1088
    .end local v37    # "baseObject":Ljava/lang/Object;
    .end local v45    # "constructor":Ljava/lang/reflect/Constructor;, "Ljava/lang/reflect/Constructor<*>;"
    .end local v82    # "method":Ljava/lang/reflect/Method;
    .end local v96    # "serverClazz":Ljava/lang/Class;, "Ljava/lang/Class<*>;"
    :goto_2c
    :try_start_3d
    invoke-virtual/range {v106 .. v106}, Lcom/android/server/VibratorService;->systemReady()V
    :try_end_3d
    .catch Ljava/lang/Throwable; {:try_start_3d .. :try_end_3d} :catch_29

    .line 1093
    :goto_2d
    if-eqz v78, :cond_25

    .line 1095
    :try_start_3e
    invoke-virtual/range {v78 .. v78}, Lcom/android/server/LockSettingsService;->systemReady()V
    :try_end_3e
    .catch Ljava/lang/Throwable; {:try_start_3e .. :try_end_3e} :catch_2a

    .line 1102
    :cond_25
    :goto_2e
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1e0

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1104
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const/16 v5, 0x1f4

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startBootPhase(I)V

    .line 1107
    :try_start_3f
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->systemReady()V
    :try_end_3f
    .catch Ljava/lang/Throwable; {:try_start_3f .. :try_end_3f} :catch_2b

    .line 1112
    :goto_2f
    if-eqz v93, :cond_26

    .line 1113
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v4}, Lcom/android/server/am/ActivityManagerService;->showSafeModeOverlay()V

    .line 1119
    :cond_26
    invoke-virtual/range {v112 .. v112}, Lcom/android/server/wm/WindowManagerService;->computeNewConfiguration()Landroid/content/res/Configuration;

    move-result-object v42

    .line 1120
    .local v42, "config":Landroid/content/res/Configuration;
    new-instance v83, Landroid/util/DisplayMetrics;

    invoke-direct/range {v83 .. v83}, Landroid/util/DisplayMetrics;-><init>()V

    .line 1121
    .local v83, "metrics":Landroid/util/DisplayMetrics;
    const-string/jumbo v4, "window"

    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v108

    check-cast v108, Landroid/view/WindowManager;

    .line 1122
    .local v108, "w":Landroid/view/WindowManager;
    invoke-interface/range {v108 .. v108}, Landroid/view/WindowManager;->getDefaultDisplay()Landroid/view/Display;

    move-result-object v4

    move-object/from16 v0, v83

    invoke-virtual {v4, v0}, Landroid/view/Display;->getMetrics(Landroid/util/DisplayMetrics;)V

    .line 1123
    invoke-virtual {v3}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v4

    move-object/from16 v0, v42

    move-object/from16 v1, v83

    invoke-virtual {v4, v0, v1}, Landroid/content/res/Resources;->updateConfiguration(Landroid/content/res/Configuration;Landroid/util/DisplayMetrics;)V

    .line 1126
    invoke-virtual {v3}, Landroid/content/Context;->getTheme()Landroid/content/res/Resources$Theme;

    move-result-object v100

    .line 1127
    .local v100, "systemTheme":Landroid/content/res/Resources$Theme;
    invoke-virtual/range {v100 .. v100}, Landroid/content/res/Resources$Theme;->getChangingConfigurations()I

    move-result v4

    if-eqz v4, :cond_27

    .line 1128
    invoke-virtual/range {v100 .. v100}, Landroid/content/res/Resources$Theme;->rebase()V

    .line 1133
    :cond_27
    :try_start_40
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPowerManagerService:Lcom/android/server/power/PowerManagerService;

    move-object/from16 v0, p0

    iget-object v5, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    invoke-virtual {v5}, Lcom/android/server/am/ActivityManagerService;->getAppOpsService()Lcom/android/internal/app/IAppOpsService;

    move-result-object v5

    invoke-virtual {v4, v5}, Lcom/android/server/power/PowerManagerService;->systemReady(Lcom/android/internal/app/IAppOpsService;)V
    :try_end_40
    .catch Ljava/lang/Throwable; {:try_start_40 .. :try_end_40} :catch_2c

    .line 1139
    :goto_30
    :try_start_41
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mPackageManagerService:Lcom/android/server/pm/PackageManagerService;

    invoke-virtual {v4}, Lcom/android/server/pm/PackageManagerService;->systemReady()V
    :try_end_41
    .catch Ljava/lang/Throwable; {:try_start_41 .. :try_end_41} :catch_2d

    .line 1146
    :goto_31
    :try_start_42
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mDisplayManagerService:Lcom/android/server/display/DisplayManagerService;

    move-object/from16 v0, p0

    iget-boolean v5, v0, Lcom/android/server/SystemServer;->mOnlyCore:Z

    move/from16 v0, v93

    invoke-virtual {v4, v0, v5}, Lcom/android/server/display/DisplayManagerService;->systemReady(ZZ)V
    :try_end_42
    .catch Ljava/lang/Throwable; {:try_start_42 .. :try_end_42} :catch_2e

    .line 1151
    :goto_32
    if-eqz v63, :cond_28

    .line 1153
    :try_start_43
    invoke-virtual/range {v63 .. v63}, Lcom/android/server/gesture/EdgeGestureService;->systemReady()V
    :try_end_43
    .catch Ljava/lang/Throwable; {:try_start_43 .. :try_end_43} :catch_2f

    .line 1159
    :cond_28
    :goto_33
    if-eqz v68, :cond_29

    .line 1161
    :try_start_44
    invoke-virtual/range {v68 .. v68}, Lcom/android/server/gesture/GestureService;->systemReady()V
    :try_end_44
    .catch Ljava/lang/Throwable; {:try_start_44 .. :try_end_44} :catch_30

    .line 1168
    :cond_29
    :goto_34
    move-object v12, v7

    .line 1169
    .local v12, "networkManagementF":Lcom/android/server/NetworkManagementService;
    move-object v13, v6

    .line 1170
    .local v13, "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    move-object v14, v2

    .line 1171
    .local v14, "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    move-object/from16 v15, v43

    .line 1172
    .local v15, "connectivityF":Lcom/android/server/ConnectivityService;
    move-object/from16 v11, v87

    .line 1173
    .local v11, "networkScoreF":Lcom/android/server/NetworkScoreService;
    move-object/from16 v17, v109

    .line 1174
    .local v17, "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    move-object/from16 v18, v71

    .line 1175
    .local v18, "immF":Lcom/android/server/InputMethodManagerService;
    move-object/from16 v20, v76

    .line 1176
    .local v20, "locationF":Lcom/android/server/LocationManagerService;
    move-object/from16 v21, v49

    .line 1177
    .local v21, "countryDetectorF":Lcom/android/server/CountryDetectorService;
    move-object/from16 v22, v90

    .line 1178
    .local v22, "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v23, v40

    .line 1179
    .local v23, "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    move-object/from16 v24, v103

    .line 1180
    .local v24, "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    move-object/from16 v19, v98

    .line 1181
    .local v19, "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    move-object/from16 v25, v33

    .line 1182
    .local v25, "atlasF":Lcom/android/server/AssetAtlasService;
    move-object/from16 v26, v73

    .line 1183
    .local v26, "inputManagerF":Lcom/android/server/input/InputManagerService;
    move-object/from16 v27, v101

    .line 1184
    .local v27, "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v28, v80

    .line 1185
    .local v28, "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    move-object/from16 v16, v35

    .line 1186
    .local v16, "audioServiceF":Lcom/android/server/audio/AudioService;
    move-object/from16 v29, v84

    .line 1193
    .local v29, "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mActivityManagerService:Lcom/android/server/am/ActivityManagerService;

    new-instance v8, Lcom/android/server/SystemServer$2;

    move-object/from16 v9, p0

    move-object v10, v3

    invoke-direct/range {v8 .. v29}, Lcom/android/server/SystemServer$2;-><init>(Lcom/android/server/SystemServer;Landroid/content/Context;Lcom/android/server/NetworkScoreService;Lcom/android/server/NetworkManagementService;Lcom/android/server/net/NetworkStatsService;Lcom/android/server/net/NetworkPolicyManagerService;Lcom/android/server/ConnectivityService;Lcom/android/server/audio/AudioService;Lcom/android/server/wallpaper/WallpaperManagerService;Lcom/android/server/InputMethodManagerService;Lcom/android/server/statusbar/StatusBarManagerService;Lcom/android/server/LocationManagerService;Lcom/android/server/CountryDetectorService;Lcom/android/server/NetworkTimeUpdateService;Lcom/android/server/CommonTimeManagementService;Lcom/android/server/TextServicesManagerService;Lcom/android/server/AssetAtlasService;Lcom/android/server/input/InputManagerService;Lcom/android/server/TelephonyRegistry;Lcom/android/server/media/MediaRouterService;Lcom/android/server/MmsServiceBroker;)V

    invoke-virtual {v4, v8}, Lcom/android/server/am/ActivityManagerService;->systemReady(Ljava/lang/Runnable;)V

    .line 428
    return-void

    .line 493
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v11    # "networkScoreF":Lcom/android/server/NetworkScoreService;
    .end local v12    # "networkManagementF":Lcom/android/server/NetworkManagementService;
    .end local v13    # "networkStatsF":Lcom/android/server/net/NetworkStatsService;
    .end local v14    # "networkPolicyF":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v15    # "connectivityF":Lcom/android/server/ConnectivityService;
    .end local v16    # "audioServiceF":Lcom/android/server/audio/AudioService;
    .end local v17    # "wallpaperF":Lcom/android/server/wallpaper/WallpaperManagerService;
    .end local v18    # "immF":Lcom/android/server/InputMethodManagerService;
    .end local v19    # "statusBarF":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v20    # "locationF":Lcom/android/server/LocationManagerService;
    .end local v21    # "countryDetectorF":Lcom/android/server/CountryDetectorService;
    .end local v22    # "networkTimeUpdaterF":Lcom/android/server/NetworkTimeUpdateService;
    .end local v23    # "commonTimeMgmtServiceF":Lcom/android/server/CommonTimeManagementService;
    .end local v24    # "textServiceManagerServiceF":Lcom/android/server/TextServicesManagerService;
    .end local v25    # "atlasF":Lcom/android/server/AssetAtlasService;
    .end local v26    # "inputManagerF":Lcom/android/server/input/InputManagerService;
    .end local v27    # "telephonyRegistryF":Lcom/android/server/TelephonyRegistry;
    .end local v28    # "mediaRouterF":Lcom/android/server/media/MediaRouterService;
    .end local v29    # "mmsServiceF":Lcom/android/server/MmsServiceBroker;
    .end local v42    # "config":Landroid/content/res/Configuration;
    .end local v83    # "metrics":Landroid/util/DisplayMetrics;
    .end local v93    # "safeMode":Z
    .end local v100    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v108    # "w":Landroid/view/WindowManager;
    .restart local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v7, "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v32, "alarm":Landroid/app/IAlarmManager;
    .restart local v35    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v48, "contentService":Lcom/android/server/content/ContentService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v73, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v84, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v85    # "mountService":Landroid/os/storage/IMountService;
    .restart local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v87    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v90    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v94    # "serial":Lcom/android/server/SerialService;
    .local v97, "serviceDiscovery":Lcom/android/server/NsdService;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "vibrator":Lcom/android/server/VibratorService;
    .local v112, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_0
    move-exception v62

    .line 494
    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v62, "e":Ljava/lang/Throwable;
    :goto_35
    :try_start_45
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting Account Manager"

    move-object/from16 v0, v62

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I
    :try_end_45
    .catch Ljava/lang/RuntimeException; {:try_start_45 .. :try_end_45} :catch_1

    goto/16 :goto_0

    .line 554
    .end local v48    # "contentService":Lcom/android/server/content/ContentService;
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1
    move-exception v61

    .local v61, "e":Ljava/lang/RuntimeException;
    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v101, v102

    .line 555
    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .end local v112    # "wm":Lcom/android/server/wm/WindowManagerService;
    :goto_36
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "******************************************"

    invoke-static {v4, v5}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 556
    const-string/jumbo v4, "System"

    const-string/jumbo v5, "************ Failure starting core service"

    move-object/from16 v0, v61

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_4

    .line 499
    .end local v61    # "e":Ljava/lang/RuntimeException;
    .restart local v32    # "alarm":Landroid/app/IAlarmManager;
    .restart local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v48    # "contentService":Lcom/android/server/content/ContentService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v106    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v112    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_2a
    const/4 v4, 0x0

    goto/16 :goto_1

    .line 525
    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .local v32, "alarm":Landroid/app/IAlarmManager;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v48, "contentService":Lcom/android/server/content/ContentService;
    .restart local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v107    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v111    # "watchdog":Lcom/android/server/Watchdog;
    :cond_2b
    const/4 v4, 0x0

    goto/16 :goto_2

    .line 543
    .local v112, "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_2c
    :try_start_46
    move-object/from16 v0, p0

    iget v4, v0, Lcom/android/server/SystemServer;->mFactoryTestMode:I

    const/4 v5, 0x1

    if-ne v4, v5, :cond_2d

    .line 544
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (factory test)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 554
    .end local v112    # "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_2
    move-exception v61

    .restart local v61    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v46, v47

    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v101, v102

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v73, v74

    .end local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .local v73, "inputManager":Lcom/android/server/input/InputManagerService;
    move-object/from16 v106, v107

    .end local v107    # "vibrator":Lcom/android/server/VibratorService;
    .local v106, "vibrator":Lcom/android/server/VibratorService;
    goto :goto_36

    .line 545
    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v61    # "e":Ljava/lang/RuntimeException;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v107    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v112    # "wm":Lcom/android/server/wm/WindowManagerService;
    :cond_2d
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v4

    .line 546
    const-string/jumbo v5, "android.hardware.bluetooth"

    .line 545
    invoke-virtual {v4, v5}, Landroid/content/pm/PackageManager;->hasSystemFeature(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_2e

    .line 547
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "No Bluetooth Service (Bluetooth Hardware Not Present)"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 548
    :cond_2e
    if-eqz v52, :cond_2f

    .line 549
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Bluetooth Service disabled by config"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    goto/16 :goto_3

    .line 551
    :cond_2f
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Bluetooth Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 552
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-class v5, Lcom/android/server/BluetoothService;

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/Class;)Lcom/android/server/SystemService;
    :try_end_46
    .catch Ljava/lang/RuntimeException; {:try_start_46 .. :try_end_46} :catch_2

    goto/16 :goto_3

    .line 578
    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v48    # "contentService":Lcom/android/server/content/ContentService;
    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v74    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v107    # "vibrator":Lcom/android/server/VibratorService;
    .end local v111    # "watchdog":Lcom/android/server/Watchdog;
    .end local v112    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v63    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v68    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v76    # "location":Lcom/android/server/LocationManagerService;
    .restart local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v92, "notification":Landroid/app/INotificationManager;
    .restart local v98    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v103    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v109    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_3
    move-exception v62

    .line 579
    .end local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_37
    const-string/jumbo v4, "starting Input Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_5

    .line 586
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_4
    move-exception v62

    .line 587
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Accessibility Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_6

    .line 593
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_5
    move-exception v62

    .line 594
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making display ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_7

    .line 605
    .end local v62    # "e":Ljava/lang/Throwable;
    :cond_30
    :try_start_47
    move-object/from16 v0, p0

    iget-object v4, v0, Lcom/android/server/SystemServer;->mSystemServiceManager:Lcom/android/server/SystemServiceManager;

    const-string/jumbo v5, "com.android.server.MountService$Lifecycle"

    invoke-virtual {v4, v5}, Lcom/android/server/SystemServiceManager;->startService(Ljava/lang/String;)Lcom/android/server/SystemService;

    .line 607
    const-string/jumbo v4, "mount"

    invoke-static {v4}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v4

    .line 606
    invoke-static {v4}, Landroid/os/storage/IMountService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/os/storage/IMountService;
    :try_end_47
    .catch Ljava/lang/Throwable; {:try_start_47 .. :try_end_47} :catch_6

    move-result-object v85

    .local v85, "mountService":Landroid/os/storage/IMountService;
    goto/16 :goto_8

    .line 608
    .local v85, "mountService":Landroid/os/storage/IMountService;
    :catch_6
    move-exception v62

    .line 609
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Mount Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_8

    .line 620
    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v85    # "mountService":Landroid/os/storage/IMountService;
    :catch_7
    move-exception v62

    .line 621
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "performing boot dexopt"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_9

    .line 636
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_8
    move-exception v62

    .line 637
    .end local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_38
    const-string/jumbo v4, "starting LockSettingsService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_b

    .line 656
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_9
    move-exception v62

    .line 657
    .end local v98    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_39
    const-string/jumbo v4, "starting StatusBarManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_c

    .line 666
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_a
    move-exception v62

    .line 667
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Clipboard Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_d

    .line 676
    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_b
    move-exception v62

    .line 677
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkManagement Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_e

    .line 686
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_c
    move-exception v62

    .line 687
    .end local v103    # "tsms":Lcom/android/server/TextServicesManagerService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_3a
    const-string/jumbo v4, "starting Text Service Manager Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_f

    .line 696
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_d
    move-exception v62

    .line 697
    .end local v87    # "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_3b
    const-string/jumbo v4, "starting Network Score Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_10

    .line 704
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_e
    move-exception v62

    .line 705
    .end local v6    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_3c
    const-string/jumbo v4, "starting NetworkStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_11

    .line 715
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_f
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v2, v86

    .line 716
    .end local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    :goto_3d
    const-string/jumbo v4, "starting NetworkPolicy Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_12

    .line 738
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_10
    move-exception v62

    .line 739
    .end local v43    # "connectivity":Lcom/android/server/ConnectivityService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_3e
    const-string/jumbo v4, "starting Connectivity Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_13

    .line 747
    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v97    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_11
    move-exception v62

    .line 748
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Service Discovery Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_14

    .line 757
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_12
    move-exception v62

    .line 758
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting UpdateLockService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_15

    .line 769
    .end local v62    # "e":Ljava/lang/Throwable;
    :cond_31
    :try_start_48
    invoke-interface/range {v85 .. v85}, Landroid/os/storage/IMountService;->waitForAsecScan()V
    :try_end_48
    .catch Landroid/os/RemoteException; {:try_start_48 .. :try_end_48} :catch_13

    goto/16 :goto_16

    .line 770
    :catch_13
    move-exception v70

    .local v70, "ignored":Landroid/os/RemoteException;
    goto/16 :goto_16

    .line 777
    .end local v70    # "ignored":Landroid/os/RemoteException;
    :catch_14
    move-exception v62

    .line 778
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Account Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_17

    .line 784
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_15
    move-exception v62

    .line 785
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Content Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_18

    .line 800
    .end local v62    # "e":Ljava/lang/Throwable;
    .local v92, "notification":Landroid/app/INotificationManager;
    :catch_16
    move-exception v62

    .line 801
    .end local v76    # "location":Lcom/android/server/LocationManagerService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_3f
    const-string/jumbo v4, "starting Location Manager"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_19

    .line 808
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_17
    move-exception v62

    .line 809
    .end local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_40
    const-string/jumbo v4, "starting Country Detector"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1a

    .line 818
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_18
    move-exception v62

    .line 819
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting Search Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1b

    .line 827
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_19
    move-exception v62

    .line 828
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DropBoxManagerService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1c

    .line 837
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1a
    move-exception v62

    .line 838
    .end local v109    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_41
    const-string/jumbo v4, "starting Wallpaper Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1d

    .line 846
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1b
    move-exception v62

    .line 847
    .end local v35    # "audioService":Lcom/android/server/audio/AudioService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_42
    const-string/jumbo v4, "starting Audio Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1e

    .line 864
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1c
    move-exception v62

    .line 865
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting WiredAccessoryManager"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_1f

    .line 886
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1d
    move-exception v62

    .line 887
    .end local v94    # "serial":Lcom/android/server/SerialService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_43
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting SerialService"

    move-object/from16 v0, v62

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_20

    .line 917
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1e
    move-exception v62

    .line 918
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting DiskStats Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_21

    .line 929
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_1f
    move-exception v62

    .line 930
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting SamplingProfiler Service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_22

    .line 935
    .end local v62    # "e":Ljava/lang/Throwable;
    :cond_32
    :try_start_49
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "NetworkTimeUpdateService"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 936
    new-instance v91, Lcom/android/server/NetworkTimeUpdateService;

    move-object/from16 v0, v91

    invoke-direct {v0, v3}, Lcom/android/server/NetworkTimeUpdateService;-><init>(Landroid/content/Context;)V
    :try_end_49
    .catch Ljava/lang/Throwable; {:try_start_49 .. :try_end_49} :catch_20

    .end local v90    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v91, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    move-object/from16 v90, v91

    .end local v91    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .local v90, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    goto/16 :goto_23

    .line 937
    .local v90, "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_20
    move-exception v62

    .line 938
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting NetworkTimeUpdate service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_23

    .line 946
    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v90    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    :catch_21
    move-exception v62

    .line 947
    .end local v40    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_44
    const-string/jumbo v4, "starting CommonTimeManagementService service"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_24

    .line 954
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_22
    move-exception v62

    .line 955
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting CertBlacklister"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_25

    .line 966
    .end local v62    # "e":Ljava/lang/Throwable;
    :cond_33
    :try_start_4a
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Assets Atlas Service"

    invoke-static {v4, v5}, Landroid/util/Slog;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 967
    new-instance v34, Lcom/android/server/AssetAtlasService;

    move-object/from16 v0, v34

    invoke-direct {v0, v3}, Lcom/android/server/AssetAtlasService;-><init>(Landroid/content/Context;)V
    :try_end_4a
    .catch Ljava/lang/Throwable; {:try_start_4a .. :try_end_4a} :catch_23

    .line 968
    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v34, "atlas":Lcom/android/server/AssetAtlasService;
    :try_start_4b
    const-string/jumbo v4, "assetatlas"

    move-object/from16 v0, v34

    invoke-static {v4, v0}, Landroid/os/ServiceManager;->addService(Ljava/lang/String;Landroid/os/IBinder;)V
    :try_end_4b
    .catch Ljava/lang/Throwable; {:try_start_4b .. :try_end_4b} :catch_34

    move-object/from16 v33, v34

    .end local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_26

    .line 969
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    :catch_23
    move-exception v62

    .line 970
    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_45
    const-string/jumbo v4, "starting AssetAtlasService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_26

    .line 985
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_24
    move-exception v62

    .line 986
    .end local v68    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_46
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting Gesture Sensor Service"

    move-object/from16 v0, v62

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_27

    .line 1011
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_25
    move-exception v62

    .line 1012
    .end local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_47
    const-string/jumbo v4, "starting MediaRouterService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_28

    .line 1022
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_26
    move-exception v62

    .line 1023
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "starting BackgroundDexOptService"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_29

    .line 1034
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_27
    move-exception v62

    .line 1035
    .end local v63    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v62    # "e":Ljava/lang/Throwable;
    :goto_48
    const-string/jumbo v4, "SystemServer"

    const-string/jumbo v5, "Failure starting EdgeGesture service"

    move-object/from16 v0, v62

    invoke-static {v4, v5, v0}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2a

    .line 1061
    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v92    # "notification":Landroid/app/INotificationManager;
    .restart local v93    # "safeMode":Z
    :cond_34
    invoke-static {}, Ldalvik/system/VMRuntime;->getRuntime()Ldalvik/system/VMRuntime;

    move-result-object v4

    invoke-virtual {v4}, Ldalvik/system/VMRuntime;->startJitCompilation()V

    goto/16 :goto_2b

    .line 1080
    .local v84, "mmsService":Lcom/android/server/MmsServiceBroker;
    :catch_28
    move-exception v60

    .line 1081
    .local v60, "e":Ljava/lang/ReflectiveOperationException;
    const-string/jumbo v4, "SystemServer"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v8, "Unable to start  "

    invoke-virtual {v5, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    move-object/from16 v0, v67

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/String;)I

    .line 1082
    const-string/jumbo v4, "SystemServer"

    move-object/from16 v0, v60

    invoke-static {v4, v0}, Landroid/util/Slog;->wtf(Ljava/lang/String;Ljava/lang/Throwable;)I

    goto/16 :goto_2c

    .line 1089
    .end local v60    # "e":Ljava/lang/ReflectiveOperationException;
    :catch_29
    move-exception v62

    .line 1090
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Vibrator Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2d

    .line 1096
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_2a
    move-exception v62

    .line 1097
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Lock Settings Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2e

    .line 1108
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_2b
    move-exception v62

    .line 1109
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Window Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_2f

    .line 1134
    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v42    # "config":Landroid/content/res/Configuration;
    .restart local v83    # "metrics":Landroid/util/DisplayMetrics;
    .restart local v100    # "systemTheme":Landroid/content/res/Resources$Theme;
    .restart local v108    # "w":Landroid/view/WindowManager;
    :catch_2c
    move-exception v62

    .line 1135
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Power Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_30

    .line 1140
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_2d
    move-exception v62

    .line 1141
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Package Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_31

    .line 1147
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_2e
    move-exception v62

    .line 1148
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Display Manager Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_32

    .line 1154
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_2f
    move-exception v62

    .line 1155
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making EdgeGesture service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_33

    .line 1162
    .end local v62    # "e":Ljava/lang/Throwable;
    :catch_30
    move-exception v62

    .line 1163
    .restart local v62    # "e":Ljava/lang/Throwable;
    const-string/jumbo v4, "making Gesture Sensor Service ready"

    move-object/from16 v0, p0

    move-object/from16 v1, v62

    invoke-direct {v0, v4, v1}, Lcom/android/server/SystemServer;->reportWtf(Ljava/lang/String;Ljava/lang/Throwable;)V

    goto/16 :goto_34

    .line 1034
    .end local v42    # "config":Landroid/content/res/Configuration;
    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v83    # "metrics":Landroid/util/DisplayMetrics;
    .end local v93    # "safeMode":Z
    .end local v100    # "systemTheme":Landroid/content/res/Resources$Theme;
    .end local v108    # "w":Landroid/view/WindowManager;
    .restart local v64    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .local v84, "mmsService":Lcom/android/server/MmsServiceBroker;
    .restart local v92    # "notification":Landroid/app/INotificationManager;
    :catch_31
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v63, v64

    .end local v64    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .local v63, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    goto/16 :goto_48

    .line 1011
    .end local v62    # "e":Ljava/lang/Throwable;
    .local v63, "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_32
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v80, v81

    .end local v81    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .local v80, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    goto/16 :goto_47

    .line 985
    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v69    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v80, "mediaRouter":Lcom/android/server/media/MediaRouterService;
    :catch_33
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v68, v69

    .end local v69    # "gestureService":Lcom/android/server/gesture/GestureService;
    .local v68, "gestureService":Lcom/android/server/gesture/GestureService;
    goto/16 :goto_46

    .line 969
    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v68, "gestureService":Lcom/android/server/gesture/GestureService;
    :catch_34
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v33, v34

    .end local v34    # "atlas":Lcom/android/server/AssetAtlasService;
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    goto/16 :goto_45

    .line 946
    .end local v62    # "e":Ljava/lang/Throwable;
    .local v33, "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v41    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    :catch_35
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v40, v41

    .end local v41    # "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .local v40, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    goto/16 :goto_44

    .line 886
    .end local v62    # "e":Ljava/lang/Throwable;
    .local v40, "commonTimeMgmtService":Lcom/android/server/CommonTimeManagementService;
    .restart local v90    # "networkTimeUpdater":Lcom/android/server/NetworkTimeUpdateService;
    .restart local v95    # "serial":Lcom/android/server/SerialService;
    :catch_36
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v94, v95

    .end local v95    # "serial":Lcom/android/server/SerialService;
    .local v94, "serial":Lcom/android/server/SerialService;
    goto/16 :goto_43

    .line 846
    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v36    # "audioService":Lcom/android/server/audio/AudioService;
    .local v94, "serial":Lcom/android/server/SerialService;
    :catch_37
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v35, v36

    .end local v36    # "audioService":Lcom/android/server/audio/AudioService;
    .local v35, "audioService":Lcom/android/server/audio/AudioService;
    goto/16 :goto_42

    .line 837
    .end local v62    # "e":Ljava/lang/Throwable;
    .local v35, "audioService":Lcom/android/server/audio/AudioService;
    .restart local v110    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_38
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v109, v110

    .end local v110    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .local v109, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    goto/16 :goto_41

    .line 808
    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v109, "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :catch_39
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v49, v50

    .end local v50    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .local v49, "countryDetector":Lcom/android/server/CountryDetectorService;
    goto/16 :goto_40

    .line 800
    .end local v62    # "e":Ljava/lang/Throwable;
    .local v49, "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v77    # "location":Lcom/android/server/LocationManagerService;
    :catch_3a
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v76, v77

    .end local v77    # "location":Lcom/android/server/LocationManagerService;
    .local v76, "location":Lcom/android/server/LocationManagerService;
    goto/16 :goto_3f

    .line 738
    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v76, "location":Lcom/android/server/LocationManagerService;
    .local v92, "notification":Landroid/app/INotificationManager;
    .restart local v97    # "serviceDiscovery":Lcom/android/server/NsdService;
    :catch_3b
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v43, v44

    .end local v44    # "connectivity":Lcom/android/server/ConnectivityService;
    .local v43, "connectivity":Lcom/android/server/ConnectivityService;
    goto/16 :goto_3e

    .line 715
    .end local v62    # "e":Ljava/lang/Throwable;
    .local v43, "connectivity":Lcom/android/server/ConnectivityService;
    :catch_3c
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    goto/16 :goto_3d

    .line 704
    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v86    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v89    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    :catch_3d
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v6, v89

    .end local v89    # "networkStats":Lcom/android/server/net/NetworkStatsService;
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    goto/16 :goto_3c

    .line 696
    .end local v62    # "e":Ljava/lang/Throwable;
    .local v6, "networkStats":Lcom/android/server/net/NetworkStatsService;
    .restart local v88    # "networkScore":Lcom/android/server/NetworkScoreService;
    :catch_3e
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v87, v88

    .end local v88    # "networkScore":Lcom/android/server/NetworkScoreService;
    .local v87, "networkScore":Lcom/android/server/NetworkScoreService;
    goto/16 :goto_3b

    .line 686
    .end local v62    # "e":Ljava/lang/Throwable;
    .local v87, "networkScore":Lcom/android/server/NetworkScoreService;
    .restart local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_3f
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v103, v104

    .end local v104    # "tsms":Lcom/android/server/TextServicesManagerService;
    .local v103, "tsms":Lcom/android/server/TextServicesManagerService;
    goto/16 :goto_3a

    .line 656
    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v99    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v103, "tsms":Lcom/android/server/TextServicesManagerService;
    :catch_40
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v98, v99

    .end local v99    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .local v98, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    goto/16 :goto_39

    .line 636
    .end local v62    # "e":Ljava/lang/Throwable;
    .restart local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v98, "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    :catch_41
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v78, v79

    .end local v79    # "lockSettings":Lcom/android/server/LockSettingsService;
    .local v78, "lockSettings":Lcom/android/server/LockSettingsService;
    goto/16 :goto_38

    .line 627
    .end local v62    # "e":Ljava/lang/Throwable;
    .local v78, "lockSettings":Lcom/android/server/LockSettingsService;
    :catch_42
    move-exception v59

    .local v59, "e":Landroid/os/RemoteException;
    goto/16 :goto_a

    .line 578
    .end local v59    # "e":Landroid/os/RemoteException;
    .restart local v72    # "imm":Lcom/android/server/InputMethodManagerService;
    .restart local v85    # "mountService":Landroid/os/storage/IMountService;
    :catch_43
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v71, v72

    .end local v72    # "imm":Lcom/android/server/InputMethodManagerService;
    .local v71, "imm":Lcom/android/server/InputMethodManagerService;
    goto/16 :goto_37

    .line 554
    .end local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .end local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v63    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .end local v68    # "gestureService":Lcom/android/server/gesture/GestureService;
    .end local v71    # "imm":Lcom/android/server/InputMethodManagerService;
    .end local v76    # "location":Lcom/android/server/LocationManagerService;
    .end local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .end local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .end local v92    # "notification":Landroid/app/INotificationManager;
    .end local v98    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .end local v103    # "tsms":Lcom/android/server/TextServicesManagerService;
    .end local v109    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v32, "alarm":Landroid/app/IAlarmManager;
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v48, "contentService":Lcom/android/server/content/ContentService;
    .local v65, "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v73, "inputManager":Lcom/android/server/input/InputManagerService;
    .local v101, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v106, "vibrator":Lcom/android/server/VibratorService;
    .local v112, "wm":Lcom/android/server/wm/WindowManagerService;
    :catch_44
    move-exception v61

    .restart local v61    # "e":Ljava/lang/RuntimeException;
    goto/16 :goto_36

    .end local v61    # "e":Ljava/lang/RuntimeException;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_45
    move-exception v61

    .restart local v61    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v101, v102

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v101, "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    goto/16 :goto_36

    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v61    # "e":Ljava/lang/RuntimeException;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    :catch_46
    move-exception v61

    .restart local v61    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .local v65, "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v101, v102

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v30, v31

    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .local v30, "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_36

    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v61    # "e":Ljava/lang/RuntimeException;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .local v48, "contentService":Lcom/android/server/content/ContentService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v107    # "vibrator":Lcom/android/server/VibratorService;
    :catch_47
    move-exception v61

    .restart local v61    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v101, v102

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v106, v107

    .end local v107    # "vibrator":Lcom/android/server/VibratorService;
    .local v106, "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_36

    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v61    # "e":Ljava/lang/RuntimeException;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v107    # "vibrator":Lcom/android/server/VibratorService;
    :catch_48
    move-exception v61

    .restart local v61    # "e":Ljava/lang/RuntimeException;
    move-object/from16 v65, v66

    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    move-object/from16 v46, v47

    .end local v47    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    move-object/from16 v101, v102

    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    move-object/from16 v106, v107

    .end local v107    # "vibrator":Lcom/android/server/VibratorService;
    .restart local v106    # "vibrator":Lcom/android/server/VibratorService;
    goto/16 :goto_36

    .line 493
    .end local v61    # "e":Ljava/lang/RuntimeException;
    .end local v65    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v101    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .restart local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v32    # "alarm":Landroid/app/IAlarmManager;
    .local v46, "consumerIr":Lcom/android/server/ConsumerIrService;
    .local v48, "contentService":Lcom/android/server/content/ContentService;
    .restart local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .restart local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .local v106, "vibrator":Lcom/android/server/VibratorService;
    :catch_49
    move-exception v62

    .restart local v62    # "e":Ljava/lang/Throwable;
    move-object/from16 v30, v31

    .end local v31    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .restart local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    goto/16 :goto_35

    .end local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .end local v30    # "accountManager":Lcom/android/server/accounts/AccountManagerService;
    .end local v32    # "alarm":Landroid/app/IAlarmManager;
    .end local v46    # "consumerIr":Lcom/android/server/ConsumerIrService;
    .end local v48    # "contentService":Lcom/android/server/content/ContentService;
    .end local v62    # "e":Ljava/lang/Throwable;
    .end local v66    # "entropyMixer":Lcom/android/server/EntropyMixer;
    .end local v73    # "inputManager":Lcom/android/server/input/InputManagerService;
    .end local v85    # "mountService":Landroid/os/storage/IMountService;
    .end local v102    # "telephonyRegistry":Lcom/android/server/TelephonyRegistry;
    .end local v106    # "vibrator":Lcom/android/server/VibratorService;
    .end local v112    # "wm":Lcom/android/server/wm/WindowManagerService;
    .restart local v33    # "atlas":Lcom/android/server/AssetAtlasService;
    .restart local v49    # "countryDetector":Lcom/android/server/CountryDetectorService;
    .restart local v63    # "edgeGestureService":Lcom/android/server/gesture/EdgeGestureService;
    .restart local v68    # "gestureService":Lcom/android/server/gesture/GestureService;
    .restart local v76    # "location":Lcom/android/server/LocationManagerService;
    .restart local v80    # "mediaRouter":Lcom/android/server/media/MediaRouterService;
    .restart local v92    # "notification":Landroid/app/INotificationManager;
    .restart local v109    # "wallpaper":Lcom/android/server/wallpaper/WallpaperManagerService;
    :cond_35
    move-object/from16 v2, v86

    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_14

    .end local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    .restart local v7    # "networkManagement":Lcom/android/server/NetworkManagementService;
    .restart local v78    # "lockSettings":Lcom/android/server/LockSettingsService;
    .restart local v98    # "statusBar":Lcom/android/server/statusbar/StatusBarManagerService;
    .restart local v103    # "tsms":Lcom/android/server/TextServicesManagerService;
    :cond_36
    move-object/from16 v2, v86

    .restart local v2    # "networkPolicy":Lcom/android/server/net/NetworkPolicyManagerService;
    goto/16 :goto_2a
.end method

.method private static native startSensorService()V
.end method

.method static final startSystemUi(Landroid/content/Context;)V
    .locals 4
    .param p0, "context"    # Landroid/content/Context;

    .prologue
    .line 1321
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 1322
    .local v0, "intent":Landroid/content/Intent;
    new-instance v1, Landroid/content/ComponentName;

    const-string/jumbo v2, "com.android.systemui"

    .line 1323
    const-string/jumbo v3, "com.android.systemui.SystemUIService"

    .line 1322
    invoke-direct {v1, v2, v3}, Landroid/content/ComponentName;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    invoke-virtual {v0, v1}, Landroid/content/Intent;->setComponent(Landroid/content/ComponentName;)Landroid/content/Intent;

    .line 1325
    sget-object v1, Landroid/os/UserHandle;->OWNER:Landroid/os/UserHandle;

    invoke-virtual {p0, v0, v1}, Landroid/content/Context;->startServiceAsUser(Landroid/content/Intent;Landroid/os/UserHandle;)Landroid/content/ComponentName;

    .line 1320
    return-void
.end method
