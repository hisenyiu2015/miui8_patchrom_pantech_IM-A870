.class Landroid/widget/AbsListView$1;
.super Landroid/os/Handler;
.source "AbsListView.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/widget/AbsListView;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/widget/AbsListView;


# direct methods
.method constructor <init>(Landroid/widget/AbsListView;)V
    .locals 0
    .param p1, "this$0"    # Landroid/widget/AbsListView;

    .prologue
    .line 3804
    iput-object p1, p0, Landroid/widget/AbsListView$1;->this$0:Landroid/widget/AbsListView;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 2
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 3806
    iget-object v1, p0, Landroid/widget/AbsListView$1;->this$0:Landroid/widget/AbsListView;

    iget-object v0, p0, Landroid/widget/AbsListView$1;->this$0:Landroid/widget/AbsListView;

    invoke-static {v0}, Landroid/widget/AbsListView;->-get9(Landroid/widget/AbsListView;)Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    invoke-static {v1, v0}, Landroid/widget/AbsListView;->-set1(Landroid/widget/AbsListView;Z)Z

    .line 3805
    return-void

    .line 3806
    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method
