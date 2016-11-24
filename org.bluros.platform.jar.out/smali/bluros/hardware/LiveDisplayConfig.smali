.class public Lbluros/hardware/LiveDisplayConfig;
.super Ljava/lang/Object;
.source "LiveDisplayConfig.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lbluros/hardware/LiveDisplayConfig$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Lbluros/hardware/LiveDisplayConfig;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final mAllModes:Ljava/util/BitSet;

.field private final mCapabilities:Ljava/util/BitSet;

.field private final mColorBalanceRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mColorTemperatureRange:Landroid/util/Range;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation
.end field

.field private final mDefaultAutoContrast:Z

.field private final mDefaultAutoOutdoorMode:Z

.field private final mDefaultCABC:Z

.field private final mDefaultColorEnhancement:Z

.field private final mDefaultDayTemperature:I

.field private final mDefaultMode:I

.field private final mDefaultNightTemperature:I


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .prologue
    .line 290
    new-instance v0, Lbluros/hardware/LiveDisplayConfig$1;

    invoke-direct {v0}, Lbluros/hardware/LiveDisplayConfig$1;-><init>()V

    .line 289
    sput-object v0, Lbluros/hardware/LiveDisplayConfig;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 40
    return-void
.end method

.method private constructor <init>(Landroid/os/Parcel;)V
    .locals 20
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    .line 77
    invoke-direct/range {p0 .. p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v17, Ljava/util/BitSet;

    invoke-direct/range {v17 .. v17}, Ljava/util/BitSet;-><init>()V

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lbluros/hardware/LiveDisplayConfig;->mAllModes:Ljava/util/BitSet;

    .line 79
    invoke-static/range {p1 .. p1}, Lbluros/os/Concierge;->receiveParcel(Landroid/os/Parcel;)Lbluros/os/Concierge$ParcelInfo;

    move-result-object v15

    .line 80
    .local v15, "parcelInfo":Lbluros/os/Concierge$ParcelInfo;
    invoke-virtual {v15}, Lbluros/os/Concierge$ParcelInfo;->getParcelVersion()I

    move-result v16

    .line 83
    .local v16, "parcelableVersion":I
    const-wide/16 v2, 0x0

    .line 84
    .local v2, "capabilities":J
    const/4 v9, 0x0

    .line 85
    .local v9, "defaultMode":I
    const/4 v8, -0x1

    .line 86
    .local v8, "defaultDayTemperature":I
    const/4 v10, -0x1

    .line 87
    .local v10, "defaultNightTemperature":I
    const/4 v4, 0x0

    .line 88
    .local v4, "defaultAutoContrast":Z
    const/4 v5, 0x0

    .line 89
    .local v5, "defaultAutoOutdoorMode":Z
    const/4 v6, 0x0

    .line 90
    .local v6, "defaultCABC":Z
    const/4 v7, 0x0

    .line 91
    .local v7, "defaultColorEnhancement":Z
    const/4 v14, 0x0

    .line 92
    .local v14, "minColorTemperature":I
    const/4 v12, 0x0

    .line 93
    .local v12, "maxColorTemperature":I
    const/4 v13, 0x0

    .line 94
    .local v13, "minColorBalance":I
    const/4 v11, 0x0

    .line 96
    .local v11, "maxColorBalance":I
    const/16 v17, 0x6

    move/from16 v0, v16

    move/from16 v1, v17

    if-lt v0, v1, :cond_0

    .line 97
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readLong()J

    move-result-wide v2

    .line 98
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v9

    .line 99
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v8

    .line 100
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v10

    .line 101
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_1

    const/4 v4, 0x1

    .line 102
    :goto_0
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_2

    const/4 v5, 0x1

    .line 103
    :goto_1
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_3

    const/4 v6, 0x1

    .line 104
    :goto_2
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v17

    const/16 v18, 0x1

    move/from16 v0, v17

    move/from16 v1, v18

    if-ne v0, v1, :cond_4

    const/4 v7, 0x1

    .line 105
    :goto_3
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v14

    .line 106
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v12

    .line 107
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v13

    .line 108
    invoke-virtual/range {p1 .. p1}, Landroid/os/Parcel;->readInt()I

    move-result v11

    .line 112
    :cond_0
    const/16 v17, 0x1

    move/from16 v0, v17

    new-array v0, v0, [J

    move-object/from16 v17, v0

    const/16 v18, 0x0

    aput-wide v2, v17, v18

    invoke-static/range {v17 .. v17}, Ljava/util/BitSet;->valueOf([J)Ljava/util/BitSet;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lbluros/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    .line 113
    move-object/from16 v0, p0

    iget-object v0, v0, Lbluros/hardware/LiveDisplayConfig;->mAllModes:Ljava/util/BitSet;

    move-object/from16 v17, v0

    const/16 v18, 0x0

    const/16 v19, 0x4

    invoke-virtual/range {v17 .. v19}, Ljava/util/BitSet;->set(II)V

    .line 114
    move-object/from16 v0, p0

    iput v9, v0, Lbluros/hardware/LiveDisplayConfig;->mDefaultMode:I

    .line 115
    move-object/from16 v0, p0

    iput v8, v0, Lbluros/hardware/LiveDisplayConfig;->mDefaultDayTemperature:I

    .line 116
    move-object/from16 v0, p0

    iput v10, v0, Lbluros/hardware/LiveDisplayConfig;->mDefaultNightTemperature:I

    .line 117
    move-object/from16 v0, p0

    iput-boolean v4, v0, Lbluros/hardware/LiveDisplayConfig;->mDefaultAutoContrast:Z

    .line 118
    move-object/from16 v0, p0

    iput-boolean v5, v0, Lbluros/hardware/LiveDisplayConfig;->mDefaultAutoOutdoorMode:Z

    .line 119
    move-object/from16 v0, p0

    iput-boolean v6, v0, Lbluros/hardware/LiveDisplayConfig;->mDefaultCABC:Z

    .line 120
    move-object/from16 v0, p0

    iput-boolean v7, v0, Lbluros/hardware/LiveDisplayConfig;->mDefaultColorEnhancement:Z

    .line 121
    invoke-static {v14}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v12}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lbluros/hardware/LiveDisplayConfig;->mColorTemperatureRange:Landroid/util/Range;

    .line 122
    invoke-static {v13}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v17

    invoke-static {v11}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v18

    invoke-static/range {v17 .. v18}, Landroid/util/Range;->create(Ljava/lang/Comparable;Ljava/lang/Comparable;)Landroid/util/Range;

    move-result-object v17

    move-object/from16 v0, v17

    move-object/from16 v1, p0

    iput-object v0, v1, Lbluros/hardware/LiveDisplayConfig;->mColorBalanceRange:Landroid/util/Range;

    .line 125
    invoke-virtual {v15}, Lbluros/os/Concierge$ParcelInfo;->complete()V

    .line 77
    return-void

    .line 101
    :cond_1
    const/4 v4, 0x0

    goto/16 :goto_0

    .line 102
    :cond_2
    const/4 v5, 0x0

    goto/16 :goto_1

    .line 103
    :cond_3
    const/4 v6, 0x0

    goto/16 :goto_2

    .line 104
    :cond_4
    const/4 v7, 0x0

    goto/16 :goto_3
.end method

.method synthetic constructor <init>(Landroid/os/Parcel;Lbluros/hardware/LiveDisplayConfig;)V
    .locals 0
    .param p1, "parcel"    # Landroid/os/Parcel;

    .prologue
    invoke-direct {p0, p1}, Lbluros/hardware/LiveDisplayConfig;-><init>(Landroid/os/Parcel;)V

    return-void
.end method

.method public constructor <init>(Ljava/util/BitSet;IIIZZZZLandroid/util/Range;Landroid/util/Range;)V
    .locals 3
    .param p1, "capabilities"    # Ljava/util/BitSet;
    .param p2, "defaultMode"    # I
    .param p3, "defaultDayTemperature"    # I
    .param p4, "defaultNightTemperature"    # I
    .param p5, "defaultAutoOutdoorMode"    # Z
    .param p6, "defaultAutoContrast"    # Z
    .param p7, "defaultCABC"    # Z
    .param p8, "defaultColorEnhancement"    # Z
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/BitSet;",
            "IIIZZZZ",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;)V"
        }
    .end annotation

    .prologue
    .line 63
    .local p9, "colorTemperatureRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    .local p10, "colorBalanceRange":Landroid/util/Range;, "Landroid/util/Range<Ljava/lang/Integer;>;"
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 43
    new-instance v0, Ljava/util/BitSet;

    invoke-direct {v0}, Ljava/util/BitSet;-><init>()V

    iput-object v0, p0, Lbluros/hardware/LiveDisplayConfig;->mAllModes:Ljava/util/BitSet;

    .line 64
    invoke-virtual {p1}, Ljava/util/BitSet;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/util/BitSet;

    iput-object v0, p0, Lbluros/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    .line 65
    iget-object v0, p0, Lbluros/hardware/LiveDisplayConfig;->mAllModes:Ljava/util/BitSet;

    const/4 v1, 0x0

    const/4 v2, 0x4

    invoke-virtual {v0, v1, v2}, Ljava/util/BitSet;->set(II)V

    .line 66
    iput p2, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultMode:I

    .line 67
    iput p3, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultDayTemperature:I

    .line 68
    iput p4, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultNightTemperature:I

    .line 69
    iput-boolean p6, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultAutoContrast:Z

    .line 70
    iput-boolean p5, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultAutoOutdoorMode:Z

    .line 71
    iput-boolean p7, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultCABC:Z

    .line 72
    iput-boolean p8, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultColorEnhancement:Z

    .line 73
    iput-object p9, p0, Lbluros/hardware/LiveDisplayConfig;->mColorTemperatureRange:Landroid/util/Range;

    .line 74
    iput-object p10, p0, Lbluros/hardware/LiveDisplayConfig;->mColorBalanceRange:Landroid/util/Range;

    .line 62
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 146
    const/4 v0, 0x0

    return v0
