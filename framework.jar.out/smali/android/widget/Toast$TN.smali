.class Landroid/widget/Toast$TN;
.super Landroid/app/ITransientNotification$Stub;
.source "Toast.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/Toast;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0xa
    name = "TN"
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/widget/Toast$TN$1;,
        Landroid/widget/Toast$TN$2;
    }
.end annotation


# instance fields
.field mGravity:I

.field final mHandler:Landroid/os/Handler;

.field final mHide:Ljava/lang/Runnable;

.field mHorizontalMargin:F

.field mNextView:Landroid/view/View;

.field private final mParams:Landroid/view/WindowManager$LayoutParams;

.field final mShow:Ljava/lang/Runnable;

.field mVerticalMargin:F

.field mView:Landroid/view/View;

.field mWM:Landroid/view/WindowManager;

.field mX:I

.field mY:I


# direct methods
.method static synthetic -get0(Landroid/widget/Toast$TN;)Landroid/view/WindowManager$LayoutParams;
    .locals 1

    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    return-object v0
.end method

.method constructor <init>()V
    .locals 3

    .prologue
    const/4 v2, -0x2

    .line 363
    invoke-direct {p0}, Landroid/app/ITransientNotification$Stub;-><init>()V

    .line 333
    new-instance v1, Landroid/widget/Toast$TN$1;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$1;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mShow:Ljava/lang/Runnable;

    .line 340
    new-instance v1, Landroid/widget/Toast$TN$2;

    invoke-direct {v1, p0}, Landroid/widget/Toast$TN$2;-><init>(Landroid/widget/Toast$TN;)V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    .line 349
    new-instance v1, Landroid/view/WindowManager$LayoutParams;

    invoke-direct {v1}, Landroid/view/WindowManager$LayoutParams;-><init>()V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 350
    new-instance v1, Landroid/os/Handler;

    invoke-direct {v1}, Landroid/os/Handler;-><init>()V

    iput-object v1, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    .line 366
    iget-object v0, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    .line 367
    .local v0, "params":Landroid/view/WindowManager$LayoutParams;
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->height:I

    .line 368
    iput v2, v0, Landroid/view/WindowManager$LayoutParams;->width:I

    .line 369
    const/4 v1, -0x3

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->format:I

    .line 370
    const v1, 0x1030004

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    .line 371
    const/16 v1, 0x7d5

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->type:I

    .line 372
    const-string/jumbo v1, "Toast"

    invoke-virtual {v0, v1}, Landroid/view/WindowManager$LayoutParams;->setTitle(Ljava/lang/CharSequence;)V

    .line 373
    const/16 v1, 0x98

    iput v1, v0, Landroid/view/WindowManager$LayoutParams;->flags:I

    .line 363
    return-void
.end method

.method private trySendAccessibilityEvent()V
    .locals 3

    .prologue
    .line 508
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-static {v2}, Landroid/view/accessibility/AccessibilityManager;->getInstance(Landroid/content/Context;)Landroid/view/accessibility/AccessibilityManager;

    move-result-object v0

    .line 509
    .local v0, "accessibilityManager":Landroid/view/accessibility/AccessibilityManager;
    invoke-virtual {v0}, Landroid/view/accessibility/AccessibilityManager;->isEnabled()Z

    move-result v2

    if-nez v2, :cond_0

    .line 510
    return-void

    .line 515
    :cond_0
    const/16 v2, 0x40

    .line 514
    invoke-static {v2}, Landroid/view/accessibility/AccessibilityEvent;->obtain(I)Landroid/view/accessibility/AccessibilityEvent;

    move-result-object v1

    .line 516
    .local v1, "event":Landroid/view/accessibility/AccessibilityEvent;
    invoke-virtual {p0}, Landroid/widget/Toast$TN;->getClass()Ljava/lang/Class;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setClassName(Ljava/lang/CharSequence;)V

    .line 517
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v2

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/view/accessibility/AccessibilityEvent;->setPackageName(Ljava/lang/CharSequence;)V

    .line 518
    iget-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v2, v1}, Landroid/view/View;->dispatchPopulateAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)Z

    .line 519
    invoke-virtual {v0, v1}, Landroid/view/accessibility/AccessibilityManager;->sendAccessibilityEvent(Landroid/view/accessibility/AccessibilityEvent;)V

    .line 506
    return-void
.end method


# virtual methods
.method public handleHide()V
    .locals 3

    .prologue
    const/4 v2, 0x0

    .line 524
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    if-eqz v0, :cond_1

    .line 528
    iget-object v0, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v0}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 530
    iget-object v0, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v0, v1}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 533
    :cond_0
    iput-object v2, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 522
    :cond_1
    return-void
.end method

