.class Landroid/dolby/DsClient$1;
.super Ljava/lang/Object;
.source "DsClient.java"

# interfaces
.implements Landroid/content/ServiceConnection;


# annotations
.annotation system Ldalvik/annotation/EnclosingClass;
    value = Landroid/dolby/DsClient;
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x0
    name = null
.end annotation


# instance fields
.field final synthetic this$0:Landroid/dolby/DsClient;


# direct methods
.method constructor <init>(Landroid/dolby/DsClient;)V
    .locals 0
    .param p1, "this$0"    # Landroid/dolby/DsClient;

    .prologue
    .line 1869
    iput-object p1, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onServiceConnected(Landroid/content/ComponentName;Landroid/os/IBinder;)V
    .locals 6
    .param p1, "className"    # Landroid/content/ComponentName;
    .param p2, "service"    # Landroid/os/IBinder;

    .prologue
    .line 1873
    const-string/jumbo v3, "DsClient"

    const-string/jumbo v4, "ServiceConnection.onServiceConnected()"

    invoke-static {v3, v4}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1875
    iget-object v3, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    invoke-static {p2}, Landroid/dolby/IDs$Stub;->asInterface(Landroid/os/IBinder;)Landroid/dolby/IDs;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/dolby/DsClient;->-set1(Landroid/dolby/DsClient;Landroid/dolby/IDs;)Landroid/dolby/IDs;

    .line 1879
    :try_start_0
    iget-object v3, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    invoke-static {v3}, Landroid/dolby/DsClient;->-get4(Landroid/dolby/DsClient;)Landroid/dolby/IDs;

    move-result-object v3

    iget-object v4, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    invoke-static {v4}, Landroid/dolby/DsClient;->-get2(Landroid/dolby/DsClient;)Landroid/dolby/IDsServiceCallbacks;

    move-result-object v4

    invoke-virtual {p0}, Landroid/dolby/DsClient$1;->hashCode()I

    move-result v5

    invoke-interface {v3, v4, v5}, Landroid/dolby/IDs;->registerCallback(Landroid/dolby/IDsServiceCallbacks;I)V

    .line 1880
    const-string/jumbo v3, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v5, "hash code of the connect is "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {p0}, Landroid/dolby/DsClient$1;->hashCode()I

    move-result v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->i(Ljava/lang/String;Ljava/lang/String;)I

    .line 1881
    const/4 v3, 0x1

    new-array v2, v3, [I

    .line 1882
    .local v2, "paramInt":[I
    iget-object v3, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    invoke-static {v3}, Landroid/dolby/DsClient;->-get4(Landroid/dolby/DsClient;)Landroid/dolby/IDs;

    move-result-object v3

    invoke-interface {v3, v2}, Landroid/dolby/IDs;->getBandCount([I)I

    move-result v1

    .line 1883
    .local v1, "error":I
    if-eqz v1, :cond_1

    .line 1885
    const-string/jumbo v3, "DsClient"

    const-string/jumbo v4, "Internal error in onServiceConnected"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1897
    .end local v1    # "error":I
    .end local v2    # "paramInt":[I
    :goto_0
    iget-object v3, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    invoke-static {v3}, Landroid/dolby/DsClient;->-get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v3

    if-eqz v3, :cond_0

    .line 1899
    iget-object v3, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    invoke-static {v3}, Landroid/dolby/DsClient;->-get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v3

    invoke-interface {v3}, Landroid/dolby/IDsClientEvents;->onClientConnected()V

    .line 1902
    :cond_0
    const-string/jumbo v3, "DsClient"

    const-string/jumbo v4, "CONNECTED: DSService"

    invoke-static {v3, v4}, Landroid/dolby/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 1871
    return-void

    .line 1889
    .restart local v1    # "error":I
    .restart local v2    # "paramInt":[I
    :cond_1
    :try_start_1
    iget-object v3, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    const/4 v4, 0x0

    aget v4, v2, v4

    invoke-static {v3, v4}, Landroid/dolby/DsClient;->-set0(Landroid/dolby/DsClient;I)I
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0

    goto :goto_0

    .line 1893
    .end local v1    # "error":I
    .end local v2    # "paramInt":[I
    :catch_0
    move-exception v0

    .line 1894
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "DsClient"

    const-string/jumbo v4, "onServiceConnected failed"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public onServiceDisconnected(Landroid/content/ComponentName;)V
    .locals 3
    .param p1, "className"    # Landroid/content/ComponentName;

    .prologue
    const/4 v2, 0x0

    .line 1907
    const-string/jumbo v0, "DsClient"

    const-string/jumbo v1, "ServiceConnection.onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1909
    iget-object v0, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    invoke-static {v0}, Landroid/dolby/DsClient;->-get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 1911
    iget-object v0, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    invoke-static {v0}, Landroid/dolby/DsClient;->-get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v0

    invoke-interface {v0}, Landroid/dolby/IDsClientEvents;->onClientDisconnected()V

    .line 1914
    :cond_0
    iget-object v0, p0, Landroid/dolby/DsClient$1;->this$0:Landroid/dolby/DsClient;

    invoke-static {v0, v2}, Landroid/dolby/DsClient;->-set1(Landroid/dolby/DsClient;Landroid/dolby/IDs;)Landroid/dolby/IDs;

    .line 1916
    const-string/jumbo v0, "DsClient"

    const-string/jumbo v1, "/ServiceConnection.onServiceDisconnected()"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 1905
    return-void
.end method
