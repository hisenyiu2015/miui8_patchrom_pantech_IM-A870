.class Landroid/dolby/DsClient$3;
.super Landroid/os/Handler;
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
    .line 1991
    iput-object p1, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    invoke-direct {p0}, Landroid/os/Handler;-><init>()V

    return-void
.end method


# virtual methods
.method public handleMessage(Landroid/os/Message;)V
    .locals 5
    .param p1, "msg"    # Landroid/os/Message;

    .prologue
    .line 1996
    iget v2, p1, Landroid/os/Message;->what:I

    packed-switch v2, :pswitch_data_0

    .line 2074
    invoke-super {p0, p1}, Landroid/os/Handler;->handleMessage(Landroid/os/Message;)V

    .line 1994
    :cond_0
    :goto_0
    return-void

    .line 1999
    :pswitch_0
    const-string/jumbo v2, "DsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage(DS_STATUS_CHANGED_MSG): isOn = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 2000
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_1

    const/4 v0, 0x0

    .line 2003
    .local v0, "isOn":Z
    :goto_1
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    invoke-static {v2}, Landroid/dolby/DsClient;->-get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2005
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    invoke-static {v2}, Landroid/dolby/DsClient;->-get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v2

    invoke-interface {v2, v0}, Landroid/dolby/IDsClientEvents;->onDsOn(Z)V

    goto :goto_0

    .line 2000
    .end local v0    # "isOn":Z
    :cond_1
    const/4 v0, 0x1

    .restart local v0    # "isOn":Z
    goto :goto_1

    .line 2010
    .end local v0    # "isOn":Z
    :pswitch_1
    const-string/jumbo v2, "DsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage(PROFILE_SELECTED_MSG): profile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 2012
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    invoke-static {v2}, Landroid/dolby/DsClient;->-get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2014
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    invoke-static {v2}, Landroid/dolby/DsClient;->-get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/dolby/IDsClientEvents;->onProfileSelected(I)V

    goto :goto_0

    .line 2019
    :pswitch_2
    const-string/jumbo v2, "DsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage(PROFILE_SETTINGS_CHANGED_MSG): profile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 2021
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    invoke-static {v2}, Landroid/dolby/DsClient;->-get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2023
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    invoke-static {v2}, Landroid/dolby/DsClient;->-get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    invoke-interface {v2, v3}, Landroid/dolby/IDsClientEvents;->onProfileSettingsChanged(I)V

    goto/16 :goto_0

    .line 2028
    :pswitch_3
    const-string/jumbo v2, "DsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage(PROFILE_NAME_CHANGED_MSG): profile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " name ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 2030
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    invoke-static {v2}, Landroid/dolby/DsClient;->-get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2032
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    invoke-static {v2}, Landroid/dolby/DsClient;->-get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/dolby/IDsClientEvents;->onProfileNameChanged(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 2037
    :pswitch_4
    const-string/jumbo v2, "DsClient"

    const-string/jumbo v3, "handleMessage(VISUALIZER_UPDATED_MSG):"

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log3(Ljava/lang/String;Ljava/lang/String;)V

    .line 2039
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    invoke-static {v2}, Landroid/dolby/DsClient;->-get8(Landroid/dolby/DsClient;)Landroid/dolby/IDsVisualizerEvents;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2041
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    invoke-static {v2}, Landroid/dolby/DsClient;->-get8(Landroid/dolby/DsClient;)Landroid/dolby/IDsVisualizerEvents;

    move-result-object v2

    iget-object v3, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    invoke-static {v3}, Landroid/dolby/DsClient;->-get5(Landroid/dolby/DsClient;)[F

    move-result-object v3

    iget-object v4, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    invoke-static {v4}, Landroid/dolby/DsClient;->-get6(Landroid/dolby/DsClient;)[F

    move-result-object v4

    invoke-interface {v2, v3, v4}, Landroid/dolby/IDsVisualizerEvents;->onVisualizerUpdate([F[F)V

    goto/16 :goto_0

    .line 2046
    :pswitch_5
    const-string/jumbo v2, "DsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage(VISUALIZER_SUSPENDED_MSG): isSuspended = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log2(Ljava/lang/String;Ljava/lang/String;)V

    .line 2048
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    invoke-static {v2}, Landroid/dolby/DsClient;->-get8(Landroid/dolby/DsClient;)Landroid/dolby/IDsVisualizerEvents;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2050
    iget v2, p1, Landroid/os/Message;->arg1:I

    if-nez v2, :cond_2

    const/4 v1, 0x0

    .line 2051
    .local v1, "isSuspended":Z
    :goto_2
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    invoke-static {v2}, Landroid/dolby/DsClient;->-get8(Landroid/dolby/DsClient;)Landroid/dolby/IDsVisualizerEvents;

    move-result-object v2

    invoke-interface {v2, v1}, Landroid/dolby/IDsVisualizerEvents;->onVisualizerSuspended(Z)V

    goto/16 :goto_0

    .line 2050
    .end local v1    # "isSuspended":Z
    :cond_2
    const/4 v1, 0x1

    .restart local v1    # "isSuspended":Z
    goto :goto_2

    .line 2056
    .end local v1    # "isSuspended":Z
    :pswitch_6
    const-string/jumbo v2, "DsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage(EQ_SETTINGS_CHANGED_MSG): profile = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " preset ="

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 2058
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    invoke-static {v2}, Landroid/dolby/DsClient;->-get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2060
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    invoke-static {v2}, Landroid/dolby/DsClient;->-get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;

    move-result-object v2

    iget v3, p1, Landroid/os/Message;->arg1:I

    iget v4, p1, Landroid/os/Message;->arg2:I

    invoke-interface {v2, v3, v4}, Landroid/dolby/IDsClientEvents;->onEqSettingsChanged(II)V

    goto/16 :goto_0

    .line 2065
    :pswitch_7
    const-string/jumbo v2, "DsClient"

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "handleMessage(DS_PARAM_CHANGED_MSG): profile "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, ", parameter = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    iget-object v4, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-static {v2, v3}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 2067
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    invoke-static {v2}, Landroid/dolby/DsClient;->-get3(Landroid/dolby/DsClient;)Landroid/dolby/IDsApParamEvents;

    move-result-object v2

    if-eqz v2, :cond_0

    .line 2069
    iget-object v2, p0, Landroid/dolby/DsClient$3;->this$0:Landroid/dolby/DsClient;

    invoke-static {v2}, Landroid/dolby/DsClient;->-get3(Landroid/dolby/DsClient;)Landroid/dolby/IDsApParamEvents;

    move-result-object v3

    iget v4, p1, Landroid/os/Message;->arg1:I

    iget-object v2, p1, Landroid/os/Message;->obj:Ljava/lang/Object;

    check-cast v2, Ljava/lang/String;

    invoke-interface {v3, v4, v2}, Landroid/dolby/IDsApParamEvents;->onDsApParamChange(ILjava/lang/String;)V

    goto/16 :goto_0

    .line 1996
    nop

    :pswitch_data_0
    .packed-switch 0x1
        :pswitch_0
        :pswitch_1
        :pswitch_2
        :pswitch_3
        :pswitch_4
        :pswitch_5
        :pswitch_6
        :pswitch_7
    .end packed-switch
.end method
