.class Lbluros/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$4;
.super Ljava/lang/Object;
.source "KeyguardExternalViewProviderService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lbluros/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->onKeyguardDismissed()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$2:Lbluros/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;


# direct methods
.method constructor <init>(Lbluros/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;)V
    .locals 0
    .param p1, "this$2"    # Lbluros/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    .prologue
    .line 192
    iput-object p1, p0, Lbluros/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$4;->this$2:Lbluros/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 1

    .prologue
    .line 195
    iget-object v0, p0, Lbluros/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl$4;->this$2:Lbluros/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;

    iget-object v0, v0, Lbluros/externalviews/KeyguardExternalViewProviderService$Provider$ProviderImpl;->this$1:Lbluros/externalviews/KeyguardExternalViewProviderService$Provider;

    invoke-virtual {v0}, Lbluros/externalviews/KeyguardExternalViewProviderService$Provider;->onKeyguardDismissed()V

    .line 194
    return-void
.end method