.end method

.method public getColorBalanceRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 285
    iget-object v0, p0, Lbluros/hardware/LiveDisplayConfig;->mColorBalanceRange:Landroid/util/Range;

    return-object v0
.end method

.method public getColorTemperatureRange()Landroid/util/Range;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Landroid/util/Range",
            "<",
            "Ljava/lang/Integer;",
            ">;"
        }
    .end annotation

    .prologue
    .line 276
    iget-object v0, p0, Lbluros/hardware/LiveDisplayConfig;->mColorTemperatureRange:Landroid/util/Range;

    return-object v0
.end method

.method public getDefaultAutoContrast()Z
    .locals 1

    .prologue
    .line 240
    iget-boolean v0, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultAutoContrast:Z

    return v0
.end method

.method public getDefaultAutoOutdoorMode()Z
    .locals 1

    .prologue
    .line 249
    iget-boolean v0, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultAutoOutdoorMode:Z

    return v0
.end method

.method public getDefaultCABC()Z
    .locals 1

    .prologue
    .line 258
    iget-boolean v0, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultCABC:Z

    return v0
.end method

.method public getDefaultColorEnhancement()Z
    .locals 1

    .prologue
    .line 267
    iget-boolean v0, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultColorEnhancement:Z

    return v0
.end method

