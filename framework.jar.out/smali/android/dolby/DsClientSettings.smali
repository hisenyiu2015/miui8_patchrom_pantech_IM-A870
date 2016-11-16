.class public Landroid/dolby/DsClientSettings;
.super Ljava/lang/Object;
.source "DsClientSettings.java"

# interfaces
.implements Landroid/os/Parcelable;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Landroid/dolby/DsClientSettings$1;
    }
.end annotation


# static fields
.field public static final CREATOR:Landroid/os/Parcelable$Creator;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/os/Parcelable$Creator",
            "<",
            "Landroid/dolby/DsClientSettings;",
            ">;"
        }
    .end annotation
.end field

.field private static final TAG:Ljava/lang/String; = "DsClientSettings"

.field public static final basicProfileParams:Ljava/util/HashSet;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashSet",
            "<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private isDialogEnhancerOn:Z

.field private isGeqOn:Z

.field private isHeadphoneVirtualizerOn:Z

.field private isSpeakerVirtualizerOn:Z

.field private isVolumeLevellerOn:Z


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .prologue
    .line 76
    new-instance v0, Ljava/util/HashSet;

    invoke-direct {v0}, Ljava/util/HashSet;-><init>()V

    sput-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    .line 77
    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    const-string/jumbo v1, "geon"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 78
    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    const-string/jumbo v1, "deon"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 79
    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    const-string/jumbo v1, "dvle"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 80
    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    const-string/jumbo v1, "vdhe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 81
    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    const-string/jumbo v1, "vspe"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 82
    sget-object v0, Landroid/dolby/DsClientSettings;->basicProfileParams:Ljava/util/HashSet;

    const-string/jumbo v1, "ieon"

    invoke-virtual {v0, v1}, Ljava/util/HashSet;->add(Ljava/lang/Object;)Z

    .line 90
    new-instance v0, Landroid/dolby/DsClientSettings$1;

    invoke-direct {v0}, Landroid/dolby/DsClientSettings$1;-><init>()V

    sput-object v0, Landroid/dolby/DsClientSettings;->CREATOR:Landroid/os/Parcelable$Creator;

    .line 36
    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .prologue
    const/4 v0, 0x0

    .line 118
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 120
    iput-boolean v0, p0, Landroid/dolby/DsClientSettings;->isGeqOn:Z

    .line 121
    iput-boolean v0, p0, Landroid/dolby/DsClientSettings;->isDialogEnhancerOn:Z

    .line 122
    iput-boolean v0, p0, Landroid/dolby/DsClientSettings;->isVolumeLevellerOn:Z

    .line 123
    iput-boolean v0, p0, Landroid/dolby/DsClientSettings;->isHeadphoneVirtualizerOn:Z

    .line 124
    iput-boolean v0, p0, Landroid/dolby/DsClientSettings;->isSpeakerVirtualizerOn:Z

    .line 118
    return-void
.end method

.method public constructor <init>(Landroid/os/Parcel;)V
    .locals 0
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 133
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 135
    invoke-virtual {p0, p1}, Landroid/dolby/DsClientSettings;->readFromParcel(Landroid/os/Parcel;)V

    .line 133
    return-void
.end method


# virtual methods
.method public describeContents()I
    .locals 1

    .prologue
    .line 109
    const/4 v0, 0x0

    return v0
.end method

.method public getDialogEnhancerOn()Z
    .locals 1

    .prologue
    .line 214
    iget-boolean v0, p0, Landroid/dolby/DsClientSettings;->isDialogEnhancerOn:Z

    return v0
.end method

.method public getGeqOn()Z
    .locals 1

    .prologue
    .line 194
    iget-boolean v0, p0, Landroid/dolby/DsClientSettings;->isGeqOn:Z

    return v0
.end method

.method public getHeadphoneVirtualizerOn()Z
    .locals 1

    .prologue
    .line 254
    iget-boolean v0, p0, Landroid/dolby/DsClientSettings;->isHeadphoneVirtualizerOn:Z

    return v0
.end method

