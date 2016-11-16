.class public final enum Landroid/dolby/ds/AudioDevice;
.super Ljava/lang/Enum;
.source "AudioDevice.java"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum",
        "<",
        "Landroid/dolby/ds/AudioDevice;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic $VALUES:[Landroid/dolby/ds/AudioDevice;

.field public static final enum DEVICE_ANLG_DOCK_HEADSET:Landroid/dolby/ds/AudioDevice;

.field public static final enum DEVICE_AUX_DIGITAL:Landroid/dolby/ds/AudioDevice;

.field public static final enum DEVICE_BLUETOOTH_A2DP:Landroid/dolby/ds/AudioDevice;

.field public static final enum DEVICE_BLUETOOTH_A2DP_HEADPHONES:Landroid/dolby/ds/AudioDevice;

.field public static final enum DEVICE_BLUETOOTH_A2DP_SPEAKER:Landroid/dolby/ds/AudioDevice;

.field public static final enum DEVICE_BLUETOOTH_SCO:Landroid/dolby/ds/AudioDevice;

.field public static final enum DEVICE_BLUETOOTH_SCO_CARKIT:Landroid/dolby/ds/AudioDevice;

.field public static final enum DEVICE_BLUETOOTH_SCO_HEADSET:Landroid/dolby/ds/AudioDevice;

.field public static final enum DEVICE_DGTL_DOCK_HEADSET:Landroid/dolby/ds/AudioDevice;

.field public static final enum DEVICE_EARPIECE:Landroid/dolby/ds/AudioDevice;

.field public static final enum DEVICE_REMOTE_SUBMIX:Landroid/dolby/ds/AudioDevice;

.field public static final enum DEVICE_SPEAKER:Landroid/dolby/ds/AudioDevice;

.field public static final enum DEVICE_USB_ACCESSORY:Landroid/dolby/ds/AudioDevice;

.field public static final enum DEVICE_USB_DEVICE:Landroid/dolby/ds/AudioDevice;

.field public static final enum DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

.field public static final enum DEVICE_WIRED_HEADSET:Landroid/dolby/ds/AudioDevice;


# instance fields
.field private value:I


