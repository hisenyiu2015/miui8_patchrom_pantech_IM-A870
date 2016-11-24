.class public Lorg/bluros/internal/statusbar/ExternalQuickSettingsRecord;
.super Ljava/lang/Object;
.source "ExternalQuickSettingsRecord.java"


# instance fields
.field public isCanceled:Z

.field public isUpdate:Z

.field public final sbTile:Lbluros/app/StatusBarPanelCustomTile;


# direct methods
.method public constructor <init>(Lbluros/app/StatusBarPanelCustomTile;)V
    .locals 0
    .param p1, "tile"    # Lbluros/app/StatusBarPanelCustomTile;

    .prologue
    .line 34
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 35
    iput-object p1, p0, Lorg/bluros/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lbluros/app/StatusBarPanelCustomTile;

    .line 34
    return-void
.end method


# virtual methods
.method public getCustomTile()Lbluros/app/CustomTile;
    .locals 1

    .prologue
    .line 39
    iget-object v0, p0, Lorg/bluros/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lbluros/app/StatusBarPanelCustomTile;

    invoke-virtual {v0}, Lbluros/app/StatusBarPanelCustomTile;->getCustomTile()Lbluros/app/CustomTile;

    move-result-object v0

    return-object v0
.end method

.method public getKey()Ljava/lang/String;
    .locals 1

    .prologue
    .line 51
    iget-object v0, p0, Lorg/bluros/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lbluros/app/StatusBarPanelCustomTile;

    invoke-virtual {v0}, Lbluros/app/StatusBarPanelCustomTile;->getKey()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public getUser()Landroid/os/UserHandle;
    .locals 1

    .prologue
    .line 43
    iget-object v0, p0, Lorg/bluros/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lbluros/app/StatusBarPanelCustomTile;

    invoke-virtual {v0}, Lbluros/app/StatusBarPanelCustomTile;->getUser()Landroid/os/UserHandle;

    move-result-object v0

    return-object v0
.end method

.method public getUserId()I
    .locals 1

    .prologue
    .line 47
    iget-object v0, p0, Lorg/bluros/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lbluros/app/StatusBarPanelCustomTile;

    invoke-virtual {v0}, Lbluros/app/StatusBarPanelCustomTile;->getUserId()I

    move-result v0

    return v0
.end method