.method public getSpeakerVirtualizerOn()Z
    .locals 1

    .prologue
    .line 274
    iget-boolean v0, p0, Landroid/dolby/DsClientSettings;->isSpeakerVirtualizerOn:Z

    return v0
.end method

.method public getVolumeLevellerOn()Z
    .locals 1

    .prologue
    .line 234
    iget-boolean v0, p0, Landroid/dolby/DsClientSettings;->isVolumeLevellerOn:Z

    return v0
.end method

.method public readFromParcel(Landroid/os/Parcel;)V
    .locals 2
    .param p1, "src"    # Landroid/os/Parcel;

    .prologue
    .line 166
    const/4 v1, 0x5

    new-array v0, v1, [Z

    .line 168
    .local v0, "settings":[Z
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->readBooleanArray([Z)V

    .line 170
    const/4 v1, 0x0

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/dolby/DsClientSettings;->isGeqOn:Z

    .line 171
    const/4 v1, 0x1

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/dolby/DsClientSettings;->isDialogEnhancerOn:Z

    .line 172
    const/4 v1, 0x2

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/dolby/DsClientSettings;->isVolumeLevellerOn:Z

    .line 173
    const/4 v1, 0x3

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/dolby/DsClientSettings;->isHeadphoneVirtualizerOn:Z

    .line 174
    const/4 v1, 0x4

    aget-boolean v1, v0, v1

    iput-boolean v1, p0, Landroid/dolby/DsClientSettings;->isSpeakerVirtualizerOn:Z

    .line 164
    return-void
.end method

.method public setDialogEnhancerOn(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 204
    iput-boolean p1, p0, Landroid/dolby/DsClientSettings;->isDialogEnhancerOn:Z

    .line 202
    return-void
.end method

.method public setGeqOn(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 184
    iput-boolean p1, p0, Landroid/dolby/DsClientSettings;->isGeqOn:Z

    .line 182
    return-void
.end method

.method public setHeadphoneVirtualizerOn(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 244
    iput-boolean p1, p0, Landroid/dolby/DsClientSettings;->isHeadphoneVirtualizerOn:Z

    .line 242
    return-void
.end method

.method public setSpeakerVirtualizerOn(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 264
    iput-boolean p1, p0, Landroid/dolby/DsClientSettings;->isSpeakerVirtualizerOn:Z

    .line 262
    return-void
.end method

.method public setVolumeLevellerOn(Z)V
    .locals 0
    .param p1, "enable"    # Z

    .prologue
    .line 224
    iput-boolean p1, p0, Landroid/dolby/DsClientSettings;->isVolumeLevellerOn:Z

    .line 222
    return-void
.end method

.method public writeToParcel(Landroid/os/Parcel;I)V
    .locals 3
    .param p1, "dest"    # Landroid/os/Parcel;
    .param p2, "flags"    # I

    .prologue
    .line 147
    const/4 v1, 0x5

    new-array v0, v1, [Z

    .line 149
    .local v0, "settings":[Z
    iget-boolean v1, p0, Landroid/dolby/DsClientSettings;->isGeqOn:Z

    const/4 v2, 0x0

    aput-boolean v1, v0, v2

    .line 150
    iget-boolean v1, p0, Landroid/dolby/DsClientSettings;->isDialogEnhancerOn:Z

    const/4 v2, 0x1

    aput-boolean v1, v0, v2

    .line 151
    iget-boolean v1, p0, Landroid/dolby/DsClientSettings;->isVolumeLevellerOn:Z

    const/4 v2, 0x2

    aput-boolean v1, v0, v2

    .line 152
    iget-boolean v1, p0, Landroid/dolby/DsClientSettings;->isHeadphoneVirtualizerOn:Z

    const/4 v2, 0x3

    aput-boolean v1, v0, v2

    .line 153
    iget-boolean v1, p0, Landroid/dolby/DsClientSettings;->isSpeakerVirtualizerOn:Z

    const/4 v2, 0x4

    aput-boolean v1, v0, v2

    .line 155
    invoke-virtual {p1, v0}, Landroid/os/Parcel;->writeBooleanArray([Z)V

    .line 145
    return-void
.end method
