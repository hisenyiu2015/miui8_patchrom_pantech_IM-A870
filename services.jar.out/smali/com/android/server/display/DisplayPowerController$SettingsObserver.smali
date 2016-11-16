.class Lcom/android/server/display/DisplayPowerController$SettingsObserver;
.super Landroid/database/ContentObserver;
.source "DisplayPowerController.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/display/DisplayPowerController;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x2
    name = "SettingsObserver"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/display/DisplayPowerController;


# direct methods
.method constructor <init>(Lcom/android/server/display/DisplayPowerController;Landroid/os/Handler;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/display/DisplayPowerController;
    .param p2, "handler"    # Landroid/os/Handler;

    .prologue
    .line 435
    iput-object p1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 436
    invoke-direct {p0, p2}, Landroid/database/ContentObserver;-><init>(Landroid/os/Handler;)V

    .line 435
    return-void
.end method


# virtual methods
.method observe()V
    .locals 4

    .prologue
    .line 440
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->-get1(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 442
    .local v0, "resolver":Landroid/content/ContentResolver;
    const-string/jumbo v1, "doze_brightness"

    .line 441
    invoke-static {v1}, Landroid/provider/Settings$System;->getUriFor(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object v1

    .line 443
    const/4 v2, 0x0

    const/4 v3, -0x1

    .line 441
    invoke-virtual {v0, v1, v2, p0, v3}, Landroid/content/ContentResolver;->registerContentObserver(Landroid/net/Uri;ZLandroid/database/ContentObserver;I)V

    .line 444
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->update()V

    .line 439
    return-void
.end method

.method public onChange(Z)V
    .locals 0
    .param p1, "selfChange"    # Z

    .prologue
    .line 449
    invoke-super {p0, p1}, Landroid/database/ContentObserver;->onChange(Z)V

    .line 450
    invoke-virtual {p0}, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->update()V

    .line 448
    return-void
.end method

.method public update()V
    .locals 5

    .prologue
    const v4, -0x43dc28f6    # -0.01f

    .line 454
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->-get1(Lcom/android/server/display/DisplayPowerController;)Landroid/content/Context;

    move-result-object v1

    invoke-virtual {v1}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v0

    .line 457
    .local v0, "resolver":Landroid/content/ContentResolver;
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 458
    const-string/jumbo v2, "doze_brightness"

    .line 459
    const/4 v3, -0x2

    .line 457
    invoke-static {v0, v2, v4, v3}, Landroid/provider/Settings$System;->getFloatForUser(Landroid/content/ContentResolver;Ljava/lang/String;FI)F

    move-result v2

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayPowerController;->-set0(Lcom/android/server/display/DisplayPowerController;F)F

    .line 461
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->-get3(Lcom/android/server/display/DisplayPowerController;)F

    move-result v1

    const/4 v2, 0x0

    cmpl-float v1, v1, v2

    if-nez v1, :cond_0

    .line 462
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    const v2, 0x3ba3d70a    # 0.005f

    invoke-static {v1, v2}, Lcom/android/server/display/DisplayPowerController;->-set0(Lcom/android/server/display/DisplayPowerController;F)F

    .line 464
    :cond_0
    iget-object v2, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    .line 465
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->-get3(Lcom/android/server/display/DisplayPowerController;)F

    move-result v1

    cmpl-float v1, v1, v4

    if-nez v1, :cond_1

    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->-get2(Lcom/android/server/display/DisplayPowerController;)I

    move-result v1

    .line 464
    :goto_0
    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->-wrap0(I)I

    move-result v1

    invoke-static {v2, v1}, Lcom/android/server/display/DisplayPowerController;->-set2(Lcom/android/server/display/DisplayPowerController;I)I

    .line 453
    return-void

    .line 466
    :cond_1
    iget-object v1, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v1}, Lcom/android/server/display/DisplayPowerController;->-get3(Lcom/android/server/display/DisplayPowerController;)F

    move-result v1

    iget-object v3, p0, Lcom/android/server/display/DisplayPowerController$SettingsObserver;->this$0:Lcom/android/server/display/DisplayPowerController;

    invoke-static {v3}, Lcom/android/server/display/DisplayPowerController;->-get5(Lcom/android/server/display/DisplayPowerController;)I

    move-result v3

    int-to-float v3, v3

    mul-float/2addr v1, v3

    float-to-int v1, v1

    goto :goto_0
.end method