# direct methods
.method static constructor <clinit>()V
    .locals 9

    .prologue
    const/4 v8, 0x0

    const/16 v7, 0x8

    const/4 v6, 0x4

    const/4 v5, 0x2

    const/4 v4, 0x1

    .line 28
    new-instance v0, Landroid/dolby/ds/AudioDevice;

    const-string/jumbo v1, "DEVICE_EARPIECE"

    invoke-direct {v0, v1, v8, v4}, Landroid/dolby/ds/AudioDevice;-><init>(Ljava/lang/String;II)V

    sput-object v0, Landroid/dolby/ds/AudioDevice;->DEVICE_EARPIECE:Landroid/dolby/ds/AudioDevice;

    new-instance v0, Landroid/dolby/ds/AudioDevice;

    const-string/jumbo v1, "DEVICE_SPEAKER"

    invoke-direct {v0, v1, v4, v5}, Landroid/dolby/ds/AudioDevice;-><init>(Ljava/lang/String;II)V

    .line 29
    sput-object v0, Landroid/dolby/ds/AudioDevice;->DEVICE_SPEAKER:Landroid/dolby/ds/AudioDevice;

    new-instance v0, Landroid/dolby/ds/AudioDevice;

    const-string/jumbo v1, "DEVICE_WIRED_HEADSET"

    invoke-direct {v0, v1, v5, v6}, Landroid/dolby/ds/AudioDevice;-><init>(Ljava/lang/String;II)V

    .line 30
    sput-object v0, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADSET:Landroid/dolby/ds/AudioDevice;

    new-instance v0, Landroid/dolby/ds/AudioDevice;

    const-string/jumbo v1, "DEVICE_WIRED_HEADPHONE"

    const/4 v2, 0x3

    invoke-direct {v0, v1, v2, v7}, Landroid/dolby/ds/AudioDevice;-><init>(Ljava/lang/String;II)V

    .line 31
    sput-object v0, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    new-instance v0, Landroid/dolby/ds/AudioDevice;

    const-string/jumbo v1, "DEVICE_BLUETOOTH_SCO"

    .line 32
    const/16 v2, 0x10

    .line 31
    invoke-direct {v0, v1, v6, v2}, Landroid/dolby/ds/AudioDevice;-><init>(Ljava/lang/String;II)V

    .line 32
    sput-object v0, Landroid/dolby/ds/AudioDevice;->DEVICE_BLUETOOTH_SCO:Landroid/dolby/ds/AudioDevice;

    new-instance v0, Landroid/dolby/ds/AudioDevice;

    const-string/jumbo v1, "DEVICE_BLUETOOTH_SCO_HEADSET"

    const/4 v2, 0x5

    .line 33
    const/16 v3, 0x20

    .line 32
    invoke-direct {v0, v1, v2, v3}, Landroid/dolby/ds/AudioDevice;-><init>(Ljava/lang/String;II)V

    .line 33
    sput-object v0, Landroid/dolby/ds/AudioDevice;->DEVICE_BLUETOOTH_SCO_HEADSET:Landroid/dolby/ds/AudioDevice;

    new-instance v0, Landroid/dolby/ds/AudioDevice;

    const-string/jumbo v1, "DEVICE_BLUETOOTH_SCO_CARKIT"

    const/4 v2, 0x6

    .line 34
    const/16 v3, 0x40

    .line 33
    invoke-direct {v0, v1, v2, v3}, Landroid/dolby/ds/AudioDevice;-><init>(Ljava/lang/String;II)V

    .line 34
    sput-object v0, Landroid/dolby/ds/AudioDevice;->DEVICE_BLUETOOTH_SCO_CARKIT:Landroid/dolby/ds/AudioDevice;

    new-instance v0, Landroid/dolby/ds/AudioDevice;

    const-string/jumbo v1, "DEVICE_BLUETOOTH_A2DP"

    const/4 v2, 0x7

    .line 35
    const/16 v3, 0x80

    .line 34
    invoke-direct {v0, v1, v2, v3}, Landroid/dolby/ds/AudioDevice;-><init>(Ljava/lang/String;II)V

    .line 35
    sput-object v0, Landroid/dolby/ds/AudioDevice;->DEVICE_BLUETOOTH_A2DP:Landroid/dolby/ds/AudioDevice;

    new-instance v0, Landroid/dolby/ds/AudioDevice;

    const-string/jumbo v1, "DEVICE_BLUETOOTH_A2DP_HEADPHONES"

    .line 36
    const/16 v2, 0x100

    .line 35
    invoke-direct {v0, v1, v7, v2}, Landroid/dolby/ds/AudioDevice;-><init>(Ljava/lang/String;II)V

    .line 36
    sput-object v0, Landroid/dolby/ds/AudioDevice;->DEVICE_BLUETOOTH_A2DP_HEADPHONES:Landroid/dolby/ds/AudioDevice;

    new-instance v0, Landroid/dolby/ds/AudioDevice;

    const-string/jumbo v1, "DEVICE_BLUETOOTH_A2DP_SPEAKER"

    const/16 v2, 0x9

    .line 37
    const/16 v3, 0x200

    .line 36
    invoke-direct {v0, v1, v2, v3}, Landroid/dolby/ds/AudioDevice;-><init>(Ljava/lang/String;II)V

    .line 37
    sput-object v0, Landroid/dolby/ds/AudioDevice;->DEVICE_BLUETOOTH_A2DP_SPEAKER:Landroid/dolby/ds/AudioDevice;

    new-instance v0, Landroid/dolby/ds/AudioDevice;

    const-string/jumbo v1, "DEVICE_AUX_DIGITAL"

    const/16 v2, 0xa

    .line 38
    const/16 v3, 0x400

    .line 37
    invoke-direct {v0, v1, v2, v3}, Landroid/dolby/ds/AudioDevice;-><init>(Ljava/lang/String;II)V

    .line 38
    sput-object v0, Landroid/dolby/ds/AudioDevice;->DEVICE_AUX_DIGITAL:Landroid/dolby/ds/AudioDevice;

    new-instance v0, Landroid/dolby/ds/AudioDevice;

    const-string/jumbo v1, "DEVICE_ANLG_DOCK_HEADSET"

    const/16 v2, 0xb

    .line 39
    const/16 v3, 0x800

    .line 38
    invoke-direct {v0, v1, v2, v3}, Landroid/dolby/ds/AudioDevice;-><init>(Ljava/lang/String;II)V

    .line 39
    sput-object v0, Landroid/dolby/ds/AudioDevice;->DEVICE_ANLG_DOCK_HEADSET:Landroid/dolby/ds/AudioDevice;

    new-instance v0, Landroid/dolby/ds/AudioDevice;

    const-string/jumbo v1, "DEVICE_DGTL_DOCK_HEADSET"

    const/16 v2, 0xc

    .line 40
    const/16 v3, 0x1000

    .line 39
    invoke-direct {v0, v1, v2, v3}, Landroid/dolby/ds/AudioDevice;-><init>(Ljava/lang/String;II)V

    .line 40
    sput-object v0, Landroid/dolby/ds/AudioDevice;->DEVICE_DGTL_DOCK_HEADSET:Landroid/dolby/ds/AudioDevice;

    new-instance v0, Landroid/dolby/ds/AudioDevice;

    const-string/jumbo v1, "DEVICE_USB_ACCESSORY"

    const/16 v2, 0xd

    .line 41
    const/16 v3, 0x2000

    .line 40
    invoke-direct {v0, v1, v2, v3}, Landroid/dolby/ds/AudioDevice;-><init>(Ljava/lang/String;II)V

    .line 41
    sput-object v0, Landroid/dolby/ds/AudioDevice;->DEVICE_USB_ACCESSORY:Landroid/dolby/ds/AudioDevice;

    new-instance v0, Landroid/dolby/ds/AudioDevice;

    const-string/jumbo v1, "DEVICE_USB_DEVICE"

    const/16 v2, 0xe

    .line 42
    const/16 v3, 0x4000

    .line 41
    invoke-direct {v0, v1, v2, v3}, Landroid/dolby/ds/AudioDevice;-><init>(Ljava/lang/String;II)V

    .line 42
    sput-object v0, Landroid/dolby/ds/AudioDevice;->DEVICE_USB_DEVICE:Landroid/dolby/ds/AudioDevice;

    new-instance v0, Landroid/dolby/ds/AudioDevice;

    const-string/jumbo v1, "DEVICE_REMOTE_SUBMIX"

    const/16 v2, 0xf

    .line 43
    const v3, 0x8000

    .line 42
    invoke-direct {v0, v1, v2, v3}, Landroid/dolby/ds/AudioDevice;-><init>(Ljava/lang/String;II)V

    .line 43
    sput-object v0, Landroid/dolby/ds/AudioDevice;->DEVICE_REMOTE_SUBMIX:Landroid/dolby/ds/AudioDevice;

    .line 26
    const/16 v0, 0x10

    new-array v0, v0, [Landroid/dolby/ds/AudioDevice;

    sget-object v1, Landroid/dolby/ds/AudioDevice;->DEVICE_EARPIECE:Landroid/dolby/ds/AudioDevice;

    aput-object v1, v0, v8

    sget-object v1, Landroid/dolby/ds/AudioDevice;->DEVICE_SPEAKER:Landroid/dolby/ds/AudioDevice;

    aput-object v1, v0, v4

    sget-object v1, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADSET:Landroid/dolby/ds/AudioDevice;

    aput-object v1, v0, v5

    sget-object v1, Landroid/dolby/ds/AudioDevice;->DEVICE_WIRED_HEADPHONE:Landroid/dolby/ds/AudioDevice;

    const/4 v2, 0x3

    aput-object v1, v0, v2

    sget-object v1, Landroid/dolby/ds/AudioDevice;->DEVICE_BLUETOOTH_SCO:Landroid/dolby/ds/AudioDevice;

    aput-object v1, v0, v6

    sget-object v1, Landroid/dolby/ds/AudioDevice;->DEVICE_BLUETOOTH_SCO_HEADSET:Landroid/dolby/ds/AudioDevice;

    const/4 v2, 0x5

    aput-object v1, v0, v2

    sget-object v1, Landroid/dolby/ds/AudioDevice;->DEVICE_BLUETOOTH_SCO_CARKIT:Landroid/dolby/ds/AudioDevice;

    const/4 v2, 0x6

    aput-object v1, v0, v2

    sget-object v1, Landroid/dolby/ds/AudioDevice;->DEVICE_BLUETOOTH_A2DP:Landroid/dolby/ds/AudioDevice;

    const/4 v2, 0x7

    aput-object v1, v0, v2

    sget-object v1, Landroid/dolby/ds/AudioDevice;->DEVICE_BLUETOOTH_A2DP_HEADPHONES:Landroid/dolby/ds/AudioDevice;

    aput-object v1, v0, v7

    sget-object v1, Landroid/dolby/ds/AudioDevice;->DEVICE_BLUETOOTH_A2DP_SPEAKER:Landroid/dolby/ds/AudioDevice;

    const/16 v2, 0x9

    aput-object v1, v0, v2

    sget-object v1, Landroid/dolby/ds/AudioDevice;->DEVICE_AUX_DIGITAL:Landroid/dolby/ds/AudioDevice;

    const/16 v2, 0xa

    aput-object v1, v0, v2

    sget-object v1, Landroid/dolby/ds/AudioDevice;->DEVICE_ANLG_DOCK_HEADSET:Landroid/dolby/ds/AudioDevice;

    const/16 v2, 0xb

    aput-object v1, v0, v2

    sget-object v1, Landroid/dolby/ds/AudioDevice;->DEVICE_DGTL_DOCK_HEADSET:Landroid/dolby/ds/AudioDevice;

    const/16 v2, 0xc

    aput-object v1, v0, v2

    sget-object v1, Landroid/dolby/ds/AudioDevice;->DEVICE_USB_ACCESSORY:Landroid/dolby/ds/AudioDevice;

    const/16 v2, 0xd

    aput-object v1, v0, v2

    sget-object v1, Landroid/dolby/ds/AudioDevice;->DEVICE_USB_DEVICE:Landroid/dolby/ds/AudioDevice;

    const/16 v2, 0xe

    aput-object v1, v0, v2

    sget-object v1, Landroid/dolby/ds/AudioDevice;->DEVICE_REMOTE_SUBMIX:Landroid/dolby/ds/AudioDevice;

    const/16 v2, 0xf

    aput-object v1, v0, v2

    sput-object v0, Landroid/dolby/ds/AudioDevice;->$VALUES:[Landroid/dolby/ds/AudioDevice;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;II)V
    .locals 0
    .param p3, "value"    # I

    .prologue
    .line 47
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    iput p3, p0, Landroid/dolby/ds/AudioDevice;->value:I

    return-void
.end method

.method public static valueOf(Ljava/lang/String;)Landroid/dolby/ds/AudioDevice;
    .locals 1
    .param p0, "name"    # Ljava/lang/String;

    .prologue
    .line 26
    const-class v0, Landroid/dolby/ds/AudioDevice;

    invoke-static {v0, p0}, Ljava/lang/Enum;->valueOf(Ljava/lang/Class;Ljava/lang/String;)Ljava/lang/Enum;

    move-result-object v0

    check-cast v0, Landroid/dolby/ds/AudioDevice;

    return-object v0
.end method

.method public static values()[Landroid/dolby/ds/AudioDevice;
    .locals 1

    .prologue
    .line 26
    sget-object v0, Landroid/dolby/ds/AudioDevice;->$VALUES:[Landroid/dolby/ds/AudioDevice;

    return-object v0
.end method


# virtual methods
.method public toInt()I
    .locals 1

    .prologue
    .line 46
    iget v0, p0, Landroid/dolby/ds/AudioDevice;->value:I

    return v0
.end method
