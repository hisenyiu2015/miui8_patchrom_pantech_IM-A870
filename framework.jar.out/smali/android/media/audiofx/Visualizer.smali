.class public Landroid/media/audiofx/Visualizer;
.super Ljava/lang/Object;
.source "Visualizer.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/media/audiofx/Visualizer$MeasurementPeakRms;,
        Landroid/media/audiofx/Visualizer$OnDataCaptureListener;,
        Landroid/media/audiofx/Visualizer$OnServerDiedListener;,
        Landroid/media/audiofx/Visualizer$NativeEventHandler;
    }
.end annotation


# static fields
.field public static final ALREADY_EXISTS:I = -0x2

.field public static final ERROR:I = -0x1

.field public static final ERROR_BAD_VALUE:I = -0x4

.field public static final ERROR_DEAD_OBJECT:I = -0x7

.field public static final ERROR_INVALID_OPERATION:I = -0x5

.field public static final ERROR_NO_INIT:I = -0x3

.field public static final ERROR_NO_MEMORY:I = -0x6

.field public static final MEASUREMENT_MODE_NONE:I = 0x0

.field public static final MEASUREMENT_MODE_PEAK_RMS:I = 0x1

.field private static final NATIVE_EVENT_FFT_CAPTURE:I = 0x1

.field private static final NATIVE_EVENT_PCM_CAPTURE:I = 0x0

.field private static final NATIVE_EVENT_SERVER_DIED:I = 0x2

.field public static final SCALING_MODE_AS_PLAYED:I = 0x1

.field public static final SCALING_MODE_NORMALIZED:I = 0x0

.field public static final STATE_ENABLED:I = 0x2

.field public static final STATE_INITIALIZED:I = 0x1

.field public static final STATE_UNINITIALIZED:I = 0x0

.field public static final SUCCESS:I = 0x0

.field private static final TAG:Ljava/lang/String; = "Visualizer-JAVA"


# instance fields
.field private mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

.field private mId:I

.field private mJniData:J

.field private final mListenerLock:Ljava/lang/Object;

.field private mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

.field private mNativeVisualizer:J

.field private mServerDiedListener:Landroid/media/audiofx/Visualizer$OnServerDiedListener;

.field private mState:I

.field private final mStateLock:Ljava/lang/Object;


# direct methods
.method static synthetic -get0(Landroid/media/audiofx/Visualizer;)Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    .locals 1

    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    return-object v0
.end method

