.class public Lcom/android/internal/util/bluros/Util;
.super Ljava/lang/Object;
.source "Util.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 20
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static animateAlpha(Landroid/view/View;FFILjava/lang/Runnable;)V
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "fromAlpha"    # F
    .param p2, "toAlpha"    # F
    .param p3, "duration"    # I
    .param p4, "endAction"    # Ljava/lang/Runnable;
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 60
    invoke-static {}, Lcom/android/internal/util/bluros/Util;->isPostHoneycomb()Z

    move-result v2

    if-eqz v2, :cond_1

    .line 61
    invoke-virtual {p0}, Landroid/view/View;->animate()Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    invoke-virtual {v2, p2}, Landroid/view/ViewPropertyAnimator;->alpha(F)Landroid/view/ViewPropertyAnimator;

    move-result-object v2

    int-to-long v4, p3

    invoke-virtual {v2, v4, v5}, Landroid/view/ViewPropertyAnimator;->setDuration(J)Landroid/view/ViewPropertyAnimator;

    move-result-object v1

    .line 62
    .local v1, "animator":Landroid/view/ViewPropertyAnimator;
    if-eqz p4, :cond_0

    .line 63
    new-instance v2, Lcom/android/internal/util/bluros/Util$1;

    invoke-direct {v2, p4}, Lcom/android/internal/util/bluros/Util$1;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v1, v2}, Landroid/view/ViewPropertyAnimator;->setListener(Landroid/animation/Animator$AnimatorListener;)Landroid/view/ViewPropertyAnimator;

    .line 59
    .end local v1    # "animator":Landroid/view/ViewPropertyAnimator;
    :cond_0
    :goto_0
    return-void

    .line 70
    :cond_1
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p2}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 71
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    int-to-long v2, p3

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 72
    const/4 v2, 0x1

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 73
    if-eqz p4, :cond_2

    .line 74
    new-instance v2, Lcom/android/internal/util/bluros/Util$2;

    invoke-direct {v2, p4}, Lcom/android/internal/util/bluros/Util$2;-><init>(Ljava/lang/Runnable;)V

    invoke-virtual {v0, v2}, Landroid/view/animation/AlphaAnimation;->setAnimationListener(Landroid/view/animation/Animation$AnimationListener;)V

    .line 87
    :cond_2
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method

.method public static drawViewToBitmap(Landroid/view/View;IIFFI)Landroid/graphics/Bitmap;
    .locals 8
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "translateX"    # F
    .param p4, "translateY"    # F
    .param p5, "downSampling"    # I

    .prologue
    .line 28
    int-to-float v5, p5

    const/high16 v6, 0x3f800000    # 1.0f

    div-float v4, v6, v5

    .line 29
    .local v4, "scale":F
    int-to-float v5, p1

    mul-float/2addr v5, v4

    int-to-float v6, p5

    div-float v6, p3, v6

    sub-float/2addr v5, v6

    float-to-int v1, v5

    .line 30
    .local v1, "bmpWidth":I
    int-to-float v5, p2

    mul-float/2addr v5, v4

    int-to-float v6, p5

    div-float v6, p4, v6

    sub-float/2addr v5, v6

    float-to-int v0, v5

    .line 31
    .local v0, "bmpHeight":I
    sget-object v5, Landroid/graphics/Bitmap$Config;->ARGB_8888:Landroid/graphics/Bitmap$Config;

    invoke-static {v1, v0, v5}, Landroid/graphics/Bitmap;->createBitmap(IILandroid/graphics/Bitmap$Config;)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 32
    .local v3, "dest":Landroid/graphics/Bitmap;
    new-instance v2, Landroid/graphics/Canvas;

    invoke-direct {v2, v3}, Landroid/graphics/Canvas;-><init>(Landroid/graphics/Bitmap;)V

    .line 33
    .local v2, "c":Landroid/graphics/Canvas;
    neg-float v5, p3

    int-to-float v6, p5

    div-float/2addr v5, v6

    neg-float v6, p4

    int-to-float v7, p5

    div-float/2addr v6, v7

    invoke-virtual {v2, v5, v6}, Landroid/graphics/Canvas;->translate(FF)V

    .line 34
    const/4 v5, 0x1

    if-le p5, v5, :cond_0

    .line 35
    invoke-virtual {v2, v4, v4}, Landroid/graphics/Canvas;->scale(FF)V

    .line 37
    :cond_0
    invoke-virtual {p0, v2}, Landroid/view/View;->draw(Landroid/graphics/Canvas;)V

    .line 38
    return-object v3
.end method

.method public static drawViewToBitmap(Landroid/view/View;III)Landroid/graphics/Bitmap;
    .locals 6
    .param p0, "view"    # Landroid/view/View;
    .param p1, "width"    # I
    .param p2, "height"    # I
    .param p3, "downSampling"    # I

    .prologue
    const/4 v3, 0x0

    move-object v0, p0

    move v1, p1

    move v2, p2

    move v4, v3

    move v5, p3

    .line 23
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/bluros/Util;->drawViewToBitmap(Landroid/view/View;IIFFI)Landroid/graphics/Bitmap;

    move-result-object v0

    return-object v0
.end method

.method public static isPostHoneycomb()Z
    .locals 2

    .prologue
    .line 42
    sget v0, Landroid/os/Build$VERSION;->SDK_INT:I

    const/16 v1, 0xc

    if-lt v0, v1, :cond_0

    const/4 v0, 0x1

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public static setAlpha(Landroid/view/View;F)V
    .locals 4
    .param p0, "view"    # Landroid/view/View;
    .param p1, "alpha"    # F
    .annotation build Landroid/annotation/TargetApi;
        value = 0xc
    .end annotation

    .prologue
    .line 47
    invoke-static {}, Lcom/android/internal/util/bluros/Util;->isPostHoneycomb()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 48
    invoke-virtual {p0, p1}, Landroid/view/View;->setAlpha(F)V

    .line 46
    :goto_0
    return-void

    .line 50
    :cond_0
    new-instance v0, Landroid/view/animation/AlphaAnimation;

    invoke-direct {v0, p1, p1}, Landroid/view/animation/AlphaAnimation;-><init>(FF)V

    .line 52
    .local v0, "alphaAnimation":Landroid/view/animation/AlphaAnimation;
    const-wide/16 v2, 0x0

    invoke-virtual {v0, v2, v3}, Landroid/view/animation/AlphaAnimation;->setDuration(J)V

    .line 53
    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Landroid/view/animation/AlphaAnimation;->setFillAfter(Z)V

    .line 54
    invoke-virtual {p0, v0}, Landroid/view/View;->startAnimation(Landroid/view/animation/Animation;)V

    goto :goto_0
.end method
