.class Lcom/android/internal/util/bluros/DUPackageMonitor$1;
.super Landroid/os/Handler;
.source "DUPackageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/android/internal/util/bluros/DUPackageMonitor;->register(Landroid/content/Context;Landroid/os/Handler;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lcom/android/internal/util/bluros/DUPackageMonitor;


# direct methods
.method constructor <init>(Lcom/android/internal/util/bluros/DUPackageMonitor;Landroid/os/Looper;)V
    .locals 0
    .param p1, "this$0"    # Lcom/android/internal/util/bluros/DUPackageMonitor;
    .param p2, "$anonymous0"    # Landroid/os/Looper;

    .prologue
    .line 53
    iput-object p1, p0, Lcom/android/internal/util/bluros/DUPackageMonitor$1;->this$0:Lcom/android/internal/util/bluros/DUPackageMonitor;

    invoke-direct {p0, p2}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 4
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 56
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 55
    :cond_0
    return-void

    .line 58
    :pswitch_0
    iget-object v2, p0, Lcom/android/internal/util/bluros/DUPackageMonitor$1;->this$0:Lcom/android/internal/util/bluros/DUPackageMonitor;

    invoke-static {v2}, Lcom/android/internal/util/bluros/DUPackageMonitor;->-get0(Lcom/android/internal/util/bluros/DUPackageMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .local v1, "listener$iterator":Ljava/util/Iterator;
    :goto_0
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/bluros/DUPackageMonitor$PackageChangedListener;

    .line 59
    .local v0, "listener":Lcom/android/internal/util/bluros/DUPackageMonitor$PackageChangedListener;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    sget-object v3, Lcom/android/internal/util/bluros/DUPackageMonitor$PackageState;->PACKAGE_ADDED:Lcom/android/internal/util/bluros/DUPackageMonitor$PackageState;

    invoke-interface {v0, v2, v3}, Lcom/android/internal/util/bluros/DUPackageMonitor$PackageChangedListener;->onPackageChanged(Ljava/lang/String;Lcom/android/internal/util/bluros/DUPackageMonitor$PackageState;)V

    goto :goto_0

    .line 63
    .end local v0    # "listener":Lcom/android/internal/util/bluros/DUPackageMonitor$PackageChangedListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :pswitch_1
    iget-object v2, p0, Lcom/android/internal/util/bluros/DUPackageMonitor$1;->this$0:Lcom/android/internal/util/bluros/DUPackageMonitor;

    invoke-static {v2}, Lcom/android/internal/util/bluros/DUPackageMonitor;->-get0(Lcom/android/internal/util/bluros/DUPackageMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :goto_1
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/bluros/DUPackageMonitor$PackageChangedListener;

    .line 64
    .restart local v0    # "listener":Lcom/android/internal/util/bluros/DUPackageMonitor$PackageChangedListener;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 65
    sget-object v3, Lcom/android/internal/util/bluros/DUPackageMonitor$PackageState;->PACKAGE_REMOVED:Lcom/android/internal/util/bluros/DUPackageMonitor$PackageState;

    .line 64
    invoke-interface {v0, v2, v3}, Lcom/android/internal/util/bluros/DUPackageMonitor$PackageChangedListener;->onPackageChanged(Ljava/lang/String;Lcom/android/internal/util/bluros/DUPackageMonitor$PackageState;)V

    goto :goto_1

    .line 69
    .end local v0    # "listener":Lcom/android/internal/util/bluros/DUPackageMonitor$PackageChangedListener;
    .end local v1    # "listener$iterator":Ljava/util/Iterator;
    :pswitch_2
    iget-object v2, p0, Lcom/android/internal/util/bluros/DUPackageMonitor$1;->this$0:Lcom/android/internal/util/bluros/DUPackageMonitor;

    invoke-static {v2}, Lcom/android/internal/util/bluros/DUPackageMonitor;->-get0(Lcom/android/internal/util/bluros/DUPackageMonitor;)Ljava/util/ArrayList;

    move-result-object v2

    invoke-interface {v2}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v1

    .restart local v1    # "listener$iterator":Ljava/util/Iterator;
    :goto_2
    invoke-interface {v1}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_0

    invoke-interface {v1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/android/internal/util/bluros/DUPackageMonitor$PackageChangedListener;

    .line 70
    .restart local v0    # "listener":Lcom/android/internal/util/bluros/DUPackageMonitor$PackageChangedListener;
    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    .line 71
    sget-object v3, Lcom/android/internal/util/bluros/DUPackageMonitor$PackageState;->PACKAGE_CHANGED:Lcom/android/internal/util/bluros/DUPackageMonitor$PackageState;

    .line 70
    invoke-interface {v0, v2, v3}, Lcom/android/internal/util/bluros/DUPackageMonitor$PackageChangedListener;->onPackageChanged(Ljava/lang/String;Lcom/android/internal/util/bluros/DUPackageMonitor$PackageState;)V

    goto :goto_2

    .line 56
    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
    .end packed-switch
.end method
