.class Lorg/bluros/platform/internal/AppSuggestManagerService$1;
.super Lbluros/app/suggest/IAppSuggestManager$Stub;
.source "AppSuggestManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bluros/platform/internal/AppSuggestManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bluros/platform/internal/AppSuggestManagerService;


# direct methods
.method constructor <init>(Lorg/bluros/platform/internal/AppSuggestManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bluros/platform/internal/AppSuggestManagerService;

    .prologue
    .line 45
    iput-object p1, p0, Lorg/bluros/platform/internal/AppSuggestManagerService$1;->this$0:Lorg/bluros/platform/internal/AppSuggestManagerService;

    invoke-direct {p0}, Lbluros/app/suggest/IAppSuggestManager$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public getSuggestions(Landroid/content/Intent;)Ljava/util/List;
    .locals 2
    .param p1, "intent"    # Landroid/content/Intent;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Intent;",
            ")",
            "Ljava/util/List",
            "<",
            "Lbluros/app/suggest/ApplicationSuggestion;",
            ">;"
        }
    .end annotation

    .prologue
    .line 53
    iget-object v0, p0, Lorg/bluros/platform/internal/AppSuggestManagerService$1;->this$0:Lorg/bluros/platform/internal/AppSuggestManagerService;

    invoke-static {v0}, Lorg/bluros/platform/internal/AppSuggestManagerService;->-get0(Lorg/bluros/platform/internal/AppSuggestManagerService;)Lorg/bluros/platform/internal/AppSuggestProviderInterface;

    move-result-object v0

    if-nez v0, :cond_0

    new-instance v0, Ljava/util/ArrayList;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Ljava/util/ArrayList;-><init>(I)V

    return-object v0

    .line 55
    :cond_0
    iget-object v0, p0, Lorg/bluros/platform/internal/AppSuggestManagerService$1;->this$0:Lorg/bluros/platform/internal/AppSuggestManagerService;

    invoke-static {v0}, Lorg/bluros/platform/internal/AppSuggestManagerService;->-get0(Lorg/bluros/platform/internal/AppSuggestManagerService;)Lorg/bluros/platform/internal/AppSuggestProviderInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bluros/platform/internal/AppSuggestProviderInterface;->getSuggestions(Landroid/content/Intent;)Ljava/util/List;

    move-result-object v0

    return-object v0
.end method

.method public handles(Landroid/content/Intent;)Z
    .locals 1
    .param p1, "intent"    # Landroid/content/Intent;

    .prologue
    .line 47
    iget-object v0, p0, Lorg/bluros/platform/internal/AppSuggestManagerService$1;->this$0:Lorg/bluros/platform/internal/AppSuggestManagerService;

    invoke-static {v0}, Lorg/bluros/platform/internal/AppSuggestManagerService;->-get0(Lorg/bluros/platform/internal/AppSuggestManagerService;)Lorg/bluros/platform/internal/AppSuggestProviderInterface;

    move-result-object v0

    if-nez v0, :cond_0

    const/4 v0, 0x0

    return v0

    .line 49
    :cond_0
    iget-object v0, p0, Lorg/bluros/platform/internal/AppSuggestManagerService$1;->this$0:Lorg/bluros/platform/internal/AppSuggestManagerService;

    invoke-static {v0}, Lorg/bluros/platform/internal/AppSuggestManagerService;->-get0(Lorg/bluros/platform/internal/AppSuggestManagerService;)Lorg/bluros/platform/internal/AppSuggestProviderInterface;

    move-result-object v0

    invoke-interface {v0, p1}, Lorg/bluros/platform/internal/AppSuggestProviderInterface;->handles(Landroid/content/Intent;)Z

    move-result v0

    return v0
.end method
