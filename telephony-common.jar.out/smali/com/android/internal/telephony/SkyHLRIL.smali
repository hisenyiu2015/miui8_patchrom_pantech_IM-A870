.class public Lcom/android/internal/telephony/SkyHLRIL;
.super Lcom/android/internal/telephony/RIL;
.source "SkyHLRIL.java"

# interfaces
.implements Lcom/android/internal/telephony/CommandsInterface;


# static fields
.field private static final RIL_UNSOL_CDMA_3G_INDICATOR:I = 0xbc1

.field private static final RIL_UNSOL_CDMA_ENHANCE_ROAMING_INDICATOR:I = 0xbc4

.field private static final RIL_UNSOL_CDMA_NETWORK_BASE_PLUSCODE_DIAL:I = 0xbcc

.field private static final RIL_UNSOL_ENTER_LPM:I = 0x5f3

.field private static final RIL_UNSOL_RESPONSE_DATA_NETWORK_STATE_CHANGED:I = 0x520f

.field private static final RIL_UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED:I = 0x520d

.field private static final RIL_UNSOL_RESPONSE_PHONE_MODE_CHANGE:I = 0x1772

.field private static final RIL_UNSOL_RESPONSE_VOICE_RADIO_TECH_CHANGED:I = 0x520c

.field private static final RIL_UNSOL_SECTOR_ID_IND:I = 0xbf1

.field private static final RIL_UNSOL_TPMR_ID:I = 0xbd0


# direct methods
.method public constructor <init>(Landroid/content/Context;II)V
    .locals 1
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I

    .prologue
    .line 53
    const/4 v0, 0x0

    invoke-direct {p0, p1, p2, p3, v0}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 52
    return-void
.end method

.method public constructor <init>(Landroid/content/Context;IILjava/lang/Integer;)V
    .locals 0
    .param p1, "context"    # Landroid/content/Context;
    .param p2, "networkMode"    # I
    .param p3, "cdmaSubscription"    # I
    .param p4, "instanceId"    # Ljava/lang/Integer;

    .prologue
    .line 58
    invoke-direct {p0, p1, p2, p3, p4}, Lcom/android/internal/telephony/RIL;-><init>(Landroid/content/Context;IILjava/lang/Integer;)V

    .line 57
    return-void
.end method

.method private static responseToStringHL(I)Ljava/lang/String;
    .locals 1
    .param p0, "request"    # I

    .prologue
    .line 81
    sparse-switch p0, :sswitch_data_0

    .line 92
    const-string/jumbo v0, "<unknown response>"

    return-object v0

    .line 82
    :sswitch_0
    const-string/jumbo v0, "UNSOL_ENTER_LPM"

    return-object v0

    .line 83
    :sswitch_1
    const-string/jumbo v0, "UNSOL_CDMA_3G_INDICATOR"

    return-object v0

    .line 84
    :sswitch_2
    const-string/jumbo v0, "UNSOL_CDMA_ENHANCE_ROAMING_INDICATOR"

    return-object v0

    .line 85
    :sswitch_3
    const-string/jumbo v0, "UNSOL_CDMA_NETWORK_BASE_PLUSCODE_DIAL"

    return-object v0

    .line 86
    :sswitch_4
    const-string/jumbo v0, "UNSOL_TPMR_ID"

    return-object v0

    .line 87
    :sswitch_5
    const-string/jumbo v0, "UNSOL_SECTOR_ID_IND"

    return-object v0

    .line 88
    :sswitch_6
    const-string/jumbo v0, "UNSOL_RESPONSE_PHONE_MODE_CHANGE"

    return-object v0

    .line 89
    :sswitch_7
    const-string/jumbo v0, "UNSOL_RESPONSE_VOICE_RADIO_TECH_CHANGED"

    return-object v0

    .line 90
    :sswitch_8
    const-string/jumbo v0, "UNSOL_RESPONSE_IMS_NETWORK_STATE_CHANGED"

    return-object v0

    .line 91
    :sswitch_9
    const-string/jumbo v0, "UNSOL_RESPONSE_DATA_NETWORK_STATE_CHANGED"

    return-object v0

    .line 81
    nop

    :sswitch_data_0
    .sparse-switch
        0x5f3 -> :sswitch_0
        0xbc1 -> :sswitch_1
        0xbc4 -> :sswitch_2
        0xbcc -> :sswitch_3
        0xbd0 -> :sswitch_4
        0xbf1 -> :sswitch_5
        0x1772 -> :sswitch_6
        0x520c -> :sswitch_7
        0x520d -> :sswitch_8
        0x520f -> :sswitch_9
    .end sparse-switch
