.class final Lorg/bluros/platform/internal/LiveLockScreenServiceBroker$BinderService;
.super Lbluros/app/ILiveLockScreenManager$Stub;
.source "LiveLockScreenServiceBroker.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;


# direct methods
.method private constructor <init>(Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;

    .prologue
    .line 121
    iput-object p1, p0, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;

    invoke-direct {p0}, Lbluros/app/ILiveLockScreenManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;Lorg/bluros/platform/internal/LiveLockScreenServiceBroker$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;

    .prologue
    invoke-direct {p0, p1}, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker$BinderService;-><init>(Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;)V

    return-void
.end method


# virtual methods
.method public cancelLiveLockScreen(Ljava/lang/String;II)V
    .locals 1
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 131
    iget-object v0, p0, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;

    invoke-virtual {v0}, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lbluros/app/ILiveLockScreenManagerProvider;

    invoke-interface {v0, p1, p2, p3}, Lbluros/app/ILiveLockScreenManagerProvider;->cancelLiveLockScreen(Ljava/lang/String;II)V

    .line 130
    return-void
.end method

.method public enqueueLiveLockScreen(Ljava/lang/String;ILbluros/app/LiveLockScreenInfo;[II)V
    .locals 6
    .param p1, "pkg"    # Ljava/lang/String;
    .param p2, "id"    # I
    .param p3, "lls"    # Lbluros/app/LiveLockScreenInfo;
    .param p4, "idReceived"    # [I
    .param p5, "userId"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 126
    iget-object v0, p0, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;

    invoke-virtual {v0}, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lbluros/app/ILiveLockScreenManagerProvider;

    move-object v1, p1

    move v2, p2

    move-object v3, p3

    move-object v4, p4

    move v5, p5

    invoke-interface/range {v0 .. v5}, Lbluros/app/ILiveLockScreenManagerProvider;->enqueueLiveLockScreen(Ljava/lang/String;ILbluros/app/LiveLockScreenInfo;[II)V

    .line 125
    return-void
.end method

.method public getCurrentLiveLockScreen()Lbluros/app/LiveLockScreenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 136
    iget-object v0, p0, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;

    invoke-virtual {v0}, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lbluros/app/ILiveLockScreenManagerProvider;

    invoke-interface {v0}, Lbluros/app/ILiveLockScreenManagerProvider;->getCurrentLiveLockScreen()Lbluros/app/LiveLockScreenInfo;

    move-result-object v0

    return-object v0
.end method

.method public getDefaultLiveLockScreen()Lbluros/app/LiveLockScreenInfo;
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 141
    iget-object v0, p0, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v0}, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;->-wrap1(Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;)V

    .line 142
    iget-object v0, p0, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v0}, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;->-wrap0(Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;)Lbluros/app/LiveLockScreenInfo;

    move-result-object v0

    return-object v0
.end method

.method public getLiveLockScreenEnabled()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 159
    iget-object v0, p0, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;

    invoke-virtual {v0}, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v0

    check-cast v0, Lbluros/app/ILiveLockScreenManagerProvider;

    invoke-interface {v0}, Lbluros/app/ILiveLockScreenManagerProvider;->getLiveLockScreenEnabled()Z

    move-result v0

    return v0
.end method

.method public registerChangeListener(Lbluros/app/ILiveLockScreenChangeListener;)Z
    .locals 2
    .param p1, "listener"    # Lbluros/app/ILiveLockScreenChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 165
    iget-object v1, p0, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;

    invoke-virtual {v1}, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lbluros/app/ILiveLockScreenManagerProvider;

    invoke-interface {v1, p1}, Lbluros/app/ILiveLockScreenManagerProvider;->registerChangeListener(Lbluros/app/ILiveLockScreenChangeListener;)Z

    move-result v0

    .line 166
    .local v0, "registered":Z
    if-eqz v0, :cond_0

    .line 167
    iget-object v1, p0, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v1}, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;->-get0(Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->register(Landroid/os/IInterface;)Z

    .line 169
    :cond_0
    return v0
.end method

.method public setDefaultLiveLockScreen(Lbluros/app/LiveLockScreenInfo;)V
    .locals 1
    .param p1, "llsInfo"    # Lbluros/app/LiveLockScreenInfo;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 147
    iget-object v0, p0, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v0}, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;->-wrap1(Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;)V

    .line 148
    iget-object v0, p0, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v0, p1}, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;->-wrap2(Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;Lbluros/app/LiveLockScreenInfo;)V

    .line 146
    return-void
.end method

.method public setLiveLockScreenEnabled(Z)V
    .locals 1
    .param p1, "enabled"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 153
    iget-object v0, p0, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v0}, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;->-wrap1(Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;)V

    .line 154
    iget-object v0, p0, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v0, p1}, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;->-wrap3(Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;Z)V

    .line 152
    return-void
.end method

.method public unregisterChangeListener(Lbluros/app/ILiveLockScreenChangeListener;)Z
    .locals 2
    .param p1, "listener"    # Lbluros/app/ILiveLockScreenChangeListener;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 175
    iget-object v1, p0, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;

    invoke-virtual {v1}, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;->getBrokeredService()Landroid/os/IInterface;

    move-result-object v1

    check-cast v1, Lbluros/app/ILiveLockScreenManagerProvider;

    invoke-interface {v1, p1}, Lbluros/app/ILiveLockScreenManagerProvider;->unregisterChangeListener(Lbluros/app/ILiveLockScreenChangeListener;)Z

    move-result v0

    .line 176
    .local v0, "unregistered":Z
    if-eqz v0, :cond_0

    .line 177
    iget-object v1, p0, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker$BinderService;->this$0:Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;

    invoke-static {v1}, Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;->-get0(Lorg/bluros/platform/internal/LiveLockScreenServiceBroker;)Landroid/os/RemoteCallbackList;

    move-result-object v1

    invoke-virtual {v1, p1}, Landroid/os/RemoteCallbackList;->unregister(Landroid/os/IInterface;)Z

    .line 179
    :cond_0
    return v0
.end method
