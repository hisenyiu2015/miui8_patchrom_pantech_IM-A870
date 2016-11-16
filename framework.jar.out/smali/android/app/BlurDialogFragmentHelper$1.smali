.class Landroid/app/BlurDialogFragmentHelper$1;
.super Ljava/lang/Object;
.source "BlurDialogFragmentHelper.java"

# interfaces
.implements Landroid/view/View$OnTouchListener;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Landroid/app/BlurDialogFragmentHelper;->onActivityCreated()V
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
    .line 112
    iput-object p1, p0, Landroid/app/BlurDialogFragmentHelper$1;->this$0:Landroid/app/BlurDialogFragmentHelper;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onTouch(Landroid/view/View;Landroid/view/MotionEvent;)Z
    .locals 1
    .param p1, "v"    # Landroid/view/View;
    .param p2, "event"    # Landroid/view/MotionEvent;

    .prologue
    .line 115
    iget-object v0, p0, Landroid/app/BlurDialogFragmentHelper$1;->this$0:Landroid/app/BlurDialogFragmentHelper;

    invoke-static {v0}, Landroid/app/BlurDialogFragmentHelper;->-get1(Landroid/app/BlurDialogFragmentHelper;)Landroid/app/DialogFragment;

    move-result-object v0

    invoke-virtual {v0}, Landroid/app/DialogFragment;->dismiss()V

    .line 116
    const/4 v0, 0x1

    return v0
.end method