.method static synthetic -get1(Landroid/media/audiofx/Visualizer;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    return-object v0
.end method

.method static synthetic -get2(Landroid/media/audiofx/Visualizer;)Landroid/media/audiofx/Visualizer$OnServerDiedListener;
    .locals 1

    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mServerDiedListener:Landroid/media/audiofx/Visualizer$OnServerDiedListener;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 77
    const-string/jumbo v0, "audioeffect_jni"

    invoke-static {v0}, Ljava/lang/System;->loadLibrary(Ljava/lang/String;)V

    .line 78
    invoke-static {}, Landroid/media/audiofx/Visualizer;->native_init()V

    .line 74
    return-void
.end method

.method public constructor <init>(I)V
    .locals 11
    .param p1, "audioSession"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v9, 0x1

    const/4 v8, 0x0

    const/4 v7, 0x0

    .line 210
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 166
    iput v7, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 170
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    .line 179
    new-instance v7, Ljava/lang/Object;

    invoke-direct {v7}, Ljava/lang/Object;-><init>()V

    iput-object v7, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    .line 183
    iput-object v8, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    .line 187
    iput-object v8, p0, Landroid/media/audiofx/Visualizer;->mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;

    .line 191
    iput-object v8, p0, Landroid/media/audiofx/Visualizer;->mServerDiedListener:Landroid/media/audiofx/Visualizer$OnServerDiedListener;

    .line 212
    new-array v3, v9, [I

    .line 214
    .local v3, "id":[I
    iget-object v8, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v8

    .line 215
    const/4 v7, 0x0

    :try_start_0
    iput v7, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 220
    const/4 v4, 0x0

    .line 221
    .local v4, "isLocked":Z
    const-string/jumbo v5, ""
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 223
    .local v5, "packageName":Ljava/lang/String;
    :try_start_1
    const-string/jumbo v7, "audio"

    invoke-static {v7}, Landroid/os/ServiceManager;->getService(Ljava/lang/String;)Landroid/os/IBinder;

    move-result-object v1

    .line 224
    .local v1, "b":Landroid/os/IBinder;
    invoke-static {v1}, Landroid/media/IAudioService$Stub;->asInterface(Landroid/os/IBinder;)Landroid/media/IAudioService;

    move-result-object v0

    .line 225
    .local v0, "audioService":Landroid/media/IAudioService;
    invoke-static {}, Landroid/app/ActivityThread;->currentPackageName()Ljava/lang/String;

    move-result-object v5

    .line 226
    if-nez v5, :cond_0

    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v7

    const/16 v9, 0x3e8

    if-ne v9, v7, :cond_0

    .line 227
    const-string/jumbo v5, "android"

    .line 229
    :cond_0
    invoke-interface {v0, v5}, Landroid/media/IAudioService;->isVisualizerLocked(Ljava/lang/String;)Z
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v4

    .line 234
    .end local v0    # "audioService":Landroid/media/IAudioService;
    .end local v1    # "b":Landroid/os/IBinder;
    .end local v4    # "isLocked":Z
    :goto_0
    if-eqz v4, :cond_1

    .line 235
    :try_start_2
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v9, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    .line 236
    const-string/jumbo v10, " is locked out from Visualizer by Pulse"

    .line 235
    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    .line 214
    .end local v5    # "packageName":Ljava/lang/String;
    :catchall_0
    move-exception v7

    monitor-exit v8

    throw v7

    .line 230
    .restart local v4    # "isLocked":Z
    .restart local v5    # "packageName":Ljava/lang/String;
    :catch_0
    move-exception v2

    .line 231
    .local v2, "e":Landroid/os/RemoteException;
    :try_start_3
    const-string/jumbo v7, "Visualizer-JAVA"

    .line 232
    const-string/jumbo v9, "Error checking visualizer lock in AudioManager, disabling visualizer lock"

    .line 231
    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0

    .line 240
    .end local v2    # "e":Landroid/os/RemoteException;
    .end local v4    # "isLocked":Z
    :cond_1
    new-instance v7, Ljava/lang/ref/WeakReference;

    invoke-direct {v7, p0}, Ljava/lang/ref/WeakReference;-><init>(Ljava/lang/Object;)V

    .line 241
    invoke-static {}, Landroid/app/ActivityThread;->currentOpPackageName()Ljava/lang/String;

    move-result-object v9

    .line 240
    invoke-direct {p0, v7, p1, v3, v9}, Landroid/media/audiofx/Visualizer;->native_setup(Ljava/lang/Object;I[ILjava/lang/String;)I

    move-result v6

    .line 242
    .local v6, "result":I
    if-eqz v6, :cond_2

    const/4 v7, -0x2

    if-eq v6, v7, :cond_2

    .line 243
    const-string/jumbo v7, "Visualizer-JAVA"

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Error code "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    const-string/jumbo v10, " when initializing Visualizer."

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-static {v7, v9}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 244
    packed-switch v6, :pswitch_data_0

    .line 248
    new-instance v7, Ljava/lang/RuntimeException;

    new-instance v9, Ljava/lang/StringBuilder;

    invoke-direct {v9}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v10, "Cannot initialize Visualizer engine, error: "

    invoke-virtual {v9, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v9

    invoke-virtual {v9}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v9

    invoke-direct {v7, v9}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 246
    :pswitch_0
    new-instance v7, Ljava/lang/UnsupportedOperationException;

    const-string/jumbo v9, "Effect library not loaded"

    invoke-direct {v7, v9}, Ljava/lang/UnsupportedOperationException;-><init>(Ljava/lang/String;)V

    throw v7

    .line 252
    :cond_2
    const/4 v7, 0x0

    aget v7, v3, v7

    iput v7, p0, Landroid/media/audiofx/Visualizer;->mId:I

    .line 253
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getEnabled()Z

    move-result v7

    if-eqz v7, :cond_3

    .line 254
    const/4 v7, 0x2

    iput v7, p0, Landroid/media/audiofx/Visualizer;->mState:I
    :try_end_3
    .catchall {:try_start_3 .. :try_end_3} :catchall_0

    :goto_1
    monitor-exit v8

    .line 211
    return-void

    .line 256
    :cond_3
    const/4 v7, 0x1

    :try_start_4
    iput v7, p0, Landroid/media/audiofx/Visualizer;->mState:I
    :try_end_4
    .catchall {:try_start_4 .. :try_end_4} :catchall_0

    goto :goto_1

    .line 244
    nop

    :pswitch_data_0
    .packed-switch -0x5
        :pswitch_0
    .end packed-switch
.end method

.method public static native getCaptureSizeRange()[I
.end method

.method public static native getMaxCaptureRate()I
.end method

.method private final native native_finalize()V
.end method

.method private final native native_getCaptureSize()I
.end method

.method private final native native_getEnabled()Z
.end method

.method private final native native_getFft([B)I
.end method

.method private final native native_getMeasurementMode()I
.end method

.method private final native native_getPeakRms(Landroid/media/audiofx/Visualizer$MeasurementPeakRms;)I
.end method

.method private final native native_getSamplingRate()I
.end method

.method private final native native_getScalingMode()I
.end method

.method private final native native_getWaveForm([B)I
.end method

.method private static final native native_init()V
.end method

.method private final native native_release()V
.end method

.method private final native native_setCaptureSize(I)I
.end method

.method private final native native_setEnabled(Z)I
.end method

.method private final native native_setMeasurementMode(I)I
.end method

.method private final native native_setPeriodicCapture(IZZ)I
.end method

.method private final native native_setScalingMode(I)I
.end method

.method private final native native_setup(Ljava/lang/Object;I[ILjava/lang/String;)I
.end method

.method private static postEventFromNative(Ljava/lang/Object;IIILjava/lang/Object;)V
    .locals 3
    .param p0, "effect_ref"    # Ljava/lang/Object;
    .param p1, "what"    # I
    .param p2, "arg1"    # I
    .param p3, "arg2"    # I
    .param p4, "obj"    # Ljava/lang/Object;

    .prologue
    .line 790
    check-cast p0, Ljava/lang/ref/WeakReference;

    .end local p0    # "effect_ref":Ljava/lang/Object;
    invoke-virtual {p0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Landroid/media/audiofx/Visualizer;

    .line 791
    .local v1, "visu":Landroid/media/audiofx/Visualizer;
    if-nez v1, :cond_0

    .line 792
    return-void

    .line 795
    :cond_0
    iget-object v2, v1, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    if-eqz v2, :cond_1

    .line 796
    iget-object v2, v1, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    invoke-virtual {v2, p1, p2, p3, p4}, Landroid/media/audiofx/Visualizer$NativeEventHandler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 797
    .local v0, "m":Landroid/os/Message;
    iget-object v2, v1, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    invoke-virtual {v2, v0}, Landroid/media/audiofx/Visualizer$NativeEventHandler;->sendMessage(Landroid/os/Message;)Z

    .line 789
    .end local v0    # "m":Landroid/os/Message;
    :cond_1
    return-void
.end method


# virtual methods
.method protected finalize()V
    .locals 0

    .prologue
    .line 274
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_finalize()V

    .line 273
    return-void
.end method

.method public getCaptureSize()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 357
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 358
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-nez v0, :cond_0

    .line 359
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getCaptureSize() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 357
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 361
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getCaptureSize()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0
.end method

.method public getEnabled()Z
    .locals 4

    .prologue
    .line 308
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 309
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-nez v0, :cond_0

    .line 310
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getEnabled() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 308
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 312
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getEnabled()Z
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0
.end method

.method public getFft([B)I
    .locals 4
    .param p1, "fft"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 518
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 519
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 520
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getFft() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 518
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 522
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_getFft([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0
.end method

.method public getMeasurementMode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 429
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 430
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-nez v0, :cond_0

    .line 431
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMeasurementMode() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 432
    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 431
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 429
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 434
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getMeasurementMode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0
.end method

.method public getMeasurementPeakRms(Landroid/media/audiofx/Visualizer$MeasurementPeakRms;)I
    .locals 4
    .param p1, "measurement"    # Landroid/media/audiofx/Visualizer$MeasurementPeakRms;

    .prologue
    .line 553
    if-nez p1, :cond_0

    .line 554
    const-string/jumbo v0, "Visualizer-JAVA"

    const-string/jumbo v1, "Cannot store measurements in a null object"

    invoke-static {v0, v1}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 555
    const/4 v0, -0x4

    return v0

    .line 557
    :cond_0
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 558
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_1

    .line 559
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getMeasurementPeakRms() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 560
    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 559
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 557
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 562
    :cond_1
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_getPeakRms(Landroid/media/audiofx/Visualizer$MeasurementPeakRms;)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0
.end method

.method public getSamplingRate()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 444
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 445
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-nez v0, :cond_0

    .line 446
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getSamplingRate() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 444
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 448
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getSamplingRate()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0
.end method

.method public getScalingMode()I
    .locals 4
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 392
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 393
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-nez v0, :cond_0

    .line 394
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getScalingMode() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 395
    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 394
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 392
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 397
    :cond_0
    :try_start_1
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_getScalingMode()I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0
.end method

.method public getWaveForm([B)I
    .locals 4
    .param p1, "waveform"    # [B
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 465
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 466
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    const/4 v2, 0x2

    if-eq v0, v2, :cond_0

    .line 467
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "getWaveForm() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 465
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 469
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_getWaveForm([B)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0
.end method

.method public release()V
    .locals 2

    .prologue
    .line 266
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 267
    :try_start_0
    invoke-direct {p0}, Landroid/media/audiofx/Visualizer;->native_release()V

    .line 268
    const/4 v0, 0x0

    iput v0, p0, Landroid/media/audiofx/Visualizer;->mState:I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v1

    .line 265
    return-void

    .line 266
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method

.method public setCaptureSize(I)I
    .locals 4
    .param p1, "size"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 343
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 344
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    const/4 v2, 0x1

    if-eq v0, v2, :cond_0

    .line 345
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setCaptureSize() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 343
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 347
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_setCaptureSize(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0
.end method

.method public setDataCaptureListener(Landroid/media/audiofx/Visualizer$OnDataCaptureListener;IZZ)I
    .locals 4
    .param p1, "listener"    # Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    .param p2, "rate"    # I
    .param p3, "waveform"    # Z
    .param p4, "fft"    # Z

    .prologue
    const/4 v3, 0x0

    .line 614
    iget-object v2, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v2

    .line 615
    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/Visualizer;->mCaptureListener:Landroid/media/audiofx/Visualizer$OnDataCaptureListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v2

    .line 617
    if-nez p1, :cond_0

    .line 619
    const/4 p3, 0x0

    .line 620
    .local p3, "waveform":Z
    const/4 p4, 0x0

    .line 622
    .end local p3    # "waveform":Z
    .end local p4    # "fft":Z
    :cond_0
    invoke-direct {p0, p2, p3, p4}, Landroid/media/audiofx/Visualizer;->native_setPeriodicCapture(IZZ)I

    move-result v1

    .line 623
    .local v1, "status":I
    if-nez v1, :cond_1

    .line 624
    if-eqz p1, :cond_1

    iget-object v2, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    if-nez v2, :cond_1

    .line 626
    invoke-static {}, Landroid/os/Looper;->myLooper()Landroid/os/Looper;

    move-result-object v0

    .local v0, "looper":Landroid/os/Looper;
    if-eqz v0, :cond_2

    .line 627
    new-instance v2, Landroid/media/audiofx/Visualizer$NativeEventHandler;

    invoke-direct {v2, p0, p0, v0}, Landroid/media/audiofx/Visualizer$NativeEventHandler;-><init>(Landroid/media/audiofx/Visualizer;Landroid/media/audiofx/Visualizer;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    .line 636
    .end local v0    # "looper":Landroid/os/Looper;
    :cond_1
    :goto_0
    return v1

    .line 614
    .end local v1    # "status":I
    .local p3, "waveform":Z
    .restart local p4    # "fft":Z
    :catchall_0
    move-exception v3

    monitor-exit v2

    throw v3

    .line 628
    .end local p3    # "waveform":Z
    .end local p4    # "fft":Z
    .restart local v0    # "looper":Landroid/os/Looper;
    .restart local v1    # "status":I
    :cond_2
    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v0

    if-eqz v0, :cond_3

    .line 629
    new-instance v2, Landroid/media/audiofx/Visualizer$NativeEventHandler;

    invoke-direct {v2, p0, p0, v0}, Landroid/media/audiofx/Visualizer$NativeEventHandler;-><init>(Landroid/media/audiofx/Visualizer;Landroid/media/audiofx/Visualizer;Landroid/os/Looper;)V

    iput-object v2, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    goto :goto_0

    .line 631
    :cond_3
    iput-object v3, p0, Landroid/media/audiofx/Visualizer;->mNativeEventHandler:Landroid/media/audiofx/Visualizer$NativeEventHandler;

    .line 632
    const/4 v1, -0x3

    goto :goto_0
.end method

.method public setEnabled(Z)I
    .locals 5
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    const/4 v1, 0x2

    const/4 v2, 0x1

    .line 286
    iget-object v3, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v3

    .line 287
    :try_start_0
    iget v4, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-nez v4, :cond_0

    .line 288
    new-instance v1, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "setEnabled() called in wrong state: "

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    iget v4, p0, Landroid/media/audiofx/Visualizer;->mState:I

    invoke-virtual {v2, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v1, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v1
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 286
    :catchall_0
    move-exception v1

    monitor-exit v3

    throw v1

    .line 290
    :cond_0
    const/4 v0, 0x0

    .line 291
    .local v0, "status":I
    if-eqz p1, :cond_2

    :try_start_1
    iget v4, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-ne v4, v2, :cond_2

    .line 293
    :goto_0
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_setEnabled(Z)I

    move-result v0

    .line 294
    if-nez v0, :cond_1

    .line 295
    if-eqz p1, :cond_3

    :goto_1
    iput v1, p0, Landroid/media/audiofx/Visualizer;->mState:I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    :cond_1
    monitor-exit v3

    .line 298
    return v0

    .line 292
    :cond_2
    if-nez p1, :cond_1

    :try_start_2
    iget v4, p0, Landroid/media/audiofx/Visualizer;->mState:I
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0

    if-ne v4, v1, :cond_1

    goto :goto_0

    :cond_3
    move v1, v2

    .line 295
    goto :goto_1
.end method

.method public setMeasurementMode(I)I
    .locals 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 411
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 412
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-nez v0, :cond_0

    .line 413
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setMeasurementMode() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 414
    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 413
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 411
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 416
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_setMeasurementMode(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0
.end method

.method public setScalingMode(I)I
    .locals 4
    .param p1, "mode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalStateException;
        }
    .end annotation

    .prologue
    .line 375
    iget-object v1, p0, Landroid/media/audiofx/Visualizer;->mStateLock:Ljava/lang/Object;

    monitor-enter v1

    .line 376
    :try_start_0
    iget v0, p0, Landroid/media/audiofx/Visualizer;->mState:I

    if-nez v0, :cond_0

    .line 377
    new-instance v0, Ljava/lang/IllegalStateException;

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "setScalingMode() called in wrong state: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 378
    iget v3, p0, Landroid/media/audiofx/Visualizer;->mState:I

    .line 377
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Ljava/lang/IllegalStateException;-><init>(Ljava/lang/String;)V

    throw v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 375
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0

    .line 380
    :cond_0
    :try_start_1
    invoke-direct {p0, p1}, Landroid/media/audiofx/Visualizer;->native_setScalingMode(I)I
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    move-result v0

    monitor-exit v1

    return v0
.end method

.method public setServerDiedListener(Landroid/media/audiofx/Visualizer$OnServerDiedListener;)I
    .locals 2
    .param p1, "listener"    # Landroid/media/audiofx/Visualizer$OnServerDiedListener;

    .prologue
    .line 670
    iget-object v0, p0, Landroid/media/audiofx/Visualizer;->mListenerLock:Ljava/lang/Object;

    monitor-enter v0

    .line 671
    :try_start_0
    iput-object p1, p0, Landroid/media/audiofx/Visualizer;->mServerDiedListener:Landroid/media/audiofx/Visualizer$OnServerDiedListener;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    .line 673
    const/4 v0, 0x0

    return v0

    .line 670
    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method
