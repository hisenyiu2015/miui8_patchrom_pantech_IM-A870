.class Lorg/bluros/platform/internal/CMStatusBarManagerService$3;
.super Ljava/lang/Object;
.source "CMStatusBarManagerService.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lorg/bluros/platform/internal/CMStatusBarManagerService;->createCustomTileWithTagInternal(Ljava/lang/String;Ljava/lang/String;IILjava/lang/String;ILbluros/app/CustomTile;[II)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lorg/bluros/platform/internal/CMStatusBarManagerService;

.field final synthetic val$callingPid:I

.field final synthetic val$callingUid:I

.field final synthetic val$customTile:Lbluros/app/CustomTile;

.field final synthetic val$id:I

.field final synthetic val$opPkg:Ljava/lang/String;

.field final synthetic val$pkg:Ljava/lang/String;

.field final synthetic val$tag:Ljava/lang/String;

.field final synthetic val$user:Landroid/os/UserHandle;

.field final synthetic val$userId:I


# direct methods
.method constructor <init>(Lorg/bluros/platform/internal/CMStatusBarManagerService;Lbluros/app/CustomTile;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILandroid/os/UserHandle;I)V
    .locals 0
    .param p1, "this$0"    # Lorg/bluros/platform/internal/CMStatusBarManagerService;
    .param p2, "val$customTile"    # Lbluros/app/CustomTile;
    .param p3, "val$pkg"    # Ljava/lang/String;
    .param p4, "val$opPkg"    # Ljava/lang/String;
    .param p5, "val$id"    # I
    .param p6, "val$tag"    # Ljava/lang/String;
    .param p7, "val$callingUid"    # I
    .param p8, "val$callingPid"    # I
    .param p9, "val$user"    # Landroid/os/UserHandle;
    .param p10, "val$userId"    # I

    .prologue
    .line 279
    iput-object p1, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->this$0:Lorg/bluros/platform/internal/CMStatusBarManagerService;

    iput-object p2, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$customTile:Lbluros/app/CustomTile;

    iput-object p3, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$pkg:Ljava/lang/String;

    iput-object p4, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$opPkg:Ljava/lang/String;

    iput p5, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$id:I

    iput-object p6, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$tag:Ljava/lang/String;

    iput p7, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$callingUid:I

    iput p8, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$callingPid:I

    iput-object p9, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$user:Landroid/os/UserHandle;

    iput p10, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$userId:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 14

    .prologue
    .line 283
    iget-object v1, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$customTile:Lbluros/app/CustomTile;

    invoke-virtual {v1}, Lbluros/app/CustomTile;->getResourcesPackageName()Ljava/lang/String;

    move-result-object v2

    .line 284
    .local v2, "resPkg":Ljava/lang/String;
    invoke-static {v2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 285
    iget-object v2, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$pkg:Ljava/lang/String;

    .line 288
    :cond_0
    new-instance v0, Lbluros/app/StatusBarPanelCustomTile;

    .line 289
    iget-object v1, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$pkg:Ljava/lang/String;

    iget-object v3, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$opPkg:Ljava/lang/String;

    iget v4, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$id:I

    iget-object v5, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$tag:Ljava/lang/String;

    iget v6, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$callingUid:I

    iget v7, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$callingPid:I

    iget-object v8, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$customTile:Lbluros/app/CustomTile;

    iget-object v9, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$user:Landroid/os/UserHandle;

    .line 288
    invoke-direct/range {v0 .. v9}, Lbluros/app/StatusBarPanelCustomTile;-><init>(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;ILjava/lang/String;IILbluros/app/CustomTile;Landroid/os/UserHandle;)V

    .line 290
    .local v0, "sbc":Lbluros/app/StatusBarPanelCustomTile;
    new-instance v13, Lorg/bluros/internal/statusbar/ExternalQuickSettingsRecord;

    invoke-direct {v13, v0}, Lorg/bluros/internal/statusbar/ExternalQuickSettingsRecord;-><init>(Lbluros/app/StatusBarPanelCustomTile;)V

    .line 291
    .local v13, "r":Lorg/bluros/internal/statusbar/ExternalQuickSettingsRecord;
    iget-object v1, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->this$0:Lorg/bluros/platform/internal/CMStatusBarManagerService;

    iget-object v1, v1, Lorg/bluros/platform/internal/CMStatusBarManagerService;->mCustomTileByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lbluros/app/StatusBarPanelCustomTile;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Landroid/util/ArrayMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v11

    check-cast v11, Lorg/bluros/internal/statusbar/ExternalQuickSettingsRecord;

    .line 293
    .local v11, "old":Lorg/bluros/internal/statusbar/ExternalQuickSettingsRecord;
    iget-object v1, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->this$0:Lorg/bluros/platform/internal/CMStatusBarManagerService;

    invoke-virtual {v0}, Lbluros/app/StatusBarPanelCustomTile;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3}, Lorg/bluros/platform/internal/CMStatusBarManagerService;->indexOfQsTileLocked(Ljava/lang/String;)I

    move-result v10

    .line 294
    .local v10, "index":I
    if-gez v10, :cond_4

    .line 296
    iget-object v1, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->this$0:Lorg/bluros/platform/internal/CMStatusBarManagerService;

    iget-object v3, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$pkg:Ljava/lang/String;

    iget v4, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$callingUid:I

    iget v5, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$userId:I

    invoke-static {v1, v3, v4, v5}, Lorg/bluros/platform/internal/CMStatusBarManagerService;->-wrap0(Lorg/bluros/platform/internal/CMStatusBarManagerService;Ljava/lang/String;II)Z

    move-result v1

    if-eqz v1, :cond_1

    return-void

    .line 297
    :cond_1
    iget-object v1, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->this$0:Lorg/bluros/platform/internal/CMStatusBarManagerService;

    iget-object v1, v1, Lorg/bluros/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v1, v13}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 304
    :goto_0
    iget-object v1, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->this$0:Lorg/bluros/platform/internal/CMStatusBarManagerService;

    iget-object v1, v1, Lorg/bluros/platform/internal/CMStatusBarManagerService;->mCustomTileByKey:Landroid/util/ArrayMap;

    invoke-virtual {v0}, Lbluros/app/StatusBarPanelCustomTile;->getKey()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {v1, v3, v13}, Landroid/util/ArrayMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 306
    iget-object v1, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$customTile:Lbluros/app/CustomTile;

    iget v1, v1, Lbluros/app/CustomTile;->icon:I

    if-nez v1, :cond_2

    iget-object v1, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$customTile:Lbluros/app/CustomTile;

    iget-object v1, v1, Lbluros/app/CustomTile;->remoteIcon:Landroid/graphics/Bitmap;

    if-eqz v1, :cond_6

    .line 307
    :cond_2
    if-eqz v11, :cond_5

    iget-object v12, v11, Lorg/bluros/internal/statusbar/ExternalQuickSettingsRecord;->sbTile:Lbluros/app/StatusBarPanelCustomTile;

    .line 308
    :goto_1
    iget-object v1, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->this$0:Lorg/bluros/platform/internal/CMStatusBarManagerService;

    invoke-static {v1}, Lorg/bluros/platform/internal/CMStatusBarManagerService;->-get1(Lorg/bluros/platform/internal/CMStatusBarManagerService;)Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;

    move-result-object v1

    invoke-virtual {v1, v0, v12}, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;->notifyPostedLocked(Lbluros/app/StatusBarPanelCustomTile;Lbluros/app/StatusBarPanelCustomTile;)V

    .line 281
    :cond_3
    :goto_2
    return-void

    .line 299
    :cond_4
    iget-object v1, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->this$0:Lorg/bluros/platform/internal/CMStatusBarManagerService;

    iget-object v1, v1, Lorg/bluros/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10}, Ljava/util/ArrayList;->get(I)Ljava/lang/Object;

    move-result-object v11

    .end local v11    # "old":Lorg/bluros/internal/statusbar/ExternalQuickSettingsRecord;
    check-cast v11, Lorg/bluros/internal/statusbar/ExternalQuickSettingsRecord;

    .line 300
    .restart local v11    # "old":Lorg/bluros/internal/statusbar/ExternalQuickSettingsRecord;
    iget-object v1, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->this$0:Lorg/bluros/platform/internal/CMStatusBarManagerService;

    iget-object v1, v1, Lorg/bluros/platform/internal/CMStatusBarManagerService;->mQSTileList:Ljava/util/ArrayList;

    invoke-virtual {v1, v10, v13}, Ljava/util/ArrayList;->set(ILjava/lang/Object;)Ljava/lang/Object;

    .line 301
    const/4 v1, 0x1

    iput-boolean v1, v13, Lorg/bluros/internal/statusbar/ExternalQuickSettingsRecord;->isUpdate:Z

    goto :goto_0

    .line 307
    :cond_5
    const/4 v12, 0x0

    .local v12, "oldSbn":Lbluros/app/StatusBarPanelCustomTile;
    goto :goto_1

    .line 310
    .end local v12    # "oldSbn":Lbluros/app/StatusBarPanelCustomTile;
    :cond_6
    const-string/jumbo v1, "CMStatusBarManagerService"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "Not posting custom tile with no icon set: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->val$customTile:Lbluros/app/CustomTile;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v1, v3}, Landroid/util/Slog;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    if-eqz v11, :cond_3

    iget-boolean v1, v11, Lorg/bluros/internal/statusbar/ExternalQuickSettingsRecord;->isCanceled:Z

    if-nez v1, :cond_3

    .line 312
    iget-object v1, p0, Lorg/bluros/platform/internal/CMStatusBarManagerService$3;->this$0:Lorg/bluros/platform/internal/CMStatusBarManagerService;

    invoke-static {v1}, Lorg/bluros/platform/internal/CMStatusBarManagerService;->-get1(Lorg/bluros/platform/internal/CMStatusBarManagerService;)Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;

    move-result-object v1

    invoke-virtual {v1, v0}, Lorg/bluros/platform/internal/CMStatusBarManagerService$CustomTileListeners;->notifyRemovedLocked(Lbluros/app/StatusBarPanelCustomTile;)V

    goto :goto_2
.end method
