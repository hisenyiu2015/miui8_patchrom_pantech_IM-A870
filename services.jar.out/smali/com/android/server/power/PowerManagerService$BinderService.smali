.class final Lcom/android/server/power/PowerManagerService$BinderService;
.super Landroid/os/IPowerManager$Stub;
.source "PowerManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/power/PowerManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/power/PowerManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/power/PowerManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    .line 3351
    iput-object p1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-direct {p0}, Landroid/os/IPowerManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/power/PowerManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$BinderService;-><init>(Lcom/android/server/power/PowerManagerService;)V

    return-void
.end method

.method private runPostProximityCheck(Ljava/lang/Runnable;)V
    .locals 5
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    .line 3625
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get22(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/SensorManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3626
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3627
    return-void

    .line 3629
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v1, v0, Lcom/android/server/power/PowerManagerService;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    monitor-enter v1

    .line 3630
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v0, v0, Lcom/android/server/power/PowerManagerService;->mProximityWakeLock:Landroid/os/PowerManager$WakeLock;

    invoke-virtual {v0}, Landroid/os/PowerManager$WakeLock;->acquire()V

    .line 3631
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    new-instance v2, Lcom/android/server/power/PowerManagerService$BinderService$2;

    invoke-direct {v2, p0, p1}, Lcom/android/server/power/PowerManagerService$BinderService$2;-><init>(Lcom/android/server/power/PowerManagerService$BinderService;Ljava/lang/Runnable;)V

    iput-object v2, v0, Lcom/android/server/power/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 3652
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get22(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/SensorManager;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v2, v2, Lcom/android/server/power/PowerManagerService;->mProximityListener:Landroid/hardware/SensorEventListener;

    .line 3653
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get17(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/Sensor;

    move-result-object v3

    const/4 v4, 0x0

    .line 3652
    invoke-virtual {v0, v2, v3, v4}, Landroid/hardware/SensorManager;->registerListener(Landroid/hardware/SensorEventListener;Landroid/hardware/Sensor;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 3624
    return-void

    .line 3629
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method private runWithProximityCheck(Ljava/lang/Runnable;)V
    .locals 6
    .param p1, "r"    # Ljava/lang/Runnable;

    .prologue
    const/4 v5, 0x5

    .line 3596
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get10(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->hasMessages(I)Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3598
    return-void

    .line 3601
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    .line 3602
    const-string/jumbo v4, "phone"

    .line 3601
    invoke-virtual {v3, v4}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/telephony/TelephonyManager;

    .line 3603
    .local v2, "tm":Landroid/telephony/TelephonyManager;
    invoke-virtual {v2}, Landroid/telephony/TelephonyManager;->getCallState()I

    move-result v3

    const/4 v4, 0x1

    if-ne v3, v4, :cond_2

    const/4 v0, 0x1

    .line 3605
    .local v0, "hasIncomingCall":Z
    :goto_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get20(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get19(Lcom/android/server/power/PowerManagerService;)Z

    move-result v3

    if-eqz v3, :cond_1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get17(Lcom/android/server/power/PowerManagerService;)Landroid/hardware/Sensor;

    move-result-object v3

    if-eqz v3, :cond_1

    .line 3606
    if-eqz v0, :cond_3

    .line 3612
    :cond_1
    invoke-interface {p1}, Ljava/lang/Runnable;->run()V

    .line 3595
    :goto_1
    return-void

    .line 3603
    .end local v0    # "hasIncomingCall":Z
    :cond_2
    const/4 v0, 0x0

    .restart local v0    # "hasIncomingCall":Z
    goto :goto_0

    .line 3607
    :cond_3
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get10(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v3

    invoke-virtual {v3, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->obtainMessage(I)Landroid/os/Message;

    move-result-object v1

    .line 3608
    .local v1, "msg":Landroid/os/Message;
    iput-object p1, v1, Landroid/os/Message;->obj:Ljava/lang/Object;

    .line 3609
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get10(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/power/PowerManagerService$PowerManagerHandler;

    move-result-object v3

    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->-get18(Lcom/android/server/power/PowerManagerService;)I

    move-result v4

    int-to-long v4, v4

    invoke-virtual {v3, v1, v4, v5}, Lcom/android/server/power/PowerManagerService$PowerManagerHandler;->sendMessageDelayed(Landroid/os/Message;J)Z

    .line 3610
    invoke-direct {p0, p1}, Lcom/android/server/power/PowerManagerService$BinderService;->runPostProximityCheck(Ljava/lang/Runnable;)V

    goto :goto_1
.end method

.method private wakeUp(JLjava/lang/String;Ljava/lang/String;Z)V
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;
    .param p5, "checkProximity"    # Z

    .prologue
    .line 3569
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v2

    cmp-long v1, p1, v2

    if-lez v1, :cond_0

    .line 3570
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v2, "event time must not be in the future"

    invoke-direct {v1, v2}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3573
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    .line 3574
    const-string/jumbo v2, "android.permission.DEVICE_POWER"

    const/4 v3, 0x0

    .line 3573
    invoke-virtual {v1, v2, v3}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3576
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v5

    .line 3577
    .local v5, "uid":I
    new-instance v0, Lcom/android/server/power/PowerManagerService$BinderService$1;

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v6, p4

    invoke-direct/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService$BinderService$1;-><init>(Lcom/android/server/power/PowerManagerService$BinderService;JLjava/lang/String;ILjava/lang/String;)V

    .line 3588
    .local v0, "r":Ljava/lang/Runnable;
    if-eqz p5, :cond_1

    .line 3589
    invoke-direct {p0, v0}, Lcom/android/server/power/PowerManagerService$BinderService;->runWithProximityCheck(Ljava/lang/Runnable;)V

    .line 3568
    :goto_0
    return-void

    .line 3591
    :cond_1
    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    goto :goto_0
.end method


# virtual methods
.method public acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V
    .locals 14
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "ws"    # Landroid/os/WorkSource;
    .param p6, "historyTag"    # Ljava/lang/String;

    .prologue
    .line 3374
    if-nez p1, :cond_0

    .line 3375
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "lock must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3377
    :cond_0
    if-nez p4, :cond_1

    .line 3378
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "packageName must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3380
    :cond_1
    invoke-static/range {p2 .. p3}, Landroid/os/PowerManager;->validateWakeLockParameters(ILjava/lang/String;)V

    .line 3382
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.WAKE_LOCK"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3383
    and-int/lit8 v2, p2, 0x40

    if-eqz v2, :cond_2

    .line 3384
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    .line 3385
    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    .line 3384
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3387
    :cond_2
    if-eqz p5, :cond_3

    invoke-virtual/range {p5 .. p5}, Landroid/os/WorkSource;->size()I

    move-result v2

    if-eqz v2, :cond_3

    .line 3388
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    .line 3389
    const-string/jumbo v3, "android.permission.UPDATE_DEVICE_STATS"

    const/4 v4, 0x0

    .line 3388
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3394
    .end local p5    # "ws":Landroid/os/WorkSource;
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v9

    .line 3395
    .local v9, "uid":I
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v10

    .line 3398
    .local v10, "pid":I
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    if-eqz v2, :cond_5

    .line 3399
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    const/16 v3, 0x28

    move-object/from16 v0, p4

    invoke-interface {v2, v3, v9, v0}, Lcom/android/internal/app/IAppOpsService;->checkOperation(IILjava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_5

    .line 3405
    invoke-static {}, Lcom/android/server/SystemConfig;->getInstance()Lcom/android/server/SystemConfig;

    move-result-object v2

    invoke-virtual {v2}, Lcom/android/server/SystemConfig;->getAllowInPowerSave()Landroid/util/ArraySet;

    move-result-object v2

    move-object/from16 v0, p4

    invoke-virtual {v2, v0}, Landroid/util/ArraySet;->contains(Ljava/lang/Object;)Z

    move-result v2

    if-nez v2, :cond_4

    .line 3406
    const-string/jumbo v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "acquireWakeLock: ignoring request from "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I

    .line 3408
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get0(Lcom/android/server/power/PowerManagerService;)Lcom/android/internal/app/IAppOpsService;

    move-result-object v2

    const/16 v3, 0x28

    move-object/from16 v0, p4

    invoke-interface {v2, v3, v9, v0}, Lcom/android/internal/app/IAppOpsService;->noteOperation(IILjava/lang/String;)I

    .line 3410
    return-void

    .line 3391
    .end local v9    # "uid":I
    .end local v10    # "pid":I
    .restart local p5    # "ws":Landroid/os/WorkSource;
    :cond_3
    const/16 p5, 0x0

    .local p5, "ws":Landroid/os/WorkSource;
    goto :goto_0

    .line 3412
    .end local p5    # "ws":Landroid/os/WorkSource;
    .restart local v9    # "uid":I
    .restart local v10    # "pid":I
    :cond_4
    const-string/jumbo v2, "PowerManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "wake lock requested to be ignored but "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    move-object/from16 v0, p4

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 3413
    const-string/jumbo v4, " is marked to opt-out of all power save restrictions."

    .line 3412
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/util/Slog;->d(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 3419
    :cond_5
    :goto_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v12

    .line 3421
    .local v12, "ident":J
    :try_start_1
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-object v3, p1

    move/from16 v4, p2

    move-object/from16 v5, p3

    move-object/from16 v6, p4

    move-object/from16 v7, p5

    move-object/from16 v8, p6

    invoke-static/range {v2 .. v10}, Lcom/android/server/power/PowerManagerService;->-wrap11(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;II)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 3423
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3373
    return-void

    .line 3422
    :catchall_0
    move-exception v2

    .line 3423
    invoke-static {v12, v13}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3422
    throw v2

    .line 3416
    .end local v12    # "ident":J
    :catch_0
    move-exception v11

    .local v11, "ignored":Landroid/os/RemoteException;
    goto :goto_1
.end method

.method public acquireWakeLockWithUid(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;I)V
    .locals 7
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I
    .param p3, "tag"    # Ljava/lang/String;
    .param p4, "packageName"    # Ljava/lang/String;
    .param p5, "uid"    # I

    .prologue
    .line 3355
    if-gez p5, :cond_0

    .line 3356
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result p5

    .line 3358
    :cond_0
    new-instance v5, Landroid/os/WorkSource;

    invoke-direct {v5, p5}, Landroid/os/WorkSource;-><init>(I)V

    const/4 v6, 0x0

    move-object v0, p0

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    invoke-virtual/range {v0 .. v6}, Lcom/android/server/power/PowerManagerService$BinderService;->acquireWakeLock(Landroid/os/IBinder;ILjava/lang/String;Ljava/lang/String;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 3354
    return-void
.end method

.method public boostScreenBrightness(J)V
    .locals 7
    .param p1, "eventTime"    # J

    .prologue
    .line 3902
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-lez v3, :cond_0

    .line 3903
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "event time must not be in the future"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3906
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    .line 3907
    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    const/4 v5, 0x0

    .line 3906
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3909
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3910
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3912
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, p1, p2, v2}, Lcom/android/server/power/PowerManagerService;->-wrap12(Lcom/android/server/power/PowerManagerService;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3914
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3901
    return-void

    .line 3913
    :catchall_0
    move-exception v3

    .line 3914
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3913
    throw v3
.end method

.method public cpuBoost(I)V
    .locals 1
    .param p1, "duration"    # I

    .prologue
    .line 3930
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get16(Lcom/android/server/power/PowerManagerService;)Lbluros/power/PerformanceManagerInternal;

    move-result-object v0

    invoke-interface {v0, p1}, Lbluros/power/PerformanceManagerInternal;->cpuBoost(I)V

    .line 3929
    return-void
.end method

.method public crash(Ljava/lang/String;)V
    .locals 5
    .param p1, "message"    # Ljava/lang/String;

    .prologue
    .line 3791
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.REBOOT"

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3793
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3795
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-wrap15(Lcom/android/server/power/PowerManagerService;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3797
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3790
    return-void

    .line 3796
    :catchall_0
    move-exception v2

    .line 3797
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3796
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 3935
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 3937
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: can\'t dump PowerManager from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3938
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 3937
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3939
    const-string/jumbo v3, ", uid="

    .line 3937
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3939
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3937
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 3940
    return-void

    .line 3943
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3945
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p2}, Lcom/android/server/power/PowerManagerService;->-wrap16(Lcom/android/server/power/PowerManagerService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3947
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3934
    return-void

    .line 3946
    :catchall_0
    move-exception v2

    .line 3947
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3946
    throw v2
.end method

.method public getSeenWakeLocks()Ljava/lang/String;
    .locals 5

    .prologue
    .line 3990
    new-instance v0, Ljava/lang/StringBuffer;

    invoke-direct {v0}, Ljava/lang/StringBuffer;-><init>()V

    .line 3991
    .local v0, "buffer":Ljava/lang/StringBuffer;
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get21(Lcom/android/server/power/PowerManagerService;)Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .line 3992
    .local v1, "nextWakeLock":Ljava/util/Iterator;, "Ljava/util/Iterator<Ljava/lang/String;>;"
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v3

    if-eqz v3, :cond_0

    .line 3993
    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Ljava/lang/String;

    .line 3994
    .local v2, "wakeLockTag":Ljava/lang/String;
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, "|"

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->append(Ljava/lang/String;)Ljava/lang/StringBuffer;

    goto :goto_0

    .line 3996
    .end local v2    # "wakeLockTag":Ljava/lang/String;
    :cond_0
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    if-lez v3, :cond_1

    .line 3997
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->length()I

    move-result v3

    add-int/lit8 v3, v3, -0x1

    invoke-virtual {v0, v3}, Ljava/lang/StringBuffer;->deleteCharAt(I)Ljava/lang/StringBuffer;

    .line 3999
    :cond_1
    invoke-virtual {v0}, Ljava/lang/StringBuffer;->toString()Ljava/lang/String;

    move-result-object v3

    return-object v3
.end method

.method getTelephonyManager()Landroid/telephony/TelephonyManager;
    .locals 3

    .prologue
    .line 3617
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get24(Lcom/android/server/power/PowerManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    if-nez v0, :cond_0

    .line 3618
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    .line 3619
    const-string/jumbo v2, "phone"

    .line 3618
    invoke-virtual {v0, v2}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/telephony/TelephonyManager;

    invoke-static {v1, v0}, Lcom/android/server/power/PowerManagerService;->-set5(Lcom/android/server/power/PowerManagerService;Landroid/telephony/TelephonyManager;)Landroid/telephony/TelephonyManager;

    .line 3621
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get24(Lcom/android/server/power/PowerManagerService;)Landroid/telephony/TelephonyManager;

    move-result-object v0

    return-object v0
.end method

.method public goToSleep(JII)V
    .locals 11
    .param p1, "eventTime"    # J
    .param p3, "reason"    # I
    .param p4, "flags"    # I

    .prologue
    .line 3669
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v0

    cmp-long v0, p1, v0

    if-lez v0, :cond_0

    .line 3670
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "event time must not be in the future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3673
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    .line 3674
    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    .line 3673
    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3676
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3677
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3679
    .local v8, "ident":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide v2, p1

    move v4, p3

    move v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->-wrap17(Lcom/android/server/power/PowerManagerService;JIII)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3681
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3668
    return-void

    .line 3680
    :catchall_0
    move-exception v0

    .line 3681
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3680
    throw v0
.end method

.method public isDeviceIdleMode()Z
    .locals 3

    .prologue
    .line 3737
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3739
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-wrap2(Lcom/android/server/power/PowerManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3741
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3739
    return v2

    .line 3740
    :catchall_0
    move-exception v2

    .line 3741
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3740
    throw v2
.end method

.method public isInteractive()Z
    .locals 3

    .prologue
    .line 3705
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3707
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-wrap3(Lcom/android/server/power/PowerManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3709
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3707
    return v2

    .line 3708
    :catchall_0
    move-exception v2

    .line 3709
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3708
    throw v2
.end method

.method public isPowerSaveMode()Z
    .locals 3

    .prologue
    .line 3715
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3717
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-wrap4(Lcom/android/server/power/PowerManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3719
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3717
    return v2

    .line 3718
    :catchall_0
    move-exception v2

    .line 3719
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3718
    throw v2
.end method

.method public isScreenBrightnessBoosted()Z
    .locals 3

    .prologue
    .line 3920
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3922
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-wrap5(Lcom/android/server/power/PowerManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3924
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3922
    return v2

    .line 3923
    :catchall_0
    move-exception v2

    .line 3924
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3923
    throw v2
.end method

.method public isWakeLockLevelSupported(I)Z
    .locals 3
    .param p1, "level"    # I

    .prologue
    .line 3483
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3485
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-wrap6(Lcom/android/server/power/PowerManagerService;I)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3487
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3485
    return v2

    .line 3486
    :catchall_0
    move-exception v2

    .line 3487
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3486
    throw v2
.end method

.method public nap(J)V
    .locals 7
    .param p1, "eventTime"    # J

    .prologue
    .line 3687
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v4

    cmp-long v3, p1, v4

    if-lez v3, :cond_0

    .line 3688
    new-instance v3, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "event time must not be in the future"

    invoke-direct {v3, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 3691
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    .line 3692
    const-string/jumbo v4, "android.permission.DEVICE_POWER"

    const/4 v5, 0x0

    .line 3691
    invoke-virtual {v3, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3694
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3695
    .local v2, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3697
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, p1, p2, v2}, Lcom/android/server/power/PowerManagerService;->-wrap24(Lcom/android/server/power/PowerManagerService;JI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3699
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3686
    return-void

    .line 3698
    :catchall_0
    move-exception v3

    .line 3699
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3698
    throw v3
.end method

.method public powerHint(II)V
    .locals 3
    .param p1, "hintId"    # I
    .param p2, "data"    # I

    .prologue
    .line 3363
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get23(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 3365
    return-void

    .line 3367
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    const/4 v2, 0x0

    invoke-virtual {v0, v1, v2}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3368
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap28(Lcom/android/server/power/PowerManagerService;II)V

    .line 3362
    return-void
.end method

.method public reboot(ZLjava/lang/String;Z)V
    .locals 5
    .param p1, "confirm"    # Z
    .param p2, "reason"    # Ljava/lang/String;
    .param p3, "wait"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3754
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.REBOOT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3755
    const-string/jumbo v2, "recovery"

    invoke-virtual {v2, p2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 3756
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.RECOVERY"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3759
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3761
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x0

    invoke-static {v2, v3, p1, p2, p3}, Lcom/android/server/power/PowerManagerService;->-wrap41(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3763
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3753
    return-void

    .line 3762
    :catchall_0
    move-exception v2

    .line 3763
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3762
    throw v2
.end method

.method public releaseWakeLock(Landroid/os/IBinder;I)V
    .locals 5
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x0

    .line 3429
    if-nez p1, :cond_0

    .line 3430
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "lock must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 3433
    :cond_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.WAKE_LOCK"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3435
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3437
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap29(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3439
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3428
    return-void

    .line 3438
    :catchall_0
    move-exception v2

    .line 3439
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3438
    throw v2
.end method

.method public setAttentionLight(ZI)V
    .locals 5
    .param p1, "on"    # Z
    .param p2, "color"    # I

    .prologue
    .line 3889
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    .line 3890
    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    .line 3889
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3892
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3894
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/power/PowerManagerService;->-wrap31(Lcom/android/server/power/PowerManagerService;ZI)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3896
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3888
    return-void

    .line 3895
    :catchall_0
    move-exception v2

    .line 3896
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3895
    throw v2
.end method

.method public setKeyboardLight(ZI)V
    .locals 2
    .param p1, "on"    # Z
    .param p2, "key"    # I

    .prologue
    const v1, 0xffffff

    .line 3551
    const/4 v0, 0x1

    if-ne p2, v0, :cond_2

    .line 3552
    if-eqz p1, :cond_1

    .line 3553
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setColor(I)V

    .line 3550
    :cond_0
    :goto_0
    return-void

    .line 3555
    :cond_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get2(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0

    .line 3556
    :cond_2
    const/4 v0, 0x2

    if-ne p2, v0, :cond_0

    .line 3557
    if-eqz p1, :cond_3

    .line 3558
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get9(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0, v1}, Lcom/android/server/lights/Light;->setColor(I)V

    goto :goto_0

    .line 3560
    :cond_3
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get9(Lcom/android/server/power/PowerManagerService;)Lcom/android/server/lights/Light;

    move-result-object v0

    invoke-virtual {v0}, Lcom/android/server/lights/Light;->turnOff()V

    goto :goto_0
.end method

.method public setKeyboardVisibility(Z)V
    .locals 4
    .param p1, "visible"    # Z

    .prologue
    .line 3530
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get13(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3534
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get11(Lcom/android/server/power/PowerManagerService;)Z

    move-result v0

    if-eq v0, p1, :cond_1

    .line 3535
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, p1}, Lcom/android/server/power/PowerManagerService;->-set2(Lcom/android/server/power/PowerManagerService;Z)Z

    .line 3536
    if-nez p1, :cond_0

    .line 3538
    const/4 v0, 0x0

    const/4 v2, 0x1

    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/PowerManagerService$BinderService;->setKeyboardLight(ZI)V

    .line 3539
    const/4 v0, 0x0

    const/4 v2, 0x2

    invoke-virtual {p0, v0, v2}, Lcom/android/server/power/PowerManagerService$BinderService;->setKeyboardLight(ZI)V

    .line 3541
    :cond_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get13(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v2

    monitor-enter v2
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_1

    .line 3542
    :try_start_1
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get6(Lcom/android/server/power/PowerManagerService;)I

    move-result v3

    or-int/lit8 v3, v3, 0x4

    invoke-static {v0, v3}, Lcom/android/server/power/PowerManagerService;->-set0(Lcom/android/server/power/PowerManagerService;I)I

    .line 3543
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-wrap42(Lcom/android/server/power/PowerManagerService;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :try_start_2
    monitor-exit v2
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_1

    :cond_1
    monitor-exit v1

    .line 3529
    return-void

    .line 3541
    :catchall_0
    move-exception v0

    :try_start_3
    monitor-exit v2

    throw v0
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_1

    .line 3530
    :catchall_1
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setPowerSaveMode(Z)Z
    .locals 5
    .param p1, "mode"    # Z

    .prologue
    .line 3725
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    .line 3726
    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    .line 3725
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3727
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3729
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-wrap7(Lcom/android/server/power/PowerManagerService;Z)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 3731
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3729
    return v2

    .line 3730
    :catchall_0
    move-exception v2

    .line 3731
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3730
    throw v2
.end method

.method public setStayOnSetting(I)V
    .locals 6
    .param p1, "val"    # I

    .prologue
    .line 3817
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v2

    .line 3819
    .local v2, "uid":I
    if-eqz v2, :cond_0

    .line 3820
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v3

    .line 3821
    iget-object v4, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v4}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v4

    invoke-static {v4, v2}, Landroid/provider/Settings;->getPackageNameForUid(Landroid/content/Context;I)Ljava/lang/String;

    move-result-object v4

    const/4 v5, 0x1

    .line 3820
    invoke-static {v3, v2, v4, v5}, Landroid/provider/Settings;->checkAndNoteWriteSettingsOperation(Landroid/content/Context;ILjava/lang/String;Z)Z

    move-result v3

    if-nez v3, :cond_0

    .line 3822
    return-void

    .line 3826
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3828
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-virtual {v3, p1}, Lcom/android/server/power/PowerManagerService;->setStayOnSettingInternal(I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3830
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3816
    return-void

    .line 3829
    :catchall_0
    move-exception v3

    .line 3830
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3829
    throw v3
.end method

.method public setTemporaryScreenAutoBrightnessAdjustmentSettingOverride(F)V
    .locals 5
    .param p1, "adj"    # F

    .prologue
    .line 3873
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    .line 3874
    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    .line 3873
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3876
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3878
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-wrap37(Lcom/android/server/power/PowerManagerService;F)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3880
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3872
    return-void

    .line 3879
    :catchall_0
    move-exception v2

    .line 3880
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3879
    throw v2
.end method

.method public setTemporaryScreenBrightnessSettingOverride(I)V
    .locals 5
    .param p1, "brightness"    # I

    .prologue
    .line 3848
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    .line 3849
    const-string/jumbo v3, "android.permission.DEVICE_POWER"

    const/4 v4, 0x0

    .line 3848
    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3851
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3853
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2, p1}, Lcom/android/server/power/PowerManagerService;->-wrap38(Lcom/android/server/power/PowerManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3855
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3847
    return-void

    .line 3854
    :catchall_0
    move-exception v2

    .line 3855
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3854
    throw v2
.end method

.method public shutdown(ZZ)V
    .locals 5
    .param p1, "confirm"    # Z
    .param p2, "wait"    # Z

    .prologue
    const/4 v4, 0x0

    .line 3775
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v2}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.REBOOT"

    invoke-virtual {v2, v3, v4}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3777
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 3779
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-static {v2, v3, p1, v4, p2}, Lcom/android/server/power/PowerManagerService;->-wrap41(Lcom/android/server/power/PowerManagerService;ZZLjava/lang/String;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3781
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3774
    return-void

    .line 3780
    :catchall_0
    move-exception v2

    .line 3781
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3780
    throw v2
.end method

.method public updateBlockedUids(IZ)V
    .locals 7
    .param p1, "uid"    # I
    .param p2, "isBlocked"    # Z

    .prologue
    const/16 v6, 0x3e8

    .line 3955
    const/4 v0, 0x0

    .line 3958
    .local v0, "changed":Z
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    if-eq v3, v6, :cond_0

    .line 3960
    return-void

    .line 3962
    :cond_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get13(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v4

    monitor-enter v4

    .line 3963
    const/4 v1, 0x0

    .local v1, "index":I
    :goto_0
    :try_start_0
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get25(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 3964
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get25(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3, v1}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/android/server/power/PowerManagerService$WakeLock;

    .line 3965
    .local v2, "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    if-eqz v2, :cond_2

    .line 3967
    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-eq v3, p1, :cond_1

    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, p1, v2}, Lcom/android/server/power/PowerManagerService;->-wrap1(Lcom/android/server/power/PowerManagerService;ILcom/android/server/power/PowerManagerService$WakeLock;)Z

    move-result v3

    if-nez v3, :cond_1

    .line 3968
    iget-object v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mTag:Ljava/lang/String;

    const-string/jumbo v5, "*sync*"

    invoke-virtual {v3, v5}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_2

    iget v3, v2, Lcom/android/server/power/PowerManagerService$WakeLock;->mOwnerUid:I

    if-ne v3, v6, :cond_2

    .line 3969
    :cond_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3, v2, p2}, Lcom/android/server/power/PowerManagerService;->-wrap8(Lcom/android/server/power/PowerManagerService;Lcom/android/server/power/PowerManagerService$WakeLock;Z)Z

    move-result v3

    if-eqz v3, :cond_2

    .line 3970
    const/4 v0, 0x1

    .line 3963
    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 3975
    .end local v2    # "wl":Lcom/android/server/power/PowerManagerService$WakeLock;
    :cond_3
    if-eqz p2, :cond_5

    .line 3976
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get1(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    new-instance v5, Ljava/lang/Integer;

    invoke-direct {v5, p1}, Ljava/lang/Integer;-><init>(I)V

    invoke-virtual {v3, v5}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 3981
    :goto_1
    if-eqz v0, :cond_4

    .line 3982
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get6(Lcom/android/server/power/PowerManagerService;)I

    move-result v5

    or-int/lit8 v5, v5, 0x1

    invoke-static {v3, v5}, Lcom/android/server/power/PowerManagerService;->-set0(Lcom/android/server/power/PowerManagerService;I)I

    .line 3983
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-wrap42(Lcom/android/server/power/PowerManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v4

    .line 3954
    return-void

    .line 3979
    :cond_5
    :try_start_1
    iget-object v3, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v3}, Lcom/android/server/power/PowerManagerService;->-get1(Lcom/android/server/power/PowerManagerService;)Ljava/util/ArrayList;

    move-result-object v3

    invoke-virtual {v3}, Ljava/util/ArrayList;->clear()V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    goto :goto_1

    .line 3962
    :catchall_0
    move-exception v3

    monitor-exit v4

    throw v3
.end method

.method public updateWakeLockUids(Landroid/os/IBinder;[I)V
    .locals 4
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "uids"    # [I

    .prologue
    const/4 v3, 0x0

    .line 3445
    const/4 v1, 0x0

    .line 3447
    .local v1, "ws":Landroid/os/WorkSource;
    if-eqz p2, :cond_0

    .line 3448
    new-instance v1, Landroid/os/WorkSource;

    .end local v1    # "ws":Landroid/os/WorkSource;
    invoke-direct {v1}, Landroid/os/WorkSource;-><init>()V

    .line 3451
    .local v1, "ws":Landroid/os/WorkSource;
    const/4 v0, 0x0

    .local v0, "i":I
    :goto_0
    array-length v2, p2

    if-ge v0, v2, :cond_0

    .line 3452
    aget v2, p2, v0

    invoke-virtual {v1, v2}, Landroid/os/WorkSource;->add(I)Z

    .line 3451
    add-int/lit8 v0, v0, 0x1

    goto :goto_0

    .line 3455
    .end local v0    # "i":I
    .end local v1    # "ws":Landroid/os/WorkSource;
    :cond_0
    invoke-virtual {p0, p1, v1, v3}, Lcom/android/server/power/PowerManagerService$BinderService;->updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V

    .line 3444
    return-void
.end method

.method public updateWakeLockWorkSource(Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;)V
    .locals 6
    .param p1, "lock"    # Landroid/os/IBinder;
    .param p2, "ws"    # Landroid/os/WorkSource;
    .param p3, "historyTag"    # Ljava/lang/String;

    .prologue
    const/4 v5, 0x0

    .line 3460
    if-nez p1, :cond_0

    .line 3461
    new-instance v1, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v4, "lock must not be null"

    invoke-direct {v1, v4}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v1

    .line 3464
    :cond_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    const-string/jumbo v4, "android.permission.WAKE_LOCK"

    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3465
    if-eqz p2, :cond_1

    invoke-virtual {p2}, Landroid/os/WorkSource;->size()I

    move-result v1

    if-eqz v1, :cond_1

    .line 3466
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v1

    .line 3467
    const-string/jumbo v4, "android.permission.UPDATE_DEVICE_STATS"

    .line 3466
    invoke-virtual {v1, v4, v5}, Landroid/content/Context;->enforceCallingOrSelfPermission(Ljava/lang/String;Ljava/lang/String;)V

    .line 3472
    .end local p2    # "ws":Landroid/os/WorkSource;
    :goto_0
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v0

    .line 3473
    .local v0, "callingUid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 3475
    .local v2, "ident":J
    :try_start_0
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v1, p1, p2, p3, v0}, Lcom/android/server/power/PowerManagerService;->-wrap43(Lcom/android/server/power/PowerManagerService;Landroid/os/IBinder;Landroid/os/WorkSource;Ljava/lang/String;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 3477
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3459
    return-void

    .line 3469
    .end local v0    # "callingUid":I
    .end local v2    # "ident":J
    .restart local p2    # "ws":Landroid/os/WorkSource;
    :cond_1
    const/4 p2, 0x0

    .local p2, "ws":Landroid/os/WorkSource;
    goto :goto_0

    .line 3476
    .end local p2    # "ws":Landroid/os/WorkSource;
    .restart local v0    # "callingUid":I
    .restart local v2    # "ident":J
    :catchall_0
    move-exception v1

    .line 3477
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3476
    throw v1
.end method

.method public userActivity(JII)V
    .locals 13
    .param p1, "eventTime"    # J
    .param p3, "event"    # I
    .param p4, "flags"    # I

    .prologue
    .line 3493
    invoke-static {}, Landroid/os/SystemClock;->uptimeMillis()J

    move-result-wide v10

    .line 3494
    .local v10, "now":J
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    const-string/jumbo v1, "android.permission.DEVICE_POWER"

    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3496
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get3(Lcom/android/server/power/PowerManagerService;)Landroid/content/Context;

    move-result-object v0

    .line 3497
    const-string/jumbo v1, "android.permission.USER_ACTIVITY"

    .line 3496
    invoke-virtual {v0, v1}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v0

    if-eqz v0, :cond_1

    .line 3502
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get13(Lcom/android/server/power/PowerManagerService;)Ljava/lang/Object;

    move-result-object v1

    monitor-enter v1

    .line 3503
    :try_start_0
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0}, Lcom/android/server/power/PowerManagerService;->-get12(Lcom/android/server/power/PowerManagerService;)J

    move-result-wide v2

    const-wide/32 v4, 0x493e0

    add-long/2addr v2, v4

    cmp-long v0, v10, v2

    if-ltz v0, :cond_0

    .line 3504
    iget-object v0, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    invoke-static {v0, v10, v11}, Lcom/android/server/power/PowerManagerService;->-set3(Lcom/android/server/power/PowerManagerService;J)J

    .line 3505
    const-string/jumbo v0, "PowerManagerService"

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Ignoring call to PowerManager.userActivity() because the caller does not have DEVICE_POWER or USER_ACTIVITY permission.  Please fix your app!   pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3508
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 3505
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3509
    const-string/jumbo v3, " uid="

    .line 3505
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 3509
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 3505
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 3512
    return-void

    .line 3502
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 3515
    :cond_1
    cmp-long v0, p1, v10

    if-lez v0, :cond_2

    .line 3516
    new-instance v0, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v1, "event time must not be in the future"

    invoke-direct {v0, v1}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v0

    .line 3519
    :cond_2
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v6

    .line 3520
    .local v6, "uid":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v8

    .line 3522
    .local v8, "ident":J
    :try_start_1
    iget-object v1, p0, Lcom/android/server/power/PowerManagerService$BinderService;->this$0:Lcom/android/server/power/PowerManagerService;

    move-wide v2, p1

    move/from16 v4, p3

    move/from16 v5, p4

    invoke-static/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService;->-wrap44(Lcom/android/server/power/PowerManagerService;JIII)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    .line 3524
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3492
    return-void

    .line 3523
    :catchall_1
    move-exception v0

    .line 3524
    invoke-static {v8, v9}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 3523
    throw v0
.end method

.method public wakeUp(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3664
    const/4 v6, 0x0

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$BinderService;->wakeUp(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 3663
    return-void
.end method

.method public wakeUpWithProximityCheck(JLjava/lang/String;Ljava/lang/String;)V
    .locals 7
    .param p1, "eventTime"    # J
    .param p3, "reason"    # Ljava/lang/String;
    .param p4, "opPackageName"    # Ljava/lang/String;

    .prologue
    .line 3659
    const/4 v6, 0x1

    move-object v1, p0

    move-wide v2, p1

    move-object v4, p3

    move-object v5, p4

    invoke-direct/range {v1 .. v6}, Lcom/android/server/power/PowerManagerService$BinderService;->wakeUp(JLjava/lang/String;Ljava/lang/String;Z)V

    .line 3658
    return-void
.end method
