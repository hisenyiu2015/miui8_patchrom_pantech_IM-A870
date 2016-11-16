.class Landroid/app/BlurDialogFragmentHelper$2;
.super Ljava/lang/Object;
.source "BlurDialogFragmentHelper.java"

# interfaces
.implements Ljava/lang/Runnable;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/BlurDialogFragmentHelper;->startExitAnimation()V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/app/BlurDialogFragmentHelper;


# direct methods
.method constructor <init>(Landroid/app/BlurDialogFragmentHelper;)V
    .locals 0
    .param p1, "this$0"    # Landroid/app/BlurDialogFragmentHelper;

    .prologue
    .line 137
    iput-object p1, p0, Landroid/app/BlurDialogFragmentHelper$2;->this$0:Landroid/app/BlurDialogFragmentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 2

    .prologue
    .line 140
    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper$2;->this$0:Landroid/app/BlurDialogFragmentHelper;

    invoke-static {v0}, Landroid/app/BlurDialogFragmentHelper;->-get2(Landroid/app/BlurDialogFragmentHelper;)Landroid/view/ViewGroup;

    move-result-object v0

    iget-object v1, p0, Landroid/app/BlurDialogFragmentHelper$2;->this$0:Landroid/app/BlurDialogFragmentHelper;

    invoke-static {v1}, Landroid/app/BlurDialogFragmentHelper;->-get0(Landroid/app/BlurDialogFragmentHelper;)Landroid/view/ViewGroup;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/view/ViewGroup;->removeView(Landroid/view/View;)V

    .line 139
    return-void
.end method
