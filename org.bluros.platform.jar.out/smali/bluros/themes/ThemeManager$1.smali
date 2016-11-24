.class Lbluros/themes/ThemeManager$1;
.super Lbluros/themes/IThemeChangeListener$Stub;
.source "ThemeManager.java"


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Lbluros/themes/ThemeManager;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Lbluros/themes/ThemeManager;


# direct methods
.method constructor <init>(Lbluros/themes/ThemeManager;)V
    .locals 0
    .param p1, "this$0"    # Lbluros/themes/ThemeManager;

    .prologue
    .line 83
    iput-object p1, p0, Lbluros/themes/ThemeManager$1;->this$0:Lbluros/themes/ThemeManager;

    invoke-direct {p0}, Lbluros/themes/IThemeChangeListener$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onFinish(Z)V
    .locals 2
    .param p1, "isSuccess"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 111
    invoke-static {}, Lbluros/themes/ThemeManager;->-get2()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lbluros/themes/ThemeManager$1$2;

    invoke-direct {v1, p0, p1}, Lbluros/themes/ThemeManager$1$2;-><init>(Lbluros/themes/ThemeManager$1;Z)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 110
    return-void
.end method

.method public onProgress(I)V
    .locals 2
    .param p1, "progress"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;
        }
    .end annotation

    .prologue
    .line 86
    invoke-static {}, Lbluros/themes/ThemeManager;->-get2()Landroid/os/Handler;

    move-result-object v0

    new-instance v1, Lbluros/themes/ThemeManager$1$1;

    invoke-direct {v1, p0, p1}, Lbluros/themes/ThemeManager$1$1;-><init>(Lbluros/themes/ThemeManager$1;I)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    .line 85
    return-void
.end method
