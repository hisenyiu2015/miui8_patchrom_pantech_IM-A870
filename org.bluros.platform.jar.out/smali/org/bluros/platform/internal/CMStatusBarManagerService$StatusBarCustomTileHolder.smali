.class final Lorg/bluros/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;
.super Lorg/bluros/internal/statusbar/IStatusBarCustomTileHolder$Stub;
.source "CMStatusBarManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lorg/bluros/platform/internal/CMStatusBarManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x1a
    name = "StatusBarCustomTileHolder"
.end annotation


# instance fields
.field private mValue:Lbluros/app/StatusBarPanelCustomTile;


# direct methods
.method public constructor <init>(Lbluros/app/StatusBarPanelCustomTile;)V
    .locals 0
    .param p1, "value"    # Lbluros/app/StatusBarPanelCustomTile;

    .prologue
    .line 679
    invoke-direct {p0}, Lorg/bluros/internal/statusbar/IStatusBarCustomTileHolder$Stub;-><init>()V

    .line 680
    iput-object p1, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;->mValue:Lbluros/app/StatusBarPanelCustomTile;

    .line 679
    return-void
.end method


# virtual methods
.method public get()Lbluros/app/StatusBarPanelCustomTile;
    .locals 2

    .prologue
    .line 686
    iget-object v0, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;->mValue:Lbluros/app/StatusBarPanelCustomTile;

    .line 687
    .local v0, "value":Lbluros/app/StatusBarPanelCustomTile;
    const/4 v1, 0x0

    iput-object v1, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$StatusBarCustomTileHolder;->mValue:Lbluros/app/StatusBarPanelCustomTile;

    .line 688
    return-object v0
.end method
