.class Lbluros/externalviews/KeyguardExternalView$2;
.super Lbluros/externalviews/IKeyguardExternalViewCallbacks$Stub;
.source "KeyguardExternalView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbluros/externalviews/KeyguardExternalView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbluros/externalviews/KeyguardExternalView;


# direct methods
.method constructor <init>(Lbluros/externalviews/KeyguardExternalView;)V
    .locals 0
    .param p1, "this$0"    # Lbluros/externalviews/KeyguardExternalView;

    .prologue
    .line 157
    iput-object p1, p0, Lbluros/externalviews/KeyguardExternalView$2;->this$0:Lbluros/externalviews/KeyguardExternalView;

    invoke-direct {p0}, Lbluros/externalviews/IKeyguardExternalViewCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public collapseNotificationPanel()V
    .locals 0
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 177
    return-void
.end method

.method public onAttachedToWindow()V
    .locals 1

    .prologue
    .line 188
    iget-object v0, p0, Lbluros/externalviews/KeyguardExternalView$2;->this$0:Lbluros/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lbluros/externalviews/KeyguardExternalView;->-get7(Lbluros/externalviews/KeyguardExternalView;)Lbluros/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 189
    iget-object v0, p0, Lbluros/externalviews/KeyguardExternalView$2;->this$0:Lbluros/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lbluros/externalviews/KeyguardExternalView;->-get7(Lbluros/externalviews/KeyguardExternalView;)Lbluros/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lbluros/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;->onAttachedToWindow()V

    .line 187
    :cond_0
    return-void
.end method

.method public onDetachedFromWindow()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lbluros/externalviews/KeyguardExternalView$2;->this$0:Lbluros/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lbluros/externalviews/KeyguardExternalView;->-get7(Lbluros/externalviews/KeyguardExternalView;)Lbluros/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 196
    iget-object v0, p0, Lbluros/externalviews/KeyguardExternalView$2;->this$0:Lbluros/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lbluros/externalviews/KeyguardExternalView;->-get7(Lbluros/externalviews/KeyguardExternalView;)Lbluros/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;

    move-result-object v0

    invoke-interface {v0}, Lbluros/externalviews/KeyguardExternalView$OnWindowAttachmentChangedListener;->onDetachedFromWindow()V

    .line 194
    :cond_0
    return-void
.end method

.method public requestDismiss()Z
    .locals 1
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 160
    iget-object v0, p0, Lbluros/externalviews/KeyguardExternalView$2;->this$0:Lbluros/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lbluros/externalviews/KeyguardExternalView;->-get1(Lbluros/externalviews/KeyguardExternalView;)Lbluros/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 161
    iget-object v0, p0, Lbluros/externalviews/KeyguardExternalView$2;->this$0:Lbluros/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lbluros/externalviews/KeyguardExternalView;->-get1(Lbluros/externalviews/KeyguardExternalView;)Lbluros/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lbluros/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;->requestDismiss()Z

    move-result v0

    return v0

    .line 164
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public requestDismissAndStartActivity(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 169
    iget-object v0, p0, Lbluros/externalviews/KeyguardExternalView$2;->this$0:Lbluros/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lbluros/externalviews/KeyguardExternalView;->-get1(Lbluros/externalviews/KeyguardExternalView;)Lbluros/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 170
    iget-object v0, p0, Lbluros/externalviews/KeyguardExternalView$2;->this$0:Lbluros/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lbluros/externalviews/KeyguardExternalView;->-get1(Lbluros/externalviews/KeyguardExternalView;)Lbluros/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    move-result-object v0

    invoke-interface {v0, p1}, Lbluros/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;->requestDismissAndStartActivity(Landroid/content/Intent;)Z

    move-result v0

    return v0

    .line 173
    :cond_0
    const/4 v0, 0x0

    return v0
.end method

.method public setInteractivity(Z)V
    .locals 1
    .param p1, "isInteractive"    # Z

    .prologue
    .line 183
    iget-object v0, p0, Lbluros/externalviews/KeyguardExternalView$2;->this$0:Lbluros/externalviews/KeyguardExternalView;

    invoke-static {v0, p1}, Lbluros/externalviews/KeyguardExternalView;->-set1(Lbluros/externalviews/KeyguardExternalView;Z)Z

    .line 182
    return-void
.end method

.method public slideLockscreenIn()V
    .locals 1

    .prologue
    .line 202
    iget-object v0, p0, Lbluros/externalviews/KeyguardExternalView$2;->this$0:Lbluros/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lbluros/externalviews/KeyguardExternalView;->-get1(Lbluros/externalviews/KeyguardExternalView;)Lbluros/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 203
    iget-object v0, p0, Lbluros/externalviews/KeyguardExternalView$2;->this$0:Lbluros/externalviews/KeyguardExternalView;

    invoke-static {v0}, Lbluros/externalviews/KeyguardExternalView;->-get1(Lbluros/externalviews/KeyguardExternalView;)Lbluros/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;

    move-result-object v0

    invoke-interface {v0}, Lbluros/externalviews/KeyguardExternalView$KeyguardExternalViewCallbacks;->slideLockscreenIn()V

    .line 201
    :cond_0
    return-void
.end method