.method public getDefaultDayTemperature()I
    .locals 1

    .prologue
    .line 211
    iget v0, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultDayTemperature:I

    return v0
.end method

.method public getDefaultMode()I
    .locals 1

    .prologue
    .line 231
    iget v0, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultMode:I

    return v0
.end method

.method public getDefaultNightTemperature()I
    .locals 1

    .prologue
    .line 222
    iget v0, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultNightTemperature:I

    return v0
.end method

.method public hasFeature(I)Z
    .locals 2
    .param p1, "feature"    # I

    .prologue
    const/4 v0, 0x0

    .line 180
    if-ltz p1, :cond_1

    const/4 v1, 0x4

    if-gt p1, v1, :cond_1

    .line 182
    :goto_0
    if-eqz p1, :cond_2

    iget-object v0, p0, Lbluros/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    invoke-virtual {v0, p1}, Ljava/util/BitSet;->get(I)Z

    move-result v0

    .line 180
    :cond_0
    :goto_1
    return v0

    .line 181
    :cond_1
    const/16 v1, 0xa

    if-lt p1, v1, :cond_0

    const/16 v1, 0x10

    if-gt p1, v1, :cond_0

    goto :goto_0

    .line 182
    :cond_2
    const/4 v0, 0x1

    goto :goto_1
.end method

.method public hasModeSupport()Z
    .locals 2

    .prologue
    .line 200
    invoke-virtual {p0}, Lbluros/hardware/LiveDisplayConfig;->isAvailable()Z

    move-result v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lbluros/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    iget-object v1, p0, Lbluros/hardware/LiveDisplayConfig;->mAllModes:Ljava/util/BitSet;

    invoke-virtual {v0, v1}, Ljava/util/BitSet;->intersects(Ljava/util/BitSet;)Z

    move-result v0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x0

    goto :goto_0
.end method