.method public handleShow()V
    .locals 13

    .prologue
    const/high16 v12, 0x3f800000    # 1.0f

    const/4 v11, 0x1

    .line 399
    iget-object v9, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v10, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    if-eq v9, v10, :cond_5

    .line 401
    invoke-virtual {p0}, Landroid/widget/Toast$TN;->handleHide()V

    .line 402
    iget-object v9, p0, Landroid/widget/Toast$TN;->mNextView:Landroid/view/View;

    iput-object v9, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    .line 403
    iget-object v9, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getApplicationContext()Landroid/content/Context;

    move-result-object v3

    .line 404
    .local v3, "context":Landroid/content/Context;
    iget-object v9, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getOpPackageName()Ljava/lang/String;

    move-result-object v7

    .line 405
    .local v7, "packageName":Ljava/lang/String;
    if-nez v3, :cond_0

    .line 406
    iget-object v9, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v3

    .line 409
    :cond_0
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    .line 410
    const-string/jumbo v10, "toast_icon"

    .line 409
    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    if-ne v9, v11, :cond_1

    .line 411
    iget-object v9, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    const v10, 0x1020006

    invoke-virtual {v9, v10}, Landroid/view/View;->findViewById(I)Landroid/view/View;

    move-result-object v1

    check-cast v1, Landroid/widget/ImageView;

    .line 412
    .local v1, "appIcon":Landroid/widget/ImageView;
    if-eqz v1, :cond_1

    .line 414
    const-string/jumbo v9, "activity"

    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/app/ActivityManager;

    .line 415
    .local v0, "am":Landroid/app/ActivityManager;
    invoke-virtual {v0, v7}, Landroid/app/ActivityManager;->isPackageInForeground(Ljava/lang/String;)Z

    move-result v9

    if-nez v9, :cond_1

    .line 416
    invoke-virtual {v3}, Landroid/content/Context;->getPackageManager()Landroid/content/pm/PackageManager;

    move-result-object v8

    .line 417
    .local v8, "pm":Landroid/content/pm/PackageManager;
    const/4 v6, 0x0

    .line 419
    .local v6, "icon":Landroid/graphics/drawable/Drawable;
    :try_start_0
    invoke-virtual {v8, v7}, Landroid/content/pm/PackageManager;->getApplicationIcon(Ljava/lang/String;)Landroid/graphics/drawable/Drawable;
    :try_end_0
    .catch Landroid/content/pm/PackageManager$NameNotFoundException; {:try_start_0 .. :try_end_0} :catch_0

    move-result-object v6

    .line 423
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    :goto_0
    invoke-virtual {v1, v6}, Landroid/widget/ImageView;->setImageDrawable(Landroid/graphics/drawable/Drawable;)V

    .line 427
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "appIcon":Landroid/widget/ImageView;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    :cond_1
    const-string/jumbo v9, "window"

    invoke-virtual {v3, v9}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v9

    check-cast v9, Landroid/view/WindowManager;

    iput-object v9, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    .line 430
    iget-object v9, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getContext()Landroid/content/Context;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v9

    invoke-virtual {v9}, Landroid/content/res/Resources;->getConfiguration()Landroid/content/res/Configuration;

    move-result-object v2

    .line 431
    .local v2, "config":Landroid/content/res/Configuration;
    iget v9, p0, Landroid/widget/Toast$TN;->mGravity:I

    invoke-virtual {v2}, Landroid/content/res/Configuration;->getLayoutDirection()I

    move-result v10

    invoke-static {v9, v10}, Landroid/view/Gravity;->getAbsoluteGravity(II)I

    move-result v5

    .line 433
    .local v5, "gravity":I
    invoke-virtual {v3}, Landroid/content/Context;->getContentResolver()Landroid/content/ContentResolver;

    move-result-object v9

    const-string/jumbo v10, "toast_animation"

    invoke-static {v9, v10, v11}, Landroid/provider/Settings$System;->getInt(Landroid/content/ContentResolver;Ljava/lang/String;I)I

    move-result v9

    packed-switch v9, :pswitch_data_0

    .line 484
    :goto_1
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v5, v9, Landroid/view/WindowManager$LayoutParams;->gravity:I

    .line 485
    and-int/lit8 v9, v5, 0x7

    const/4 v10, 0x7

    if-ne v9, v10, :cond_2

    .line 486
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v12, v9, Landroid/view/WindowManager$LayoutParams;->horizontalWeight:F

    .line 488
    :cond_2
    and-int/lit8 v9, v5, 0x70

    const/16 v10, 0x70

    if-ne v9, v10, :cond_3

    .line 489
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput v12, v9, Landroid/view/WindowManager$LayoutParams;->verticalWeight:F

    .line 491
    :cond_3
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, p0, Landroid/widget/Toast$TN;->mX:I

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->x:I

    .line 492
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, p0, Landroid/widget/Toast$TN;->mY:I

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->y:I

    .line 493
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, p0, Landroid/widget/Toast$TN;->mVerticalMargin:F

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->verticalMargin:F

    .line 494
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iget v10, p0, Landroid/widget/Toast$TN;->mHorizontalMargin:F

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->horizontalMargin:F

    .line 495
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    iput-object v7, v9, Landroid/view/WindowManager$LayoutParams;->packageName:Ljava/lang/String;

    .line 496
    iget-object v9, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-virtual {v9}, Landroid/view/View;->getParent()Landroid/view/ViewParent;

    move-result-object v9

    if-eqz v9, :cond_4

    .line 498
    iget-object v9, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v10, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    invoke-interface {v9, v10}, Landroid/view/WindowManager;->removeView(Landroid/view/View;)V

    .line 501
    :cond_4
    iget-object v9, p0, Landroid/widget/Toast$TN;->mWM:Landroid/view/WindowManager;

    iget-object v10, p0, Landroid/widget/Toast$TN;->mView:Landroid/view/View;

    iget-object v11, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    invoke-interface {v9, v10, v11}, Landroid/view/WindowManager;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    .line 502
    invoke-direct {p0}, Landroid/widget/Toast$TN;->trySendAccessibilityEvent()V

    .line 396
    .end local v2    # "config":Landroid/content/res/Configuration;
    .end local v3    # "context":Landroid/content/Context;
    .end local v5    # "gravity":I
    .end local v7    # "packageName":Ljava/lang/String;
    :cond_5
    return-void

    .line 420
    .restart local v0    # "am":Landroid/app/ActivityManager;
    .restart local v1    # "appIcon":Landroid/widget/ImageView;
    .restart local v3    # "context":Landroid/content/Context;
    .restart local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .restart local v7    # "packageName":Ljava/lang/String;
    .restart local v8    # "pm":Landroid/content/pm/PackageManager;
    :catch_0
    move-exception v4

    .local v4, "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    goto/16 :goto_0

    .line 435
    .end local v0    # "am":Landroid/app/ActivityManager;
    .end local v1    # "appIcon":Landroid/widget/ImageView;
    .end local v4    # "e":Landroid/content/pm/PackageManager$NameNotFoundException;
    .end local v6    # "icon":Landroid/graphics/drawable/Drawable;
    .end local v8    # "pm":Landroid/content/pm/PackageManager;
    .restart local v2    # "config":Landroid/content/res/Configuration;
    .restart local v5    # "gravity":I
    :pswitch_0
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const/4 v10, -0x1

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_1

    .line 438
    :pswitch_1
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v10, 0x1030004

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_1

    .line 441
    :pswitch_2
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v10, 0x10302ee

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_1

    .line 444
    :pswitch_3
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v10, 0x10302ef

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_1

    .line 447
    :pswitch_4
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v10, 0x10302f0

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_1

    .line 450
    :pswitch_5
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v10, 0x10302f3

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto :goto_1

    .line 453
    :pswitch_6
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v10, 0x10302f4

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto/16 :goto_1

    .line 456
    :pswitch_7
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v10, 0x10302f5

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto/16 :goto_1

    .line 459
    :pswitch_8
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v10, 0x10302f6

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto/16 :goto_1

    .line 462
    :pswitch_9
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v10, 0x10302f7

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto/16 :goto_1

    .line 465
    :pswitch_a
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v10, 0x10302f8

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto/16 :goto_1

    .line 468
    :pswitch_b
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v10, 0x10302f9

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto/16 :goto_1

    .line 471
    :pswitch_c
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v10, 0x10302fa

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto/16 :goto_1

    .line 474
    :pswitch_d
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v10, 0x10302fb

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto/16 :goto_1

    .line 477
    :pswitch_e
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v10, 0x10302f2

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto/16 :goto_1

    .line 480
    :pswitch_f
    iget-object v9, p0, Landroid/widget/Toast$TN;->mParams:Landroid/view/WindowManager$LayoutParams;

    const v10, 0x10302f1

    iput v10, v9, Landroid/view/WindowManager$LayoutParams;->windowAnimations:I

    goto/16 :goto_1

    .line 433
    :pswitch_data_0
    .packed-switch 0x0
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
        :pswitch_8
        :pswitch_9
        :pswitch_a
        :pswitch_b
        :pswitch_c
        :pswitch_d
        :pswitch_e
        :pswitch_f
    .end packed-switch
.end method

.method public hide()V
    .locals 2

    .prologue
    .line 393
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mHide:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 391
    return-void
.end method

.method public show()V
    .locals 2

    .prologue
    .line 384
    iget-object v0, p0, Landroid/widget/Toast$TN;->mHandler:Landroid/os/Handler;

    iget-object v1, p0, Landroid/widget/Toast$TN;->mShow:Ljava/lang/Runnable;

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 382
    return-void
.end method
