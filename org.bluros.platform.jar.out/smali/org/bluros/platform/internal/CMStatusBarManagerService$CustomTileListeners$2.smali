.class Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners$2;
.super Ljava/lang/Object;
.source "CMStatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;->notifyPostedLocked(Lbluros/app/StatusBarPanelCustomTile;Lbluros/app/StatusBarPanelCustomTile;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;

.field final synthetic val$info:Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;

.field final synthetic val$sbcToPost:Lbluros/app/StatusBarPanelCustomTile;


# direct methods
.method constructor <init>(Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;Lbluros/app/StatusBarPanelCustomTile;)V
    .locals 0
    .param p1, "this$1"    # Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;
    .param p2, "val$info"    # Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;
    .param p3, "val$sbcToPost"    # Lbluros/app/StatusBarPanelCustomTile;

    .prologue
    .line 618
    iput-object p1, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners$2;->this$1:Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;

    iput-object p2, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners$2;->val$info:Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;

    iput-object p3, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners$2;->val$sbcToPost:Lbluros/app/StatusBarPanelCustomTile;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 3

    .prologue
    .line 621
    iget-object v0, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners$2;->this$1:Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;

    iget-object v1, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners$2;->val$info:Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;

    iget-object v2, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners$2;->val$sbcToPost:Lbluros/app/StatusBarPanelCustomTile;

    invoke-static {v0, v1, v2}, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;->-wrap0(Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;Lorg/bluros/platform/internal/ManagedServices$ManagedServiceInfo;Lbluros/app/StatusBarPanelCustomTile;)V

    .line 620
    return-void
.end method
