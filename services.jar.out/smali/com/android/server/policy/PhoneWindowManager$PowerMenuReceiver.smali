.class Lcom/android/server/policy/PhoneWindowManager$PowerMenuReceiver;
.super Landroid/content/BroadcastReceiver;
.source "PhoneWindowManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lcom/android/server/policy/PhoneWindowManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = "PowerMenuReceiver"
.end annotation


# instance fields
.field private mIsRegistered:Z

.field final synthetic this$0:Lcom/android/server/policy/PhoneWindowManager;


# direct methods
.method static synthetic -wrap0(Lcom/android/server/policy/PhoneWindowManager$PowerMenuReceiver;)V
    .locals 0

    invoke-direct {p0}, Lcom/android/server/policy/PhoneWindowManager$PowerMenuReceiver;->registerSelf()V

    return-void
.end method

.method public constructor <init>(Lcom/android/server/policy/PhoneWindowManager;Landroid/content/Context;)V
    .locals 1
    .param p1, "this$0"    # Lcom/android/server/policy/PhoneWindowManager;
    .param p2, "context"    # Landroid/content/Context;

    .prologue
    .line 792
    iput-object p1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerMenuReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-direct {p0}, Landroid/content/BroadcastReceiver;-><init>()V

    .line 790
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerMenuReceiver;->mIsRegistered:Z

    .line 792
    return-void
.end method

.method private registerSelf()V
    .locals 3

    .prologue
    .line 807
    iget-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerMenuReceiver;->mIsRegistered:Z

    if-nez v1, :cond_0

    .line 808
    const/4 v1, 0x1

    iput-boolean v1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerMenuReceiver;->mIsRegistered:Z

    .line 810
    new-instance v0, Landroid/content/IntentFilter;

    invoke-direct {v0}, Landroid/content/IntentFilter;-><init>()V

    .line 811
    .local v0, "filter":Landroid/content/IntentFilter;
    const-string/jumbo v1, "android.intent.action.POWERMENU"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 812
    const-string/jumbo v1, "android.intent.action.POWERMENU_REBOOT"

    invoke-virtual {v0, v1}, Landroid/content/IntentFilter;->addAction(Ljava/lang/String;)V

    .line 813
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerMenuReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    iget-object v2, p0, Lcom/android/server/policy/PhoneWindowManager$PowerMenuReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v2, v2, Lcom/android/server/policy/PhoneWindowManager;->mPowerMenuReceiver:Lcom/android/server/policy/PhoneWindowManager$PowerMenuReceiver;

    invoke-virtual {v1, v2, v0}, Landroid/content/Context;->registerReceiver(Landroid/content/BroadcastReceiver;Landroid/content/IntentFilter;)Landroid/content/Intent;

    .line 806
    .end local v0    # "filter":Landroid/content/IntentFilter;
    :cond_0
    return-void
.end method

.method private unregisterSelf()V
    .locals 1

    .prologue
    .line 818
    iget-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerMenuReceiver;->mIsRegistered:Z

    if-eqz v0, :cond_0

    .line 819
    const/4 v0, 0x0

    iput-boolean v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerMenuReceiver;->mIsRegistered:Z

    .line 820
    iget-object v0, p0, Lcom/android/server/policy/PhoneWindowManager$PowerMenuReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v0, v0, Lcom/android/server/policy/PhoneWindowManager;->mContext:Landroid/content/Context;

    invoke-virtual {v0, p0}, Landroid/content/Context;->unregisterReceiver(Landroid/content/BroadcastReceiver;)V

    .line 817
    :cond_0
    return-void
.end method


# virtual methods
.method public onReceive(Landroid/content/Context;Landroid/content/Intent;)V
    .locals 2
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "intent"    # Landroid/content/Intent;

    .prologue
    .line 796
    invoke-virtual {p2}, Landroid/content/Intent;->getAction()Ljava/lang/String;

    move-result-object v0

    .line 797
    .local v0, "action":Ljava/lang/String;
    const-string/jumbo v1, "android.intent.action.POWERMENU"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 798
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerMenuReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    invoke-virtual {v1}, Lcom/android/server/policy/PhoneWindowManager;->showGlobalActionsInternal()V

    .line 800
    :cond_0
    const-string/jumbo v1, "android.intent.action.POWERMENU_REBOOT"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 801
    iget-object v1, p0, Lcom/android/server/policy/PhoneWindowManager$PowerMenuReceiver;->this$0:Lcom/android/server/policy/PhoneWindowManager;

    iget-object v1, v1, Lcom/android/server/policy/PhoneWindowManager;->mWindowManagerFuncs:Landroid/view/WindowManagerPolicy$WindowManagerFuncs;

    invoke-interface {v1}, Landroid/view/WindowManagerPolicy$WindowManagerFuncs;->rebootTile()V

    .line 795
    :cond_1
    return-void
.end method
