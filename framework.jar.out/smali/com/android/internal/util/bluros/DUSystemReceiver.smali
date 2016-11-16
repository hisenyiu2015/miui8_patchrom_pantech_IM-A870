.class public abstract Lcom/android/internal/util/bluros/DUSystemReceiver;
.super Landroid/content/BroadcastReceiver;
.source "DUSystemReceiver.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .prologue
    .line 29
    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    return-void
.end method

.method private isBroadcastFromSystem(Landroid/content/Context;)Z
    .locals 5
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    const/16 v4, 0x3e8

    const/4 v3, 0x1

    const/4 v2, 0x0

    .line 48
    invoke-virtual {p1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v0

    .line 49
    .local v0, "packageName":Ljava/lang/String;
    if-nez v0, :cond_0

    .line 50
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v4, v1, :cond_0

    .line 51
    const-string/jumbo v0, "android"

    .line 53
    :cond_0
    if-nez v0, :cond_1

    .line 54
    return v2

    .line 56
    :cond_1
    const-string/jumbo v1, "com.android.systemui"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 57
    const-string/jumbo v1, "com.android.keyguard"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 58
    const-string/jumbo v1, "android"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-nez v1, :cond_2

    .line 59
    invoke-virtual {p1}, Landroid/content/Context;->getApplicationInfo()Landroid/content/pm/ApplicationInfo;

    move-result-object v1

    iget v1, v1, Landroid/content/pm/ApplicationInfo;->uid:I

    if-ne v1, v4, :cond_3

    .line 60
    :cond_2
    return v3

    .line 62
    :cond_3
    invoke-virtual {p0, p1, v0}, Lcom/android/internal/util/bluros/DUSystemReceiver;->onExemptBroadcast(Landroid/content/Context;Ljava/lang/String;)Z

    move-result v1

    if-eqz v1, :cond_4

    .line 63
    return v3

    .line 65
    :cond_4
    return v2
.end method


# virtual methods
.method protected onExemptBroadcast(Landroid/content/Context;Ljava/lang/String;)Z
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "packageName"    # Ljava/lang/String;

    .prologue
    .line 34
    const/4 v0, 0x0

    return v0
.end method

.method public final onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 39
    if-eqz p1, :cond_0

    if-nez p2, :cond_1

    .line 40
    :cond_0
    return-void

    .line 42
    :cond_1
    invoke-direct {p0, p1}, Lcom/android/internal/util/bluros/DUSystemReceiver;->isBroadcastFromSystem(Landroid/content/Context;)Z

    move-result v0

    if-eqz v0, :cond_2

    .line 43
    invoke-virtual {p0, p1, p2}, Lcom/android/internal/util/bluros/DUSystemReceiver;->onSecureReceive(Landroid/content/Context;Landroid/content/Intent;)V

    .line 38
    :cond_2
    return-void
.end method

.method protected abstract onSecureReceive(Landroid/content/Context;Landroid/content/Intent;)V
.end method
