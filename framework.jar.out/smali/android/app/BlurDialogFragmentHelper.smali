.class public Landroid/app/BlurDialogFragmentHelper;
.super Ljava/lang/Object;
.source "BlurDialogFragmentHelper.java"


# instance fields
.field private mAnimDuration:I

.field private mBgColorResId:I

.field private mBlurBgView:Landroid/view/View;

.field private mBlurContainer:Landroid/view/ViewGroup;

.field private mBlurImgView:Landroid/widget/ImageView;

.field private final mFragment:Landroid/app/DialogFragment;

.field private mRoot:Landroid/view/ViewGroup;


# direct methods
.method static synthetic -get0(Landroid/app/BlurDialogFragmentHelper;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mBlurContainer:Landroid/view/ViewGroup;

    return-object v0
.end method

.method static synthetic -get1(Landroid/app/BlurDialogFragmentHelper;)Landroid/app/DialogFragment;
    .locals 1

    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mFragment:Landroid/app/DialogFragment;

    return-object v0
.end method

.method static synthetic -get2(Landroid/app/BlurDialogFragmentHelper;)Landroid/view/ViewGroup;
    .locals 1

    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mRoot:Landroid/view/ViewGroup;

    return-object v0
.end method

.method public constructor <init>(Landroid/app/DialogFragment;)V
    .locals 2
    .param p1, "fragment"    # Landroid/app/DialogFragment;

    .prologue
    .line 42
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    iput-object p1, p0, Landroid/app/BlurDialogFragmentHelper;->mFragment:Landroid/app/DialogFragment;

    .line 44
    invoke-virtual {p1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v1, 0x10e0001

    invoke-virtual {v0, v1}, Landroid/content/res/Resources;->getInteger(I)I

    move-result v0

    iput v0, p0, Landroid/app/BlurDialogFragmentHelper;->mAnimDuration:I

    .line 42
    return-void
.end method

.method private startEnterAnimation()V
    .locals 5

    .prologue
    const/4 v4, 0x0

    const/high16 v3, 0x3f800000    # 1.0f

    const/4 v2, 0x0

    .line 131
    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mBlurBgView:Landroid/view/View;

    iget v1, p0, Landroid/app/BlurDialogFragmentHelper;->mAnimDuration:I

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/internal/util/bluros/Util;->animateAlpha(Landroid/view/View;FFILjava/lang/Runnable;)V

    .line 132
    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mBlurImgView:Landroid/widget/ImageView;

    iget v1, p0, Landroid/app/BlurDialogFragmentHelper;->mAnimDuration:I

    invoke-static {v0, v2, v3, v1, v4}, Lcom/android/internal/util/bluros/Util;->animateAlpha(Landroid/view/View;FFILjava/lang/Runnable;)V

    .line 130
    return-void
.end method

.method private startExitAnimation()V
    .locals 5

    .prologue
    const/high16 v4, 0x3f800000    # 1.0f

    const/4 v3, 0x0

    .line 136
    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mBlurBgView:Landroid/view/View;

    iget v1, p0, Landroid/app/BlurDialogFragmentHelper;->mAnimDuration:I

    const/4 v2, 0x0

    invoke-static {v0, v4, v3, v1, v2}, Lcom/android/internal/util/bluros/Util;->animateAlpha(Landroid/view/View;FFILjava/lang/Runnable;)V

    .line 137
    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mBlurImgView:Landroid/widget/ImageView;

    iget v1, p0, Landroid/app/BlurDialogFragmentHelper;->mAnimDuration:I

    new-instance v2, Landroid/app/BlurDialogFragmentHelper$2;

    invoke-direct {v2, p0}, Landroid/app/BlurDialogFragmentHelper$2;-><init>(Landroid/app/BlurDialogFragmentHelper;)V

    invoke-static {v0, v4, v3, v1, v2}, Lcom/android/internal/util/bluros/Util;->animateAlpha(Landroid/view/View;FFILjava/lang/Runnable;)V

    .line 135
    return-void
.end method


# virtual methods
.method public onActivityCreated()V
    .locals 12

    .prologue
    const/4 v4, 0x0

    const/4 v3, 0x0

    .line 72
    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getDialog()Landroid/app/Dialog;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Dialog;->getWindow()Landroid/view/Window;

    move-result-object v11

    .line 75
    .local v11, "window":Landroid/view/Window;
    new-instance v10, Landroid/graphics/Rect;

    invoke-direct {v10}, Landroid/graphics/Rect;-><init>()V

    .line 76
    .local v10, "visibleFrame":Landroid/graphics/Rect;
    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/Activity;->getWindow()Landroid/view/Window;

    move-result-object v0

    invoke-virtual {v0}, Landroid/view/Window;->getDecorView()Landroid/view/View;

    move-result-object v0

    check-cast v0, Landroid/view/ViewGroup;

    iput-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mRoot:Landroid/view/ViewGroup;

    .line 77
    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mRoot:Landroid/view/ViewGroup;

    invoke-virtual {v0, v10}, Landroid/view/ViewGroup;->getWindowVisibleDisplayFrame(Landroid/graphics/Rect;)V

    .line 79
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/app/BlurDialogFragmentHelper;->mFragment:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mBlurContainer:Landroid/view/ViewGroup;

    .line 80
    invoke-static {}, Lcom/android/internal/util/bluros/Util;->isPostHoneycomb()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 82
    new-instance v0, Landroid/widget/FrameLayout;

    iget-object v1, p0, Landroid/app/BlurDialogFragmentHelper;->mFragment:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/FrameLayout;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mBlurContainer:Landroid/view/ViewGroup;

    .line 83
    new-instance v8, Landroid/widget/FrameLayout$LayoutParams;

    iget v0, v10, Landroid/graphics/Rect;->right:I

    iget v1, v10, Landroid/graphics/Rect;->left:I

    sub-int/2addr v0, v1

    .line 84
    iget v1, v10, Landroid/graphics/Rect;->bottom:I

    iget v2, v10, Landroid/graphics/Rect;->top:I

    sub-int/2addr v1, v2

    .line 83
    invoke-direct {v8, v0, v1}, Landroid/widget/FrameLayout$LayoutParams;-><init>(II)V

    .line 85
    .local v8, "params":Landroid/widget/FrameLayout$LayoutParams;
    iget v0, v10, Landroid/graphics/Rect;->left:I

    iget v1, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v8, v0, v1, v3, v3}, Landroid/widget/FrameLayout$LayoutParams;->setMargins(IIII)V

    .line 86
    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mBlurContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v8}, Landroid/view/ViewGroup;->setLayoutParams(Landroid/view/ViewGroup$LayoutParams;)V

    .line 91
    .end local v8    # "params":Landroid/widget/FrameLayout$LayoutParams;
    :goto_0
    new-instance v0, Landroid/view/View;

    iget-object v1, p0, Landroid/app/BlurDialogFragmentHelper;->mFragment:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/view/View;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mBlurBgView:Landroid/view/View;

    .line 93
    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mBlurBgView:Landroid/view/View;

    invoke-static {v0, v4}, Lcom/android/internal/util/bluros/Util;->setAlpha(Landroid/view/View;F)V

    .line 95
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Landroid/app/BlurDialogFragmentHelper;->mFragment:Landroid/app/DialogFragment;

    invoke-virtual {v1}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mBlurImgView:Landroid/widget/ImageView;

    .line 96
    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mBlurImgView:Landroid/widget/ImageView;

    invoke-static {v0, v4}, Lcom/android/internal/util/bluros/Util;->setAlpha(Landroid/view/View;F)V

    .line 98
    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mBlurContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/app/BlurDialogFragmentHelper;->mBlurImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 99
    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mBlurContainer:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/app/BlurDialogFragmentHelper;->mBlurBgView:Landroid/view/View;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 101
    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mRoot:Landroid/view/ViewGroup;

    iget-object v1, p0, Landroid/app/BlurDialogFragmentHelper;->mBlurContainer:Landroid/view/ViewGroup;

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->addView(Landroid/view/View;)V

    .line 104
    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mRoot:Landroid/view/ViewGroup;

    iget v1, v10, Landroid/graphics/Rect;->right:I

    .line 105
    iget v2, v10, Landroid/graphics/Rect;->bottom:I

    iget v3, v10, Landroid/graphics/Rect;->left:I

    int-to-float v3, v3

    iget v4, v10, Landroid/graphics/Rect;->top:I

    int-to-float v4, v4

    const/4 v5, 0x3

    .line 104
    invoke-static/range {v0 .. v5}, Lcom/android/internal/util/bluros/Util;->drawViewToBitmap(Landroid/view/View;IIFFI)Landroid/graphics/Bitmap;

    move-result-object v6

    .line 106
    .local v6, "bitmap":Landroid/graphics/Bitmap;
    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getActivity()Landroid/app/Activity;

    move-result-object v0

    invoke-static {v0, v6}, Lcom/android/internal/util/bluros/Blur;->apply(Landroid/content/Context;Landroid/graphics/Bitmap;)Landroid/graphics/Bitmap;

    move-result-object v7

    .line 107
    .local v7, "blurred":Landroid/graphics/Bitmap;
    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mBlurImgView:Landroid/widget/ImageView;

    invoke-virtual {v0, v7}, Landroid/widget/ImageView;->setImageBitmap(Landroid/graphics/Bitmap;)V

    .line 108
    invoke-virtual {v6}, Landroid/graphics/Bitmap;->recycle()V

    .line 110
    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mFragment:Landroid/app/DialogFragment;

    invoke-virtual {v0}, Landroid/app/DialogFragment;->getView()Landroid/view/View;

    move-result-object v9

    .line 111
    .local v9, "view":Landroid/view/View;
    if-eqz v9, :cond_0

    .line 112
    new-instance v0, Landroid/app/BlurDialogFragmentHelper$1;

    invoke-direct {v0, p0}, Landroid/app/BlurDialogFragmentHelper$1;-><init>(Landroid/app/BlurDialogFragmentHelper;)V

    invoke-virtual {v9, v0}, Landroid/view/View;->setOnTouchListener(Landroid/view/View$OnTouchListener;)V

    .line 71
    :cond_0
    return-void

    .line 88
    .end local v6    # "bitmap":Landroid/graphics/Bitmap;
    .end local v7    # "blurred":Landroid/graphics/Bitmap;
    .end local v9    # "view":Landroid/view/View;
    :cond_1
    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mBlurContainer:Landroid/view/ViewGroup;

    iget v1, v10, Landroid/graphics/Rect;->left:I

    iget v2, v10, Landroid/graphics/Rect;->top:I

    invoke-virtual {v0, v1, v2, v3, v3}, Landroid/view/ViewGroup;->setPadding(IIII)V

    goto :goto_0
