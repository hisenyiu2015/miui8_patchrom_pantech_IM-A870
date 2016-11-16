.class public Landroid/dolby/DsClient;
.super Ljava/lang/Object;
.source "DsClient.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/dolby/DsClient$1;,
        Landroid/dolby/DsClient$2;,
        Landroid/dolby/DsClient$3;
    }
.end annotation


# static fields
.field private static final TAG:Ljava/lang/String; = "DsClient"

.field private static lock_:Ljava/lang/Object;


# instance fields
.field private activityListener_:Landroid/dolby/IDsClientEvents;

.field private bandCount_:I

.field private callbacks_:Landroid/dolby/IDsServiceCallbacks;

.field private connection_:Landroid/content/ServiceConnection;

.field private dsApParamChangeListener_:Landroid/dolby/IDsApParamEvents;

.field private ds_:Landroid/dolby/IDs;

.field private excitations_:[F

.field private gains_:[F

.field private handler_:Landroid/os/Handler;

.field private visualizerListener_:Landroid/dolby/IDsVisualizerEvents;


# direct methods
.method static synthetic -get0(Landroid/dolby/DsClient;)Landroid/dolby/IDsClientEvents;
    .locals 1

    iget-object v0, p0, Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;

    return-object v0
.end method

.method static synthetic -get1(Landroid/dolby/DsClient;)I
    .locals 1

    iget v0, p0, Landroid/dolby/DsClient;->bandCount_:I

    return v0
.end method

.method static synthetic -get2(Landroid/dolby/DsClient;)Landroid/dolby/IDsServiceCallbacks;
    .locals 1

    iget-object v0, p0, Landroid/dolby/DsClient;->callbacks_:Landroid/dolby/IDsServiceCallbacks;

    return-object v0
.end method

.method static synthetic -get3(Landroid/dolby/DsClient;)Landroid/dolby/IDsApParamEvents;
    .locals 1

    iget-object v0, p0, Landroid/dolby/DsClient;->dsApParamChangeListener_:Landroid/dolby/IDsApParamEvents;

    return-object v0
.end method

.method static synthetic -get4(Landroid/dolby/DsClient;)Landroid/dolby/IDs;
    .locals 1

    iget-object v0, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    return-object v0
.end method

.method static synthetic -get5(Landroid/dolby/DsClient;)[F
    .locals 1

    iget-object v0, p0, Landroid/dolby/DsClient;->excitations_:[F

    return-object v0
.end method

.method static synthetic -get6(Landroid/dolby/DsClient;)[F
    .locals 1

    iget-object v0, p0, Landroid/dolby/DsClient;->gains_:[F

    return-object v0
.end method

.method static synthetic -get7(Landroid/dolby/DsClient;)Landroid/os/Handler;
    .locals 1

    iget-object v0, p0, Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;

    return-object v0
.end method

.method static synthetic -get8(Landroid/dolby/DsClient;)Landroid/dolby/IDsVisualizerEvents;
    .locals 1

    iget-object v0, p0, Landroid/dolby/DsClient;->visualizerListener_:Landroid/dolby/IDsVisualizerEvents;

    return-object v0
.end method

.method static synthetic -set0(Landroid/dolby/DsClient;I)I
    .locals 0

    iput p1, p0, Landroid/dolby/DsClient;->bandCount_:I

    return p1
.end method

.method static synthetic -set1(Landroid/dolby/DsClient;Landroid/dolby/IDs;)Landroid/dolby/IDs;
    .locals 0

    iput-object p1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    return-object p1
.end method

.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 95
    new-instance v0, Ljava/lang/Object;

    invoke-direct {v0}, Ljava/lang/Object;-><init>()V

    sput-object v0, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    .line 59
    return-void
.end method

.method public constructor <init>()V
    .locals 2

    .prologue
    const/4 v1, 0x0

    .line 59
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 68
    iput-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    .line 75
    iput-object v1, p0, Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;

    .line 82
    iput-object v1, p0, Landroid/dolby/DsClient;->visualizerListener_:Landroid/dolby/IDsVisualizerEvents;

    .line 88
    iput-object v1, p0, Landroid/dolby/DsClient;->dsApParamChangeListener_:Landroid/dolby/IDsApParamEvents;

    .line 102
    const/4 v0, 0x0

    iput v0, p0, Landroid/dolby/DsClient;->bandCount_:I

    .line 109
    iput-object v1, p0, Landroid/dolby/DsClient;->gains_:[F

    .line 116
    iput-object v1, p0, Landroid/dolby/DsClient;->excitations_:[F

    .line 1869
    new-instance v0, Landroid/dolby/DsClient$1;

    invoke-direct {v0, p0}, Landroid/dolby/DsClient$1;-><init>(Landroid/dolby/DsClient;)V

    iput-object v0, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    .line 1925
    new-instance v0, Landroid/dolby/DsClient$2;

    invoke-direct {v0, p0}, Landroid/dolby/DsClient$2;-><init>(Landroid/dolby/DsClient;)V

    iput-object v0, p0, Landroid/dolby/DsClient;->callbacks_:Landroid/dolby/IDsServiceCallbacks;

    .line 1991
    new-instance v0, Landroid/dolby/DsClient$3;

    invoke-direct {v0, p0}, Landroid/dolby/DsClient$3;-><init>(Landroid/dolby/DsClient;)V

    iput-object v0, p0, Landroid/dolby/DsClient;->handler_:Landroid/os/Handler;

    .line 59
    return-void
.end method

.method public static getGeqBandGainLowerBound()F
    .locals 2

    .prologue
    .line 1787
    sget-object v0, Landroid/dolby/DsConstants;->GEQ_BAND_GAIN_RANGE:[F

    const/4 v1, 0x0

    aget v0, v0, v1

    return v0
.end method

.method public static getGeqBandGainUpperBound()F
    .locals 2

    .prologue
    .line 1797
    sget-object v0, Landroid/dolby/DsConstants;->GEQ_BAND_GAIN_RANGE:[F

    const/4 v1, 0x1

    aget v0, v0, v1

    return v0
.end method

.method private translateErrorCodeToExceptions(I)V
    .locals 1
    .param p1, "errorCode"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 131
    if-ltz p1, :cond_0

    .line 132
    return-void

    .line 135
    :cond_0
    packed-switch p1, :pswitch_data_0

    .line 146
    new-instance v0, Ljava/lang/RuntimeException;

    invoke-direct {v0}, Ljava/lang/RuntimeException;-><init>()V

    throw v0

    .line 138
    :pswitch_0
    new-instance v0, Ljava/lang/IllegalArgumentException;

    invoke-direct {v0}, Ljava/lang/IllegalArgumentException;-><init>()V

    throw v0

    .line 140
    :pswitch_1
    new-instance v0, Landroid/os/DeadObjectException;

    invoke-direct {v0}, Landroid/os/DeadObjectException;-><init>()V

    throw v0

    .line 142
    :pswitch_2
    new-instance v0, Ljava/lang/IllegalStateException;

    invoke-direct {v0}, Ljava/lang/IllegalStateException;-><init>()V

    throw v0

    .line 144
    :pswitch_3
    new-instance v0, Ljava/lang/UnsupportedOperationException;

    invoke-direct {v0}, Ljava/lang/UnsupportedOperationException;-><init>()V

    throw v0

    .line 135
    :pswitch_data_0
    .packed-switch -0x4
        :pswitch_3
        :pswitch_2
        :pswitch_1
        :pswitch_0
    .end packed-switch
.end method


# virtual methods
.method public bindDsService(Landroid/content/Context;)Z
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1823
    const-string/jumbo v1, "DsClient"

    const-string/jumbo v2, "bindDsService()"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1825
    new-instance v0, Landroid/content/Intent;

    const-class v1, Landroid/dolby/IDs;

    invoke-virtual {v1}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 1829
    .local v0, "bindIntent":Landroid/content/Intent;
    iget-object v1, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    const/4 v2, 0x1

    invoke-virtual {p1, v0, v1, v2}, Landroid/content/Context;->bindService(Landroid/content/Intent;Landroid/content/ServiceConnection;I)Z

    move-result v1

    return v1
.end method

.method public getBandCount()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 492
    const/4 v5, 0x0

    .line 493
    .local v5, "value":I
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v6, :cond_0

    .line 497
    const/4 v6, 0x1

    :try_start_0
    new-array v4, v6, [I

    .line 498
    .local v4, "paramInt":[I
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v6, v4}, Landroid/dolby/IDs;->getBandCount([I)I

    move-result v3

    .line 499
    .local v3, "error":I
    if-eqz v3, :cond_1

    .line 501
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 526
    .end local v3    # "error":I
    .end local v4    # "paramInt":[I
    :cond_0
    :goto_0
    return v5

    .line 505
    .restart local v3    # "error":I
    .restart local v4    # "paramInt":[I
    :cond_1
    const/4 v6, 0x0

    aget v5, v4, v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 520
    .end local v3    # "error":I
    .end local v4    # "paramInt":[I
    :catch_0
    move-exception v1

    .line 521
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DsClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in getBandCount"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 522
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 523
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Exception in getBandCount"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 514
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 515
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "NullPointerException in getBandCount"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 516
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 517
    throw v2

    .line 509
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 510
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "RemoteException in getBandCount"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 511
    throw v0
.end method

.method public getBandFrequencies()[I
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 546
    const/4 v0, 0x0

    .line 547
    .local v0, "bandFrequencies":[I
    iget-object v5, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v5, :cond_0

    .line 551
    :try_start_0
    invoke-virtual {p0}, Landroid/dolby/DsClient;->getBandCount()I

    move-result v5

    new-array v0, v5, [I

    .line 552
    .local v0, "bandFrequencies":[I
    iget-object v5, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v5, v0}, Landroid/dolby/IDs;->getBandFrequencies([I)I

    move-result v4

    .line 553
    .local v4, "error":I
    if-eqz v4, :cond_0

    .line 555
    invoke-direct {p0, v4}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 576
    .end local v0    # "bandFrequencies":[I
    .end local v4    # "error":I
    :cond_0
    return-object v0

    .line 570
    :catch_0
    move-exception v2

    .line 571
    .local v2, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "DsClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in getBandFrequencies"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 572
    invoke-virtual {v2}, Ljava/lang/Exception;->printStackTrace()V

    .line 573
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Exception in getBandFrequencies"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 564
    .end local v2    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v3

    .line 565
    .local v3, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "DsClient"

    const-string/jumbo v6, "NullPointerException in getBandFrequencies"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 566
    invoke-virtual {v3}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 567
    throw v3

    .line 559
    .end local v3    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v1

    .line 560
    .local v1, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "DsClient"

    const-string/jumbo v6, "RemoteException in getBandFrequencies"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 561
    throw v1
.end method

.method public getDsApParam(Ljava/lang/String;)[I
    .locals 9
    .param p1, "param"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1553
    const/4 v5, 0x0

    .line 1555
    .local v5, "values":[I
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v6, :cond_0

    .line 1559
    const/4 v6, 0x1

    :try_start_0
    new-array v4, v6, [I

    .line 1560
    .local v4, "paramInt":[I
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v6, p1, v4}, Landroid/dolby/IDs;->getDsApParamLength(Ljava/lang/String;[I)I

    move-result v3

    .line 1561
    .local v3, "error":I
    if-nez v3, :cond_0

    .line 1563
    const/4 v6, 0x0

    aget v6, v4, v6

    new-array v5, v6, [I

    .line 1564
    .local v5, "values":[I
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v6, p1, v5}, Landroid/dolby/IDs;->getDsApParam(Ljava/lang/String;[I)I

    move-result v3

    .line 1565
    if-eqz v3, :cond_0

    .line 1567
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1589
    .end local v3    # "error":I
    .end local v4    # "paramInt":[I
    .end local v5    # "values":[I
    :cond_0
    return-object v5

    .line 1583
    :catch_0
    move-exception v1

    .line 1584
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DsClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in getDsApParam"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1585
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1586
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Exception in getDsApParam"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1577
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1578
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "NullPointerException in getDsApParam"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1579
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1580
    throw v2

    .line 1572
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1573
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "RemoteException in getDsApParam"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1574
    throw v0
.end method

.method public getDsApVersion()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 958
    const-string/jumbo v5, ""

    .line 960
    .local v5, "version":Ljava/lang/String;
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v6, :cond_0

    .line 964
    const/4 v6, 0x1

    :try_start_0
    new-array v4, v6, [Ljava/lang/String;

    .line 965
    .local v4, "paramString":[Ljava/lang/String;
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v6, v4}, Landroid/dolby/IDs;->getDsApVersion([Ljava/lang/String;)I

    move-result v3

    .line 966
    .local v3, "error":I
    if-eqz v3, :cond_1

    .line 968
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 993
    .end local v3    # "error":I
    .end local v4    # "paramString":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 972
    .restart local v3    # "error":I
    .restart local v4    # "paramString":[Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    aget-object v5, v4, v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 987
    .end local v3    # "error":I
    .end local v4    # "paramString":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 988
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DsClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in getDsApVersion"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 989
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 990
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Exception in getDsApVersion"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 981
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 982
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "NullPointerException in getDsApVersion"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 983
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 984
    throw v2

    .line 976
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 977
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "RemoteException in getDsApVersion"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 978
    throw v0
.end method

.method public getDsOn()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 280
    const/4 v5, 0x0

    .line 282
    .local v5, "value":Z
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v6, :cond_0

    .line 286
    const/4 v6, 0x1

    :try_start_0
    new-array v4, v6, [Z

    .line 287
    .local v4, "paramBoolean":[Z
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v6, v4}, Landroid/dolby/IDs;->getDsOn([Z)I

    move-result v3

    .line 288
    .local v3, "error":I
    if-eqz v3, :cond_1

    .line 290
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 315
    .end local v3    # "error":I
    .end local v4    # "paramBoolean":[Z
    .end local v5    # "value":Z
    :cond_0
    :goto_0
    return v5

    .line 294
    .restart local v3    # "error":I
    .restart local v4    # "paramBoolean":[Z
    .restart local v5    # "value":Z
    :cond_1
    const/4 v6, 0x0

    aget-boolean v5, v4, v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v5, "value":Z
    goto :goto_0

    .line 309
    .end local v3    # "error":I
    .end local v4    # "paramBoolean":[Z
    .local v5, "value":Z
    :catch_0
    move-exception v1

    .line 310
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DsClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in getDsOn"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 311
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 312
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Exception in getDsOn"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 303
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 304
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "NullPointerException in getDsOn"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 305
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 306
    throw v2

    .line 298
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 299
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "RemoteException in getDsOn"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 300
    throw v0
.end method

.method public getDsVersion()Ljava/lang/String;
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1013
    const-string/jumbo v5, ""

    .line 1015
    .local v5, "version":Ljava/lang/String;
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v6, :cond_0

    .line 1019
    const/4 v6, 0x1

    :try_start_0
    new-array v4, v6, [Ljava/lang/String;

    .line 1020
    .local v4, "paramString":[Ljava/lang/String;
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v6, v4}, Landroid/dolby/IDs;->getDsVersion([Ljava/lang/String;)I

    move-result v3

    .line 1021
    .local v3, "error":I
    if-eqz v3, :cond_1

    .line 1023
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 1048
    .end local v3    # "error":I
    .end local v4    # "paramString":[Ljava/lang/String;
    :cond_0
    :goto_0
    return-object v5

    .line 1027
    .restart local v3    # "error":I
    .restart local v4    # "paramString":[Ljava/lang/String;
    :cond_1
    const/4 v6, 0x0

    aget-object v5, v4, v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1042
    .end local v3    # "error":I
    .end local v4    # "paramString":[Ljava/lang/String;
    :catch_0
    move-exception v1

    .line 1043
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DsClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in getDsVersion"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1044
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1045
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Exception in getDsVersion"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1036
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1037
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "NullPointerException in getDsVersion"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1038
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1039
    throw v2

    .line 1031
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1032
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "RemoteException in getDsVersion"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1033
    throw v0
.end method

.method public getGeq(II)[F
    .locals 8
    .param p1, "profile"    # I
    .param p2, "preset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1443
    const/4 v4, 0x0

    .line 1445
    .local v4, "value":[F
    if-ltz p1, :cond_0

    const/4 v5, 0x5

    if-le p1, v5, :cond_1

    .line 1447
    :cond_0
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "invalid profile"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1449
    :cond_1
    if-ltz p2, :cond_2

    const/4 v5, 0x3

    if-le p2, v5, :cond_3

    .line 1451
    :cond_2
    new-instance v5, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v6, "invalid preset"

    invoke-direct {v5, v6}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1454
    :cond_3
    iget-object v5, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v5, :cond_4

    .line 1458
    :try_start_0
    invoke-virtual {p0}, Landroid/dolby/DsClient;->getBandCount()I

    move-result v5

    new-array v4, v5, [F

    .line 1459
    .local v4, "value":[F
    iget-object v5, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v5, p1, p2, v4}, Landroid/dolby/IDs;->getGeq(II[F)I

    move-result v3

    .line 1460
    .local v3, "error":I
    if-eqz v3, :cond_4

    .line 1462
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1483
    .end local v3    # "error":I
    .end local v4    # "value":[F
    :cond_4
    return-object v4

    .line 1477
    :catch_0
    move-exception v1

    .line 1478
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "DsClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in getGeq"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1479
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1480
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Exception in getGeq"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 1471
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1472
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "DsClient"

    const-string/jumbo v6, "NullPointerException in getGeq"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1473
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1474
    throw v2

    .line 1466
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1467
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "DsClient"

    const-string/jumbo v6, "RemoteException in getGeq"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1468
    throw v0
.end method

.method public getIeqPreset(I)I
    .locals 9
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1191
    const/4 v5, 0x0

    .line 1193
    .local v5, "value":I
    if-ltz p1, :cond_0

    const/4 v6, 0x5

    if-le p1, v6, :cond_1

    .line 1195
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "invalid profile"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1198
    :cond_1
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v6, :cond_2

    .line 1202
    const/4 v6, 0x1

    :try_start_0
    new-array v4, v6, [I

    .line 1203
    .local v4, "paramInt":[I
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v6, p1, v4}, Landroid/dolby/IDs;->getIeqPreset(I[I)I

    move-result v3

    .line 1204
    .local v3, "error":I
    if-eqz v3, :cond_3

    .line 1206
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 1231
    .end local v3    # "error":I
    .end local v4    # "paramInt":[I
    :cond_2
    :goto_0
    return v5

    .line 1210
    .restart local v3    # "error":I
    .restart local v4    # "paramInt":[I
    :cond_3
    const/4 v6, 0x0

    aget v5, v4, v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 1225
    .end local v3    # "error":I
    .end local v4    # "paramInt":[I
    :catch_0
    move-exception v1

    .line 1226
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DsClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in getIeqPreset"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1227
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1228
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Exception in getIeqPreset"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1219
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1220
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "NullPointerException in getIeqPreset"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1221
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1222
    throw v2

    .line 1214
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1215
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "RemoteException in getIeqPreset"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1216
    throw v0
.end method

.method public getProfileCount()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 387
    const/4 v5, 0x0

    .line 388
    .local v5, "value":I
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v6, :cond_0

    .line 392
    const/4 v6, 0x1

    :try_start_0
    new-array v4, v6, [I

    .line 393
    .local v4, "paramInt":[I
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v6, v4}, Landroid/dolby/IDs;->getProfileCount([I)I

    move-result v3

    .line 394
    .local v3, "error":I
    if-eqz v3, :cond_1

    .line 396
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 421
    .end local v3    # "error":I
    .end local v4    # "paramInt":[I
    :cond_0
    :goto_0
    return v5

    .line 400
    .restart local v3    # "error":I
    .restart local v4    # "paramInt":[I
    :cond_1
    const/4 v6, 0x0

    aget v5, v4, v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 415
    .end local v3    # "error":I
    .end local v4    # "paramInt":[I
    :catch_0
    move-exception v1

    .line 416
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DsClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in getProfileCount"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 417
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 418
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Exception in getProfileCount"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 409
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 410
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "NullPointerException in getProfileCount"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 411
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 412
    throw v2

    .line 404
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 405
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "RemoteException in getProfileCount"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 406
    throw v0
.end method

.method public getProfileNames()[Ljava/lang/String;
    .locals 8
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 441
    const/4 v4, 0x0

    .line 443
    .local v4, "names":[Ljava/lang/String;
    iget-object v5, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v5, :cond_0

    .line 447
    :try_start_0
    invoke-virtual {p0}, Landroid/dolby/DsClient;->getProfileCount()I

    move-result v5

    new-array v4, v5, [Ljava/lang/String;

    .line 448
    .local v4, "names":[Ljava/lang/String;
    iget-object v5, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v5, v4}, Landroid/dolby/IDs;->getProfileNames([Ljava/lang/String;)I

    move-result v3

    .line 449
    .local v3, "error":I
    if-eqz v3, :cond_0

    .line 451
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 472
    .end local v3    # "error":I
    .end local v4    # "names":[Ljava/lang/String;
    :cond_0
    return-object v4

    .line 466
    :catch_0
    move-exception v1

    .line 467
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v5, "DsClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in getProfileNames"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 468
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 469
    new-instance v5, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Exception in getProfileNames"

    invoke-direct {v5, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v5

    .line 460
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 461
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v5, "DsClient"

    const-string/jumbo v6, "NullPointerException in getProfileNames"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 462
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 463
    throw v2

    .line 455
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 456
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v5, "DsClient"

    const-string/jumbo v6, "RemoteException in getProfileNames"

    invoke-static {v5, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 457
    throw v0
.end method

.method public getProfileSettings(I)Landroid/dolby/DsClientSettings;
    .locals 9
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 784
    const/4 v5, 0x0

    .line 786
    .local v5, "settings":Landroid/dolby/DsClientSettings;
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v6, :cond_1

    .line 790
    const/4 v6, 0x1

    :try_start_0
    new-array v4, v6, [Landroid/dolby/DsClientSettings;

    .line 791
    .local v4, "paramSettings":[Landroid/dolby/DsClientSettings;
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v6, p1, v4}, Landroid/dolby/IDs;->getProfileSettings(I[Landroid/dolby/DsClientSettings;)I

    move-result v3

    .line 792
    .local v3, "error":I
    if-eqz v3, :cond_0

    .line 794
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 796
    :cond_0
    const/4 v6, 0x0

    aget-object v5, v4, v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 816
    .end local v3    # "error":I
    .end local v4    # "paramSettings":[Landroid/dolby/DsClientSettings;
    .end local v5    # "settings":Landroid/dolby/DsClientSettings;
    :cond_1
    return-object v5

    .line 810
    .restart local v5    # "settings":Landroid/dolby/DsClientSettings;
    :catch_0
    move-exception v1

    .line 811
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DsClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in getProfileSetting"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 812
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 813
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Exception in getProfileSettings"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 804
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 805
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "NullPointerException in getProfileSettings"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 806
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 807
    throw v2

    .line 799
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 800
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "RemoteException in getProfileSettings"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 801
    throw v0
.end method

.method public getSelectedProfile()I
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 655
    const/4 v5, 0x0

    .line 657
    .local v5, "value":I
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v6, :cond_0

    .line 661
    const/4 v6, 0x1

    :try_start_0
    new-array v4, v6, [I

    .line 662
    .local v4, "paramInt":[I
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v6, v4}, Landroid/dolby/IDs;->getSelectedProfile([I)I

    move-result v3

    .line 663
    .local v3, "error":I
    if-eqz v3, :cond_1

    .line 665
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 690
    .end local v3    # "error":I
    .end local v4    # "paramInt":[I
    :cond_0
    :goto_0
    return v5

    .line 669
    .restart local v3    # "error":I
    .restart local v4    # "paramInt":[I
    :cond_1
    const/4 v6, 0x0

    aget v5, v4, v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    .line 684
    .end local v3    # "error":I
    .end local v4    # "paramInt":[I
    :catch_0
    move-exception v1

    .line 685
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DsClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in getSelectedProfile"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 686
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 687
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Exception in getSelectedProfile"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 678
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 679
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "NullPointerException in getSelectedProfile"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 680
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 681
    throw v2

    .line 673
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 674
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "RemoteException in getSelectedProfile"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 675
    throw v0
.end method

.method public isMonoSpeaker()Z
    .locals 9
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1068
    const/4 v5, 0x0

    .line 1070
    .local v5, "ret_val":Z
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v6, :cond_0

    .line 1074
    const/4 v6, 0x1

    :try_start_0
    new-array v4, v6, [Z

    .line 1075
    .local v4, "paramBoolean":[Z
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v6, v4}, Landroid/dolby/IDs;->getMonoSpeaker([Z)I

    move-result v3

    .line 1077
    .local v3, "error":I
    if-eqz v3, :cond_1

    .line 1079
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 1104
    .end local v3    # "error":I
    .end local v4    # "paramBoolean":[Z
    .end local v5    # "ret_val":Z
    :cond_0
    :goto_0
    return v5

    .line 1083
    .restart local v3    # "error":I
    .restart local v4    # "paramBoolean":[Z
    .restart local v5    # "ret_val":Z
    :cond_1
    const/4 v6, 0x0

    aget-boolean v5, v4, v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .local v5, "ret_val":Z
    goto :goto_0

    .line 1098
    .end local v3    # "error":I
    .end local v4    # "paramBoolean":[Z
    .local v5, "ret_val":Z
    :catch_0
    move-exception v1

    .line 1099
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DsClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in isMonoSpeaker"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1100
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1101
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Exception in isMonoSpeaker"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1092
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1093
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "NullPointerException isMonoSpeaker"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1094
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1095
    throw v2

    .line 1087
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1088
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "RemoteException in isMonoSpeaker"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1089
    throw v0
.end method

.method public isProfileModified(I)Z
    .locals 9
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    const/4 v7, 0x1

    .line 1253
    const/4 v5, 0x0

    .line 1255
    .local v5, "value":Z
    if-ltz p1, :cond_0

    const/4 v6, 0x5

    if-le p1, v6, :cond_1

    .line 1257
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "invalid profile"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1260
    :cond_1
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v6, :cond_2

    .line 1264
    const/4 v6, 0x1

    :try_start_0
    new-array v4, v6, [I

    .line 1265
    .local v4, "paramInt":[I
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v6, p1, v4}, Landroid/dolby/IDs;->getProfileModified(I[I)I

    move-result v3

    .line 1266
    .local v3, "error":I
    if-eqz v3, :cond_3

    .line 1268
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 1293
    .end local v3    # "error":I
    .end local v4    # "paramInt":[I
    :cond_2
    :goto_0
    return v5

    .line 1272
    .restart local v3    # "error":I
    .restart local v4    # "paramInt":[I
    :cond_3
    const/4 v6, 0x0

    aget v6, v4, v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v6, v6, 0x1

    if-ne v6, v7, :cond_4

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 1287
    .end local v3    # "error":I
    .end local v4    # "paramInt":[I
    :catch_0
    move-exception v1

    .line 1288
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DsClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in isProfileModified"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1289
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1290
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Exception in isProfileModified"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1281
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1282
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "NullPointerException isProfileModified"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1283
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1284
    throw v2

    .line 1276
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1277
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "RemoteException in isProfileModified"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1278
    throw v0
.end method

.method public isProfileNameModified(I)Z
    .locals 9
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1315
    const/4 v5, 0x0

    .line 1317
    .local v5, "value":Z
    if-ltz p1, :cond_0

    const/4 v6, 0x5

    if-le p1, v6, :cond_1

    .line 1319
    :cond_0
    new-instance v6, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v7, "invalid profile"

    invoke-direct {v6, v7}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1322
    :cond_1
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v6, :cond_2

    .line 1326
    const/4 v6, 0x1

    :try_start_0
    new-array v4, v6, [I

    .line 1327
    .local v4, "paramInt":[I
    iget-object v6, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v6, p1, v4}, Landroid/dolby/IDs;->getProfileModified(I[I)I

    move-result v3

    .line 1328
    .local v3, "error":I
    if-eqz v3, :cond_3

    .line 1330
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V

    .line 1355
    .end local v3    # "error":I
    .end local v4    # "paramInt":[I
    :cond_2
    :goto_0
    return v5

    .line 1334
    .restart local v3    # "error":I
    .restart local v4    # "paramInt":[I
    :cond_3
    const/4 v6, 0x0

    aget v6, v4, v6
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    and-int/lit8 v6, v6, 0x2

    const/4 v7, 0x2

    if-ne v6, v7, :cond_4

    const/4 v5, 0x1

    goto :goto_0

    :cond_4
    const/4 v5, 0x0

    goto :goto_0

    .line 1349
    .end local v3    # "error":I
    .end local v4    # "paramInt":[I
    :catch_0
    move-exception v1

    .line 1350
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v6, "DsClient"

    new-instance v7, Ljava/lang/StringBuilder;

    invoke-direct {v7}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v8

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    const-string/jumbo v8, " in isProfileNameModified"

    invoke-virtual {v7, v8}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v7

    invoke-virtual {v7}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1351
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1352
    new-instance v6, Ljava/lang/RuntimeException;

    const-string/jumbo v7, "Exception in isProfileNameModified"

    invoke-direct {v6, v7}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v6

    .line 1343
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1344
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "NullPointerException isProfileNameModified"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1345
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1346
    throw v2

    .line 1338
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1339
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v6, "DsClient"

    const-string/jumbo v7, "RemoteException in isProfileNameModified"

    invoke-static {v6, v7}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1340
    throw v0
.end method

.method public registerDsApParamEvents(Landroid/dolby/IDsApParamEvents;)V
    .locals 6
    .param p1, "listener"    # Landroid/dolby/IDsApParamEvents;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1608
    iget-object v3, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v3, :cond_0

    .line 1612
    :try_start_0
    iget-object v3, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v4, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/dolby/IDs;->registerDsApParamEvents(I)V

    .line 1613
    iput-object p1, p0, Landroid/dolby/DsClient;->dsApParamChangeListener_:Landroid/dolby/IDsApParamEvents;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1606
    return-void

    .line 1627
    :catch_0
    move-exception v1

    .line 1628
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in registerDsApParamEvents"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1629
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1630
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Exception in registerDsApParamEvents"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1621
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1622
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "DsClient"

    const-string/jumbo v4, "NullPointerException in registerDsApParamEvents"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1623
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1624
    throw v2

    .line 1616
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1617
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "DsClient"

    const-string/jumbo v4, "RemoteException in registerDsApParamEvents"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1618
    throw v0

    .line 1635
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "registerDsApParamEvents failed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public registerVisualizer(Landroid/dolby/IDsVisualizerEvents;)V
    .locals 6
    .param p1, "listener"    # Landroid/dolby/IDsVisualizerEvents;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1696
    iget-object v3, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v3, :cond_3

    .line 1700
    :try_start_0
    iget v3, p0, Landroid/dolby/DsClient;->bandCount_:I

    if-nez v3, :cond_0

    .line 1702
    const-string/jumbo v3, "DsClient"

    const-string/jumbo v4, "graphic equalizer band count NOT initialized yet."

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1703
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Exception in registerVisualizer"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_1

    .line 1716
    :catch_0
    move-exception v0

    .line 1717
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "DsClient"

    const-string/jumbo v4, "RemoteException in registerVisualizer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1718
    throw v0

    .line 1707
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    :try_start_1
    iget-object v3, p0, Landroid/dolby/DsClient;->gains_:[F

    if-nez v3, :cond_1

    .line 1708
    iget v3, p0, Landroid/dolby/DsClient;->bandCount_:I

    new-array v3, v3, [F

    iput-object v3, p0, Landroid/dolby/DsClient;->gains_:[F

    .line 1709
    :cond_1
    iget-object v3, p0, Landroid/dolby/DsClient;->excitations_:[F

    if-nez v3, :cond_2

    .line 1710
    iget v3, p0, Landroid/dolby/DsClient;->bandCount_:I

    new-array v3, v3, [F

    iput-object v3, p0, Landroid/dolby/DsClient;->excitations_:[F

    .line 1712
    :cond_2
    iget-object v3, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v4, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/dolby/IDs;->registerVisualizerData(I)V

    .line 1713
    iput-object p1, p0, Landroid/dolby/DsClient;->visualizerListener_:Landroid/dolby/IDsVisualizerEvents;
    :try_end_1
    .catch Landroid/os/RemoteException; {:try_start_1 .. :try_end_1} :catch_0
    .catch Ljava/lang/NullPointerException; {:try_start_1 .. :try_end_1} :catch_2
    .catch Ljava/lang/Exception; {:try_start_1 .. :try_end_1} :catch_1

    .line 1694
    return-void

    .line 1727
    :catch_1
    move-exception v1

    .line 1728
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in registerVisualizer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1729
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1730
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Exception in registerVisualizer"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1721
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_2
    move-exception v2

    .line 1722
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "DsClient"

    const-string/jumbo v4, "NullPointerException in registerVisualizer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1723
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1724
    throw v2

    .line 1735
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :cond_3
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "registerVisualizer failed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public resetProfile(I)V
    .locals 8
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 839
    if-ltz p1, :cond_0

    const/4 v4, 0x5

    if-le p1, v4, :cond_1

    .line 841
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "invalid profile"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 844
    :cond_1
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_3

    .line 846
    sget-object v5, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v5

    .line 850
    :try_start_0
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v6, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-interface {v4, v6, p1}, Landroid/dolby/IDs;->resetProfile(II)I

    move-result v3

    .line 851
    .local v3, "error":I
    if-eqz v3, :cond_2

    .line 853
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v5

    .line 837
    .end local v3    # "error":I
    :cond_3
    return-void

    .line 868
    :catch_0
    move-exception v1

    .line 869
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "DsClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in resetProfile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 870
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 871
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Exception in resetProfile"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 846
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 862
    :catch_1
    move-exception v2

    .line 863
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "NullPointerException in resetProfile"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 864
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 865
    throw v2

    .line 857
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 858
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "RemoteException in resetProfile"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 859
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setDsApParam(Ljava/lang/String;[I)V
    .locals 7
    .param p1, "param"    # Ljava/lang/String;
    .param p2, "values"    # [I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1504
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_0

    .line 1508
    :try_start_0
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v5, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v5}, Ljava/lang/Object;->hashCode()I

    move-result v5

    invoke-interface {v4, v5, p1, p2}, Landroid/dolby/IDs;->setDsApParam(ILjava/lang/String;[I)I

    move-result v3

    .line 1509
    .local v3, "error":I
    if-eqz v3, :cond_0

    .line 1511
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1502
    .end local v3    # "error":I
    :cond_0
    return-void

    .line 1526
    :catch_0
    move-exception v1

    .line 1527
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v4, "DsClient"

    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    const-string/jumbo v6, " in setDsApParam"

    invoke-virtual {v5, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v5

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1528
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1529
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v5, "Exception in setDsApParam"

    invoke-direct {v4, v5}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1520
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1521
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v5, "NullPointerException in setDsApParam"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1522
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1523
    throw v2

    .line 1515
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1516
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v5, "RemoteException in setDsApParam"

    invoke-static {v4, v5}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1517
    throw v0
.end method

.method public setDsOn(Z)V
    .locals 8
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 172
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_0

    .line 174
    sget-object v5, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v5

    .line 178
    :try_start_0
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v6, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-interface {v4, v6, p1}, Landroid/dolby/IDs;->setDsOn(IZ)I

    move-result v3

    .line 179
    .local v3, "error":I
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 170
    .end local v3    # "error":I
    :cond_0
    return-void

    .line 193
    :catch_0
    move-exception v1

    .line 194
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "DsClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in setDsOn"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 195
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 196
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Exception in setDsOn"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 174
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 187
    :catch_1
    move-exception v2

    .line 188
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "NullPointerException in setDsOn"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 189
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 190
    throw v2

    .line 182
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 183
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "RemoteException in setDsOn"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 184
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setDsOnChecked(Z)I
    .locals 8
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 229
    const/4 v3, 0x1

    .line 231
    .local v3, "error":I
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_0

    .line 233
    sget-object v5, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v5

    .line 237
    :try_start_0
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v6, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-interface {v4, v6, p1}, Landroid/dolby/IDs;->setDsOn(IZ)I

    move-result v3

    .line 238
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v5

    .line 260
    :cond_0
    return v3

    .line 252
    :catch_0
    move-exception v1

    .line 253
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "DsClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in setDsOnChecked"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 254
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 255
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Exception in setDsOnChecked"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 233
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 246
    :catch_1
    move-exception v2

    .line 247
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "NullPointerException in setDsOnChecked"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 248
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 249
    throw v2

    .line 241
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 242
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "RemoteException in setDsOnChecked"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 243
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setEventListener(Landroid/dolby/IDsClientEvents;)V
    .locals 0
    .param p1, "listener"    # Landroid/dolby/IDsClientEvents;

    .prologue
    .line 1807
    if-eqz p1, :cond_0

    .line 1809
    iput-object p1, p0, Landroid/dolby/DsClient;->activityListener_:Landroid/dolby/IDsClientEvents;

    .line 1805
    :cond_0
    return-void
.end method

.method public setGeq(II[F)V
    .locals 8
    .param p1, "profile"    # I
    .param p2, "preset"    # I
    .param p3, "geqBandGains"    # [F
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1381
    if-ltz p1, :cond_0

    const/4 v4, 0x5

    if-le p1, v4, :cond_1

    .line 1383
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "invalid profile"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1385
    :cond_1
    if-ltz p2, :cond_2

    const/4 v4, 0x3

    if-le p2, v4, :cond_3

    .line 1387
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "invalid preset"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1390
    :cond_3
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_5

    .line 1392
    sget-object v5, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v5

    .line 1396
    :try_start_0
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v6, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-interface {v4, v6, p1, p2, p3}, Landroid/dolby/IDs;->setGeq(III[F)I

    move-result v3

    .line 1397
    .local v3, "error":I
    if-eqz v3, :cond_4

    .line 1399
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v5

    .line 1379
    .end local v3    # "error":I
    :cond_5
    return-void

    .line 1414
    :catch_0
    move-exception v1

    .line 1415
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "DsClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in setGeq"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1416
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1417
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Exception in setGeq"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1392
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1408
    :catch_1
    move-exception v2

    .line 1409
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "NullPointerException in setGeq"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1410
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1411
    throw v2

    .line 1403
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1404
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "RemoteException in setGeq"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1405
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setIeqPreset(II)V
    .locals 8
    .param p1, "profile"    # I
    .param p2, "preset"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1130
    if-ltz p1, :cond_0

    const/4 v4, 0x5

    if-le p1, v4, :cond_1

    .line 1132
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "invalid profile"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1134
    :cond_1
    if-ltz p2, :cond_2

    const/4 v4, 0x3

    if-le p2, v4, :cond_3

    .line 1136
    :cond_2
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "invalid preset"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 1139
    :cond_3
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_5

    .line 1141
    sget-object v5, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v5

    .line 1145
    :try_start_0
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v6, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-interface {v4, v6, p1, p2}, Landroid/dolby/IDs;->setIeqPreset(III)I

    move-result v3

    .line 1146
    .local v3, "error":I
    if-eqz v3, :cond_4

    .line 1148
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_4
    monitor-exit v5

    .line 1128
    .end local v3    # "error":I
    :cond_5
    return-void

    .line 1163
    :catch_0
    move-exception v1

    .line 1164
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "DsClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in setIeqPreset"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1165
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1166
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Exception in setIeqPreset"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 1141
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 1157
    :catch_1
    move-exception v2

    .line 1158
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "NullPointerException in setIeqPreset"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1159
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1160
    throw v2

    .line 1152
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1153
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "RemoteException in setIeqPreset"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1154
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setNonPersistentMode(Z)V
    .locals 8
    .param p1, "on"    # Z
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 335
    const/4 v3, 0x0

    .line 337
    .local v3, "error":I
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_1

    .line 339
    sget-object v5, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v5

    .line 343
    :try_start_0
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    invoke-interface {v4, p1}, Landroid/dolby/IDs;->setNonPersistentMode(Z)I

    move-result v3

    .line 344
    if-eqz v3, :cond_0

    .line 346
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_0
    monitor-exit v5

    .line 333
    :cond_1
    return-void

    .line 361
    :catch_0
    move-exception v1

    .line 362
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "DsClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in setNonPersistentMode"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 363
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 364
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Exception in setNonPersistentMode"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 339
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 355
    :catch_1
    move-exception v2

    .line 356
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "NullPointerException in setNonPersistentMode"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 357
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 358
    throw v2

    .line 350
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 351
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "RemoteException in setNonPersistentMode"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 352
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setProfileName(ILjava/lang/String;)V
    .locals 8
    .param p1, "profile"    # I
    .param p2, "name"    # Ljava/lang/String;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 899
    if-ltz p1, :cond_0

    const/4 v4, 0x5

    if-le p1, v4, :cond_1

    .line 901
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "invalid profile"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 903
    :cond_1
    if-nez p2, :cond_2

    .line 905
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "invalid name"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 908
    :cond_2
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_4

    .line 910
    sget-object v5, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v5

    .line 914
    :try_start_0
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v6, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-interface {v4, v6, p1, p2}, Landroid/dolby/IDs;->setProfileName(IILjava/lang/String;)I

    move-result v3

    .line 915
    .local v3, "error":I
    if-eqz v3, :cond_3

    .line 917
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v5

    .line 897
    .end local v3    # "error":I
    :cond_4
    return-void

    .line 932
    :catch_0
    move-exception v1

    .line 933
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "DsClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in setProfileName"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 934
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 935
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Exception in setProfileName"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 910
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 926
    :catch_1
    move-exception v2

    .line 927
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "NullPointerException in setProfileName"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 928
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 929
    throw v2

    .line 921
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 922
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "RemoteException in setProfileName"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 923
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setProfileSettings(ILandroid/dolby/DsClientSettings;)V
    .locals 8
    .param p1, "profile"    # I
    .param p2, "settings"    # Landroid/dolby/DsClientSettings;
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 719
    if-ltz p1, :cond_0

    const/4 v4, 0x5

    if-le p1, v4, :cond_1

    .line 721
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "invalid profile"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 723
    :cond_1
    if-nez p2, :cond_2

    .line 725
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "invalid settings"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 728
    :cond_2
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_4

    .line 730
    sget-object v5, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v5

    .line 734
    :try_start_0
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v6, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-interface {v4, v6, p1, p2}, Landroid/dolby/IDs;->setProfileSettings(IILandroid/dolby/DsClientSettings;)I

    move-result v3

    .line 735
    .local v3, "error":I
    if-eqz v3, :cond_3

    .line 737
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_3
    monitor-exit v5

    .line 717
    .end local v3    # "error":I
    :cond_4
    return-void

    .line 752
    :catch_0
    move-exception v1

    .line 753
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "DsClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in setProfileSettings"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 754
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 755
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Exception in setProfileSettings"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 730
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 746
    :catch_1
    move-exception v2

    .line 747
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "NullPointerException in setProfileSettings"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 748
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 749
    throw v2

    .line 741
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 742
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "RemoteException in setProfileSettings"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 743
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public setSelectedProfile(I)V
    .locals 8
    .param p1, "profile"    # I
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Ljava/lang/IllegalArgumentException;,
            Landroid/os/DeadObjectException;,
            Ljava/lang/IllegalStateException;,
            Ljava/lang/UnsupportedOperationException;,
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 600
    if-ltz p1, :cond_0

    const/4 v4, 0x5

    if-le p1, v4, :cond_1

    .line 602
    :cond_0
    new-instance v4, Ljava/lang/IllegalArgumentException;

    const-string/jumbo v5, "invalid profile"

    invoke-direct {v4, v5}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw v4

    .line 605
    :cond_1
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v4, :cond_3

    .line 607
    sget-object v5, Landroid/dolby/DsClient;->lock_:Ljava/lang/Object;

    monitor-enter v5

    .line 611
    :try_start_0
    iget-object v4, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v6, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v6}, Ljava/lang/Object;->hashCode()I

    move-result v6

    invoke-interface {v4, v6, p1}, Landroid/dolby/IDs;->setSelectedProfile(II)I

    move-result v3

    .line 612
    .local v3, "error":I
    if-eqz v3, :cond_2

    .line 614
    invoke-direct {p0, v3}, Landroid/dolby/DsClient;->translateErrorCodeToExceptions(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    :cond_2
    monitor-exit v5

    .line 598
    .end local v3    # "error":I
    :cond_3
    return-void

    .line 629
    :catch_0
    move-exception v1

    .line 630
    .local v1, "e":Ljava/lang/Exception;
    :try_start_1
    const-string/jumbo v4, "DsClient"

    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    const-string/jumbo v7, " in setSelectedProfile"

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v6

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 631
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 632
    new-instance v4, Ljava/lang/RuntimeException;

    const-string/jumbo v6, "Exception in setSelectedProfile"

    invoke-direct {v4, v6}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v4
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    .line 607
    .end local v1    # "e":Ljava/lang/Exception;
    :catchall_0
    move-exception v4

    monitor-exit v5

    throw v4

    .line 623
    :catch_1
    move-exception v2

    .line 624
    .local v2, "e":Ljava/lang/NullPointerException;
    :try_start_2
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "NullPointerException in setSelectedProfile"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 625
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 626
    throw v2

    .line 618
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 619
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v4, "DsClient"

    const-string/jumbo v6, "RemoteException in setSelectedProfile"

    invoke-static {v4, v6}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 620
    throw v0
    :try_end_2
    .catchall {:try_start_2 .. :try_end_2} :catchall_0
.end method

.method public unBindDsService(Landroid/content/Context;)V
    .locals 3
    .param p1, "context"    # Landroid/content/Context;

    .prologue
    .line 1843
    const-string/jumbo v1, "DsClient"

    const-string/jumbo v2, "unBindDsService()"

    invoke-static {v1, v2}, Landroid/dolby/DsLog;->log1(Ljava/lang/String;Ljava/lang/String;)V

    .line 1849
    :try_start_0
    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v2, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/dolby/IDs;->unregisterVisualizerData(I)V

    .line 1850
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/dolby/DsClient;->visualizerListener_:Landroid/dolby/IDsVisualizerEvents;

    .line 1851
    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v2, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v2}, Ljava/lang/Object;->hashCode()I

    move-result v2

    invoke-interface {v1, v2}, Landroid/dolby/IDs;->unregisterDsApParamEvents(I)V

    .line 1852
    const/4 v1, 0x0

    iput-object v1, p0, Landroid/dolby/DsClient;->dsApParamChangeListener_:Landroid/dolby/IDsApParamEvents;

    .line 1854
    iget-object v1, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v2, p0, Landroid/dolby/DsClient;->callbacks_:Landroid/dolby/IDsServiceCallbacks;

    invoke-interface {v1, v2}, Landroid/dolby/IDs;->unregisterCallback(Landroid/dolby/IDsServiceCallbacks;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    .line 1861
    :goto_0
    iget-object v1, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {p1, v1}, Landroid/content/Context;->unbindService(Landroid/content/ServiceConnection;)V

    .line 1841
    return-void

    .line 1857
    :catch_0
    move-exception v0

    .line 1858
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v1, "DsClient"

    const-string/jumbo v2, "Remote Exception in unBindFromRemoteRunningService"

    invoke-static {v1, v2}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    goto :goto_0
.end method

.method public unregisterDsApParamEvents()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1653
    iget-object v3, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v3, :cond_0

    .line 1657
    :try_start_0
    iget-object v3, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v4, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/dolby/IDs;->unregisterDsApParamEvents(I)V

    .line 1658
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/dolby/DsClient;->dsApParamChangeListener_:Landroid/dolby/IDsApParamEvents;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1651
    return-void

    .line 1672
    :catch_0
    move-exception v1

    .line 1673
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in unregisterDsApParamEvents"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1674
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1675
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Exception in unregisterDsApParamEvents"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1666
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1667
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "DsClient"

    const-string/jumbo v4, "NullPointerException in unregisterDsApParamEvents"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1668
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1669
    throw v2

    .line 1661
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1662
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "DsClient"

    const-string/jumbo v4, "RemoteException in unregisterDsApParamEvents"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1663
    throw v0

    .line 1680
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "unregisterDsApParamEvents failed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method

.method public unregisterVisualizer()V
    .locals 6
    .annotation system Ldalvik/annotation/Throws;
        value = {
            Landroid/os/RemoteException;,
            Ljava/lang/NullPointerException;,
            Ljava/lang/RuntimeException;
        }
    .end annotation

    .prologue
    .line 1749
    iget-object v3, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    if-eqz v3, :cond_0

    .line 1753
    :try_start_0
    iget-object v3, p0, Landroid/dolby/DsClient;->ds_:Landroid/dolby/IDs;

    iget-object v4, p0, Landroid/dolby/DsClient;->connection_:Landroid/content/ServiceConnection;

    invoke-virtual {v4}, Ljava/lang/Object;->hashCode()I

    move-result v4

    invoke-interface {v3, v4}, Landroid/dolby/IDs;->unregisterVisualizerData(I)V

    .line 1754
    const/4 v3, 0x0

    iput-object v3, p0, Landroid/dolby/DsClient;->visualizerListener_:Landroid/dolby/IDsVisualizerEvents;
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_2
    .catch Ljava/lang/NullPointerException; {:try_start_0 .. :try_end_0} :catch_1
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    .line 1747
    return-void

    .line 1768
    :catch_0
    move-exception v1

    .line 1769
    .local v1, "e":Ljava/lang/Exception;
    const-string/jumbo v3, "DsClient"

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Ljava/lang/Exception;->toString()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    const-string/jumbo v5, " in unregisterVisualizer"

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1770
    invoke-virtual {v1}, Ljava/lang/Exception;->printStackTrace()V

    .line 1771
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "Exception in unregisterVisualizer"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3

    .line 1762
    .end local v1    # "e":Ljava/lang/Exception;
    :catch_1
    move-exception v2

    .line 1763
    .local v2, "e":Ljava/lang/NullPointerException;
    const-string/jumbo v3, "DsClient"

    const-string/jumbo v4, "NullPointerException in unregisterVisualizer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1764
    invoke-virtual {v2}, Ljava/lang/NullPointerException;->printStackTrace()V

    .line 1765
    throw v2

    .line 1757
    .end local v2    # "e":Ljava/lang/NullPointerException;
    :catch_2
    move-exception v0

    .line 1758
    .local v0, "e":Landroid/os/RemoteException;
    const-string/jumbo v3, "DsClient"

    const-string/jumbo v4, "RemoteException in unregisterVisualizer"

    invoke-static {v3, v4}, Landroid/util/Log;->e(Ljava/lang/String;Ljava/lang/String;)I

    .line 1759
    throw v0

    .line 1776
    .end local v0    # "e":Landroid/os/RemoteException;
    :cond_0
    new-instance v3, Ljava/lang/RuntimeException;

    const-string/jumbo v4, "unregisterVisualizer failed"

    invoke-direct {v3, v4}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw v3
.end method
