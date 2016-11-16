.class Landroid/dolby/DsClient$2;
.super Landroid/dolby/IDsServiceCallbacks$Stub;
.source "DsClient.java"


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
    .line 1925
    iput-object p1, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-direct {p0}, Landroid/dolby/IDsServiceCallbacks$Stub;-><init>()V

    return-void
.end method


# virtual methods
.method public onDsApParamChange(ILjava/lang/String;)V
    .locals 4
    .param p1, "profile"    # I
    .param p2, "paramName"    # Ljava/lang/String;

    .prologue
    .line 1981
    const-string/jumbo v0, "DsClient"

    const-string/jumbo v1, "event onDsApParamChange()"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1982
    iget-object v0, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v0}, Landroid/dolby/DsClient;->-get7(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v1}, Landroid/dolby/DsClient;->-get7(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v1

    const/16 v2, 0x8

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1979
    return-void
.end method

.method public onDsOn(Z)V
    .locals 5
    .param p1, "on"    # Z

    .prologue
    .line 1934
    const-string/jumbo v1, "DsClient"

    const-string/jumbo v2, "event onDsOn()"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1935
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1936
    .local v0, "status":I
    :goto_0
    iget-object v1, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v1}, Landroid/dolby/DsClient;->-get7(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v2}, Landroid/dolby/DsClient;->-get7(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x1

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1932
    return-void

    .line 1935
    .end local v0    # "status":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "status":I
    goto :goto_0
.end method

.method public onEqSettingsChanged(II)V
    .locals 3
    .param p1, "profile"    # I
    .param p2, "preset"    # I

    .prologue
    .line 1975
    const-string/jumbo v0, "DsClient"

    const-string/jumbo v1, "event onEqSettingsChanged()"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1976
    iget-object v0, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v0}, Landroid/dolby/DsClient;->-get7(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v1}, Landroid/dolby/DsClient;->-get7(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x7

    invoke-virtual {v1, v2, p1, p2}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1973
    return-void
.end method

.method public onProfileNameChanged(ILjava/lang/String;)V
    .locals 4
    .param p1, "profile"    # I
    .param p2, "name"    # Ljava/lang/String;

    .prologue
    .line 1953
    const-string/jumbo v0, "DsClient"

    const-string/jumbo v1, "event onProfileNameChanged()"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1954
    iget-object v0, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v0}, Landroid/dolby/DsClient;->-get7(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v1}, Landroid/dolby/DsClient;->-get7(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x4

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3, p2}, Landroid/os/Handler;->obtainMessage(IIILjava/lang/Object;)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1951
    return-void
.end method

.method public onProfileSelected(I)V
    .locals 4
    .param p1, "profile"    # I

    .prologue
    .line 1941
    const-string/jumbo v0, "DsClient"

    const-string/jumbo v1, "event onProfileSelected()"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1942
    iget-object v0, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v0}, Landroid/dolby/DsClient;->-get7(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v1}, Landroid/dolby/DsClient;->-get7(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x2

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1939
    return-void
.end method

.method public onProfileSettingsChanged(I)V
    .locals 4
    .param p1, "profile"    # I

    .prologue
    .line 1947
    const-string/jumbo v0, "DsClient"

    const-string/jumbo v1, "event onProfileSettingsChanged()"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1948
    iget-object v0, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v0}, Landroid/dolby/DsClient;->-get7(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v1}, Landroid/dolby/DsClient;->-get7(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x0

    invoke-virtual {v1, v2, p1, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1945
    return-void
.end method

.method public onVisualizerSuspended(Z)V
    .locals 5
    .param p1, "isSuspended"    # Z

    .prologue
    .line 1968
    const-string/jumbo v1, "DsClient"

    const-string/jumbo v2, "event onVisualizerSuspended()"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 1969
    if-eqz p1, :cond_0

    const/4 v0, 0x1

    .line 1970
    .local v0, "status":I
    :goto_0
    iget-object v1, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v1}, Landroid/dolby/DsClient;->-get7(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v1

    iget-object v2, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v2}, Landroid/dolby/DsClient;->-get7(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v2

    const/4 v3, 0x6

    const/4 v4, 0x0

    invoke-virtual {v2, v3, v0, v4}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v2

    invoke-virtual {v1, v2}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1966
    return-void

    .line 1969
    .end local v0    # "status":I
    :cond_0
    const/4 v0, 0x0

    .restart local v0    # "status":I
    goto :goto_0
.end method

.method public onVisualizerUpdated([F[F)V
    .locals 4
    .param p1, "gains"    # [F
    .param p2, "excitations"    # [F

    .prologue
    const/4 v3, 0x0

    .line 1959
    const-string/jumbo v0, "DsClient"

    const-string/jumbo v1, "event onVisualizerUpdated()"

    invoke-static {v0, v1}, Landroid/dolby/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 1961
    iget-object v0, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v0}, Landroid/dolby/DsClient;->-get6(Landroid/dolby/DsClient;)[F

    move-result-object v0

    iget-object v1, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v1}, Landroid/dolby/DsClient;->-get1(Landroid/dolby/DsClient;)I

    move-result v1

    invoke-static {p1, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 1962
    iget-object v0, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v0}, Landroid/dolby/DsClient;->-get5(Landroid/dolby/DsClient;)[F

    move-result-object v0

    iget-object v1, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v1}, Landroid/dolby/DsClient;->-get1(Landroid/dolby/DsClient;)I

    move-result v1

    invoke-static {p2, v3, v0, v3, v1}, Ljava/lang/System;->arraycopy([FI[FII)V

    .line 1963
    iget-object v0, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v0}, Landroid/dolby/DsClient;->-get7(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v0

    iget-object v1, p0, Landroid/dolby/DsClient$2;->this$0:Landroid/dolby/DsClient;

    invoke-static {v1}, Landroid/dolby/DsClient;->-get7(Landroid/dolby/DsClient;)Landroid/os/Handler;

    move-result-object v1

    const/4 v2, 0x5

    invoke-virtual {v1, v2, v3, v3}, Landroid/os/Handler;->obtainMessage(III)Landroid/os/Message;

    move-result-object v1

    invoke-virtual {v0, v1}, Landroid/os/Handler;->sendMessage(Landroid/os/Message;)Z

    .line 1957
    return-void
.end method
