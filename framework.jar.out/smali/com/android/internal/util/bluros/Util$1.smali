.class final Lcom/android/internal/util/bluros/Util$1;
.super Landroid/animation/AnimatorListenerAdapter;
.source "Util.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/bluros/Util;->animateAlpha(Landroid/view/View;FFILjava/lang/Runnable;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x8
    name = null
.end annotation


# instance fields
.field final synthetic val$endAction:Ljava/lang/Runnable;


# direct methods
.method constructor <init>(Ljava/lang/Runnable;)V
    .locals 0
    .param p1, "val$endAction"    # Ljava/lang/Runnable;

    .prologue
    .line 63
    iput-object p1, p0, Lcom/android/internal/util/bluros/Util$1;->val$endAction:Ljava/lang/Runnable;

    invoke-direct {p0}, Landroid/animation/AnimatorListenerAdapter;-><init>()V

    return-void
.end method


# virtual methods
.method public onAnimationEnd(Landroid/animation/Animator;)V
    .locals 1
    .param p1, "animation"    # Landroid/animation/Animator;

    .prologue
    .line 65
    iget-object v0, p0, Lcom/android/internal/util/bluros/Util$1;->val$endAction:Ljava/lang/Runnable;

    invoke-interface {v0}, Ljava/lang/Runnable;->run()V

    .line 64
    return-void
.end method
