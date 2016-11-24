.class Lbluros/externalviews/ExternalView$5;
.super Ljava/lang/Object;
.source "ExternalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbluros/externalviews/ExternalView;->onActivityPaused(Landroid/app/Activity;)V
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
    .line 168
    iput-object p1, p0, Lbluros/externalviews/ExternalView$5;->this$0:Lbluros/externalviews/ExternalView;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 172
    :try_start_0
    iget-object v1, p0, Lbluros/externalviews/ExternalView$5;->this$0:Lbluros/externalviews/ExternalView;

    iget-object v1, v1, Lbluros/externalviews/ExternalView;->mExternalViewProvider:Lbluros/externalviews/IExternalViewProvider;

    invoke-interface {v1}, Lbluros/externalviews/IExternalViewProvider;->onPause()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 175
    :goto_0
    iget-object v1, p0, Lbluros/externalviews/ExternalView$5;->this$0:Lbluros/externalviews/ExternalView;

    invoke-virtual {v1}, Lbluros/externalviews/ExternalView;->getViewTreeObserver()Landroid/view/ViewTreeObserver;

    move-result-object v1

    iget-object v2, p0, Lbluros/externalviews/ExternalView$5;->this$0:Lbluros/externalviews/ExternalView;

    invoke-virtual {v1, v2}, Landroid/view/ViewTreeObserver;->removeOnPreDrawListener(Landroid/view/ViewTreeObserver$OnPreDrawListener;)V

    .line 170
    return-void

    .line 173
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
