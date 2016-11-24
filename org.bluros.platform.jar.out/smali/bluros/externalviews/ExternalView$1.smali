.class Lbluros/externalviews/ExternalView$1;
.super Ljava/lang/Object;
.source "ExternalView.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbluros/externalviews/ExternalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbluros/externalviews/ExternalView;


# direct methods
.method constructor <init>(Lbluros/externalviews/ExternalView;)V
    .locals 0
    .param p1, "this$0"    # Lbluros/externalviews/ExternalView;

    .prologue
    .line 73
    iput-object p1, p0, Lbluros/externalviews/ExternalView$1;->this$0:Lbluros/externalviews/ExternalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 4
    .param p1, "name"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 77
    :try_start_0
    iget-object v1, p0, Lbluros/externalviews/ExternalView$1;->this$0:Lbluros/externalviews/ExternalView;

    .line 78
    invoke-static {p2}, Lbluros/externalviews/IExternalViewProviderFactory$Stub;->asInterface(Landroid/os/IBinder;)Lbluros/externalviews/IExternalViewProviderFactory;

    move-result-object v2

    const/4 v3, 0x0

    invoke-interface {v2, v3}, Lbluros/externalviews/IExternalViewProviderFactory;->createExternalView(Landroid/os/Bundle;)Landroid/os/IBinder;

    move-result-object v2

    .line 77
    invoke-static {v2}, Lbluros/externalviews/IExternalViewProvider$Stub;->asInterface(Landroid/os/IBinder;)Lbluros/externalviews/IExternalViewProvider;

    move-result-object v2

    iput-object v2, v1, Lbluros/externalviews/ExternalView;->mExternalViewProvider:Lbluros/externalviews/IExternalViewProvider;

    .line 79
    iget-object v1, p0, Lbluros/externalviews/ExternalView$1;->this$0:Lbluros/externalviews/ExternalView;

    invoke-static {v1}, Lbluros/externalviews/ExternalView;->-wrap0(Lbluros/externalviews/ExternalView;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 75
    :goto_0
    return-void

    .line 80
    :catch_0
    move-exception v0

    .line 81
    .local v0, "e":Landroid/os/RemoteException;
    invoke-virtual {v0}, Landroid/os/RemoteException;->printStackTrace()V

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 2
    .param p1, "name"    # Landroid/content/ComponentName;

    .prologue
    .line 87
    iget-object v0, p0, Lbluros/externalviews/ExternalView$1;->this$0:Lbluros/externalviews/ExternalView;

    const/4 v1, 0x0

    iput-object v1, v0, Lbluros/externalviews/ExternalView;->mExternalViewProvider:Lbluros/externalviews/IExternalViewProvider;

    .line 86
    return-void
.end method
