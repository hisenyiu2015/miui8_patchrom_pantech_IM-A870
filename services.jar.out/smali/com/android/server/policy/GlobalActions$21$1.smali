.class Lcom/android/server/policy/GlobalActions$21$1;
.super Landroid/os/Handler;
.source "GlobalActions.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/server/policy/GlobalActions$21;->onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$1:Lcom/android/server/policy/GlobalActions$21;

.field final synthetic val$myConn:Landroid/content/ServiceConnection;


# direct methods
.method constructor <init>(Lcom/android/server/policy/GlobalActions$21;Landroid/os/Looper;Landroid/content/ServiceConnection;)V
    .locals 0
    .param p1, "this$1"    # Lcom/android/server/policy/GlobalActions$21;
    .param p2, "$anonymous0"    # Landroid/os/Looper;
    .param p3, "val$myConn"    # Landroid/content/ServiceConnection;

    .prologue
    .line 879
    iput-object p1, p0, Lcom/android/server/policy/GlobalActions$21$1;->this$1:Lcom/android/server/policy/GlobalActions$21;

    iput-object p3, p0, Lcom/android/server/policy/GlobalActions$21$1;->val$myConn:Landroid/content/ServiceConnection;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 3
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 882
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$21$1;->this$1:Lcom/android/server/policy/GlobalActions$21;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$21;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v1, v0, Lcom/android/server/policy/GlobalActions;->mScreenrecordLock:Ljava/lang/Object;

    monitor-enter v1

    .line 883
    :try_start_0
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$21$1;->this$1:Lcom/android/server/policy/GlobalActions$21;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$21;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions;->mScreenrecordConnection:Landroid/content/ServiceConnection;

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$21$1;->val$myConn:Landroid/content/ServiceConnection;

    if-ne v0, v2, :cond_0

    .line 884
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$21$1;->this$1:Lcom/android/server/policy/GlobalActions$21;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$21;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get5(Lcom/android/server/policy/GlobalActions;)Landroid/content/Context;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$21$1;->this$1:Lcom/android/server/policy/GlobalActions$21;

    iget-object v2, v2, Lcom/android/server/policy/GlobalActions$21;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v2, v2, Lcom/android/server/policy/GlobalActions;->mScreenrecordConnection:Landroid/content/ServiceConnection;

    invoke-virtual {v0, v2}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 885
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$21$1;->this$1:Lcom/android/server/policy/GlobalActions$21;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$21;->this$0:Lcom/android/server/policy/GlobalActions;

    const/4 v2, 0x0

    iput-object v2, v0, Lcom/android/server/policy/GlobalActions;->mScreenrecordConnection:Landroid/content/ServiceConnection;

    .line 886
    iget-object v0, p0, Lcom/android/server/policy/GlobalActions$21$1;->this$1:Lcom/android/server/policy/GlobalActions$21;

    iget-object v0, v0, Lcom/android/server/policy/GlobalActions$21;->this$0:Lcom/android/server/policy/GlobalActions;

    invoke-static {v0}, Lcom/android/server/policy/GlobalActions;->-get8(Lcom/android/server/policy/GlobalActions;)Landroid/os/Handler;

    move-result-object v0

    iget-object v2, p0, Lcom/android/server/policy/GlobalActions$21$1;->this$1:Lcom/android/server/policy/GlobalActions$21;

    iget-object v2, v2, Lcom/android/server/policy/GlobalActions$21;->this$0:Lcom/android/server/policy/GlobalActions;

    iget-object v2, v2, Lcom/android/server/policy/GlobalActions;->mScreenrecordTimeout:Ljava/lang/Runnable;

    invoke-virtual {v0, v2}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v1

    .line 881
    return-void

    .line 882
    :catchall_0
    move-exception v0

    monitor-exit v1

    throw v0
.end method