.end method


# virtual methods
.method public getRadioCapability(Landroid/os/Message;)V
    .locals 3
    .param p1, "response"    # Landroid/os/Message;

    .prologue
    const/4 v2, 0x0

    .line 149
    if-nez p1, :cond_0

    .line 150
    return-void

    .line 152
    :cond_0
    const-string/jumbo v1, "SkyHLRIL: returning static radio capability"

    invoke-virtual {p0, v1}, Lcom/android/internal/telephony/SkyHLRIL;->riljLog(Ljava/lang/String;)V

    .line 153
    invoke-virtual {p0}, Lcom/android/internal/telephony/SkyHLRIL;->makeStaticRadioCapability()Lcom/android/internal/telephony/RadioCapability;

    move-result-object v0

    .line 154
    .local v0, "ret":Ljava/lang/Object;
    invoke-static {p1, v0, v2}, Landroid/os/AsyncResult;->forMessage(Landroid/os/Message;Ljava/lang/Object;Ljava/lang/Throwable;)Landroid/os/AsyncResult;

    .line 155
    invoke-virtual {p1}, Landroid/os/Message;->sendToTarget()V

    .line 148
    return-void
.end method

.method protected processUnsolicited(Landroid/os/Parcel;)V
    .locals 6
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    const/4 v5, 0x0

    .line 100
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v0

    .line 101
    .local v0, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v1

    .line 103
    .local v1, "response":I
    sparse-switch v1, :sswitch_data_0

    .line 117
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 120
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->processUnsolicited(Landroid/os/Parcel;)V

    .line 121
    return-void

    .line 104
    :sswitch_0
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyHLRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .line 124
    .local v2, "ret":Ljava/lang/Object;
    :goto_0
    sparse-switch v1, :sswitch_data_1

    .line 98
    :cond_0
    :goto_1
    return-void

    .line 105
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_1
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyHLRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 106
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_2
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyHLRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 107
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_3
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyHLRIL;->responseStrings(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 108
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_4
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyHLRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 109
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_5
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyHLRIL;->responseString(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 110
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_6
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyHLRIL;->responseInts(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 111
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_7
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyHLRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 112
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_8
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyHLRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 113
    .end local v2    # "ret":Ljava/lang/Object;
    :sswitch_9
    invoke-virtual {p0, p1}, Lcom/android/internal/telephony/SkyHLRIL;->responseVoid(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v2

    .restart local v2    # "ret":Ljava/lang/Object;
    goto :goto_0

    .line 136
    :sswitch_a
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v4, "[UNSL]< "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-static {v1}, Lcom/android/internal/telephony/SkyHLRIL;->responseToStringHL(I)Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    const-string/jumbo v4, " "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    .line 137
    invoke-static {v1, v2}, Lcom/android/internal/telephony/SkyHLRIL;->retToString(ILjava/lang/Object;)Ljava/lang/String;

    move-result-object v4

    .line 136
    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v3

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v3

    invoke-virtual {p0, v3}, Lcom/android/internal/telephony/SkyHLRIL;->riljLog(Ljava/lang/String;)V

    .line 139
    iget-object v3, p0, Lcom/android/internal/telephony/SkyHLRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    if-eqz v3, :cond_0

    .line 140
    iget-object v3, p0, Lcom/android/internal/telephony/SkyHLRIL;->mExitEmergencyCallbackModeRegistrants:Landroid/os/RegistrantList;

    .line 141
    new-instance v4, Landroid/os/AsyncResult;

    invoke-direct {v4, v5, v5, v5}, Landroid/os/AsyncResult;-><init>(Ljava/lang/Object;Ljava/lang/Object;Ljava/lang/Throwable;)V

    .line 140
    invoke-virtual {v3, v4}, Landroid/os/RegistrantList;->notifyRegistrants(Landroid/os/AsyncResult;)V

    goto :goto_1

    .line 103
    nop

    :sswitch_data_0
    .sparse-switch
        0x5f3 -> :sswitch_0
        0xbc1 -> :sswitch_1
        0xbc4 -> :sswitch_2
        0xbcc -> :sswitch_3
        0xbd0 -> :sswitch_4
        0xbf1 -> :sswitch_5
        0x1772 -> :sswitch_6
        0x520c -> :sswitch_7
        0x520d -> :sswitch_8
        0x520f -> :sswitch_9
    .end sparse-switch

    .line 124
    :sswitch_data_1
    .sparse-switch
        0x5f3 -> :sswitch_a
        0xbc1 -> :sswitch_a
        0xbc4 -> :sswitch_a
        0xbcc -> :sswitch_a
        0xbd0 -> :sswitch_a
        0xbf1 -> :sswitch_a
        0x1772 -> :sswitch_a
        0x520c -> :sswitch_a
        0x520d -> :sswitch_a
        0x520f -> :sswitch_a
    .end sparse-switch
.end method

.method protected responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;
    .locals 5
    .param p1, "p"    # Landroid/os/Parcel;

    .prologue
    .line 64
    const/4 v0, 0x0

    .line 65
    .local v0, "CARDSTATE_ABSENT":I
    const/4 v1, 0x2

    .line 66
    .local v1, "CARDSTATE_ERROR":I
    invoke-virtual {p1}, Landroid/os/Parcel;->dataPosition()I

    move-result v3

    .line 67
    .local v3, "dataPosition":I
    invoke-virtual {p1}, Landroid/os/Parcel;->readInt()I

    move-result v2

    .line 69
    .local v2, "cardState":I
    const/4 v4, 0x2

    if-le v2, v4, :cond_0

    .line 70
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 71
    const/4 v4, 0x0

    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 74
    :cond_0
    invoke-virtual {p1, v3}, Landroid/os/Parcel;->setDataPosition(I)V

    .line 76
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->responseIccCardStatus(Landroid/os/Parcel;)Ljava/lang/Object;

    move-result-object v4

    return-object v4
.end method

.method protected send(Lcom/android/internal/telephony/RILRequest;)V
    .locals 2
    .param p1, "rr"    # Lcom/android/internal/telephony/RILRequest;

    .prologue
    .line 161
    iget v0, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    sparse-switch v0, :sswitch_data_0

    .line 173
    invoke-super {p0, p1}, Lcom/android/internal/telephony/RIL;->send(Lcom/android/internal/telephony/RILRequest;)V

    .line 160
    :goto_0
    return-void

    .line 166
    :sswitch_0
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string/jumbo v1, "SkyHLRIL: received unsupported request "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v0

    .line 167
    iget v1, p1, Lcom/android/internal/telephony/RILRequest;->mRequest:I

    .line 166
    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v0}, Lcom/android/internal/telephony/SkyHLRIL;->riljLog(Ljava/lang/String;)V

    .line 169
    const/4 v0, 0x6

    const/4 v1, 0x0

    invoke-virtual {p1, v0, v1}, Lcom/android/internal/telephony/RILRequest;->onError(ILjava/lang/Object;)V

    .line 170
    invoke-virtual {p1}, Lcom/android/internal/telephony/RILRequest;->release()V

    goto :goto_0

    .line 161
    nop

    :sswitch_data_0
    .sparse-switch
        0x6d -> :sswitch_0
        0x6f -> :sswitch_0
        0x80 -> :sswitch_0
    .end sparse-switch
.end method
