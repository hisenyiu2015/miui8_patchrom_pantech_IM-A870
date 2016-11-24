.class Lorg/bluros/platform/internal/PerformanceManagerService$2;
.super Ljava/lang/Object;
.source "PerformanceManagerService.java"

# interfaces
.implements Landroid/os/PowerManagerInternal$LowPowerModeListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bluros/platform/internal/PerformanceManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bluros/platform/internal/PerformanceManagerService;


# direct methods
.method constructor <init>(Lorg/bluros/platform/internal/PerformanceManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lorg/bluros/platform/internal/PerformanceManagerService;

    .prologue
    .line 399
    iput-object p1, p0, Lorg/bluros/platform/internal/PerformanceManagerService$2;->this$0:Lorg/bluros/platform/internal/PerformanceManagerService;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onLowPowerModeChanged(Z)V
    .locals 2
    .param p1, "enabled"    # Z

    .prologue
    .line 403
    iget-object v0, p0, Lorg/bluros/platform/internal/PerformanceManagerService$2;->this$0:Lorg/bluros/platform/internal/PerformanceManagerService;

    invoke-static {v0}, Lorg/bluros/platform/internal/PerformanceManagerService;->-get2(Lorg/bluros/platform/internal/PerformanceManagerService;)Z

    move-result v0

    if-ne p1, v0, :cond_0

    .line 404
    return-void

    .line 409
    :cond_0
    iget-object v0, p0, Lorg/bluros/platform/internal/PerformanceManagerService$2;->this$0:Lorg/bluros/platform/internal/PerformanceManagerService;

    invoke-static {v0, p1}, Lorg/bluros/platform/internal/PerformanceManagerService;->-set1(Lorg/bluros/platform/internal/PerformanceManagerService;Z)Z

    .line 410
    iget-object v0, p0, Lorg/bluros/platform/internal/PerformanceManagerService$2;->this$0:Lorg/bluros/platform/internal/PerformanceManagerService;

    const/4 v1, 0x1

    invoke-static {v0, v1}, Lorg/bluros/platform/internal/PerformanceManagerService;->-wrap3(Lorg/bluros/platform/internal/PerformanceManagerService;Z)V

    .line 402
    return-void
.end method