.method public isAvailable()Z
    .locals 1

    .prologue
    .line 191
    iget-object v0, p0, Lbluros/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    invoke-virtual {v0}, Ljava/util/BitSet;->isEmpty()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    :goto_0
    return v0

    :cond_0
    const/4 v0, 0x1

    goto :goto_0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .prologue
    .line 130
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    .line 131
    .local v0, "sb":Ljava/lang/StringBuilder;
    const-string/jumbo v1, "capabilities="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbluros/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 132
    const-string/jumbo v1, " defaultMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultMode:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 133
    const-string/jumbo v1, " defaultDayTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultDayTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 134
    const-string/jumbo v1, " defaultNightTemperature="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget v2, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultNightTemperature:I

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    .line 135
    const-string/jumbo v1, " defaultAutoOutdoorMode="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultAutoOutdoorMode:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 136
    const-string/jumbo v1, " defaultAutoContrast="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultAutoContrast:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 137
    const-string/jumbo v1, " defaultCABC="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultCABC:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 138
    const-string/jumbo v1, " defaultColorEnhancement="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-boolean v2, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultColorEnhancement:Z

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    .line 139
    const-string/jumbo v1, " colorTemperatureRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbluros/hardware/LiveDisplayConfig;->mColorTemperatureRange:Landroid/util/Range;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 140
    const-string/jumbo v1, " colorBalanceRange="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    move-result-object v1

    iget-object v2, p0, Lbluros/hardware/LiveDisplayConfig;->mColorBalanceRange:Landroid/util/Range;

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    .line 141
    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    return-object v1
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 6
    .param p1, "out"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    const/4 v4, 0x1

    const/4 v5, 0x0

    .line 152
    invoke-static {p1}, Lbluros/os/Concierge;->prepareParcel(Landroid/os/Parcel;)Lbluros/os/Concierge$ParcelInfo;

    move-result-object v1

    .line 155
    .local v1, "parcelInfo":Lbluros/os/Concierge$ParcelInfo;
    iget-object v2, p0, Lbluros/hardware/LiveDisplayConfig;->mCapabilities:Ljava/util/BitSet;

    invoke-virtual {v2}, Ljava/util/BitSet;->toLongArray()[J

    move-result-object v0

    .line 156
    .local v0, "caps":[J
    if-eqz v0, :cond_0

    array-length v2, v0

    if-lez v2, :cond_0

    aget-wide v2, v0, v5

    :goto_0
    invoke-virtual {p1, v2, v3}, Landroid/os/Parcel;->writeLong(J)V

    .line 157
    iget v2, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultMode:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 158
    iget v2, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultDayTemperature:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 159
    iget v2, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultNightTemperature:I

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 160
    iget-boolean v2, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultAutoContrast:Z

    if-eqz v2, :cond_1

    move v2, v4

    :goto_1
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 161
    iget-boolean v2, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultAutoOutdoorMode:Z

    if-eqz v2, :cond_2

    move v2, v4

    :goto_2
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 162
    iget-boolean v2, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultCABC:Z

    if-eqz v2, :cond_3

    move v2, v4

    :goto_3
    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 163
    iget-boolean v2, p0, Lbluros/hardware/LiveDisplayConfig;->mDefaultColorEnhancement:Z

    if-eqz v2, :cond_4

    :goto_4
    invoke-virtual {p1, v4}, Landroid/os/Parcel;->writeInt(I)V

    .line 164
    iget-object v2, p0, Lbluros/hardware/LiveDisplayConfig;->mColorTemperatureRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 165
    iget-object v2, p0, Lbluros/hardware/LiveDisplayConfig;->mColorTemperatureRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 166
    iget-object v2, p0, Lbluros/hardware/LiveDisplayConfig;->mColorBalanceRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getLower()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 167
    iget-object v2, p0, Lbluros/hardware/LiveDisplayConfig;->mColorBalanceRange:Landroid/util/Range;

    invoke-virtual {v2}, Landroid/util/Range;->getUpper()Ljava/lang/Comparable;

    move-result-object v2

    check-cast v2, Ljava/lang/Integer;

    invoke-virtual {v2}, Ljava/lang/Integer;->intValue()I

    move-result v2

    invoke-virtual {p1, v2}, Landroid/os/Parcel;->writeInt(I)V

    .line 170
    invoke-virtual {v1}, Lbluros/os/Concierge$ParcelInfo;->complete()V

    .line 150
    return-void

    .line 156
    :cond_0
    const-wide/16 v2, 0x0

    goto :goto_0

    :cond_1
    move v2, v5

    .line 160
    goto :goto_1

    :cond_2
    move v2, v5

    .line 161
    goto :goto_2

    :cond_3
    move v2, v5

    .line 162
    goto :goto_3

    :cond_4
    move v4, v5

    .line 163
    goto :goto_4
.end method
