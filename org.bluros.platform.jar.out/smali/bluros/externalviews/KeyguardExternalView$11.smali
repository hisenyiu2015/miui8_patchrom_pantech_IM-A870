.class Lbluros/externalviews/KeyguardExternalView$11;
.super Ljava/lang/Object;
.source "KeyguardExternalView.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbluros/externalviews/KeyguardExternalView;->onLockscreenSlideOffsetChanged(F)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbluros/externalviews/KeyguardExternalView;

.field final synthetic val$swipeProgress:F


# direct methods
.method constructor <init>(Lbluros/externalviews/KeyguardExternalView;F)V
    .locals 0
    .param p1, "this$0"    # Lbluros/externalviews/KeyguardExternalView;
    .param p2, "val$swipeProgress"    # F

    .prologue
    .line 391
    iput-object p1, p0, Lbluros/externalviews/KeyguardExternalView$11;->this$0:Lbluros/externalviews/KeyguardExternalView;

    iput p2, p0, Lbluros/externalviews/KeyguardExternalView$11;->val$swipeProgress:F

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 395
    :try_start_0
    iget-object v1, p0, Lbluros/externalviews/KeyguardExternalView$11;->this$0:Lbluros/externalviews/KeyguardExternalView;

    invoke-static {v1}, Lbluros/externalviews/KeyguardExternalView;->-get3(Lbluros/externalviews/KeyguardExternalView;)Lbluros/externalviews/IKeyguardExternalViewProvider;

    move-result-object v1

    iget v2, p0, Lbluros/externalviews/KeyguardExternalView$11;->val$swipeProgress:F

    invoke-interface {v1, v2}, Lbluros/externalviews/IKeyguardExternalViewProvider;->onLockscreenSlideOffsetChanged(F)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 393
    :goto_0
    return-void

    .line 396
    :catch_0
    move-exception v0

    .local v0, "e":Landroid/os/RemoteException;
    goto :goto_0
.end method
