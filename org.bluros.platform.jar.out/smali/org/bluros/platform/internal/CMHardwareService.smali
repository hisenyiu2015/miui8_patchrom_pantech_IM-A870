.class public Lorg/bluros/platform/internal/CMHardwareService;
.super Lorg/bluros/platform/internal/CMSystemService;
.source "CMHardwareService.java"

# interfaces
.implements Lorg/bluros/hardware/ThermalUpdateCallback;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;,
        Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;,
        Lorg/bluros/platform/internal/CMHardwareService$1;
    }
.end annotation


# static fields
.field private static final DEBUG:Z = true

.field private static final TAG:Ljava/lang/String;


# instance fields
.field private final mCmHwImpl:Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

.field private final mContext:Landroid/content/Context;

.field private mCurrentThermalState:I

.field private mRemoteCallbackList:Landroid/os/RemoteCallbackList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/RemoteCallbackList",
            "<",
            "Lbluros/hardware/IThermalListenerCallback;",
            ">;"
        }
    .end annotation
.end field

.field private final mService:Landroid/os/IBinder;


# direct methods
.method static synthetic -get0()Ljava/lang/String;
    .locals 1

    sget-object v0, Lorg/bluros/platform/internal/CMHardwareService;->TAG:Ljava/lang/String;

    return-object v0
.end method

.method static synthetic -get1(Lorg/bluros/platform/internal/CMHardwareService;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;
    .locals 1

    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService;->mCmHwImpl:Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    return-object v0
.end method

.method static synthetic -get2(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/content/Context;
    .locals 1

    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService;->mContext:Landroid/content/Context;

    return-object v0
.end method

.method static synthetic -get3(Lorg/bluros/platform/internal/CMHardwareService;)I
    .locals 1

    iget v0, p0, Lorg/bluros/platform/internal/CMHardwareService;->mCurrentThermalState:I

    return v0
.end method

.method static synthetic -get4(Lorg/bluros/platform/internal/CMHardwareService;)Landroid/os/RemoteCallbackList;
    .locals 1

    iget-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    return-object v0
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 61
    const-class v0, Lorg/bluros/platform/internal/CMHardwareService;

    invoke-virtual {v0}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v0

    sput-object v0, Lorg/bluros/platform/internal/CMHardwareService;->TAG:Ljava/lang/String;

    .line 58
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 368
    invoke-direct {p0, p1}, Lorg/bluros/platform/internal/CMSystemService;-><init>(Landroid/content/Context;)V

    .line 65
    const/4 v0, -0x1

    iput v0, p0, Lorg/bluros/platform/internal/CMHardwareService;->mCurrentThermalState:I

    .line 413
    new-instance v0, Lorg/bluros/platform/internal/CMHardwareService$1;

    invoke-direct {v0, p0}, Lorg/bluros/platform/internal/CMHardwareService$1;-><init>(Lorg/bluros/platform/internal/CMHardwareService;)V

    iput-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService;->mService:Landroid/os/IBinder;

    .line 369
    iput-object p1, p0, Lorg/bluros/platform/internal/CMHardwareService;->mContext:Landroid/content/Context;

    .line 370
    invoke-direct {p0, p1}, Lorg/bluros/platform/internal/CMHardwareService;->getImpl(Landroid/content/Context;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    move-result-object v0

    iput-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService;->mCmHwImpl:Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;

    .line 371
    const-string/jumbo v0, "cmhardware"

    iget-object v1, p0, Lorg/bluros/platform/internal/CMHardwareService;->mService:Landroid/os/IBinder;

    invoke-virtual {p0, v0, v1}, Lorg/bluros/platform/internal/CMHardwareService;->publishBinderService(Ljava/lang/String;Landroid/os/IBinder;)V

    .line 367
    return-void
.end method

.method private getImpl(Landroid/content/Context;)Lorg/bluros/platform/internal/CMHardwareService$CMHardwareInterface;
    .locals 1
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 364
    new-instance v0, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;

    invoke-direct {v0, p0}, Lorg/bluros/platform/internal/CMHardwareService$LegacyCMHardware;-><init>(Lorg/bluros/platform/internal/CMHardwareService;)V

    return-object v0
.end method


# virtual methods
.method public getFeatureDeclaration()Ljava/lang/String;
    .locals 1

    .prologue
    .line 376
    const-string/jumbo v0, "org.bluros.hardware"

    return-object v0
.end method

.method public onBootPhase(I)V
    .locals 3
    .param p1, "phase"    # I

    .prologue
    .line 381
    const/16 v1, 0x3e8

    if-ne p1, v1, :cond_0

    .line 382
    new-instance v0, Landroid/content/Intent;

    const-string/jumbo v1, "bluros.intent.action.INITIALIZE_CM_HARDWARE"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 383
    .local v0, "intent":Landroid/content/Intent;
    const/high16 v1, 0x10000000

    invoke-virtual {v0, v1}, Landroid/content/Intent;->addFlags(I)Landroid/content/Intent;

    .line 384
    iget-object v1, p0, Lorg/bluros/platform/internal/CMHardwareService;->mContext:Landroid/content/Context;

    .line 385
    const-string/jumbo v2, "bluros.permission.HARDWARE_ABSTRACTION_ACCESS"

    .line 384
    invoke-virtual {v1, v0, v2}, Landroid/content/Context;->sendBroadcast(Landroid/content/Intent;Ljava/lang/String;)V

    .line 380
    .end local v0    # "intent":Landroid/content/Intent;
    :cond_0
    return-void
.end method

.method public onStart()V
    .locals 1

    .prologue
    .line 391
    invoke-static {}, Lorg/bluros/hardware/ThermalMonitor;->isSupported()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 392
    invoke-static {p0}, Lorg/bluros/hardware/ThermalMonitor;->initialize(Lorg/bluros/hardware/ThermalUpdateCallback;)V

    .line 393
    new-instance v0, Landroid/os/RemoteCallbackList;

    invoke-direct {v0}, Landroid/os/RemoteCallbackList;-><init>()V

    iput-object v0, p0, Lorg/bluros/platform/internal/CMHardwareService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    .line 390
    :cond_0
    return-void
.end method

.method public setThermalState(I)V
    .locals 3
    .param p1, "state"    # I

    .prologue
    .line 399
    iput p1, p0, Lorg/bluros/platform/internal/CMHardwareService;->mCurrentThermalState:I

    .line 400
    iget-object v2, p0, Lorg/bluros/platform/internal/CMHardwareService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->beginBroadcast()I

    move-result v1

    .line 401
    .local v1, "i":I
    :goto_0
    if-lez v1, :cond_0

    .line 402
    add-int/lit8 v1, v1, -0x1

    .line 404
    :try_start_0
    iget-object v2, p0, Lorg/bluros/platform/internal/CMHardwareService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2, v1}, Landroid/os/RemoteCallbackList;->getBroadcastItem(I)Landroid/os/IInterface;

    move-result-object v2

    check-cast v2, Lbluros/hardware/IThermalListenerCallback;

    invoke-interface {v2, p1}, Lbluros/hardware/IThermalListenerCallback;->onThermalChanged(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 405
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0

    .line 410
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    iget-object v2, p0, Lorg/bluros/platform/internal/CMHardwareService;->mRemoteCallbackList:Landroid/os/RemoteCallbackList;

    invoke-virtual {v2}, Landroid/os/RemoteCallbackList;->finishBroadcast()V

    .line 398
    return-void
.end method
