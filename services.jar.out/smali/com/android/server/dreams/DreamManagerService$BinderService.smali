.class final Lcom/android/server/dreams/DreamManagerService$BinderService;
.super Landroid/service/dreams/IDreamManager$Stub;
.source "DreamManagerService.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/dreams/DreamManagerService;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x12
    name = "BinderService"
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/server/dreams/DreamManagerService;


# direct methods
.method private constructor <init>(Lcom/android/server/dreams/DreamManagerService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamManagerService;

    .prologue
    .line 511
    iput-object p1, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-direct {p0}, Landroid/service/dreams/IDreamManager$Stub;-><init>()V

    return-void
.end method

.method synthetic constructor <init>(Lcom/android/server/dreams/DreamManagerService;Lcom/android/server/dreams/DreamManagerService$BinderService;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/server/dreams/DreamManagerService;

    .prologue
    invoke-direct {p0, p1}, Lcom/android/server/dreams/DreamManagerService$BinderService;-><init>(Lcom/android/server/dreams/DreamManagerService;)V

    return-void
.end method


# virtual methods
.method public awaken()V
    .locals 4

    .prologue
    .line 631
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string/jumbo v3, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v2, v3}, Lcom/android/server/dreams/DreamManagerService;->-wrap6(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 633
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 635
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-wrap10(Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 637
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 630
    return-void

    .line 636
    :catchall_0
    move-exception v2

    .line 637
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 636
    throw v2
.end method

.method public dream()V
    .locals 4

    .prologue
    .line 595
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string/jumbo v3, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v2, v3}, Lcom/android/server/dreams/DreamManagerService;->-wrap6(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 597
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 599
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-wrap11(Lcom/android/server/dreams/DreamManagerService;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 601
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 594
    return-void

    .line 600
    :catchall_0
    move-exception v2

    .line 601
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 600
    throw v2
.end method

.method protected dump(Ljava/io/FileDescriptor;Ljava/io/PrintWriter;[Ljava/lang/String;)V
    .locals 4
    .param p1, "fd"    # Ljava/io/FileDescriptor;
    .param p2, "pw"    # Ljava/io/PrintWriter;
    .param p3, "args"    # [Ljava/lang/String;

    .prologue
    .line 514
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-get0(Lcom/android/server/dreams/DreamManagerService;)Landroid/content/Context;

    move-result-object v2

    const-string/jumbo v3, "android.permission.DUMP"

    invoke-virtual {v2, v3}, Landroid/content/Context;->checkCallingOrSelfPermission(Ljava/lang/String;)I

    move-result v2

    if-eqz v2, :cond_0

    .line 516
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v3, "Permission Denial: can\'t dump DreamManager from from pid="

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 517
    invoke-static {}, Landroid/os/Binder;->getCallingPid()I

    move-result v3

    .line 516
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 518
    const-string/jumbo v3, ", uid="

    .line 516
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v2

    .line 518
    invoke-static {}, Landroid/os/Binder;->getCallingUid()I

    move-result v3

    .line 516
    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p2, v2}, Ljava/io/PrintWriter;->println(Ljava/lang/String;)V

    .line 519
    return-void

    .line 522
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 524
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2, p2}, Lcom/android/server/dreams/DreamManagerService;->-wrap8(Lcom/android/server/dreams/DreamManagerService;Ljava/io/PrintWriter;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 526
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 513
    return-void

    .line 525
    :catchall_0
    move-exception v2

    .line 526
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 525
    throw v2
.end method

.method public finishSelf(Landroid/os/IBinder;Z)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "immediate"    # Z

    .prologue
    .line 644
    if-nez p1, :cond_0

    .line 645
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "token must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 648
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 650
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2, p1, p2}, Lcom/android/server/dreams/DreamManagerService;->-wrap9(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;Z)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 652
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 642
    return-void

    .line 651
    :catchall_0
    move-exception v2

    .line 652
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 651
    throw v2
.end method

.method public getDefaultDreamComponent()Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 558
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string/jumbo v4, "android.permission.READ_DREAM_STATE"

    invoke-static {v3, v4}, Lcom/android/server/dreams/DreamManagerService;->-wrap6(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 560
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 561
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 563
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v3, v2}, Lcom/android/server/dreams/DreamManagerService;->-wrap1(Lcom/android/server/dreams/DreamManagerService;I)Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 565
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 563
    return-object v3

    .line 564
    :catchall_0
    move-exception v3

    .line 565
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 564
    throw v3
.end method

.method public getDreamComponents()[Landroid/content/ComponentName;
    .locals 5

    .prologue
    .line 532
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string/jumbo v4, "android.permission.READ_DREAM_STATE"

    invoke-static {v3, v4}, Lcom/android/server/dreams/DreamManagerService;->-wrap6(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 534
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 535
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 537
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v3, v2}, Lcom/android/server/dreams/DreamManagerService;->-wrap0(Lcom/android/server/dreams/DreamManagerService;I)[Landroid/content/ComponentName;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result-object v3

    .line 539
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 537
    return-object v3

    .line 538
    :catchall_0
    move-exception v3

    .line 539
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 538
    throw v3
.end method

.method public getLidState()I
    .locals 4

    .prologue
    .line 700
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string/jumbo v3, "android.permission.READ_DREAM_STATE"

    invoke-static {v2, v3}, Lcom/android/server/dreams/DreamManagerService;->-wrap6(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 702
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 704
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-wrap5(Lcom/android/server/dreams/DreamManagerService;)I
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 706
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 704
    return v2

    .line 705
    :catchall_0
    move-exception v2

    .line 706
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 705
    throw v2
.end method

.method public isDozing()Z
    .locals 4

    .prologue
    .line 583
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string/jumbo v3, "android.permission.READ_DREAM_STATE"

    invoke-static {v2, v3}, Lcom/android/server/dreams/DreamManagerService;->-wrap6(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 585
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 587
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-wrap3(Lcom/android/server/dreams/DreamManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 589
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 587
    return v2

    .line 588
    :catchall_0
    move-exception v2

    .line 589
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 588
    throw v2
.end method

.method public isDreaming()Z
    .locals 4

    .prologue
    .line 571
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string/jumbo v3, "android.permission.READ_DREAM_STATE"

    invoke-static {v2, v3}, Lcom/android/server/dreams/DreamManagerService;->-wrap6(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 573
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 575
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2}, Lcom/android/server/dreams/DreamManagerService;->-wrap4(Lcom/android/server/dreams/DreamManagerService;)Z
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    move-result v2

    .line 577
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 575
    return v2

    .line 576
    :catchall_0
    move-exception v2

    .line 577
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 576
    throw v2
.end method

.method public setDreamComponents([Landroid/content/ComponentName;)V
    .locals 5
    .param p1, "componentNames"    # [Landroid/content/ComponentName;

    .prologue
    .line 545
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string/jumbo v4, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v3, v4}, Lcom/android/server/dreams/DreamManagerService;->-wrap6(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 547
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v2

    .line 548
    .local v2, "userId":I
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 550
    .local v0, "ident":J
    :try_start_0
    iget-object v3, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v3, v2, p1}, Lcom/android/server/dreams/DreamManagerService;->-wrap12(Lcom/android/server/dreams/DreamManagerService;I[Landroid/content/ComponentName;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 552
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 544
    return-void

    .line 551
    :catchall_0
    move-exception v3

    .line 552
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 551
    throw v3
.end method

.method public setLidState(I)V
    .locals 4
    .param p1, "lidState"    # I

    .prologue
    .line 688
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string/jumbo v3, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v2, v3}, Lcom/android/server/dreams/DreamManagerService;->-wrap6(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 690
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 692
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2, p1}, Lcom/android/server/dreams/DreamManagerService;->-wrap13(Lcom/android/server/dreams/DreamManagerService;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 694
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 687
    return-void

    .line 693
    :catchall_0
    move-exception v2

    .line 694
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 693
    throw v2
.end method

.method public startDozing(Landroid/os/IBinder;II)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;
    .param p2, "screenState"    # I
    .param p3, "screenBrightness"    # I

    .prologue
    .line 659
    if-nez p1, :cond_0

    .line 660
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "token must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 663
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 665
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2, p1, p2, p3}, Lcom/android/server/dreams/DreamManagerService;->-wrap14(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;II)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 667
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 657
    return-void

    .line 666
    :catchall_0
    move-exception v2

    .line 667
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 666
    throw v2
.end method

.method public stopDozing(Landroid/os/IBinder;)V
    .locals 4
    .param p1, "token"    # Landroid/os/IBinder;

    .prologue
    .line 674
    if-nez p1, :cond_0

    .line 675
    new-instance v2, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v3, "token must not be null"

    invoke-direct {v2, v3}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v2

    .line 678
    :cond_0
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v0

    .line 680
    .local v0, "ident":J
    :try_start_0
    iget-object v2, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v2, p1}, Lcom/android/server/dreams/DreamManagerService;->-wrap16(Lcom/android/server/dreams/DreamManagerService;Landroid/os/IBinder;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 682
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 672
    return-void

    .line 681
    :catchall_0
    move-exception v2

    .line 682
    invoke-static {v0, v1}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 681
    throw v2
.end method

.method public testDream(Landroid/content/ComponentName;)V
    .locals 7
    .param p1, "dream"    # Landroid/content/ComponentName;

    .prologue
    .line 607
    if-nez p1, :cond_0

    .line 608
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "dream must not be null"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 610
    :cond_0
    iget-object v4, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    const-string/jumbo v5, "android.permission.WRITE_DREAM_STATE"

    invoke-static {v4, v5}, Lcom/android/server/dreams/DreamManagerService;->-wrap6(Lcom/android/server/dreams/DreamManagerService;Ljava/lang/String;)V

    .line 612
    invoke-static {}, Landroid/os/UserHandle;->getCallingUserId()I

    move-result v0

    .line 613
    .local v0, "callingUserId":I
    invoke-static {}, Landroid/app/ActivityManager;->getCurrentUser()I

    move-result v1

    .line 614
    .local v1, "currentUserId":I
    if-eq v0, v1, :cond_1

    .line 616
    const-string/jumbo v4, "DreamManagerService"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v6, "Aborted attempt to start a test dream while a different  user is active: callingUserId="

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    .line 618
    const-string/jumbo v6, ", currentUserId="

    .line 616
    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Slog;->w(Ljava/lang/String;Ljava/lang/String;)I

    .line 619
    return-void

    .line 621
    :cond_1
    invoke-static {}, Landroid/os/Binder;->clearCallingIdentity()J

    move-result-wide v2

    .line 623
    .local v2, "ident":J
    :try_start_0
    iget-object v4, p0, Lcom/android/server/dreams/DreamManagerService$BinderService;->this$0:Lcom/android/server/dreams/DreamManagerService;

    invoke-static {v4, p1, v0}, Lcom/android/server/dreams/DreamManagerService;->-wrap19(Lcom/android/server/dreams/DreamManagerService;Landroid/content/ComponentName;I)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 625
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 606
    return-void

    .line 624
    :catchall_0
    move-exception v4

    .line 625
    invoke-static {v2, v3}, Landroid/os/Binder;->restoreCallingIdentity(J)V

    .line 624
    throw v4
.end method
