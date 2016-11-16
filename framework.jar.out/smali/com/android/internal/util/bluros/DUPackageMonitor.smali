.class public Lcom/android/internal/util/bluros/DUPackageMonitor;
.super Lcom/android/internal/content/PackageMonitor;
.source "DUPackageMonitor.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/android/internal/util/bluros/DUPackageMonitor$PackageState;,
        Lcom/android/internal/util/bluros/DUPackageMonitor$PackageChangedListener;
    }
.end annotation


# static fields
.field private static final MSG_PACKAGE_ADDED:I = 0x1

.field private static final MSG_PACKAGE_CHANGED:I = 0x3

.field private static final MSG_PACKAGE_REMOVED:I = 0x2


# instance fields
.field private mHandler:Landroid/os/Handler;

.field private mListeners:Ljava/util/ArrayList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/ArrayList",
            "<",
            "Lcom/android/internal/util/bluros/DUPackageMonitor$PackageChangedListener;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method static synthetic -get0(Lcom/android/internal/util/bluros/DUPackageMonitor;)Ljava/util/ArrayList;
    .locals 1

    iget-object v0, p0, Lcom/android/internal/util/bluros/DUPackageMonitor;->mListeners:Ljava/util/ArrayList;

    return-object v0
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    .line 31
    invoke-direct {p0}, Lcom/android/internal/content/PackageMonitor;-><init>()V

    .line 48
    new-instance v0, Ljava/util/ArrayList;

    invoke-direct {v0}, Ljava/util/ArrayList;-><init>()V

    iput-object v0, p0, Lcom/android/internal/util/bluros/DUPackageMonitor;->mListeners:Ljava/util/ArrayList;

    .line 31
    return-void
.end method


# virtual methods
.method public addListener(Lcom/android/internal/util/bluros/DUPackageMonitor$PackageChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/util/bluros/DUPackageMonitor$PackageChangedListener;

    .prologue
    .line 80
    if-eqz p1, :cond_0

    .line 81
    iget-object v0, p0, Lcom/android/internal/util/bluros/DUPackageMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->add(Ljava/lang/Object;)Z

    .line 79
    :cond_0
    return-void
.end method

.method public onPackageAdded(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 95
    iget-object v1, p0, Lcom/android/internal/util/bluros/DUPackageMonitor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x1

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 96
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/util/bluros/DUPackageMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 94
    return-void
.end method

.method public onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I
    .param p3, "components"    # [Ljava/lang/String;

    .prologue
    .line 122
    iget-object v1, p0, Lcom/android/internal/util/bluros/DUPackageMonitor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x3

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 123
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/util/bluros/DUPackageMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 124
    invoke-super {p0, p1, p2, p3}, Lcom/android/internal/content/PackageMonitor;->onPackageChanged(Ljava/lang/String;I[Ljava/lang/String;)Z

    move-result v1

    return v1
.end method

.method public onPackageRemoved(Ljava/lang/String;I)V
    .locals 3
    .param p1, "packageName"    # Ljava/lang/String;
    .param p2, "uid"    # I

    .prologue
    .line 103
    iget-object v1, p0, Lcom/android/internal/util/bluros/DUPackageMonitor;->mHandler:Landroid/os/Handler;

    const/4 v2, 0x2

    invoke-virtual {v1, v2, p1}, Landroid/os/Handler;->obtainMessage(ILjava/lang/Object;)Landroid/os/Message;

    move-result-object v0

    .line 104
    .local v0, "msg":Landroid/os/Message;
    iget-object v1, p0, Lcom/android/internal/util/bluros/DUPackageMonitor;->mHandler:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 102
    return-void
.end method

.method public register(Landroid/content/Context;Landroid/os/Handler;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "foreground"    # Landroid/os/Handler;

    .prologue
    const/4 v1, 0x0

    .line 51
    const/4 v0, 0x1

    invoke-virtual {p0, p1, v1, v1, v0}, Lcom/android/internal/util/bluros/DUPackageMonitor;->register(Landroid/content/Context;Landroid/os/Looper;Landroid/os/UserHandle;Z)V

    .line 53
    new-instance v0, Lcom/android/internal/util/bluros/DUPackageMonitor$1;

    invoke-virtual {p2}, Landroid/os/Handler;->getLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, p0, v1}, Lcom/android/internal/util/bluros/DUPackageMonitor$1;-><init>(Lcom/android/internal/util/bluros/DUPackageMonitor;Landroid/os/Looper;)V

    iput-object v0, p0, Lcom/android/internal/util/bluros/DUPackageMonitor;->mHandler:Landroid/os/Handler;

    .line 50
    return-void
.end method

.method public removeListener(Lcom/android/internal/util/bluros/DUPackageMonitor$PackageChangedListener;)V
    .locals 1
    .param p1, "listener"    # Lcom/android/internal/util/bluros/DUPackageMonitor$PackageChangedListener;

    .prologue
    .line 86
    if-eqz p1, :cond_0

    .line 87
    iget-object v0, p0, Lcom/android/internal/util/bluros/DUPackageMonitor;->mListeners:Ljava/util/ArrayList;

    invoke-virtual {v0, p1}, Ljava/util/ArrayList;->remove(Ljava/lang/Object;)Z

    .line 85
    :cond_0
    return-void
.end method