.end method

.method public onCreate()V
    .locals 3

    .prologue
    .line 68
    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper;->mFragment:Landroid/app/DialogFragment;

    const/4 v1, 0x0

    const v2, 0x1030010

    invoke-virtual {v0, v1, v2}, Landroid/app/DialogFragment;->setStyle(II)V

    .line 67
    return-void
.end method

.method public onDismiss()V
    .locals 0

    .prologue
    .line 127
    invoke-direct {p0}, Landroid/app/BlurDialogFragmentHelper;->startExitAnimation()V

    .line 126
    return-void
.end method

.method public onStart()V
    .locals 0

    .prologue
    .line 123
    invoke-direct {p0}, Landroid/app/BlurDialogFragmentHelper;->startEnterAnimation()V

    .line 122
    return-void
.end method

.method public setAnimDuration(I)V
    .locals 0
    .param p1, "animDuration"    # I

    .prologue
    .line 56
    iput p1, p0, Landroid/app/BlurDialogFragmentHelper;->mAnimDuration:I

    .line 55
    return-void
.end method

.method public setBgColorResId(I)V
    .locals 0
    .param p1, "bgColorResId"    # I

    .prologue
    .line 64
    iput p1, p0, Landroid/app/BlurDialogFragmentHelper;->mBgColorResId:I

    .line 63
    return-void
.end method
